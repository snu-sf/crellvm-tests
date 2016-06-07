; ModuleID = 'patterns/barriers.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.dfa_rt = type opaque
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.half_eye_data = type { float, i8, i32, [4 x i32], i32, [4 x i32] }

@barrierspat = internal global [187 x %struct.pattern] [%struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat0, i32 0, i32 0), i32 3, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 684, [8 x i32] [i32 4128768, i32 3158064, i32 15728640, i32 808452096, i32 808452096, i32 4128768, i32 3158064, i32 15728640], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat1, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 0, i32 685, [8 x i32] [i32 775880704, i32 3685432, i32 15785984, i32 -256901120, i32 1010302976, i32 4140544, i32 11595952, i32 -521142272], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat2, i32 0, i32 0), i32 9, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 356455680, i32 7631988, i32 1357926400, i32 1953759232, i32 1953759232, i32 356455680, i32 7631988, i32 1357926400], [8 x i32] [i32 2228224, i32 2097184, i32 2097152, i32 2097152, i32 2097152, i32 2228224, i32 2097184, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat3, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 0, i32 685, [8 x i32] [i32 1061093376, i32 3947580, i32 15790080, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320, i32 -252706816], [8 x i32] [i32 2228224, i32 2097184, i32 2097152, i32 2097152, i32 2097152, i32 2228224, i32 2097184, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat3, i32 3, float 5.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @barrierspat4, i32 0, i32 0), i32 2, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 -1, i32 0, i32 0, i32 0, i32 1, i32 8, i32 721, [8 x i32] [i32 15728640, i32 808452096, i32 3932160, i32 3158016, i32 3158016, i32 15728640, i32 808452096, i32 3932160], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat5, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 721, [8 x i32] [i32 7631872, i32 1357926400, i32 1953759232, i32 339481600, i32 1357926400, i32 1953759232, i32 339481600, i32 7631872], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat6, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 2, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat6, i32 3, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat7, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat7, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat8, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2621440, i32 2105344, i32 10485760, i32 538968064, i32 538968064, i32 2621440, i32 2105344, i32 10485760], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat9, i32 0, i32 0), i32 4, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 1064960, i32 1074790400, i32 68157440, i32 1049600, i32 1064960, i32 1074790400, i32 68157440, i32 1049600], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat10, i32 0, i32 0), i32 4, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 2129920, i32 -2145386496, i32 136314880, i32 2099200, i32 2129920, i32 -2145386496, i32 136314880, i32 2099200], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat11, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2363392, i32 6295552, i32 274726912, i32 270794752, i32 274726912, i32 270794752, i32 2363392, i32 6295552], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat12, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1581056, i32 9445376, i32 546308096, i32 538443776, i32 546308096, i32 538443776, i32 1581056, i32 9445376], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat12, i32 0, float 0x4006666660000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat13, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4132608, i32 3207408, i32 -1058013184, i32 1009778688, i32 -265289728, i32 255787008, i32 3161148, i32 15777792], [8 x i32] [i32 1048832, i32 1048640, i32 1048576, i32 1048576, i32 1048576, i32 17825792, i32 1048580, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat14, i32 0, i32 0), i32 6, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2236928, i32 10485920, i32 538968064, i32 2621440, i32 10485760, i32 572653568, i32 2621480, i32 2105344], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat15, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4079360, i32 15790304, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061027840, i32 3947564, i32 15790080], [8 x i32] [i32 2105856, i32 10485888, i32 538968064, i32 2621440, i32 10485760, i32 572522496, i32 2621448, i32 2105344], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat15, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat16, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 0, i32 685, [8 x i32] [i32 356327189, i32 7664852, i32 -789557248, i32 2104819712, i32 -193724416, i32 524096768, i32 7699805, i32 1357959248], [8 x i32] [i32 2097664, i32 2097280, i32 2097152, i32 2097152, i32 2097152, i32 35651584, i32 2097160, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat17, i32 0, i32 0), i32 6, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2097664, i32 2097280, i32 2097152, i32 2097152, i32 2097152, i32 35651584, i32 2097160, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat17, i32 3, float 0x401A1CAC00000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat18, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2228736, i32 2097312, i32 2097152, i32 2097152, i32 2097152, i32 35782656, i32 2097192, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat18, i32 3, float 0x4014A3D700000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat19, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2101760, i32 6291584, i32 270532608, i32 2359296, i32 6291456, i32 304087040, i32 2359304, i32 2101248], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat19, i32 3, float 0x4017851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat20, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2167296, i32 6291600, i32 270532608, i32 2359296, i32 6291456, i32 304152576, i32 2359320, i32 2101248], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat20, i32 3, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat21, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat21, i32 0, float 5.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat22, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1052672, i32 5242880, i32 269484032, i32 1310720, i32 5242880, i32 269484032, i32 1310720, i32 1052672], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat22, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @barrierspat23, i32 0, i32 0), i32 16, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 -2, i32 0, i32 2, i32 3, i32 4, i32 3, i32 0, i32 686, [8 x i32] [i32 356455685, i32 7632245, i32 1357926464, i32 1970536448, i32 1970536448, i32 356455685, i32 7632245, i32 1357926464], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat24, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 0, i32 685, [8 x i32] [i32 524230400, i32 7666940, i32 -789524480, i32 -59506688, i32 -59506688, i32 524230400, i32 7666940, i32 -789524480], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat24, i32 3, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([28 x %struct.patval], [28 x %struct.patval]* @barrierspat25, i32 0, i32 0), i32 28, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 4, i32 4, i32 5, i32 2, i32 723, [8 x i32] [i32 1434410837, i32 1417016821, i32 -722185136, i32 2104841472, i32 -176860160, i32 1602180373, i32 1433763197, i32 1425331284], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat26, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 0, i32 684, [8 x i32] [i32 4136725, i32 7401712, i32 -789577728, i32 1026883584, i32 -261095424, i32 524222464, i32 3489085, i32 15781968], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat26, i32 3, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat27, i32 0, i32 0), i32 8, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat27, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @barrierspat28, i32 0, i32 0), i32 13, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 3, i32 2, i32 4, i32 0, i32 721, [8 x i32] [i32 4173631, i32 -2135887632, i32 -386924544, i32 1060833280, i32 -256868352, i32 -1354825728, i32 138100543, i32 15788272], [8 x i32] [i32 1048592, i32 1048576, i32 1048576, i32 1114112, i32 1048576, i32 1048576, i32 1114112, i32 1048592], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([20 x %struct.patval], [20 x %struct.patval]* @barrierspat29, i32 0, i32 0), i32 20, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 -2, i32 0, i32 3, i32 3, i32 5, i32 3, i32 0, i32 686, [8 x i32] [i32 356458261, i32 7665141, i32 -789557184, i32 2104819712, i32 -176947200, i32 524227845, i32 7699837, i32 1357959248], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat30, i32 0, i32 0), i32 8, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4136704, i32 7401712, i32 -789577728, i32 1010040832, i32 -261095424, i32 524222464, i32 3423292, i32 15781888], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat30, i32 3, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat31, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 12105912, i32 -1594843136, i32 -1195900928, i32 708782592, i32 -1594843136, i32 -1195900928, i32 708782592, i32 12105912], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat32, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 7631988, i32 1357926400, i32 1953759232, i32 356455680, i32 1357926400, i32 1953759232, i32 356455680, i32 7631988], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat33, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 2, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat33, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat34, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1312768, i32 1085440, i32 -2142240768, i32 403701760, i32 -1877999616, i32 135528448, i32 1054720, i32 5275648], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @barrierspat35, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 758, [8 x i32] [i32 16711422, i32 -252645216, i32 -50593792, i32 1061109506, i32 -252645376, i32 -16908288, i32 1061109546, i32 16579838], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat36, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 3866366, i32 -1057955680, i32 -55574528, i32 792661760, i32 -521093120, i32 -29753344, i32 255799082, i32 11599100], [8 x i32] [i32 1081344, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 1050624], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat37, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 684, [8 x i32] [i32 4079423, i32 15790304, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061027840, i32 4144943, i32 15790320], [8 x i32] [i32 2361344, i32 2134016, i32 -2141192192, i32 404750336, i32 -1876951040, i32 136577024, i32 2103296, i32 6324224], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat37, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat38, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 684, [8 x i32] [i32 4079166, i32 15790240, i32 -252706816, i32 1061093376, i32 -252706816, i32 1044250624, i32 4144938, i32 15790320], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat39, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 684, [8 x i32] [i32 4144956, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144956, i32 15790320], [8 x i32] [i32 2425344, i32 2101392, i32 6291456, i32 270532608, i32 270532608, i32 35979264, i32 2101272, i32 6291456], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat39, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([15 x %struct.patval], [15 x %struct.patval]* @barrierspat40, i32 0, i32 0), i32 15, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 3, i32 2, i32 4, i32 2, i32 721, [8 x i32] [i32 12304319, i32 -1594826512, i32 -122159104, i32 792668672, i32 -521101312, i32 -1078263808, i32 708783935, i32 12122360], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([15 x %struct.patval], [15 x %struct.patval]* @barrierspat41, i32 0, i32 0), i32 15, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 3, i32 2, i32 4, i32 2, i32 721, [8 x i32] [i32 7831423, i32 1357959408, i32 -193724416, i32 524227840, i32 -789557248, i32 2138505216, i32 356458303, i32 7664884], [8 x i32] [i32 2228224, i32 2097184, i32 2097152, i32 2097152, i32 2097152, i32 2228224, i32 2097184, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat42, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 684, [8 x i32] [i32 4013887, i32 15790288, i32 -252706816, i32 1061093376, i32 -252706816, i32 1060962304, i32 4144927, i32 15790320], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat42, i32 0, float 0x3FDC5D6380000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat43, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 2, i32 684, [8 x i32] [i32 4144128, i32 15790128, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010761728, i32 3947568, i32 15790080], [8 x i32] [i32 1638400, i32 1056784, i32 9437184, i32 537919488, i32 537919488, i32 1638400, i32 1056784, i32 9437184], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat43, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([19 x %struct.patval], [19 x %struct.patval]* @barrierspat44, i32 0, i32 0), i32 19, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 -3, i32 3, i32 1, i32 3, i32 4, i32 2, i32 795, [8 x i32] [i32 11598072, i32 -521109504, i32 -1086717952, i32 171913007, i32 -2131697440, i32 -122683392, i32 792660480, i32 3850175], [8 x i32] [i32 1048576, i32 1048576, i32 17825792, i32 1048580, i32 1048640, i32 1048576, i32 1048576, i32 1048832], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([19 x %struct.patval], [19 x %struct.patval]* @barrierspat45, i32 0, i32 0), i32 19, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 -3, i32 3, i32 1, i32 3, i32 4, i32 2, i32 795, [8 x i32] [i32 7402740, i32 -789561344, i32 2134179840, i32 88022815, i32 1089523920, i32 -193986560, i32 524223744, i32 3506047], [8 x i32] [i32 2097152, i32 2097152, i32 35651584, i32 2097160, i32 2097280, i32 2097152, i32 2097152, i32 2097664], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat46, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1179648, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat46, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat47, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1179648, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat47, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat48, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 3948288, i32 15790272, i32 -252706816, i32 1010565120, i32 -252706816, i32 1060896768, i32 3947532, i32 15790080], [8 x i32] [i32 1573120, i32 1056832, i32 9437184, i32 537919488, i32 537919488, i32 18350080, i32 1056772, i32 9437184], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat48, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([14 x %struct.patval], [14 x %struct.patval]* @barrierspat49, i32 0, i32 0), i32 14, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 3, i32 2, i32 4, i32 2, i32 721, [8 x i32] [i32 4177855, i32 -2131693328, i32 -118489088, i32 1061095936, i32 -252674048, i32 -1086390272, i32 171917119, i32 15792376], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat50, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 4194302, i32 -1057951504, i32 -51380224, i32 1061097216, i32 -252657664, i32 -12648448, i32 255803198, i32 15793404], [8 x i32] [i32 2179072, i32 1075838992, i32 69206016, i32 2098176, i32 2113536, i32 1075904512, i32 69206032, i32 2098176], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat50, i32 3, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat51, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 2236416, i32 10485792, i32 538968064, i32 2621440, i32 10485760, i32 539099136, i32 2621472, i32 2105344], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat52, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 0, i32 721, [8 x i32] [i32 16777214, i32 -252645136, i32 -50593792, i32 1061109504, i32 -252645376, i32 -65536, i32 1061109566, i32 16579836], [8 x i32] [i32 2179072, i32 1075838992, i32 69206016, i32 2098176, i32 2113536, i32 1075904512, i32 69206032, i32 2098176], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([28 x %struct.patval], [28 x %struct.patval]* @barrierspat53, i32 0, i32 0), i32 28, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 4, i32 3, i32 6, i32 2, i32 758, [8 x i32] [i32 12304319, i32 -1594826512, i32 -88473600, i32 792668714, i32 -521101152, i32 -1078263808, i32 708783935, i32 12253946], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([35 x %struct.patval], [35 x %struct.patval]* @barrierspat54, i32 0, i32 0), i32 35, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 -1, i32 -2, i32 3, i32 4, i32 4, i32 6, i32 2, i32 759, [8 x i32] [i32 1433894783, i32 1425331444, i32 -176859904, i32 1602180437, i32 -722185132, i32 2138526976, i32 1434410879, i32 1433794037], [8 x i32] [i32 2228224, i32 2097184, i32 2097152, i32 2097152, i32 2097152, i32 2228224, i32 2097184, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat55, i32 0, i32 0), i32 8, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 3948351, i32 15790272, i32 -252706816, i32 1061093376, i32 -252706816, i32 1060896768, i32 4144911, i32 15790320], [8 x i32] [i32 1048577, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048577, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat56, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 3161151, i32 15777792, i32 -265289728, i32 255787008, i32 -1058013184, i32 1009778688, i32 4132611, i32 3207408], [8 x i32] [i32 1048577, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048577, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat57, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 3, i32 1, i32 3, i32 0, i32 685, [8 x i32] [i32 742326272, i32 3685424, i32 15785984, i32 -256901120, i32 1010302976, i32 4140032, i32 11595824, i32 -521142272], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([14 x %struct.patval], [14 x %struct.patval]* @barrierspat58, i32 0, i32 0), i32 14, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 758, [8 x i32] [i32 16580607, i32 -252645184, i32 -16908288, i32 1061109547, i32 -252645216, i32 -262144, i32 1061109519, i32 16711423], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat58, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat59, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 3210484, i32 -1057964032, i32 -63963136, i32 222236416, i32 -1057964032, i32 -63963136, i32 255790336, i32 3210364], [8 x i32] [i32 1074176, i32 1083195392, i32 1678770176, i32 68682752, i32 1083195392, i32 1678770176, i32 68682752, i32 1074176], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([20 x %struct.patval], [20 x %struct.patval]* @barrierspat60, i32 0, i32 0), i32 20, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 3, i32 3, i32 4, i32 2, i32 722, [8 x i32] [i32 1568636927, i32 1425341684, i32 -185281536, i32 -8431872, i32 -51096576, i32 2139053312, i32 1468006271, i32 -722144004], [8 x i32] [i32 2490368, i32 2101280, i32 6291456, i32 270532608, i32 270532608, i32 2490368, i32 2101280, i32 6291456], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat60, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat61, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat61, i32 0, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat62, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 8323071, i32 -789516064, i32 -51118080, i32 1061101312, i32 -252653568, i32 -8519680, i32 524238639, i32 16055548], [8 x i32] [i32 2398208, i32 -2141155328, i32 -1738539008, i32 405014528, i32 -1872723968, i32 -1742471168, i32 136583168, i32 6330368], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat62, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat63, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 8323071, i32 -789516064, i32 -51118080, i32 1061101312, i32 -252653568, i32 -8519680, i32 524238639, i32 16055548], [8 x i32] [i32 2396192, i32 -2141188096, i32 408944640, i32 270927872, i32 274759680, i32 -1876688896, i32 136712192, i32 6297632], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat63, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat64, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 684, [8 x i32] [i32 3944448, i32 15740928, i32 821035008, i32 809238528, i32 821035008, i32 809238528, i32 3944448, i32 15740928], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat64, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat65, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 0, i32 685, [8 x i32] [i32 775880704, i32 3685432, i32 15785984, i32 -256901120, i32 1010302976, i32 4140544, i32 11595952, i32 -521142272], [8 x i32] [i32 1638400, i32 1056784, i32 9437184, i32 537919488, i32 537919488, i32 1638400, i32 1056784, i32 9437184], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat65, i32 0, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat66, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat66, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat67, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504, i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1028, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat68, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504, i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 65, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([36 x %struct.patval], [36 x %struct.patval]* @barrierspat69, i32 0, i32 0), i32 36, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 -2, i32 -3, i32 3, i32 2, i32 5, i32 5, i32 10, i32 797, [8 x i32] [i32 -16843010, i32 -16843094, i32 -86, i32 -1, i32 -16843010, i32 -16843094, i32 -86, i32 -1], [8 x i32] [i32 1081344, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 1050624], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat70, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 0, i32 758, [8 x i32] [i32 7404796, i32 -789528576, i32 -13369344, i32 255794959, i32 -1057959744, i32 -59768832, i32 524226304, i32 3473407], [8 x i32] [i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 1075838976, i32 69206016, i32 2098176, i32 2113536], i32 69, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @barrierspat71, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 12582911, i32 -521080592, i32 -50855936, i32 1061105408, i32 -252649472, i32 -4259840, i32 792674111, i32 16317692], [8 x i32] [i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @barrierspat72, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 12582911, i32 -521080592, i32 -50855936, i32 1061105408, i32 -252649472, i32 -4259840, i32 792674111, i32 16317692], [8 x i32] [i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat72, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat73, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 3996796, i32 -1057951744, i32 -51380224, i32 1061096704, i32 -252657664, i32 -63176704, i32 222248704, i32 15793396], [8 x i32] [i32 1081344, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 1050624], i32 65, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat73, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([36 x %struct.patval], [36 x %struct.patval]* @barrierspat74, i32 0, i32 0), i32 36, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i32 0, i32 -2, i32 5, i32 3, i32 5, i32 5, i32 10, i32 758, [8 x i32] [i32 16777215, i32 -252645136, i32 -65536, i32 1061109567, i32 -252645136, i32 -65536, i32 1061109567, i32 16777215], [8 x i32] [i32 2097188, i32 2097152, i32 2097152, i32 19005440, i32 2097152, i32 2097152, i32 2228480, i32 2097248], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat75, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i32 -2, i32 -3, i32 0, i32 0, i32 2, i32 3, i32 2, i32 797, [8 x i32] [i32 -252706816, i32 1027407872, i32 4144917, i32 15790320, i32 4013373, i32 15790160, i32 -252706816, i32 1061093376], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat75, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat76, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i32 -2, i32 -3, i32 0, i32 0, i32 2, i32 3, i32 2, i32 797, [8 x i32] [i32 -252706816, i32 1027407872, i32 4144917, i32 15790320, i32 4013373, i32 15790160, i32 -252706816, i32 1061093376], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat76, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat77, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0), i32 -2, i32 -3, i32 0, i32 0, i32 2, i32 3, i32 2, i32 797, [8 x i32] [i32 -252706816, i32 1027407872, i32 4144917, i32 15790320, i32 4013373, i32 15790160, i32 -252706816, i32 1061093376], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat77, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat78, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i32 -2, i32 -3, i32 0, i32 0, i32 2, i32 3, i32 2, i32 797, [8 x i32] [i32 -252706816, i32 1027407872, i32 4144917, i32 15790320, i32 4013373, i32 15790160, i32 -252706816, i32 1061093376], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat78, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat79, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i32 -1, i32 -3, i32 1, i32 0, i32 2, i32 3, i32 2, i32 796, [8 x i32] [i32 1089531904, i32 -185597952, i32 1061095168, i32 3964156, i32 15791356, i32 -252690432, i32 2084306944, i32 121585408], [8 x i32] [i32 1048576, i32 1048576, i32 1049088, i32 1048704, i32 1048584, i32 1048576, i32 1048576, i32 34603008], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat79, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat80, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i32 -1, i32 -3, i32 1, i32 0, i32 2, i32 3, i32 2, i32 796, [8 x i32] [i32 -1057951744, i32 -51380224, i32 1061096704, i32 3996796, i32 15793396, i32 -252657664, i32 -63176704, i32 222248704], [8 x i32] [i32 -2146435072, i32 135266304, i32 1050624, i32 1081344, i32 1050624, i32 1081344, i32 -2146435072, i32 135266304], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat80, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat81, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 16777215, i32 -252645136, i32 -50593792, i32 1061109504, i32 -252645376, i32 -65536, i32 1061109567, i32 16579836], [8 x i32] [i32 9832448, i32 537956384, i32 -2141716480, i32 403709952, i32 -1877991424, i32 144048128, i32 537925664, i32 5799936], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat81, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat82, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 2, i32 758, [8 x i32] [i32 16579836, i32 -252645376, i32 -65536, i32 1061109567, i32 -252645136, i32 -50593792, i32 1061109504, i32 16777215], [8 x i32] [i32 1581056, i32 9445376, i32 546439168, i32 538443808, i32 546308128, i32 538443776, i32 1581056, i32 9576448], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat82, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat83, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 0, i32 721, [8 x i32] [i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480, i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584], [8 x i32] [i32 1581056, i32 9445376, i32 546308096, i32 538443776, i32 546308096, i32 538443776, i32 1581056, i32 9445376], i32 18874880, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat83, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat84, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 3996796, i32 -1057951744, i32 -51380224, i32 1061096704, i32 -252657664, i32 -63176704, i32 222248704, i32 15793396], [8 x i32] [i32 1605632, i32 -2146426880, i32 143654912, i32 537921536, i32 537952256, i32 -2145910784, i32 135274496, i32 9439232], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat84, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat85, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144957, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144957, i32 15790320], [8 x i32] [i32 1572896, i32 1056768, i32 9437184, i32 538050560, i32 537919488, i32 1572864, i32 1187840, i32 9437216], i32 20972032, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat85, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat86, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 18874880, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat86, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat87, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 1061097216, i32 3996924, i32 -1057951744, i32 -51380224, i32 -63176704, i32 255803136, i32 15793404, i32 -252657664], [8 x i32] [i32 571475968, i32 1605640, i32 -2146426880, i32 143654912, i32 -2145910784, i32 135275008, i32 9439360, i32 537952256], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat87, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat88, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 685, [8 x i32] [i32 1010580480, i32 16579584, i32 -252645376, i32 -50593792, i32 -50593792, i32 1010580480, i32 16579584, i32 -252645376], [8 x i32] [i32 538443776, i32 1581056, i32 9445376, i32 546308096, i32 538443776, i32 1581056, i32 9445376, i32 546308096], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat88, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat89, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i32 0, i32 0), i32 -2, i32 -3, i32 0, i32 0, i32 2, i32 3, i32 2, i32 797, [8 x i32] [i32 -252706816, i32 1027342336, i32 4144901, i32 15790320, i32 3947837, i32 15790144, i32 -252706816, i32 1061093376], [8 x i32] [i32 -1877999616, i32 135528448, i32 1054720, i32 5275648, i32 1312768, i32 1085440, i32 -2142240768, i32 403701760], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat89, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat90, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504, i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat90, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat91, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504, i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat91, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat92, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 12123388, i32 -521084928, i32 -55050240, i32 792669952, i32 -521084928, i32 -55050240, i32 792669952, i32 12123388], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 18874881, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat92, i32 0, float 0x3FFCF5C280000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([18 x %struct.patval], [18 x %struct.patval]* @barrierspat93, i32 0, i32 0), i32 18, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i32 0, i32 -3, i32 3, i32 1, i32 3, i32 4, i32 2, i32 795, [8 x i32] [i32 11599100, i32 -521093120, i32 -12910592, i32 255799103, i32 -1057955600, i32 -55574528, i32 792661760, i32 3932159], [8 x i32] [i32 1056768, i32 9437184, i32 537985024, i32 1572880, i32 9437200, i32 537919488, i32 1572864, i32 1122304], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat93, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([14 x %struct.patval], [14 x %struct.patval]* @barrierspat94, i32 0, i32 0), i32 14, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 3997695, i32 -1057951552, i32 -51380224, i32 1061097216, i32 -252657664, i32 -12845056, i32 255803151, i32 15793404], [8 x i32] [i32 1345536, i32 -2146398208, i32 -2008023040, i32 403703808, i32 -1877966848, i32 -2011955200, i32 135272448, i32 5277696], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat94, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat95, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 12123388, i32 -521084928, i32 -55050240, i32 792669952, i32 -521084928, i32 -55050240, i32 792669952, i32 12123388], [8 x i32] [i32 1057800, i32 9453568, i32 1611661312, i32 102236160, i32 1083179008, i32 605028352, i32 1574400, i32 1073280], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat95, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat96, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144951, i32 15790320, i32 -252706816, i32 1027538944, i32 -252706816, i32 1061093376, i32 4144447, i32 15790192], [8 x i32] [i32 1048578, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048578, i32 1048576], i32 16777728, float 2.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat97, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144951, i32 15790320, i32 -252706816, i32 1027538944, i32 -252706816, i32 1061093376, i32 4144447, i32 15790192], [8 x i32] [i32 1048610, i32 1048576, i32 1048576, i32 1179648, i32 1048576, i32 1048576, i32 1179650, i32 1048608], i32 16777728, float 2.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([15 x %struct.patval], [15 x %struct.patval]* @barrierspat98, i32 0, i32 0), i32 15, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0), i32 -2, i32 0, i32 2, i32 2, i32 4, i32 2, i32 0, i32 686, [8 x i32] [i32 792669981, i32 12189693, i32 -521084720, i32 -4653056, i32 -4653056, i32 792669981, i32 12189693, i32 -521084720], [8 x i32] [i32 1048584, i32 1049088, i32 1048704, i32 34603008, i32 34603008, i32 1048584, i32 1049088, i32 1048704], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat99, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 0, i32 685, [8 x i32] [i32 1061105437, i32 12385532, i32 -521080832, i32 -458752, i32 -54788096, i32 792674048, i32 16383997, i32 -252649264], [8 x i32] [i32 537919496, i32 1572864, i32 1056768, i32 42991616, i32 1572864, i32 1056768, i32 9437696, i32 537919616], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat99, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat100, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 0, i32 721, [8 x i32] [i32 12385280, i32 -521080832, i32 -50855936, i32 1010576384, i32 -252649472, i32 -54788096, i32 742145024, i32 16317440], [8 x i32] [i32 1073152, i32 1083179008, i32 605028352, i32 1573888, i32 9453568, i32 1611661312, i32 68681728, i32 1057792], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat100, i32 0, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat101, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144927, i32 15790320, i32 -252706816, i32 1060962304, i32 -252706816, i32 1061093376, i32 4013887, i32 15790288], [8 x i32] [i32 1179648, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048576], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat101, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat102, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 725556992, i32 7928060, i32 -789536768, i32 -1129054208, i32 -126353408, i32 524233472, i32 11844860, i32 -1594830848], [8 x i32] [i32 34603008, i32 1048584, i32 1048576, i32 1048576, i32 1048576, i32 1049088, i32 1048704, i32 1048576], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat102, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat103, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1179648, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048576], i32 16777728, float 1.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat103, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat104, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 2, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 16777728, float 1.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat104, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat105, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 2, i32 685, [8 x i32] [i32 1061093376, i32 3947580, i32 15790080, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320, i32 -252706816], [8 x i32] [i32 269484032, i32 1310720, i32 1052672, i32 5242880, i32 1310720, i32 1052672, i32 5242880, i32 269484032], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat105, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @barrierspat106, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 759, [8 x i32] [i32 -50529028, i32 -50529280, i32 -256, i32 -1, i32 -50529028, i32 -50529280, i32 -256, i32 -1], [8 x i32] [i32 76546048, i32 537920512, i32 1589248, i32 1074798592, i32 68165632, i32 9438208, i32 537935872, i32 1075314688], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @barrierspat107, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 759, [8 x i32] [i32 -50529028, i32 -50529280, i32 -256, i32 -1, i32 -50529028, i32 -50529280, i32 -256, i32 -1], [8 x i32] [i32 76554240, i32 546309120, i32 538460160, i32 1075322880, i32 76554240, i32 546309120, i32 538460160, i32 1075322880], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat108, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i32 0, i32 0, i32 3, i32 2, i32 3, i32 2, i32 0, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @barrierspat109, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.109, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 1, i32 3, i32 3, i32 2, i32 758, [8 x i32] [i32 3210492, i32 -1057964032, i32 -47185920, i32 255790855, i32 -1057963968, i32 -63963136, i32 255790848, i32 3210751], [8 x i32] [i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat109, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([24 x %struct.patval], [24 x %struct.patval]* @barrierspat110, i32 0, i32 0), i32 24, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0), i32 -2, i32 -1, i32 3, i32 2, i32 5, i32 3, i32 0, i32 723, [8 x i32] [i32 -1426128897, i32 -84215062, i32 -50550616, i32 -1077952768, i32 -84215296, i32 -87382, i32 -1077952593, i32 -1459815172], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([24 x %struct.patval], [24 x %struct.patval]* @barrierspat111, i32 0, i32 0), i32 24, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0), i32 -2, i32 -1, i32 3, i32 2, i32 5, i32 3, i32 0, i32 723, [8 x i32] [i32 -1426128897, i32 -84215062, i32 -50550616, i32 -1077952768, i32 -84215296, i32 -87382, i32 -1077952593, i32 -1459815172], [8 x i32] [i32 9437184, i32 537919488, i32 1572864, i32 1056768, i32 1056768, i32 9437184, i32 537919488, i32 1572864], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat111, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @barrierspat112, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i32 -1, i32 -1, i32 3, i32 1, i32 4, i32 2, i32 0, i32 722, [8 x i32] [i32 -1459815172, i32 -117901312, i32 -50550784, i32 -1077952768, i32 -117901312, i32 -50550784, i32 -1077952768, i32 -1459815172], [8 x i32] [i32 9437184, i32 537919488, i32 1572864, i32 1056768, i32 1056768, i32 9437184, i32 537919488, i32 1572864], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat112, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat113, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 722, [8 x i32] [i32 -1459815376, i32 -117901312, i32 -50550784, i32 -1128285184, i32 -117901312, i32 -50550784, i32 -1128285184, i32 -1459815376], [8 x i32] [i32 9437184, i32 537919488, i32 1572864, i32 1056768, i32 1056768, i32 9437184, i32 537919488, i32 1572864], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat113, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat114, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 722, [8 x i32] [i32 -1191379920, i32 -117639168, i32 -50546688, i32 -1124090880, i32 -117639168, i32 -50546688, i32 -1124090880, i32 -1191379920], [8 x i32] [i32 278396928, i32 538189824, i32 9965568, i32 542121984, i32 538189824, i32 9965568, i32 542121984, i32 278396928], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat115, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 722, [8 x i32] [i32 -1191379920, i32 -117639168, i32 -50546688, i32 -1124090880, i32 -117639168, i32 -50546688, i32 -1124090880, i32 -1191379920], [8 x i32] [i32 9961472, i32 537927680, i32 9961472, i32 537927680, i32 537927680, i32 9961472, i32 537927680, i32 9961472], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat115, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([22 x %struct.patval], [22 x %struct.patval]* @barrierspat116, i32 0, i32 0), i32 22, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0), i32 -1, i32 -3, i32 3, i32 1, i32 4, i32 4, i32 10, i32 796, [8 x i32] [i32 -1057948420, i32 -51331072, i32 -12644608, i32 255852543, i32 -1057948420, i32 -51331072, i32 -12644608, i32 255852543], [8 x i32] [i32 -2146400256, i32 -2012184576, i32 -2012215296, i32 135301120, i32 -2146400256, i32 -2012184576, i32 -2012215296, i32 135301120], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat116, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat117, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 685, [8 x i32] [i32 205272064, i32 15760384, i32 1894825984, i32 -197394432, i32 2096103424, i32 876350464, i32 3994624, i32 -1057984512], [8 x i32] [i32 135274496, i32 9439232, i32 537952256, i32 -2145910784, i32 143654912, i32 537921536, i32 1605632, i32 -2146426880], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat117, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat118, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 685, [8 x i32] [i32 205270016, i32 11598848, i32 -521093120, i32 -63438848, i32 -55574528, i32 742132736, i32 3734528, i32 -1057955840], [8 x i32] [i32 135268352, i32 1083392, i32 -2146402304, i32 -2012217344, i32 -2012217344, i32 135268352, i32 1083392, i32 -2146402304], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat118, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat119, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 1, i32 2, i32 722, [8 x i32] [i32 -1058013184, i32 1009778688, i32 3935232, i32 3207168, i32 3161088, i32 15777792, i32 -265289728, i32 205258752], [8 x i32] [i32 -2146435072, i32 135266304, i32 1050624, i32 1081344, i32 1050624, i32 1081344, i32 -2146435072, i32 135266304], i32 16777728, float 5.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat119, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat120, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 222244608, i32 11599092, i32 -521093120, i32 -63438848, i32 -55574528, i32 792661248, i32 3734652, i32 -1057955840], [8 x i32] [i32 135266816, i32 1050752, i32 1081344, i32 -2146435072, i32 135266304, i32 34605056, i32 1081352, i32 -2146435072], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat120, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat121, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 1009778688, i32 3935232, i32 3207168, i32 -1058013184, i32 205258752, i32 3161088, i32 15777792, i32 -265289728], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat121, i32 0, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat122, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.122, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat122, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([15 x %struct.patval], [15 x %struct.patval]* @barrierspat123, i32 0, i32 0), i32 15, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 759, [8 x i32] [i32 -386335492, i32 -50796544, i32 -4215808, i32 -1346371777, i32 -386335504, i32 -50796544, i32 -4215040, i32 -1396703233], [8 x i32] [i32 1083187200, i32 613416960, i32 538444800, i32 1597440, i32 9446400, i32 546324480, i32 1612185600, i32 68689920], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat123, i32 0, float 0x3FEF0A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat124, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i32 0, i32 0), i32 -1, i32 -3, i32 1, i32 0, i32 2, i32 3, i32 0, i32 796, [8 x i32] [i32 -252649472, i32 -54788096, i32 792673280, i32 16317500, i32 12385520, i32 -521080832, i32 -50855936, i32 1010773760], [8 x i32] [i32 -1869611008, i32 672399360, i32 1579008, i32 5283840, i32 1320960, i32 9474048, i32 -1605369856, i32 404226048], i32 16777728, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat124, i32 0, float 0x3FEF0A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat125, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.125, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 0, i32 1, i32 2, i32 0, i32 758, [8 x i32] [i32 15785984, i32 -256901120, i32 792657920, i32 3685436, i32 11596016, i32 -521142272, i32 1010302976, i32 4140800], [8 x i32] [i32 9437184, i32 537919488, i32 1572864, i32 1056768, i32 1056768, i32 9437184, i32 537919488, i32 1572864], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat125, i32 0, float 0x40001CAC00000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat126, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 0, i32 759, [8 x i32] [i32 -252125184, i32 -54779904, i32 801062656, i32 553188604, i32 549256444, i32 -520556544, i32 -50847744, i32 1069494016], [8 x i32] [i32 546308096, i32 538443776, i32 1581056, i32 9445376, i32 1581056, i32 9445376, i32 546308096, i32 538443776], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat126, i32 0, float 0x40001CAC00000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat127, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 2, i32 758, [8 x i32] [i32 16317692, i32 -252649472, i32 -4259840, i32 792674111, i32 -521080592, i32 -50855936, i32 1061105408, i32 12582911], [8 x i32] [i32 1056768, i32 9437184, i32 538050560, i32 1572896, i32 9437216, i32 537919488, i32 1572864, i32 1187840], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat127, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([20 x %struct.patval], [20 x %struct.patval]* @barrierspat128, i32 0, i32 0), i32 20, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 2, i32 3, i32 4, i32 2, i32 758, [8 x i32] [i32 16646141, i32 -252645168, i32 -196608, i32 1061109533, i32 -252645168, i32 -196608, i32 1061109533, i32 16646141], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 16777728, float 1.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat128, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat129, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0), i32 -2, i32 0, i32 0, i32 4, i32 2, i32 4, i32 2, i32 686, [8 x i32] [i32 792657920, i32 3685439, i32 15785984, i32 -256901120, i32 1010302976, i32 4140803, i32 11596016, i32 -521142272], [8 x i32] [i32 1048576, i32 1048578, i32 1048576, i32 1048576, i32 1048576, i32 1048578, i32 1048576, i32 1048576], i32 16777728, float 2.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat129, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat130, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.130, i32 0, i32 0), i32 -2, i32 0, i32 1, i32 2, i32 3, i32 2, i32 0, i32 686, [8 x i32] [i32 1061109504, i32 16580607, i32 -252645184, i32 -50593792, i32 -262144, i32 1061109519, i32 16579836, i32 -252645376], [8 x i32] [i32 1049088, i32 1049216, i32 1048704, i32 1048576, i32 34603008, i32 34603016, i32 1048584, i32 1048576], i32 16777728, float 2.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat131, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 0, i32 721, [8 x i32] [i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480, i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584], [8 x i32] [i32 9961472, i32 537927680, i32 9961472, i32 537927680, i32 537927680, i32 9961472, i32 537927680, i32 9961472], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat131, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat132, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 685, [8 x i32] [i32 255803136, i32 15793404, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061097216, i32 3996924, i32 -1057951744], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 16777729, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat132, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat133, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 3210492, i32 -1057964032, i32 -63963136, i32 255790848, i32 -1057964032, i32 -63963136, i32 255790848, i32 3210492], [8 x i32] [i32 1083392, i32 -2146402304, i32 -2012217344, i32 135268352, i32 -2146402304, i32 -2012217344, i32 135268352, i32 1083392], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat133, i32 0, float 5.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat134, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 821885952, i32 -251858944, i32 -50581504, i32 1023163392, i32 -251858944, i32 -50581504, i32 1023163392, i32 821885952], [8 x i32] [i32 278405120, i32 546578432, i32 546836480, i32 542646272, i32 546578432, i32 546836480, i32 542646272, i32 278405120], i32 16777732, float 2.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat134, i32 0, float 5.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat135, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.135, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 1027555072, i32 16579828, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061108992, i32 16579708, i32 -252645376], [8 x i32] [i32 537921536, i32 1605632, i32 -2146426880, i32 143654912, i32 -2145910784, i32 135274496, i32 9439232, i32 537952256], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat135, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat136, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.136, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 0, i32 685, [8 x i32] [i32 1061093376, i32 3947580, i32 15790080, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320, i32 -252706816], [8 x i32] [i32 538443776, i32 1581056, i32 9445376, i32 546308096, i32 538443776, i32 1581056, i32 9445376, i32 546308096], i32 16777728, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat136, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat137, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 0, i32 759, [8 x i32] [i32 -252123136, i32 -54747136, i32 -1346420992, i32 687406332, i32 -1598227204, i32 -386338816, i32 -50845696, i32 1069526784], [8 x i32] [i32 546308096, i32 538443776, i32 1581056, i32 9445376, i32 1581056, i32 9445376, i32 546308096, i32 538443776], i32 16777728, float 4.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat137, i32 0, float 0x3FCD53CDE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat138, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 3619584, i32 15765744, i32 -1334837248, i32 406585344, i32 -1863319552, i32 993460224, i32 3938364, i32 7385088], [8 x i32] [i32 1122816, i32 9437328, i32 537919488, i32 1572864, i32 9437184, i32 571539456, i32 1572888, i32 1056768], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat138, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat139, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.139, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 3619584, i32 15765744, i32 -1334837248, i32 406585344, i32 -1863319552, i32 993460224, i32 3938364, i32 7385088], [8 x i32] [i32 1057280, i32 9437312, i32 537919488, i32 1572864, i32 9437184, i32 571473920, i32 1572872, i32 1056768], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat139, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat140, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.140, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 3880704, i32 15753456, i32 1890582528, i32 607911936, i32 1626341376, i32 926613504, i32 3941436, i32 11563008], [8 x i32] [i32 2101504, i32 6291520, i32 270532608, i32 2359296, i32 6291456, i32 287309824, i32 2359300, i32 2101248], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat140, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat141, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.141, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 758, [8 x i32] [i32 7401536, i32 -789577728, i32 1026818048, i32 3939591, i32 15781952, i32 -261095424, i32 490471424, i32 3423495], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572865, i32 9437184, i32 537919488, i32 1572864, i32 1056769], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat141, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat142, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.142, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 758, [8 x i32] [i32 11595904, i32 -521142272, i32 1043857408, i32 3943947, i32 15786112, i32 -256901120, i32 775684096, i32 3685899], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359298, i32 6291456, i32 270532608, i32 2359296, i32 2101250], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat142, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat143, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.143, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 8, i32 721, [8 x i32] [i32 7385088, i32 -1863319552, i32 942931968, i32 3938304, i32 15765504, i32 -1334837248, i32 406585344, i32 3422208], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat143, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat144, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.144, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 8, i32 721, [8 x i32] [i32 3207280, i32 -1058013184, i32 1009778688, i32 4132096, i32 15777792, i32 -265289728, i32 222232576, i32 3161140], [8 x i32] [i32 1048608, i32 1048576, i32 1048576, i32 1179648, i32 1048576, i32 1048576, i32 1179648, i32 1048608], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat144, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat145, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.145, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 8, i32 721, [8 x i32] [i32 3207344, i32 -1058013184, i32 1009778688, i32 4132352, i32 15777792, i32 -265289728, i32 239009792, i32 3161144], [8 x i32] [i32 2097168, i32 2097152, i32 2097152, i32 2162688, i32 2097152, i32 2097152, i32 2162688, i32 2097168], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat145, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat146, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.146, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 721, [8 x i32] [i32 15793152, i32 -252657664, i32 -63176704, i32 205274112, i32 -1057951744, i32 -51380224, i32 1010568192, i32 3996672], [8 x i32] [i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 1075838976, i32 69206016, i32 2098176, i32 2113536], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat146, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat147, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.147, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 721, [8 x i32] [i32 15793152, i32 -252657664, i32 -63176704, i32 205274112, i32 -1057951744, i32 -51380224, i32 1010568192, i32 3996672], [8 x i32] [i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 1075838976, i32 69206016, i32 2098176, i32 2113536], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat147, i32 3, float 0x400570A3E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat148, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.148, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 1, i32 1, i32 3, i32 2, i32 758, [8 x i32] [i32 15793152, i32 -252657664, i32 -12648448, i32 205274172, i32 -1057951504, i32 -51380224, i32 1010568192, i32 4194048], [8 x i32] [i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 1075838976, i32 69206016, i32 2098176, i32 2113536], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat148, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat149, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.149, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 721, [8 x i32] [i32 8189952, i32 -789532672, i32 -1124859904, i32 943463424, i32 -1326395392, i32 -126091264, i32 473708544, i32 16038912], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat149, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat150, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.150, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 721, [8 x i32] [i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480, i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat150, i32 3, float 0x4006666660000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat151, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.151, i32 0, i32 0), i32 0, i32 -3, i32 2, i32 0, i32 2, i32 3, i32 0, i32 795, [8 x i32] [i32 15777984, i32 -265289728, i32 255787008, i32 3161918, i32 3207408, i32 -1058013184, i32 1060110336, i32 4132622], [8 x i32] [i32 2097216, i32 2097152, i32 2097152, i32 2097408, i32 2097152, i32 2097152, i32 18874368, i32 2097156], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat151, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat152, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.152, i32 0, i32 0), i32 -2, i32 0, i32 0, i32 2, i32 2, i32 2, i32 0, i32 686, [8 x i32] [i32 1061093376, i32 4144957, i32 15790320, i32 -252706816, i32 1061093376, i32 4144957, i32 15790320, i32 -252706816], [8 x i32] [i32 2490368, i32 2101280, i32 6291456, i32 270532608, i32 270532608, i32 2490368, i32 2101280, i32 6291456], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat152, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat153, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 12385532, i32 -521080832, i32 -50855936, i32 1061105408, i32 -252649472, i32 -54788096, i32 792674048, i32 16317692], [8 x i32] [i32 1597472, i32 1083187200, i32 613416960, i32 538575872, i32 546324480, i32 1612185600, i32 68820992, i32 9446432], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat153, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat154, i32 0, i32 0), i32 3, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.154, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 809238528, i32 3944448, i32 15740928, i32 821035008, i32 809238528, i32 3944448, i32 15740928, i32 821035008], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat154, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat155, i32 0, i32 0), i32 3, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.155, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 809238528, i32 3944448, i32 15740928, i32 821035008, i32 809238528, i32 3944448, i32 15740928, i32 821035008], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat155, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat156, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.156, i32 0, i32 0), i32 -2, i32 0, i32 0, i32 1, i32 2, i32 1, i32 0, i32 686, [8 x i32] [i32 1010565120, i32 4144128, i32 15790128, i32 -252706816, i32 1010761728, i32 3947568, i32 15790080, i32 -252706816], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat156, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat157, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.157, i32 0, i32 0), i32 -3, i32 0, i32 0, i32 1, i32 3, i32 1, i32 8, i32 687, [8 x i32] [i32 1010565120, i32 4144896, i32 15790320, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080, i32 -252706816], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat157, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat158, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.158, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 0, i32 3, i32 1, i32 8, i32 722, [8 x i32] [i32 -1057951504, i32 -51380224, i32 1010568192, i32 4194048, i32 15793152, i32 -252657664, i32 -12648448, i32 205274172], [8 x i32] [i32 2097248, i32 2097152, i32 2097152, i32 2228480, i32 2097152, i32 2097152, i32 19005440, i32 2097188], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat158, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat159, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.159, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 1, i32 2, i32 1, i32 8, i32 685, [8 x i32] [i32 1010580480, i32 16579584, i32 -252645376, i32 -50593792, i32 -50593792, i32 1010580480, i32 16579584, i32 -252645376], [8 x i32] [i32 2361344, i32 2134016, i32 -2141192192, i32 404750336, i32 -1876951040, i32 136577024, i32 2103296, i32 6324224], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat159, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat160, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.160, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 8, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1057792, i32 9453568, i32 1611661312, i32 68681728, i32 1083179008, i32 605028352, i32 1573888, i32 1073152], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat160, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat161, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.161, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 721, [8 x i32] [i32 16709376, i32 -252677920, i32 2096889856, i32 876362752, i32 1894838272, i32 -134348800, i32 1010578476, i32 16546816], [8 x i32] [i32 2359552, i32 2101312, i32 6291456, i32 270532608, i32 270532608, i32 19136512, i32 2101252, i32 6291456], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat161, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat162, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.162, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 2, i32 1, i32 4, i32 2, i32 758, [8 x i32] [i32 16709376, i32 -252677920, i32 2147418112, i32 876362812, i32 1894838512, i32 -134348800, i32 1010578476, i32 16744192], [8 x i32] [i32 2359552, i32 2101312, i32 6291456, i32 270532608, i32 270532608, i32 19136512, i32 2101252, i32 6291456], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat162, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat163, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.163, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 0, i32 2, i32 1, i32 0, i32 647, [8 x i32] [i32 -1057951744, i32 -51380224, i32 1010568192, i32 3996672, i32 15793152, i32 -252657664, i32 -63176704, i32 205274112], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat163, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat164, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.164, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 647, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat164, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat165, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 0, i32 2, i32 1, i32 0, i32 722, [8 x i32] [i32 -252657664, i32 -63176704, i32 205274112, i32 15793152, i32 3996672, i32 -1057951744, i32 -51380224, i32 1010568192], [8 x i32] [i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat165, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat166, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.166, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 0, i32 2, i32 1, i32 0, i32 647, [8 x i32] [i32 -1057964032, i32 -63963136, i32 205261824, i32 3210240, i32 3210240, i32 -1057964032, i32 -63963136, i32 205261824], [8 x i32] [i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat166, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @barrierspat167, i32 0, i32 0), i32 2, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.167, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 684, [8 x i32] [i32 3932160, i32 3158016, i32 15728640, i32 808452096, i32 808452096, i32 3932160, i32 3158016, i32 15728640], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat167, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @barrierspat168, i32 0, i32 0), i32 2, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.168, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 684, [8 x i32] [i32 3932160, i32 3158016, i32 15728640, i32 808452096, i32 808452096, i32 3932160, i32 3158016, i32 15728640], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat168, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat169, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.169, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 8, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat169, i32 3, float 0x3FFCF5C280000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat170, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.170, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 758, [8 x i32] [i32 15790320, i32 -252706816, i32 1060896768, i32 4144908, i32 15790272, i32 -252706816, i32 1061093376, i32 3948348], [8 x i32] [i32 2130016, i32 -2145386496, i32 153092096, i32 2230532, i32 2129984, i32 -2145386496, i32 153223168, i32 2099492], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat170, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat171, i32 0, i32 0), i32 3, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.171, i32 0, i32 0), i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 684, [8 x i32] [i32 4128768, i32 3158064, i32 15728640, i32 808452096, i32 808452096, i32 4128768, i32 3158064, i32 15728640], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat171, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat172, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.172, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 684, [8 x i32] [i32 3939328, i32 7401472, i32 -789577728, i32 1010040832, i32 -261095424, i32 473694208, i32 3423232, i32 15781888], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat172, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat173, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.173, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 721, [8 x i32] [i32 4194048, i32 -1057951504, i32 -51380224, i32 1010568192, i32 -252657664, i32 -12648448, i32 205274172, i32 15793152], [8 x i32] [i32 1343488, i32 -2146430976, i32 139460608, i32 269486080, i32 269516800, i32 -2146172928, i32 135270400, i32 5244928], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat173, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat174, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.174, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 721, [8 x i32] [i32 4194048, i32 -1057951504, i32 -51380224, i32 1010568192, i32 -252657664, i32 -12648448, i32 205274172, i32 15793152], [8 x i32] [i32 2637824, i32 1075847168, i32 77594624, i32 538969088, i32 538984448, i32 1076363264, i32 69214208, i32 10486784], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat174, i32 3, float 0x3FFF5C2900000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat175, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.175, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 3, i32 1, i32 4, i32 2, i32 721, [8 x i32] [i32 4194048, i32 -1057951504, i32 -51380224, i32 1010568192, i32 -252657664, i32 -12648448, i32 205274172, i32 15793152], [8 x i32] [i32 2768896, i32 1075847200, i32 77594624, i32 538969088, i32 538984448, i32 1076494336, i32 69214240, i32 10486784], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat175, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat176, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.176, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 758, [8 x i32] [i32 15790320, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 4144959], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048578, i32 1048576, i32 1048576, i32 1048576, i32 1048578], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat176, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat177, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.177, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 2162690, i32 2097168, i32 2097152, i32 2097152, i32 2097152, i32 2162688, i32 2097170, i32 2097152], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat177, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat178, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.178, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 2, i32 758, [8 x i32] [i32 15790192, i32 -252706816, i32 1060962304, i32 4144415, i32 15790288, i32 -252706816, i32 1027538944, i32 4013879], [8 x i32] [i32 1085456, i32 -2142240768, i32 403701760, i32 1378304, i32 5275648, i32 -1877999616, i32 135593984, i32 1054736], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat178, i32 0, float 0x3FF7F6D340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat179, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.179, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 0, i32 1, i32 2, i32 0, i32 758, [8 x i32] [i32 15790080, i32 -252706816, i32 1061093376, i32 3947580, i32 15790320, i32 -252706816, i32 1010565120, i32 4144896], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat179, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat180, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.180, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 684, [8 x i32] [i32 3948344, i32 15790272, i32 -252706816, i32 1044316160, i32 -252706816, i32 1060896768, i32 4144652, i32 15790256], [8 x i32] [i32 1574400, i32 1073280, i32 1083179008, i32 605028352, i32 1611661312, i32 102236160, i32 1057800, i32 9453568], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat180, i32 0, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat181, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.181, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 684, [8 x i32] [i32 3948340, i32 15790272, i32 -252706816, i32 1027538944, i32 -252706816, i32 1060896768, i32 4144396, i32 15790192], [8 x i32] [i32 2099456, i32 2129984, i32 -2145386496, i32 136314880, i32 -2145386496, i32 153092096, i32 2099204, i32 2129920], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat181, i32 3, float 0x3FEF0A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat182, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.182, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 3948351, i32 15790272, i32 -252706816, i32 1061093376, i32 -252706816, i32 1060896768, i32 4144911, i32 15790320], [8 x i32] [i32 1574401, i32 1073280, i32 1083179008, i32 605028352, i32 1611661312, i32 102236160, i32 1057801, i32 9453568], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat182, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat183, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.183, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 2164994, i32 2130000, i32 -2145386496, i32 136314880, i32 -2145386496, i32 153157632, i32 2099222, i32 2129920], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat183, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat184, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.184, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 12385532, i32 -521080832, i32 -50855936, i32 1061105408, i32 -252649472, i32 -54788096, i32 792674048, i32 16317692], [8 x i32] [i32 2121728, i32 1084227584, i32 606076928, i32 2622464, i32 10502144, i32 1612709888, i32 69730304, i32 2106368], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat184, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat185, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.185, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 0, i32 758, [8 x i32] [i32 12123376, i32 -521084928, i32 -4718592, i32 742338319, i32 -521084736, i32 -55050240, i32 792669184, i32 12123967], [8 x i32] [i32 1049632, i32 1064960, i32 1108344832, i32 68288520, i32 1074790528, i32 68157440, i32 1180672, i32 1065504], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat185, i32 0, float 1.000000e+00 }, %struct.pattern zeroinitializer], align 16
@barrierspat_db = global %struct.pattern_db { i32 -1, i32 0, %struct.pattern* getelementptr inbounds ([187 x %struct.pattern], [187 x %struct.pattern]* @barrierspat, i32 0, i32 0), %struct.dfa_rt* null }, align 8
@barrierspat0 = internal global [3 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }], align 16
@.str = private unnamed_addr constant [9 x i8] c"Barrier1\00", align 1
@barrierspat1 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 720, i32 5 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 757, i32 4 }], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"Barrier1b\00", align 1
@barrierspat2 = internal global [9 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"Barrier2\00", align 1
@barrierspat3 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 720, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 757, i32 0 }], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"Barrier3\00", align 1
@barrierspat4 = internal global [2 x %struct.patval] [%struct.patval { i32 647, i32 5 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"Barrier4\00", align 1
@barrierspat5 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 722, i32 3 }], align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"Barrier5\00", align 1
@barrierspat6 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 5 }, %struct.patval { i32 648, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.6 = private unnamed_addr constant [9 x i8] c"Barrier6\00", align 1
@barrierspat7 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.7 = private unnamed_addr constant [10 x i8] c"Barrier6b\00", align 1
@barrierspat8 = internal global [4 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"Barrier7\00", align 1
@barrierspat9 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.9 = private unnamed_addr constant [9 x i8] c"Barrier8\00", align 1
@barrierspat10 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.10 = private unnamed_addr constant [9 x i8] c"Barrier9\00", align 1
@barrierspat11 = internal global [4 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 721, i32 2 }], align 16
@.str.11 = private unnamed_addr constant [10 x i8] c"Barrier10\00", align 1
@barrierspat12 = internal global [4 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.12 = private unnamed_addr constant [10 x i8] c"Barrier11\00", align 1
@barrierspat13 = internal global [5 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.13 = private unnamed_addr constant [10 x i8] c"Barrier12\00", align 1
@barrierspat14 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.14 = private unnamed_addr constant [10 x i8] c"Barrier13\00", align 1
@barrierspat15 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 4 }], align 16
@.str.15 = private unnamed_addr constant [10 x i8] c"Barrier14\00", align 1
@barrierspat16 = internal global [12 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 760, i32 3 }], align 16
@.str.16 = private unnamed_addr constant [10 x i8] c"Barrier15\00", align 1
@barrierspat17 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.17 = private unnamed_addr constant [10 x i8] c"Barrier16\00", align 1
@barrierspat18 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.18 = private unnamed_addr constant [11 x i8] c"Barrier16b\00", align 1
@barrierspat19 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.19 = private unnamed_addr constant [10 x i8] c"Barrier17\00", align 1
@barrierspat20 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 758, i32 2 }], align 16
@.str.20 = private unnamed_addr constant [10 x i8] c"Barrier18\00", align 1
@barrierspat21 = internal global [8 x %struct.patval] [%struct.patval { i32 758, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.21 = private unnamed_addr constant [10 x i8] c"Barrier19\00", align 1
@barrierspat22 = internal global [8 x %struct.patval] [%struct.patval { i32 758, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.22 = private unnamed_addr constant [10 x i8] c"Barrier20\00", align 1
@barrierspat23 = internal global [16 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 758, i32 5 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 719, i32 3 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 759, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 760, i32 3 }], align 16
@.str.23 = private unnamed_addr constant [10 x i8] c"Barrier21\00", align 1
@barrierspat24 = internal global [12 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 758, i32 5 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 757, i32 0 }], align 16
@.str.24 = private unnamed_addr constant [10 x i8] c"Barrier22\00", align 1
@barrierspat25 = internal global [28 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 758, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 831, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 719, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 832, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 793, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 833, i32 3 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 797, i32 3 }, %struct.patval { i32 834, i32 3 }], align 16
@.str.25 = private unnamed_addr constant [11 x i8] c"Barrier22a\00", align 1
@barrierspat26 = internal global [12 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 797, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.26 = private unnamed_addr constant [11 x i8] c"Barrier22b\00", align 1
@barrierspat27 = internal global [8 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 795, i32 0 }], align 16
@.str.27 = private unnamed_addr constant [10 x i8] c"Barrier23\00", align 1
@barrierspat28 = internal global [13 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.28 = private unnamed_addr constant [10 x i8] c"Barrier24\00", align 1
@barrierspat29 = internal global [20 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 796, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 719, i32 3 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 761, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 797, i32 3 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 724, i32 3 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.29 = private unnamed_addr constant [10 x i8] c"Barrier25\00", align 1
@barrierspat30 = internal global [8 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 796, i32 1 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.30 = private unnamed_addr constant [10 x i8] c"Barrier26\00", align 1
@barrierspat31 = internal global [9 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 722, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 723, i32 4 }], align 16
@.str.31 = private unnamed_addr constant [10 x i8] c"Barrier27\00", align 1
@barrierspat32 = internal global [9 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 723, i32 3 }], align 16
@.str.32 = private unnamed_addr constant [10 x i8] c"Barrier28\00", align 1
@barrierspat33 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 5 }, %struct.patval { i32 648, i32 5 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.33 = private unnamed_addr constant [10 x i8] c"Barrier29\00", align 1
@barrierspat34 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.34 = private unnamed_addr constant [10 x i8] c"Barrier30\00", align 1
@barrierspat35 = internal global [13 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 612, i32 4 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.35 = private unnamed_addr constant [10 x i8] c"Barrier31\00", align 1
@barrierspat36 = internal global [11 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 649, i32 0 }], align 16
@.str.36 = private unnamed_addr constant [10 x i8] c"Barrier32\00", align 1
@barrierspat37 = internal global [12 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 795, i32 4 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.37 = private unnamed_addr constant [10 x i8] c"Barrier33\00", align 1
@barrierspat38 = internal global [9 x %struct.patval] [%struct.patval { i32 723, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.38 = private unnamed_addr constant [10 x i8] c"Barrier34\00", align 1
@barrierspat39 = internal global [8 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.39 = private unnamed_addr constant [11 x i8] c"Barrier34b\00", align 1
@barrierspat40 = internal global [15 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 795, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 797, i32 4 }], align 16
@.str.40 = private unnamed_addr constant [10 x i8] c"Barrier35\00", align 1
@barrierspat41 = internal global [15 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 797, i32 3 }], align 16
@.str.41 = private unnamed_addr constant [10 x i8] c"Barrier36\00", align 1
@barrierspat42 = internal global [12 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 797, i32 3 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.42 = private unnamed_addr constant [10 x i8] c"Barrier37\00", align 1
@barrierspat43 = internal global [5 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.43 = private unnamed_addr constant [10 x i8] c"Barrier38\00", align 1
@barrierspat44 = internal global [19 x %struct.patval] [%struct.patval { i32 649, i32 5 }, %struct.patval { i32 686, i32 5 }, %struct.patval { i32 650, i32 5 }, %struct.patval { i32 687, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 574, i32 4 }, %struct.patval { i32 724, i32 4 }, %struct.patval { i32 722, i32 4 }, %struct.patval { i32 575, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 573, i32 4 }, %struct.patval { i32 610, i32 4 }, %struct.patval { i32 723, i32 4 }, %struct.patval { i32 576, i32 4 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.44 = private unnamed_addr constant [10 x i8] c"Barrier39\00", align 1
@barrierspat45 = internal global [19 x %struct.patval] [%struct.patval { i32 649, i32 5 }, %struct.patval { i32 686, i32 5 }, %struct.patval { i32 650, i32 5 }, %struct.patval { i32 687, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 611, i32 1 }, %struct.patval { i32 574, i32 3 }, %struct.patval { i32 724, i32 3 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 575, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 573, i32 3 }, %struct.patval { i32 610, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 576, i32 3 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.45 = private unnamed_addr constant [10 x i8] c"Barrier40\00", align 1
@barrierspat46 = internal global [8 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.46 = private unnamed_addr constant [11 x i8] c"Barrier41a\00", align 1
@barrierspat47 = internal global [8 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.47 = private unnamed_addr constant [11 x i8] c"Barrier41b\00", align 1
@barrierspat48 = internal global [5 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.48 = private unnamed_addr constant [10 x i8] c"Barrier42\00", align 1
@barrierspat49 = internal global [14 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.49 = private unnamed_addr constant [10 x i8] c"Barrier43\00", align 1
@barrierspat50 = internal global [11 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.50 = private unnamed_addr constant [10 x i8] c"Barrier44\00", align 1
@barrierspat51 = internal global [12 x %struct.patval] [%struct.patval { i32 723, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.51 = private unnamed_addr constant [10 x i8] c"Barrier45\00", align 1
@barrierspat52 = internal global [12 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.52 = private unnamed_addr constant [10 x i8] c"Barrier46\00", align 1
@barrierspat53 = internal global [28 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 687, i32 5 }, %struct.patval { i32 724, i32 5 }, %struct.patval { i32 761, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 612, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 610, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 832, i32 4 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 834, i32 4 }, %struct.patval { i32 613, i32 4 }, %struct.patval { i32 650, i32 4 }, %struct.patval { i32 611, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 833, i32 4 }, %struct.patval { i32 798, i32 4 }, %struct.patval { i32 835, i32 4 }], align 16
@.str.53 = private unnamed_addr constant [10 x i8] c"Barrier47\00", align 1
@barrierspat54 = internal global [35 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 686, i32 5 }, %struct.patval { i32 687, i32 5 }, %struct.patval { i32 724, i32 5 }, %struct.patval { i32 761, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 610, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 611, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 609, i32 3 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 831, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 833, i32 3 }, %struct.patval { i32 612, i32 3 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 832, i32 3 }, %struct.patval { i32 797, i32 3 }, %struct.patval { i32 834, i32 3 }, %struct.patval { i32 613, i32 3 }, %struct.patval { i32 650, i32 3 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 798, i32 3 }, %struct.patval { i32 835, i32 3 }], align 16
@.str.54 = private unnamed_addr constant [10 x i8] c"Barrier48\00", align 1
@barrierspat55 = internal global [8 x %struct.patval] [%struct.patval { i32 723, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.55 = private unnamed_addr constant [10 x i8] c"Barrier49\00", align 1
@barrierspat56 = internal global [6 x %struct.patval] [%struct.patval { i32 723, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.56 = private unnamed_addr constant [10 x i8] c"Barrier50\00", align 1
@barrierspat57 = internal global [6 x %struct.patval] [%struct.patval { i32 758, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.57 = private unnamed_addr constant [10 x i8] c"Barrier51\00", align 1
@barrierspat58 = internal global [14 x %struct.patval] [%struct.patval { i32 649, i32 5 }, %struct.patval { i32 648, i32 5 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 610, i32 4 }, %struct.patval { i32 611, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.58 = private unnamed_addr constant [10 x i8] c"Barrier52\00", align 1
@barrierspat59 = internal global [7 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 649, i32 0 }], align 16
@.str.59 = private unnamed_addr constant [10 x i8] c"Barrier53\00", align 1
@barrierspat60 = internal global [20 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.60 = private unnamed_addr constant [10 x i8] c"Barrier54\00", align 1
@barrierspat61 = internal global [8 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.61 = private unnamed_addr constant [10 x i8] c"Barrier55\00", align 1
@barrierspat62 = internal global [12 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 649, i32 0 }], align 16
@.str.62 = private unnamed_addr constant [10 x i8] c"Barrier56\00", align 1
@barrierspat63 = internal global [12 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.63 = private unnamed_addr constant [11 x i8] c"Barrier56b\00", align 1
@barrierspat64 = internal global [3 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }], align 16
@.str.64 = private unnamed_addr constant [10 x i8] c"Barrier57\00", align 1
@barrierspat65 = internal global [6 x %struct.patval] [%struct.patval { i32 720, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 757, i32 4 }], align 16
@.str.65 = private unnamed_addr constant [10 x i8] c"Barrier58\00", align 1
@barrierspat66 = internal global [4 x %struct.patval] [%struct.patval { i32 683, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.66 = private unnamed_addr constant [10 x i8] c"Barrier59\00", align 1
@barrierspat67 = internal global [12 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 687, i32 7 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.67 = private unnamed_addr constant [11 x i8] c"Barrier60a\00", align 1
@barrierspat68 = internal global [12 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 687, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.68 = private unnamed_addr constant [11 x i8] c"Barrier60b\00", align 1
@barrierspat69 = internal global [36 x %struct.patval] [%struct.patval { i32 609, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 572, i32 7 }, %struct.patval { i32 724, i32 7 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 645, i32 4 }, %struct.patval { i32 571, i32 4 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 757, i32 4 }, %struct.patval { i32 608, i32 4 }, %struct.patval { i32 761, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 682, i32 4 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 574, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 575, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 576, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.69 = private unnamed_addr constant [10 x i8] c"Barrier61\00", align 1
@barrierspat70 = internal global [10 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.70 = private unnamed_addr constant [10 x i8] c"Barrier62\00", align 1
@barrierspat71 = internal global [16 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.71 = private unnamed_addr constant [10 x i8] c"Barrier63\00", align 1
@barrierspat72 = internal global [16 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.72 = private unnamed_addr constant [10 x i8] c"Barrier64\00", align 1
@barrierspat73 = internal global [8 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.73 = private unnamed_addr constant [10 x i8] c"Barrier65\00", align 1
@barrierspat74 = internal global [36 x %struct.patval] [%struct.patval { i32 724, i32 5 }, %struct.patval { i32 688, i32 5 }, %struct.patval { i32 687, i32 5 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 761, i32 0 }, %struct.patval { i32 798, i32 0 }, %struct.patval { i32 614, i32 0 }, %struct.patval { i32 651, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 725, i32 0 }, %struct.patval { i32 762, i32 0 }, %struct.patval { i32 799, i32 0 }, %struct.patval { i32 615, i32 0 }, %struct.patval { i32 652, i32 0 }, %struct.patval { i32 689, i32 0 }, %struct.patval { i32 726, i32 0 }, %struct.patval { i32 763, i32 0 }, %struct.patval { i32 800, i32 0 }], align 16
@.str.74 = private unnamed_addr constant [10 x i8] c"Barrier66\00", align 1
@barrierspat75 = internal global [12 x %struct.patval] [%struct.patval { i32 610, i32 7 }, %struct.patval { i32 573, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 571, i32 3 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 609, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 572, i32 0 }], align 16
@.str.75 = private unnamed_addr constant [11 x i8] c"Intrusion1\00", align 1
@barrierspat76 = internal global [12 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 572, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 571, i32 3 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 609, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.76 = private unnamed_addr constant [12 x i8] c"Intrusion1b\00", align 1
@barrierspat77 = internal global [12 x %struct.patval] [%struct.patval { i32 610, i32 7 }, %struct.patval { i32 572, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 571, i32 3 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 609, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.77 = private unnamed_addr constant [12 x i8] c"Intrusion1c\00", align 1
@barrierspat78 = internal global [12 x %struct.patval] [%struct.patval { i32 609, i32 7 }, %struct.patval { i32 572, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 571, i32 3 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.78 = private unnamed_addr constant [12 x i8] c"Intrusion1d\00", align 1
@barrierspat79 = internal global [11 x %struct.patval] [%struct.patval { i32 611, i32 7 }, %struct.patval { i32 574, i32 7 }, %struct.patval { i32 609, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 572, i32 3 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.79 = private unnamed_addr constant [11 x i8] c"Intrusion2\00", align 1
@barrierspat80 = internal global [11 x %struct.patval] [%struct.patval { i32 611, i32 7 }, %struct.patval { i32 574, i32 7 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 572, i32 3 }, %struct.patval { i32 609, i32 3 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.80 = private unnamed_addr constant [11 x i8] c"Intrusion3\00", align 1
@barrierspat81 = internal global [12 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 649, i32 7 }, %struct.patval { i32 648, i32 7 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.81 = private unnamed_addr constant [11 x i8] c"Intrusion4\00", align 1
@barrierspat82 = internal global [12 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 648, i32 7 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.82 = private unnamed_addr constant [12 x i8] c"Intrusion5a\00", align 1
@barrierspat83 = internal global [6 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.83 = private unnamed_addr constant [12 x i8] c"Intrusion5b\00", align 1
@barrierspat84 = internal global [8 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.84 = private unnamed_addr constant [11 x i8] c"Intrusion6\00", align 1
@barrierspat85 = internal global [9 x %struct.patval] [%struct.patval { i32 759, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.85 = private unnamed_addr constant [12 x i8] c"Intrusion7a\00", align 1
@barrierspat86 = internal global [4 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.86 = private unnamed_addr constant [12 x i8] c"Intrusion7b\00", align 1
@barrierspat87 = internal global [8 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 758, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.87 = private unnamed_addr constant [11 x i8] c"Intrusion8\00", align 1
@barrierspat88 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.88 = private unnamed_addr constant [11 x i8] c"Intrusion9\00", align 1
@barrierspat89 = internal global [11 x %struct.patval] [%struct.patval { i32 610, i32 7 }, %struct.patval { i32 573, i32 7 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 683, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 571, i32 3 }, %struct.patval { i32 572, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 609, i32 0 }], align 16
@.str.89 = private unnamed_addr constant [12 x i8] c"Intrusion10\00", align 1
@barrierspat90 = internal global [12 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.90 = private unnamed_addr constant [12 x i8] c"Intrusion11\00", align 1
@barrierspat91 = internal global [12 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 648, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.91 = private unnamed_addr constant [13 x i8] c"Intrusion12a\00", align 1
@barrierspat92 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.92 = private unnamed_addr constant [13 x i8] c"Intrusion12b\00", align 1
@barrierspat93 = internal global [18 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 648, i32 7 }, %struct.patval { i32 575, i32 1 }, %struct.patval { i32 574, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 610, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 576, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.93 = private unnamed_addr constant [12 x i8] c"Intrusion13\00", align 1
@barrierspat94 = internal global [14 x %struct.patval] [%struct.patval { i32 687, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.94 = private unnamed_addr constant [12 x i8] c"Intrusion14\00", align 1
@barrierspat95 = internal global [9 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.95 = private unnamed_addr constant [12 x i8] c"Intrusion15\00", align 1
@barrierspat96 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.96 = private unnamed_addr constant [12 x i8] c"Intrusion16\00", align 1
@barrierspat97 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.97 = private unnamed_addr constant [12 x i8] c"Intrusion17\00", align 1
@barrierspat98 = internal global [15 x %struct.patval] [%struct.patval { i32 758, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 719, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.98 = private unnamed_addr constant [12 x i8] c"Intrusion18\00", align 1
@barrierspat99 = internal global [12 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }], align 16
@.str.99 = private unnamed_addr constant [12 x i8] c"Intrusion19\00", align 1
@barrierspat100 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 4 }], align 16
@.str.100 = private unnamed_addr constant [12 x i8] c"Intrusion20\00", align 1
@barrierspat101 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.101 = private unnamed_addr constant [12 x i8] c"Intrusion21\00", align 1
@barrierspat102 = internal global [9 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.102 = private unnamed_addr constant [13 x i8] c"Intrusion21b\00", align 1
@barrierspat103 = internal global [9 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.103 = private unnamed_addr constant [12 x i8] c"Intrusion22\00", align 1
@barrierspat104 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.104 = private unnamed_addr constant [12 x i8] c"Intrusion23\00", align 1
@barrierspat105 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 758, i32 7 }, %struct.patval { i32 683, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.105 = private unnamed_addr constant [12 x i8] c"Intrusion24\00", align 1
@barrierspat106 = internal global [16 x %struct.patval] [%struct.patval { i32 609, i32 7 }, %struct.patval { i32 646, i32 7 }, %struct.patval { i32 610, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 720, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.106 = private unnamed_addr constant [12 x i8] c"Intrusion25\00", align 1
@barrierspat107 = internal global [16 x %struct.patval] [%struct.patval { i32 609, i32 7 }, %struct.patval { i32 646, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 2 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.107 = private unnamed_addr constant [12 x i8] c"Intrusion26\00", align 1
@barrierspat108 = internal global [12 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.108 = private unnamed_addr constant [12 x i8] c"Intrusion27\00", align 1
@barrierspat109 = internal global [13 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 3 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.109 = private unnamed_addr constant [12 x i8] c"Intrusion28\00", align 1
@barrierspat110 = internal global [24 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 687, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 757, i32 4 }, %struct.patval { i32 645, i32 4 }, %struct.patval { i32 682, i32 4 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.110 = private unnamed_addr constant [12 x i8] c"Intrusion29\00", align 1
@barrierspat111 = internal global [24 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 687, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 757, i32 4 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 682, i32 4 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 645, i32 4 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.111 = private unnamed_addr constant [12 x i8] c"Intrusion30\00", align 1
@barrierspat112 = internal global [13 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 687, i32 0 }], align 16
@.str.112 = private unnamed_addr constant [12 x i8] c"Intrusion31\00", align 1
@barrierspat113 = internal global [10 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.113 = private unnamed_addr constant [12 x i8] c"Intrusion32\00", align 1
@barrierspat114 = internal global [10 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 683, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.114 = private unnamed_addr constant [12 x i8] c"Intrusion33\00", align 1
@barrierspat115 = internal global [10 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.115 = private unnamed_addr constant [12 x i8] c"Intrusion34\00", align 1
@barrierspat116 = internal global [22 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 687, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 574, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 572, i32 0 }, %struct.patval { i32 609, i32 0 }, %struct.patval { i32 575, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 576, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.116 = private unnamed_addr constant [12 x i8] c"Intrusion35\00", align 1
@barrierspat117 = internal global [5 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 3 }], align 16
@.str.117 = private unnamed_addr constant [12 x i8] c"Intrusion36\00", align 1
@barrierspat118 = internal global [5 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 4 }], align 16
@.str.118 = private unnamed_addr constant [12 x i8] c"Intrusion37\00", align 1
@barrierspat119 = internal global [3 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.119 = private unnamed_addr constant [12 x i8] c"Intrusion38\00", align 1
@barrierspat120 = internal global [8 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.120 = private unnamed_addr constant [12 x i8] c"Intrusion39\00", align 1
@barrierspat121 = internal global [3 x %struct.patval] [%struct.patval { i32 720, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.121 = private unnamed_addr constant [12 x i8] c"Intrusion40\00", align 1
@barrierspat122 = internal global [4 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 720, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.122 = private unnamed_addr constant [12 x i8] c"Intrusion41\00", align 1
@barrierspat123 = internal global [15 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 646, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.123 = private unnamed_addr constant [12 x i8] c"Intrusion42\00", align 1
@barrierspat124 = internal global [9 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 611, i32 7 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 683, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }], align 16
@.str.124 = private unnamed_addr constant [12 x i8] c"Intrusion43\00", align 1
@barrierspat125 = internal global [6 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 611, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 610, i32 0 }], align 16
@.str.125 = private unnamed_addr constant [13 x i8] c"Intrusion44a\00", align 1
@barrierspat126 = internal global [10 x %struct.patval] [%struct.patval { i32 611, i32 7 }, %struct.patval { i32 648, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 609, i32 0 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 610, i32 0 }], align 16
@.str.126 = private unnamed_addr constant [13 x i8] c"Intrusion44b\00", align 1
@barrierspat127 = internal global [12 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.127 = private unnamed_addr constant [12 x i8] c"Intrusion45\00", align 1
@barrierspat128 = internal global [20 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 648, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 761, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 612, i32 3 }, %struct.patval { i32 610, i32 3 }, %struct.patval { i32 613, i32 3 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 649, i32 0 }], align 16
@.str.128 = private unnamed_addr constant [12 x i8] c"Intrusion46\00", align 1
@barrierspat129 = internal global [12 x %struct.patval] [%struct.patval { i32 794, i32 7 }, %struct.patval { i32 756, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 793, i32 0 }, %struct.patval { i32 831, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 832, i32 0 }], align 16
@.str.129 = private unnamed_addr constant [12 x i8] c"Intrusion47\00", align 1
@barrierspat130 = internal global [11 x %struct.patval] [%struct.patval { i32 758, i32 7 }, %struct.patval { i32 719, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 756, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 683, i32 0 }], align 16
@.str.130 = private unnamed_addr constant [12 x i8] c"Intrusion48\00", align 1
@barrierspat131 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.131 = private unnamed_addr constant [12 x i8] c"Intrusion49\00", align 1
@barrierspat132 = internal global [8 x %struct.patval] [%struct.patval { i32 758, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.132 = private unnamed_addr constant [12 x i8] c"Intrusion50\00", align 1
@barrierspat133 = internal global [7 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.133 = private unnamed_addr constant [13 x i8] c"Intrusion51a\00", align 1
@barrierspat134 = internal global [7 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 683, i32 2 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.134 = private unnamed_addr constant [13 x i8] c"Intrusion51b\00", align 1
@barrierspat135 = internal global [9 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.135 = private unnamed_addr constant [12 x i8] c"Intrusion52\00", align 1
@barrierspat136 = internal global [6 x %struct.patval] [%struct.patval { i32 758, i32 7 }, %struct.patval { i32 720, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 0 }], align 16
@.str.136 = private unnamed_addr constant [12 x i8] c"Intrusion53\00", align 1
@barrierspat137 = internal global [11 x %struct.patval] [%struct.patval { i32 611, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 722, i32 4 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 609, i32 0 }], align 16
@.str.137 = private unnamed_addr constant [12 x i8] c"Intrusion54\00", align 1
@barrierspat138 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 722, i32 4 }], align 16
@.str.138 = private unnamed_addr constant [14 x i8] c"Nonterritory1\00", align 1
@barrierspat139 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 722, i32 4 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.139 = private unnamed_addr constant [15 x i8] c"Nonterritory1b\00", align 1
@barrierspat140 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.140 = private unnamed_addr constant [15 x i8] c"Nonterritory1c\00", align 1
@barrierspat141 = internal global [7 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 612, i32 2 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 611, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.141 = private unnamed_addr constant [14 x i8] c"Nonterritory2\00", align 1
@barrierspat142 = internal global [7 x %struct.patval] [%struct.patval { i32 612, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 611, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.142 = private unnamed_addr constant [14 x i8] c"Nonterritory3\00", align 1
@barrierspat143 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 648, i32 4 }], align 16
@.str.143 = private unnamed_addr constant [14 x i8] c"Nonterritory4\00", align 1
@barrierspat144 = internal global [5 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.144 = private unnamed_addr constant [14 x i8] c"Nonterritory5\00", align 1
@barrierspat145 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.145 = private unnamed_addr constant [14 x i8] c"Nonterritory6\00", align 1
@barrierspat146 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.146 = private unnamed_addr constant [14 x i8] c"Nonterritory7\00", align 1
@barrierspat147 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.147 = private unnamed_addr constant [15 x i8] c"Nonterritory7b\00", align 1
@barrierspat148 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.148 = private unnamed_addr constant [15 x i8] c"Nonterritory7c\00", align 1
@barrierspat149 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 722, i32 4 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.149 = private unnamed_addr constant [14 x i8] c"Nonterritory8\00", align 1
@barrierspat150 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.150 = private unnamed_addr constant [15 x i8] c"Nonterritory8b\00", align 1
@barrierspat151 = internal global [9 x %struct.patval] [%struct.patval { i32 574, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 612, i32 4 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }], align 16
@.str.151 = private unnamed_addr constant [14 x i8] c"Nonterritory9\00", align 1
@barrierspat152 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 682, i32 0 }, %struct.patval { i32 719, i32 0 }], align 16
@.str.152 = private unnamed_addr constant [15 x i8] c"Nonterritory10\00", align 1
@barrierspat153 = internal global [9 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.153 = private unnamed_addr constant [15 x i8] c"Nonterritory11\00", align 1
@barrierspat154 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.154 = private unnamed_addr constant [15 x i8] c"Nonterritory12\00", align 1
@barrierspat155 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.155 = private unnamed_addr constant [15 x i8] c"Nonterritory13\00", align 1
@barrierspat156 = internal global [5 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 682, i32 0 }], align 16
@.str.156 = private unnamed_addr constant [15 x i8] c"Nonterritory14\00", align 1
@barrierspat157 = internal global [7 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 719, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 681, i32 0 }, %struct.patval { i32 682, i32 0 }], align 16
@.str.157 = private unnamed_addr constant [15 x i8] c"Nonterritory15\00", align 1
@barrierspat158 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.158 = private unnamed_addr constant [15 x i8] c"Nonterritory16\00", align 1
@barrierspat159 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.159 = private unnamed_addr constant [15 x i8] c"Nonterritory17\00", align 1
@barrierspat160 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.160 = private unnamed_addr constant [16 x i8] c"Nonterritory17b\00", align 1
@barrierspat161 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.161 = private unnamed_addr constant [16 x i8] c"Nonterritory18a\00", align 1
@barrierspat162 = internal global [10 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 611, i32 0 }], align 16
@.str.162 = private unnamed_addr constant [16 x i8] c"Nonterritory18b\00", align 1
@barrierspat163 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.163 = private unnamed_addr constant [15 x i8] c"Nonterritory19\00", align 1
@barrierspat164 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.164 = private unnamed_addr constant [15 x i8] c"Nonterritory20\00", align 1
@barrierspat165 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.165 = private unnamed_addr constant [15 x i8] c"Nonterritory21\00", align 1
@barrierspat166 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.166 = private unnamed_addr constant [15 x i8] c"Nonterritory22\00", align 1
@barrierspat167 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.167 = private unnamed_addr constant [15 x i8] c"Nonterritory23\00", align 1
@barrierspat168 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.168 = private unnamed_addr constant [15 x i8] c"Nonterritory24\00", align 1
@barrierspat169 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.169 = private unnamed_addr constant [15 x i8] c"Nonterritory25\00", align 1
@barrierspat170 = internal global [7 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.170 = private unnamed_addr constant [15 x i8] c"Nonterritory26\00", align 1
@barrierspat171 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.171 = private unnamed_addr constant [15 x i8] c"Nonterritory27\00", align 1
@barrierspat172 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.172 = private unnamed_addr constant [15 x i8] c"Nonterritory28\00", align 1
@barrierspat173 = internal global [7 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.173 = private unnamed_addr constant [15 x i8] c"Nonterritory29\00", align 1
@barrierspat174 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.174 = private unnamed_addr constant [15 x i8] c"Nonterritory30\00", align 1
@barrierspat175 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.175 = private unnamed_addr constant [15 x i8] c"Nonterritory31\00", align 1
@barrierspat176 = internal global [9 x %struct.patval] [%struct.patval { i32 612, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.176 = private unnamed_addr constant [15 x i8] c"Nonterritory32\00", align 1
@barrierspat177 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.177 = private unnamed_addr constant [15 x i8] c"Nonterritory33\00", align 1
@barrierspat178 = internal global [9 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 610, i32 3 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.178 = private unnamed_addr constant [15 x i8] c"Nonterritory34\00", align 1
@barrierspat179 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.179 = private unnamed_addr constant [15 x i8] c"Nonterritory35\00", align 1
@barrierspat180 = internal global [7 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 723, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.180 = private unnamed_addr constant [15 x i8] c"Nonterritory36\00", align 1
@barrierspat181 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.181 = private unnamed_addr constant [15 x i8] c"Nonterritory37\00", align 1
@barrierspat182 = internal global [8 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.182 = private unnamed_addr constant [15 x i8] c"Nonterritory38\00", align 1
@barrierspat183 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.183 = private unnamed_addr constant [15 x i8] c"Nonterritory39\00", align 1
@barrierspat184 = internal global [12 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.184 = private unnamed_addr constant [15 x i8] c"Nonterritory40\00", align 1
@barrierspat185 = internal global [10 x %struct.patval] [%struct.patval { i32 611, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.185 = private unnamed_addr constant [15 x i8] c"Nonterritory41\00", align 1
@transformation = external global [1369 x [8 x i32]], align 16
@stackp = external global i32, align 4
@worm = external global [400 x %struct.worm_data], align 16
@false_eye_territory = external global [400 x i32], align 16
@half_eye = external global [400 x %struct.half_eye_data], align 16

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat3(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 757), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %b, align 4
  %19 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, ...) @play_break_through_n(i32 %14, i32 2, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %cmp = icmp eq i32 %call, 5
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat6(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %20 = load i32, i32* %color.addr, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %b, align 4
  %24 = load i32, i32* %d, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %20, i32 1, i32 2, i32 %21, i32 %22, i32 %23, i32 %24)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %25 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %25 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat7(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom
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
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 18
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %7 = load i32, i32* %arrayidx3, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %a, align 4
  %call = call i32 @find_defense(i32 %8, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %call, %cond.false ]
  %tobool = icmp ne i32 %cond, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat12(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %11, i32 %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %13 = load i32, i32* %color.addr, align 4
  %14 = load i32, i32* %a, align 4
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %c, align 4
  %call7 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %13, i32 0, i32 1, i32 %14, i32 %15, i32 %16)
  %tobool8 = icmp ne i32 %call7, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %17 = phi i1 [ true, %entry ], [ %tobool8, %lor.rhs ]
  %lor.ext = zext i1 %17 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat15(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %color.addr, align 4
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %11, i32 1, i32 2, i32 %12, i32 %13, i32 %14, i32 %15)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat17(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom4
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
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %color.addr, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %f, align 4
  %24 = load i32, i32* %a, align 4
  %25 = load i32, i32* %f, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %20, i32 1, i32 3, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %26 = load i32, i32* %color.addr, align 4
  %27 = load i32, i32* %a, align 4
  %28 = load i32, i32* %b, align 4
  %29 = load i32, i32* %c, align 4
  %30 = load i32, i32* %d, align 4
  %call16 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %26, i32 1, i32 2, i32 %27, i32 %28, i32 %29, i32 %30)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false, %entry
  %31 = load i32, i32* %color.addr, align 4
  %32 = load i32, i32* %b, align 4
  %33 = load i32, i32* %a, align 4
  %34 = load i32, i32* %e, align 4
  %35 = load i32, i32* %b, align 4
  %36 = load i32, i32* %e, align 4
  %call18 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %31, i32 1, i32 3, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %37 = load i32, i32* %color.addr, align 4
  %38 = load i32, i32* %b, align 4
  %39 = load i32, i32* %a, align 4
  %40 = load i32, i32* %c, align 4
  %41 = load i32, i32* %d, align 4
  %call20 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %37, i32 1, i32 2, i32 %38, i32 %39, i32 %40, i32 %41)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %42 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false
  %43 = phi i1 [ false, %lor.lhs.false ], [ %42, %lor.end ]
  %land.ext = zext i1 %43 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat18(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom4
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
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %f, align 4
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %f, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %f, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %17, i32 1, i32 3, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %23 = load i32, i32* %color.addr, align 4
  %24 = load i32, i32* %a, align 4
  %25 = load i32, i32* %b, align 4
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %d, align 4
  %call13 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %23, i32 1, i32 2, i32 %24, i32 %25, i32 %26, i32 %27)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false, %entry
  %28 = load i32, i32* %color.addr, align 4
  %29 = load i32, i32* %b, align 4
  %30 = load i32, i32* %a, align 4
  %31 = load i32, i32* %c, align 4
  %call15 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %28, i32 1, i32 2, i32 %29, i32 %30, i32 %31)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %32 = phi i1 [ false, %lor.lhs.false ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat19(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom4
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
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %17, i32 1, i32 2, i32 %18, i32 %19, i32 %20, i32 %21)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %22 = load i32, i32* %color.addr, align 4
  %23 = load i32, i32* %b, align 4
  %24 = load i32, i32* %a, align 4
  %25 = load i32, i32* %e, align 4
  %26 = load i32, i32* %b, align 4
  %27 = load i32, i32* %e, align 4
  %call13 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %22, i32 1, i32 3, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %28 = load i32, i32* %color.addr, align 4
  %29 = load i32, i32* %b, align 4
  %30 = load i32, i32* %a, align 4
  %31 = load i32, i32* %c, align 4
  %32 = load i32, i32* %d, align 4
  %call15 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %28, i32 1, i32 2, i32 %29, i32 %30, i32 %31, i32 %32)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %33 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %34 = phi i1 [ false, %entry ], [ %33, %lor.end ]
  %land.ext = zext i1 %34 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat20(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom4
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
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 1, i32 2, i32 %15, i32 %16, i32 %17, i32 %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %20 = load i32, i32* %b, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %c, align 4
  %23 = load i32, i32* %d, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %19, i32 1, i32 2, i32 %20, i32 %21, i32 %22, i32 %23)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %24 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat21(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom4
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
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, ...) @play_break_through_n(i32 %14, i32 3, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat22(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom
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
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 795), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %17, i32 1, i32 3, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %23 = load i32, i32* %color.addr, align 4
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %a, align 4
  %26 = load i32, i32* %d, align 4
  %27 = load i32, i32* %d, align 4
  %28 = load i32, i32* %e, align 4
  %call13 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %23, i32 1, i32 3, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %29 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %29 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat24(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 757), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom1
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
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 1, i32 4, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %21 = load i32, i32* %color.addr, align 4
  %22 = load i32, i32* %d, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %a, align 4
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %a, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %21, i32 1, i32 4, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %28 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %28 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat26(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 1, i32 4, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %21 = load i32, i32* %color.addr, align 4
  %22 = load i32, i32* %d, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %a, align 4
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %a, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %21, i32 1, i32 4, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %28 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %28 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat27(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 1, i32 4, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %21 = load i32, i32* %color.addr, align 4
  %22 = load i32, i32* %a, align 4
  %23 = load i32, i32* %b, align 4
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %d, align 4
  %26 = load i32, i32* %a, align 4
  %27 = load i32, i32* %c, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %21, i32 0, i32 4, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %28 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %28 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat30(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 1, i32 4, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %21 = load i32, i32* %color.addr, align 4
  %22 = load i32, i32* %d, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %a, align 4
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %a, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %21, i32 1, i32 4, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %28 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %28 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat33(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %8 = load i32, i32* %color.addr, align 4
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %8, i32 1, i32 1, i32 %9, i32 %10, i32 %11)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat37(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom
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
  store i32 %add3, i32* %B, align 4
  %8 = load i32, i32* %color.addr, align 4
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %B, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %8, i32 1, i32 1, i32 %9, i32 %10)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat39(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom
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
define internal i32 @autohelperbarrierspat42(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %d, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %A, align 4
  %14 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %14)
  %cmp = icmp sgt i32 %call, 3
  br i1 %cmp, label %lor.end.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %color.addr, align 4
  %call10 = call i32 @is_legal(i32 %15, i32 %16)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %lor.rhs, label %lor.end.18

lor.rhs:                                          ; preds = %lor.lhs.false
  %17 = load i32, i32* %A, align 4
  %call11 = call i32 @countlib(i32 %17)
  %cmp12 = icmp sgt i32 %call11, 2
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %18 = load i32, i32* %b, align 4
  %19 = load i32, i32* %color.addr, align 4
  %call13 = call i32 @accuratelib(i32 %18, i32 %19, i32 20, i32* null)
  %cmp14 = icmp sle i32 %call13, 2
  br i1 %cmp14, label %lor.end, label %lor.rhs.15

lor.rhs.15:                                       ; preds = %land.rhs
  %20 = load i32, i32* %color.addr, align 4
  %21 = load i32, i32* %c, align 4
  %22 = load i32, i32* %d, align 4
  %23 = load i32, i32* %b, align 4
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %c, align 4
  %call16 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %20, i32 1, i32 3, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %tobool17 = icmp ne i32 %call16, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.15, %land.rhs
  %26 = phi i1 [ true, %land.rhs ], [ %tobool17, %lor.rhs.15 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.rhs
  %27 = phi i1 [ false, %lor.rhs ], [ %26, %lor.end ]
  br label %lor.end.18

lor.end.18:                                       ; preds = %land.end, %lor.lhs.false, %entry
  %28 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %27, %land.end ]
  %lor.ext = zext i1 %28 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat43(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %5 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat46(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom
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
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %color.addr, align 4
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %c, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %11, i32 1, i32 3, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat47(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom
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
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 796), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 795), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %d, align 4
  %22 = load i32, i32* %a, align 4
  %23 = load i32, i32* %e, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %17, i32 0, i32 4, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat48(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom4
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
  store i32 %add9, i32* %D, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %b, align 4
  %18 = load i32, i32* %D, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 1, i32 2, i32 %15, i32 %16, i32 %17, i32 %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %a, align 4
  %23 = load i32, i32* %c, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %19, i32 0, i32 2, i32 %20, i32 %21, i32 %22, i32 %23)
  %tobool11 = icmp ne i32 %call10, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %24 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  %lor.ext = zext i1 %24 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat50(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom4
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
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %E, align 4
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %d, align 4
  %22 = load i32, i32* %d, align 4
  %23 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %17, i32 1, i32 4, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %24 = load i32, i32* %color.addr, align 4
  %25 = load i32, i32* %a, align 4
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %b, align 4
  %28 = load i32, i32* %c, align 4
  %29 = load i32, i32* %E, align 4
  %call13 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %24, i32 0, i32 3, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %30 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %30 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat58(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom
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
  %8 = load i32, i32* %color.addr, align 4
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %8, i32 1, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat60(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %color.addr, align 4
  %6 = load i32, i32* %a, align 4
  %7 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %5, i32 1, i32 1, i32 %6, i32 %7)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat61(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %b, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 795), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %c, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %A, align 4
  %11 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %11)
  %cmp = icmp sle i32 %call, 3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %12 = load i32, i32* %b, align 4
  %call7 = call i32 @countlib(i32 %12)
  %cmp8 = icmp sge i32 %call7, 3
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %13 = load i32, i32* %c, align 4
  %call9 = call i32 @countlib(i32 %13)
  %cmp10 = icmp sge i32 %call9, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp10, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat62(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
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
  %8 = load i32, i32* %color.addr, align 4
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %8, i32 1, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat63(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %6 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %5, i32 %6)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat64(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat65(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %b, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 757), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %c, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %A, align 4
  %11 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %11)
  %cmp = icmp sle i32 %call, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %12 = load i32, i32* %b, align 4
  %call7 = call i32 @countlib(i32 %12)
  %cmp8 = icmp sgt i32 %call7, 1
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %13 = load i32, i32* %c, align 4
  %call9 = call i32 @countlib(i32 %13)
  %cmp10 = icmp sgt i32 %call9, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp10, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat66(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom
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
  %8 = load i32, i32* %color.addr, align 4
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %11 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %8, i32 1, i32 2, i32 %9, i32 %10, i32 %11)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat72(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
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
  %11 = load i32, i32* %color.addr, align 4
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %c, align 4
  %15 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %11, i32 1, i32 3, i32 %12, i32 %13, i32 %14, i32 %15)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat73(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
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
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %C, align 4
  %11 = load i32, i32* %color.addr, align 4
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %C, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %11, i32 1, i32 2, i32 %12, i32 %13, i32 %14)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat75(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 571), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 534), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 533), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %a, align 4
  %call = call i32 @countlib(i32 %11)
  %cmp = icmp sgt i32 %call, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %12 = load i32, i32* %a, align 4
  %call7 = call i32 @countlib(i32 %12)
  %cmp8 = icmp eq i32 %call7, 2
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %c, align 4
  %call9 = call i32 @connect_and_cut_helper(i32 %13, i32 %14, i32 %15)
  %tobool = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %16 = phi i1 [ false, %lor.rhs ], [ %tobool, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %17 = phi i1 [ true, %entry ], [ %16, %land.end ]
  %lor.ext = zext i1 %17 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat76(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 571), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 534), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 533), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %a, align 4
  %call = call i32 @countlib(i32 %11)
  %cmp = icmp sgt i32 %call, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %12 = load i32, i32* %a, align 4
  %call7 = call i32 @countlib(i32 %12)
  %cmp8 = icmp eq i32 %call7, 2
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %c, align 4
  %call9 = call i32 @connect_and_cut_helper(i32 %13, i32 %14, i32 %15)
  %tobool = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %16 = phi i1 [ false, %lor.rhs ], [ %tobool, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %17 = phi i1 [ true, %entry ], [ %16, %land.end ]
  %lor.ext = zext i1 %17 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat77(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 497), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 571), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 534), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 533), i32 0, i64 %idxprom7
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
  %call = call i32 @safe_move(i32 %14, i32 %15)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %16 = load i32, i32* %b, align 4
  %call10 = call i32 @countlib(i32 %16)
  %cmp = icmp sgt i32 %call10, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %17 = load i32, i32* %b, align 4
  %call11 = call i32 @countlib(i32 %17)
  %cmp12 = icmp eq i32 %call11, 2
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %18 = load i32, i32* %b, align 4
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %d, align 4
  %call13 = call i32 @connect_and_cut_helper(i32 %18, i32 %19, i32 %20)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %21 = phi i1 [ false, %lor.rhs ], [ %tobool14, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.end
  %22 = phi i1 [ true, %if.end ], [ %21, %land.end ]
  %lor.ext = zext i1 %22 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat78(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 459), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 534), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 533), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %color.addr, align 4
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %c, align 4
  %15 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %11, i32 0, i32 3, i32 %12, i32 %13, i32 %14, i32 %15)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat79(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 462), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 535), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 536), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 572), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %14, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18)
  %tobool10 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %19
  %20 = load i32, i32* %b, align 4
  %21 = load i32, i32* %d, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %20, i32 %21)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot13 = xor i1 %tobool12, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  store i32 %lnot.ext14, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat80(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 462), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 535), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 536), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 572), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %14, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18)
  %tobool10 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %19
  %20 = load i32, i32* %b, align 4
  %21 = load i32, i32* %d, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %20, i32 %21)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot13 = xor i1 %tobool12, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  store i32 %lnot.ext14, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat81(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %d = alloca i32, align 4
  %C = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %d, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %C, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %C, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %14, i32 1, i32 2, i32 %15, i32 %16, i32 %17)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %18 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %18
  %19 = load i32, i32* %a, align 4
  %20 = load i32, i32* %d, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %19, i32 %20)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat82(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %d = alloca i32, align 4
  %C = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %d, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %C, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %C, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %14, i32 1, i32 2, i32 %15, i32 %16, i32 %17)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %18 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %18
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %d, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %19, i32 %20)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat83(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %f = alloca i32, align 4
  %D = alloca i32, align 4
  %E = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom
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
  store i32 %add9, i32* %f, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %D, align 4
  %16 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %18 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %17, %18
  store i32 %add15, i32* %E, align 4
  %19 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %color.addr, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %D, align 4
  %25 = load i32, i32* %E, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %20, i32 0, i32 3, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %tobool16 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool16, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %26 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %26
  %27 = load i32, i32* %b, align 4
  %28 = load i32, i32* %f, align 4
  %call17 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %27, i32 %28)
  %tobool18 = icmp ne i32 %call17, 0
  %lnot19 = xor i1 %tobool18, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  store i32 %lnot.ext20, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat84(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %b, align 4
  %10 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat85(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %b, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %c, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %A, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %11)
  %cmp = icmp eq i32 %call, 2
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %12
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %c, align 4
  %call7 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %13, i32 %14)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat86(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %C = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %C, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %C, align 4
  %18 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 1, i32 2, i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %19
  %20 = load i32, i32* %b, align 4
  %21 = load i32, i32* %c, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %20, i32 %21)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat87(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %c = alloca i32, align 4
  %B = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %c, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %B, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %color.addr, align 4
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %B, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %11, i32 1, i32 1, i32 %12, i32 %13)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %14 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %15 = load i32, i32* %B, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom8
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx9, i32 0, i32 16
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %16 = load i32, i32* %arrayidx10, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %17 = load i32, i32* %B, align 4
  %call11 = call i32 @attack(i32 %17, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %call11, %cond.false ]
  %tobool12 = icmp ne i32 %cond, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %cond.end, %if.then
  %18 = phi i1 [ false, %if.then ], [ %lnot, %cond.end ]
  %land.ext = zext i1 %18 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %19
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %c, align 4
  %call13 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %20, i32 %21)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot15 = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot15 to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat88(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %C, align 4
  %11 = load i32, i32* %color.addr, align 4
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %C, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %11, i32 1, i32 2, i32 %12, i32 %13, i32 %14)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat89(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %d = alloca i32, align 4
  %C = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 534), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 497), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 571), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %d, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 533), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %C, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %b, align 4
  %18 = load i32, i32* %C, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 1, i32 2, i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %19
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %d, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %20, i32 %21)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat90(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %14, i32 1, i32 2, i32 %15, i32 %16, i32 %17)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %18 = load i32, i32* %color.addr, align 4
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %d, align 4
  %21 = load i32, i32* %d, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 1, i32 2, i32 %19, i32 %20, i32 %21)
  %tobool11 = icmp ne i32 %call10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %22 = phi i1 [ false, %entry ], [ %tobool11, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat91(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %14, i32 1, i32 2, i32 %15, i32 %16, i32 %17)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %18 = load i32, i32* %color.addr, align 4
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %d, align 4
  %21 = load i32, i32* %d, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 1, i32 2, i32 %19, i32 %20, i32 %21)
  %tobool11 = icmp ne i32 %call10, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %22 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  %lor.ext = zext i1 %22 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat92(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %d = alloca i32, align 4
  %C = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %d, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %C, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @somewhere(i32 %14, i32 0, i32 1, i32 %15)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %16 = load i32, i32* %color.addr, align 4
  %17 = load i32, i32* %a, align 4
  %18 = load i32, i32* %b, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %C, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %16, i32 1, i32 2, i32 %17, i32 %18, i32 %19, i32 %20)
  %tobool12 = icmp ne i32 %call11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %21 = phi i1 [ true, %if.then ], [ %tobool12, %lor.rhs ]
  %lor.ext = zext i1 %21 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %22 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %22
  %23 = load i32, i32* %b, align 4
  %24 = load i32, i32* %d, align 4
  %call13 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %23, i32 %24)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %lor.end
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat93(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 499), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %a, align 4
  %call = call i32 @countlib(i32 %8)
  %cmp = icmp sge i32 %call, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %9 = load i32, i32* %b, align 4
  %call4 = call i32 @countlib(i32 %9)
  %cmp5 = icmp sge i32 %call4, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat94(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
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
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom4
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
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 1, i32 4, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat95(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 612), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %e, align 4
  %16 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %17, i32 1, i32 3, i32 %18, i32 %19, i32 %20, i32 %21)
  %tobool13 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool13, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %22 = load i32, i32* %d, align 4
  %call14 = call i32 @countlib(i32 %22)
  %cmp = icmp sgt i32 %call14, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end
  %23 = load i32, i32* %e, align 4
  %call15 = call i32 @countlib(i32 %23)
  %cmp16 = icmp sgt i32 %call15, 2
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %24 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %24
  %25 = load i32, i32* %a, align 4
  %26 = load i32, i32* %e, align 4
  %call17 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %25, i32 %26)
  %tobool18 = icmp ne i32 %call17, 0
  %lnot19 = xor i1 %tobool18, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end
  %27 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %lnot19, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat99(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat100(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %b, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %c, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %d, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %e, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %f, align 4
  %16 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %18 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %17, %18
  store i32 %add15, i32* %A, align 4
  %19 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %20)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %21 = load i32, i32* %color.addr, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %b, align 4
  %call16 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %21, i32 1, i32 1, i32 %22, i32 %23)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool17, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %24 = phi i1 [ false, %if.then ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %25 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %25
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %d, align 4
  %call18 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %26, i32 %27)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.end.24, label %land.rhs.20

land.rhs.20:                                      ; preds = %if.end
  %28 = load i32, i32* %color.addr, align 4
  %sub21 = sub nsw i32 3, %28
  %29 = load i32, i32* %e, align 4
  %30 = load i32, i32* %d, align 4
  %31 = load i32, i32* %f, align 4
  %call22 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub21, i32 0, i32 1, i32 %29, i32 %30, i32 %31)
  %tobool23 = icmp ne i32 %call22, 0
  br label %land.end.24

land.end.24:                                      ; preds = %land.rhs.20, %if.end
  %32 = phi i1 [ false, %if.end ], [ %tobool23, %land.rhs.20 ]
  %land.ext25 = zext i1 %32 to i32
  store i32 %land.ext25, i32* %retval
  br label %return

return:                                           ; preds = %land.end.24, %land.end
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat101(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat102(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat103(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat104(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %e, align 4
  %16 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %d, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %17, i32 1, i32 4, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %24 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %24
  %25 = load i32, i32* %b, align 4
  %26 = load i32, i32* %e, align 4
  %call13 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %25, i32 %26)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat105(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 719), i32 0, i64 %idxprom
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
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat109(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 612), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 575), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 1, i32 4, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat111(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
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
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 609), i32 0, i64 %idxprom7
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
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %color.addr, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %d, align 4
  %25 = load i32, i32* %e, align 4
  %26 = load i32, i32* %f, align 4
  %27 = load i32, i32* %f, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %20, i32 1, i32 6, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat112(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat113(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat115(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 645), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %color.addr, align 4
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %11 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %8, i32 1, i32 2, i32 %9, i32 %10, i32 %11)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat116(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 535), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 498), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 537), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 499), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %color.addr, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %d, align 4
  %25 = load i32, i32* %e, align 4
  %26 = load i32, i32* %f, align 4
  %27 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %20, i32 1, i32 6, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat117(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %8, i32 %9)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %10
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %b, align 4
  %call4 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %11, i32 %12)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat118(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %8, i32 %9)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %10
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %b, align 4
  %call4 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %11, i32 %12)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat119(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 609), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %8, i32 %9)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %10
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %b, align 4
  %call4 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %11, i32 %12)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat120(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %8, i32 %9)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %10
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %b, align 4
  %call4 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %11, i32 %12)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat121(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load i32, i32* @stackp, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %7 = load i32, i32* %A, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom2
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx3, i32 0, i32 16
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %8 = load i32, i32* %arrayidx4, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %9 = load i32, i32* %A, align 4
  %call5 = call i32 @attack(i32 %9, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %call5, %cond.false ]
  %tobool = icmp ne i32 %cond, 0
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %10 = phi i1 [ false, %entry ], [ %tobool, %cond.end ]
  %land.ext = zext i1 %10 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat122(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat123(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %e = alloca i32, align 4
  %D = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 535), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 608), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %e, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %D, align 4
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %e, align 4
  %call = call i32 (i32, i32, i32, ...) @somewhere(i32 %17, i32 0, i32 1, i32 %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %19 = load i32, i32* %e, align 4
  %20 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %20
  %call13 = call i32 @safe_move(i32 %19, i32 %sub)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false, %entry
  %21 = load i32, i32* %color.addr, align 4
  %22 = load i32, i32* %a, align 4
  %23 = load i32, i32* %b, align 4
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %D, align 4
  %call15 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %21, i32 0, i32 3, i32 %22, i32 %23, i32 %24, i32 %25)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %26 = phi i1 [ false, %lor.lhs.false ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat124(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 536), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %b, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 498), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %c, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 499), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %d, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 534), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %A, align 4
  %14 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %14)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %15 = load i32, i32* @stackp, align 4
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* %A, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom11
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx12, i32 0, i32 16
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %17 = load i32, i32* %arrayidx13, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.end, label %land.rhs

cond.false:                                       ; preds = %land.lhs.true
  %18 = load i32, i32* %A, align 4
  %call14 = call i32 @attack(i32 %18, i32* null)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.false, %cond.true
  %19 = load i32, i32* %color.addr, align 4
  %20 = load i32, i32* %b, align 4
  %21 = load i32, i32* %c, align 4
  %22 = load i32, i32* %d, align 4
  %23 = load i32, i32* %d, align 4
  %call16 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %19, i32 1, i32 3, i32 %20, i32 %21, i32 %22, i32 %23)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool17, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false, %cond.true, %entry
  %24 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat125(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %D = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 537), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 536), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %e, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %f, align 4
  %16 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %18 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %17, %18
  store i32 %add15, i32* %D, align 4
  %19 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %20, i32 %21)
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then
  %22 = load i32, i32* %color.addr, align 4
  %23 = load i32, i32* %e, align 4
  %call17 = call i32 (i32, i32, i32, ...) @somewhere(i32 %22, i32 0, i32 1, i32 %23)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %24 = load i32, i32* %color.addr, align 4
  %25 = load i32, i32* %a, align 4
  %26 = load i32, i32* %e, align 4
  %27 = load i32, i32* %e, align 4
  %call19 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %24, i32 1, i32 2, i32 %25, i32 %26, i32 %27)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %28 = load i32, i32* %color.addr, align 4
  %29 = load i32, i32* %a, align 4
  %30 = load i32, i32* %b, align 4
  %31 = load i32, i32* %c, align 4
  %32 = load i32, i32* %b, align 4
  %33 = load i32, i32* %D, align 4
  %call21 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %28, i32 0, i32 3, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot = xor i1 %tobool22, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %if.then
  %34 = phi i1 [ false, %lor.lhs.false ], [ false, %if.then ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %35 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %35
  %36 = load i32, i32* %a, align 4
  %37 = load i32, i32* %f, align 4
  %call23 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %36, i32 %37)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.end.32, label %land.rhs.25

land.rhs.25:                                      ; preds = %if.end
  %38 = load i32, i32* %color.addr, align 4
  %39 = load i32, i32* %e, align 4
  %call26 = call i32 (i32, i32, i32, ...) @somewhere(i32 %38, i32 0, i32 1, i32 %39)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.25
  %40 = load i32, i32* %color.addr, align 4
  %sub28 = sub nsw i32 3, %40
  %41 = load i32, i32* %e, align 4
  %42 = load i32, i32* %f, align 4
  %call29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub28, i32 1, i32 1, i32 %41, i32 %42)
  %tobool30 = icmp ne i32 %call29, 0
  %lnot31 = xor i1 %tobool30, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.25
  %43 = phi i1 [ true, %land.rhs.25 ], [ %lnot31, %lor.rhs ]
  br label %land.end.32

land.end.32:                                      ; preds = %lor.end, %if.end
  %44 = phi i1 [ false, %if.end ], [ %43, %lor.end ]
  %land.ext33 = zext i1 %44 to i32
  store i32 %land.ext33, i32* %retval
  br label %return

return:                                           ; preds = %land.end.32, %land.end
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat126(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %h = alloca i32, align 4
  %F = alloca i32, align 4
  %G = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 536), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 571), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 535), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %e, align 4
  %16 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 609), i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %18 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %17, %18
  store i32 %add15, i32* %h, align 4
  %19 = load i32, i32* %trans.addr, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 572), i32 0, i64 %idxprom16
  %20 = load i32, i32* %arrayidx17, align 4
  %21 = load i32, i32* %move.addr, align 4
  %add18 = add nsw i32 %20, %21
  store i32 %add18, i32* %F, align 4
  %22 = load i32, i32* %trans.addr, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 608), i32 0, i64 %idxprom19
  %23 = load i32, i32* %arrayidx20, align 4
  %24 = load i32, i32* %move.addr, align 4
  %add21 = add nsw i32 %23, %24
  store i32 %add21, i32* %G, align 4
  %25 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %26 = load i32, i32* %a, align 4
  %27 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %26, i32 %27)
  %tobool22 = icmp ne i32 %call, 0
  br i1 %tobool22, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then
  %28 = load i32, i32* %color.addr, align 4
  %29 = load i32, i32* %b, align 4
  %call23 = call i32 (i32, i32, i32, ...) @somewhere(i32 %28, i32 0, i32 1, i32 %29)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %30 = load i32, i32* %color.addr, align 4
  %31 = load i32, i32* %a, align 4
  %32 = load i32, i32* %b, align 4
  %33 = load i32, i32* %b, align 4
  %call25 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %30, i32 1, i32 2, i32 %31, i32 %32, i32 %33)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %34 = load i32, i32* %color.addr, align 4
  %35 = load i32, i32* %a, align 4
  %36 = load i32, i32* %c, align 4
  %37 = load i32, i32* %d, align 4
  %38 = load i32, i32* %e, align 4
  %39 = load i32, i32* %F, align 4
  %40 = load i32, i32* %G, align 4
  %call27 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %34, i32 0, i32 4, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot = xor i1 %tobool28, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %if.then
  %41 = phi i1 [ false, %lor.lhs.false ], [ false, %if.then ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %41 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %42 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %42
  %43 = load i32, i32* %a, align 4
  %44 = load i32, i32* %h, align 4
  %call29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %43, i32 %44)
  %tobool30 = icmp ne i32 %call29, 0
  %lnot31 = xor i1 %tobool30, true
  %lnot.ext = zext i1 %lnot31 to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat127(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom1
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
  store i32 %add6, i32* %C, align 4
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %11, i32 %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %13 = load i32, i32* %color.addr, align 4
  %14 = load i32, i32* %a, align 4
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %C, align 4
  %call7 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %13, i32 1, i32 2, i32 %14, i32 %15, i32 %16)
  %tobool8 = icmp ne i32 %call7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %17 = phi i1 [ false, %entry ], [ %tobool8, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat128(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom4
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
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %14, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat129(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom
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
define internal i32 @autohelperbarrierspat131(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %color.addr, align 4
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %11, i32 1, i32 1, i32 %12, i32 %13)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %14 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %15 = load i32, i32* %b, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom8
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx9, i32 0, i32 16
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %16 = load i32, i32* %arrayidx10, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %17 = load i32, i32* %b, align 4
  %call11 = call i32 @attack(i32 %17, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %call11, %cond.false ]
  %tobool12 = icmp ne i32 %cond, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %cond.end, %if.then
  %18 = phi i1 [ false, %if.then ], [ %lnot, %cond.end ]
  %land.ext = zext i1 %18 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %19
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %c, align 4
  %call13 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %20, i32 %21)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot15 = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot15 to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat132(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 757), i32 0, i64 %idxprom
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
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %c, align 4
  %19 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat133(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  %C = alloca i32, align 4
  %D = alloca i32, align 4
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %e, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %C, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %D, align 4
  %16 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %C, align 4
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %D, align 4
  %call = call i32 (i32, i32, ...) @play_break_through_n(i32 %17, i32 2, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %23 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %23
  %24 = load i32, i32* %a, align 4
  %25 = load i32, i32* %e, align 4
  %call13 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %24, i32 %25)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat134(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 609), i32 0, i64 %idxprom
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %color.addr, align 4
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, ...) @play_break_through_n(i32 %11, i32 0, i32 %12, i32 %13, i32 %14)
  %cmp = icmp eq i32 %call, 5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat135(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat136(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 719), i32 0, i64 %idxprom
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
  store i32 %add3, i32* %B, align 4
  %8 = load i32, i32* %color.addr, align 4
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %B, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %8, i32 0, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat137(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %G = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 571), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 535), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %trans.addr, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 608), i32 0, i64 %idxprom16
  %21 = load i32, i32* %arrayidx17, align 4
  %22 = load i32, i32* %move.addr, align 4
  %add18 = add nsw i32 %21, %22
  store i32 %add18, i32* %G, align 4
  %23 = load i32, i32* %color.addr, align 4
  %24 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @somewhere(i32 %23, i32 0, i32 1, i32 %24)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %25 = load i32, i32* %color.addr, align 4
  %26 = load i32, i32* %b, align 4
  %call19 = call i32 (i32, i32, i32, ...) @somewhere(i32 %25, i32 0, i32 1, i32 %26)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %27 = load i32, i32* %color.addr, align 4
  %28 = load i32, i32* %c, align 4
  %call22 = call i32 (i32, i32, i32, ...) @somewhere(i32 %27, i32 0, i32 1, i32 %28)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.21, %lor.lhs.false, %entry
  %29 = load i32, i32* %color.addr, align 4
  %30 = load i32, i32* %a, align 4
  %call24 = call i32 (i32, i32, i32, ...) @somewhere(i32 %29, i32 0, i32 1, i32 %30)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.rhs, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true
  %31 = load i32, i32* %color.addr, align 4
  %32 = load i32, i32* %d, align 4
  %33 = load i32, i32* %a, align 4
  %34 = load i32, i32* %a, align 4
  %call27 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %31, i32 1, i32 2, i32 %32, i32 %33, i32 %34)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.26, %land.lhs.true
  %35 = load i32, i32* %color.addr, align 4
  %36 = load i32, i32* %e, align 4
  %37 = load i32, i32* %f, align 4
  %38 = load i32, i32* %G, align 4
  %call29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %35, i32 1, i32 2, i32 %36, i32 %37, i32 %38)
  %tobool30 = icmp ne i32 %call29, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.26, %lor.lhs.false.21
  %39 = phi i1 [ false, %lor.lhs.false.26 ], [ false, %lor.lhs.false.21 ], [ %tobool30, %land.rhs ]
  %land.ext = zext i1 %39 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat138(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %a, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %b, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i32 0, i64 %idxprom6
  %13 = load i32, i32* %arrayidx7, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %15
  call void @influence_mark_non_territory(i32 %14, i32 %sub)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat139(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %a, align 4
  %call = call i32 @is_halfeye(%struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i32 0), i32 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %a, align 4
  %call1 = call i32 @is_false_eye(%struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i32 0), i32 %6)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %7 = load i32, i32* %a, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i32 0, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %10
  call void @influence_mark_non_territory(i32 %9, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat140(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %a, align 4
  %call = call i32 @is_false_eye(%struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i32 0), i32 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %a, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i32 0, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat141(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %a, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %a, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  call void @influence_mark_non_territory(i32 %7, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat142(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %a, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %a, align 4
  %8 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat143(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %a, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %b, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i32 0, i64 %idxprom6
  %13 = load i32, i32* %arrayidx7, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %15
  call void @influence_mark_non_territory(i32 %14, i32 %sub)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat144(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %9
  call void @influence_mark_non_territory(i32 %8, i32 %sub)
  %10 = load i32, i32* %b, align 4
  %11 = load i32, i32* %color.addr, align 4
  %sub4 = sub nsw i32 3, %11
  call void @influence_mark_non_territory(i32 %10, i32 %sub4)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat145(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %8, i32 %9)
  %10 = load i32, i32* %b, align 4
  %11 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %10, i32 %11)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat146(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %8, i32 %9)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  call void @influence_mark_non_territory(i32 %10, i32 %sub)
  %12 = load i32, i32* %b, align 4
  %13 = load i32, i32* %color.addr, align 4
  %sub4 = sub nsw i32 3, %13
  call void @influence_mark_non_territory(i32 %12, i32 %sub4)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat147(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %11, i32 %12)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then
  %13 = load i32, i32* %color.addr, align 4
  %14 = load i32, i32* %a, align 4
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %c, align 4
  %17 = load i32, i32* %a, align 4
  %call8 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %13, i32 1, i32 3, i32 %14, i32 %15, i32 %16, i32 %17)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %color.addr, align 4
  %call10 = call i32 @connect_and_cut_helper2(i32 %18, i32 %19, i32 %20, i32 %21)
  %tobool11 = icmp ne i32 %call10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then
  %22 = phi i1 [ false, %land.lhs.true ], [ false, %if.then ], [ %tobool11, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %24
  call void @influence_mark_non_territory(i32 %23, i32 %sub)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat148(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %e = alloca i32, align 4
  %D = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 537), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %e, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %D, align 4
  %16 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %D, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %17, i32 0, i32 3, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %tobool13 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool13, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %23 = load i32, i32* %b, align 4
  %24 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %24
  call void @influence_mark_non_territory(i32 %23, i32 %sub)
  %25 = load i32, i32* %c, align 4
  %26 = load i32, i32* %color.addr, align 4
  %sub14 = sub nsw i32 3, %26
  call void @influence_mark_non_territory(i32 %25, i32 %sub14)
  %27 = load i32, i32* %e, align 4
  %28 = load i32, i32* %color.addr, align 4
  %sub15 = sub nsw i32 3, %28
  call void @influence_mark_non_territory(i32 %27, i32 %sub15)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat149(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %8, i32 %9)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  call void @influence_mark_non_territory(i32 %10, i32 %sub)
  %12 = load i32, i32* %b, align 4
  %13 = load i32, i32* %color.addr, align 4
  %sub4 = sub nsw i32 3, %13
  call void @influence_mark_non_territory(i32 %12, i32 %sub4)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat150(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %E = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %E, align 4
  %16 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %a, align 4
  %18 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %17, i32 %18)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %19 = load i32, i32* %color.addr, align 4
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %c, align 4
  %23 = load i32, i32* %d, align 4
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %E, align 4
  %call14 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %19, i32 0, i32 5, i32 %20, i32 %21, i32 %22, i32 0, i32 %23, i32 %24, i32 %25)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %26 = phi i1 [ false, %if.then ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %27 = load i32, i32* %d, align 4
  %28 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %28
  call void @influence_mark_non_territory(i32 %27, i32 %sub)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat151(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 537), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 536), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 499), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %11, i32 %12)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  call void @influence_mark_non_territory(i32 %13, i32 %sub)
  %15 = load i32, i32* %c, align 4
  %16 = load i32, i32* %color.addr, align 4
  %sub7 = sub nsw i32 3, %16
  call void @influence_mark_non_territory(i32 %15, i32 %sub7)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat152(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 718), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 755), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 681), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 717), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 680), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %e, align 4
  %16 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %a, align 4
  %18 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %17, i32 %18)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %20
  call void @influence_mark_non_territory(i32 %19, i32 %sub)
  %21 = load i32, i32* %c, align 4
  %22 = load i32, i32* %color.addr, align 4
  %sub13 = sub nsw i32 3, %22
  call void @influence_mark_non_territory(i32 %21, i32 %sub13)
  %23 = load i32, i32* %d, align 4
  %24 = load i32, i32* %color.addr, align 4
  %sub14 = sub nsw i32 3, %24
  call void @influence_mark_non_territory(i32 %23, i32 %sub14)
  %25 = load i32, i32* %e, align 4
  %26 = load i32, i32* %color.addr, align 4
  %sub15 = sub nsw i32 3, %26
  call void @influence_mark_non_territory(i32 %25, i32 %sub15)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat153(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %c = alloca i32, align 4
  %B = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 612), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %c, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %B, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %11, i32 %12)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %13 = load i32, i32* %color.addr, align 4
  %14 = load i32, i32* %a, align 4
  %15 = load i32, i32* %B, align 4
  %call8 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %13, i32 1, i32 1, i32 %14, i32 %15)
  %tobool9 = icmp ne i32 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %16 = phi i1 [ false, %if.then ], [ %tobool9, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %18
  call void @influence_mark_non_territory(i32 %17, i32 %sub)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat154(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom1
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
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %12
  call void @influence_mark_non_territory(i32 %11, i32 %sub)
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub7 = sub nsw i32 3, %14
  call void @influence_mark_non_territory(i32 %13, i32 %sub7)
  %15 = load i32, i32* %c, align 4
  %16 = load i32, i32* %color.addr, align 4
  %sub8 = sub nsw i32 3, %16
  call void @influence_mark_non_territory(i32 %15, i32 %sub8)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat155(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom
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
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %8, i32 %9)
  %10 = load i32, i32* %b, align 4
  %11 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %10, i32 %11)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat156(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 681), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 718), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 680), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %11, i32 %12)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  call void @influence_mark_non_territory(i32 %13, i32 %sub)
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %color.addr, align 4
  %sub7 = sub nsw i32 3, %16
  call void @influence_mark_non_territory(i32 %15, i32 %sub7)
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %color.addr, align 4
  %sub8 = sub nsw i32 3, %18
  call void @influence_mark_non_territory(i32 %17, i32 %sub8)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat157(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 680), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 717), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 679), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 716), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 678), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %e, align 4
  %16 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 715), i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %18 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %17, %18
  store i32 %add15, i32* %f, align 4
  %19 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %20, i32 %21)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %22 = load i32, i32* %a, align 4
  %23 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %23
  call void @influence_mark_non_territory(i32 %22, i32 %sub)
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %color.addr, align 4
  %sub16 = sub nsw i32 3, %25
  call void @influence_mark_non_territory(i32 %24, i32 %sub16)
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %color.addr, align 4
  %sub17 = sub nsw i32 3, %27
  call void @influence_mark_non_territory(i32 %26, i32 %sub17)
  %28 = load i32, i32* %d, align 4
  %29 = load i32, i32* %color.addr, align 4
  %sub18 = sub nsw i32 3, %29
  call void @influence_mark_non_territory(i32 %28, i32 %sub18)
  %30 = load i32, i32* %e, align 4
  %31 = load i32, i32* %color.addr, align 4
  %sub19 = sub nsw i32 3, %31
  call void @influence_mark_non_territory(i32 %30, i32 %sub19)
  %32 = load i32, i32* %f, align 4
  %33 = load i32, i32* %color.addr, align 4
  %sub20 = sub nsw i32 3, %33
  call void @influence_mark_non_territory(i32 %32, i32 %sub20)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat158(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 609), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 608), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %e, align 4
  %16 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %a, align 4
  %18 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %17, i32 %18)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %19 = load i32, i32* %a, align 4
  %20 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %20
  call void @influence_mark_non_territory(i32 %19, i32 %sub)
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %color.addr, align 4
  %sub13 = sub nsw i32 3, %22
  call void @influence_mark_non_territory(i32 %21, i32 %sub13)
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %color.addr, align 4
  %sub14 = sub nsw i32 3, %24
  call void @influence_mark_non_territory(i32 %23, i32 %sub14)
  %25 = load i32, i32* %d, align 4
  %26 = load i32, i32* %color.addr, align 4
  %sub15 = sub nsw i32 3, %26
  call void @influence_mark_non_territory(i32 %25, i32 %sub15)
  %27 = load i32, i32* %e, align 4
  %28 = load i32, i32* %color.addr, align 4
  %sub16 = sub nsw i32 3, %28
  call void @influence_mark_non_territory(i32 %27, i32 %sub16)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat159(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 719), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 0, i32 4, i32 %15, i32 %16, i32 0, i32 %17, i32 %18, i32 %19)
  %tobool10 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %20, i32 %21)
  %22 = load i32, i32* %c, align 4
  %23 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %22, i32 %23)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat160(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 0, i32 1, i32 %12, i32 %13, i32 %14)
  %tobool7 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool7, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %15, i32 %16)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat161(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %E = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %E, align 4
  %16 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %d, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %E, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %17, i32 0, i32 5, i32 %18, i32 %19, i32 %20, i32 0, i32 %21, i32 %22, i32 %23)
  %tobool13 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool13, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %24 = load i32, i32* %a, align 4
  %25 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %25
  call void @influence_mark_non_territory(i32 %24, i32 %sub)
  %26 = load i32, i32* %b, align 4
  %27 = load i32, i32* %color.addr, align 4
  %sub14 = sub nsw i32 3, %27
  call void @influence_mark_non_territory(i32 %26, i32 %sub14)
  %28 = load i32, i32* %d, align 4
  %29 = load i32, i32* %color.addr, align 4
  %sub15 = sub nsw i32 3, %29
  call void @influence_mark_non_territory(i32 %28, i32 %sub15)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat162(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 537), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %e, align 4
  %16 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 536), i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %18 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %17, %18
  store i32 %add15, i32* %f, align 4
  %19 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %color.addr, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %d, align 4
  %25 = load i32, i32* %e, align 4
  %26 = load i32, i32* %f, align 4
  %27 = load i32, i32* %d, align 4
  %28 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %20, i32 0, i32 7, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 0, i32 %26, i32 %27, i32 %28)
  %tobool16 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool16, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %29 = load i32, i32* %a, align 4
  %30 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %30
  call void @influence_mark_non_territory(i32 %29, i32 %sub)
  %31 = load i32, i32* %b, align 4
  %32 = load i32, i32* %color.addr, align 4
  %sub17 = sub nsw i32 3, %32
  call void @influence_mark_non_territory(i32 %31, i32 %sub17)
  %33 = load i32, i32* %c, align 4
  %34 = load i32, i32* %color.addr, align 4
  %sub18 = sub nsw i32 3, %34
  call void @influence_mark_non_territory(i32 %33, i32 %sub18)
  %35 = load i32, i32* %d, align 4
  %36 = load i32, i32* %color.addr, align 4
  %sub19 = sub nsw i32 3, %36
  call void @influence_mark_non_territory(i32 %35, i32 %sub19)
  %37 = load i32, i32* %f, align 4
  %38 = load i32, i32* %color.addr, align 4
  %sub20 = sub nsw i32 3, %38
  call void @influence_mark_non_territory(i32 %37, i32 %sub20)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat163(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %color.addr, align 4
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %8, i32 1, i32 2, i32 %9, i32 %10, i32 %11)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %color.addr, align 4
  %call5 = call i32 @safe_move(i32 %12, i32 %13)
  %tobool6 = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %14 = phi i1 [ false, %if.then ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %16
  call void @influence_mark_non_territory(i32 %15, i32 %sub)
  %17 = load i32, i32* %b, align 4
  %18 = load i32, i32* %color.addr, align 4
  %sub7 = sub nsw i32 3, %18
  call void @influence_mark_non_territory(i32 %17, i32 %sub7)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat164(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load i32, i32* %b, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom4
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx5, i32 0, i32 16
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %10 = load i32, i32* %arrayidx6, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %land.rhs, label %land.end

cond.false:                                       ; preds = %if.then
  %11 = load i32, i32* %b, align 4
  %call = call i32 @attack(i32 %11, i32* null)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false, %cond.true
  %12 = load i32, i32* %color.addr, align 4
  %13 = load i32, i32* %move.addr, align 4
  %14 = load i32, i32* %b, align 4
  %call9 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %12, i32 1, i32 1, i32 %13, i32 %14)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false, %cond.true
  %15 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %16 = load i32, i32* %a, align 4
  %17 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %16, i32 %17)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat165(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 609), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 645), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 608), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %color.addr, align 4
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %11, i32 1, i32 2, i32 %12, i32 %13, i32 %14)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %15 = load i32, i32* %color.addr, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %a, align 4
  %18 = load i32, i32* %a, align 4
  %call8 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %15, i32 1, i32 2, i32 %16, i32 %17, i32 %18)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %19 = phi i1 [ false, %if.then ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %19 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %20, i32 %21)
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %22, i32 %23)
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %24, i32 %25)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat166(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %move.addr, align 4
  %6 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %5, i32 %6)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %move.addr, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  call void @influence_mark_non_territory(i32 %7, i32 %sub)
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %color.addr, align 4
  %sub1 = sub nsw i32 3, %10
  call void @influence_mark_non_territory(i32 %9, i32 %sub1)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat167(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %5 = load i32, i32* %a, align 4
  %6 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %6
  call void @influence_mark_non_territory(i32 %5, i32 %sub)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat168(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %5 = load i32, i32* %a, align 4
  %6 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %5, i32 %6)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat169(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %b, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %c, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %A, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %11)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %12 = load i32, i32* %A, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %c, align 4
  %call7 = call i32 @connect_and_cut_helper(i32 %12, i32 %13, i32 %14)
  %tobool8 = icmp ne i32 %call7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %15 = phi i1 [ false, %if.then ], [ %tobool8, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %16, i32 %17)
  %18 = load i32, i32* %c, align 4
  %19 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %18, i32 %19)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat170(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %8, i32 %9)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %b, align 4
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  call void @influence_mark_non_territory(i32 %10, i32 %sub)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat171(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %8, i32 %9)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %b, align 4
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  call void @influence_mark_non_territory(i32 %10, i32 %sub)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat172(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %8, i32 %9)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %b, align 4
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  call void @influence_mark_non_territory(i32 %10, i32 %sub)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat173(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %11, i32 %12)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %13 = load i32, i32* %color.addr, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %call8 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %13, i32 1, i32 2, i32 %14, i32 %15, i32 %16)
  %tobool9 = icmp ne i32 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %17 = phi i1 [ false, %if.then ], [ %tobool9, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %18 = load i32, i32* %b, align 4
  %19 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %18, i32 %19)
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %20, i32 %21)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat174(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %E = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %E, align 4
  %16 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %17, i32 1, i32 2, i32 %18, i32 %19, i32 %20)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then
  %21 = load i32, i32* %color.addr, align 4
  %22 = load i32, i32* %a, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %b, align 4
  %call14 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %21, i32 1, i32 3, i32 %22, i32 %23, i32 %24, i32 %25)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %26 = load i32, i32* %color.addr, align 4
  %27 = load i32, i32* %a, align 4
  %28 = load i32, i32* %c, align 4
  %29 = load i32, i32* %b, align 4
  %30 = load i32, i32* %E, align 4
  %call16 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 3, i32 %27, i32 %28, i32 %29, i32 %30)
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then
  %31 = phi i1 [ false, %land.lhs.true ], [ false, %if.then ], [ %tobool17, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %32 = load i32, i32* %c, align 4
  %33 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %33
  call void @influence_mark_non_territory(i32 %32, i32 %sub)
  %34 = load i32, i32* %d, align 4
  %35 = load i32, i32* %color.addr, align 4
  %sub18 = sub nsw i32 3, %35
  call void @influence_mark_non_territory(i32 %34, i32 %sub18)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat175(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %14, i32 1, i32 2, i32 %15, i32 %16, i32 %17)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %18 = load i32, i32* %color.addr, align 4
  %19 = load i32, i32* %a, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %c, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 1, i32 3, i32 %19, i32 %20, i32 %21, i32 %22)
  %tobool12 = icmp ne i32 %call11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %23 = phi i1 [ false, %if.then ], [ %tobool12, %land.rhs ]
  %land.ext = zext i1 %23 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %25
  call void @influence_mark_non_territory(i32 %24, i32 %sub)
  %26 = load i32, i32* %d, align 4
  %27 = load i32, i32* %color.addr, align 4
  %sub13 = sub nsw i32 3, %27
  call void @influence_mark_non_territory(i32 %26, i32 %sub13)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat176(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 575), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 612), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 537), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 536), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %e, align 4
  %16 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %d, align 4
  %22 = load i32, i32* %e, align 4
  %23 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %17, i32 1, i32 5, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %tobool13 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool13, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %24 = load i32, i32* %a, align 4
  %25 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %24, i32 %25)
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %26, i32 %27)
  %28 = load i32, i32* %e, align 4
  %29 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %28, i32 %29)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat177(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %14, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %19 = load i32, i32* %color.addr, align 4
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %c, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %a, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %19, i32 1, i32 3, i32 %20, i32 %21, i32 %22, i32 %23)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %24 = phi i1 [ false, %if.then ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %25 = load i32, i32* %b, align 4
  %26 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %26
  call void @influence_mark_non_territory(i32 %25, i32 %sub)
  %27 = load i32, i32* %c, align 4
  %28 = load i32, i32* %color.addr, align 4
  %sub13 = sub nsw i32 3, %28
  call void @influence_mark_non_territory(i32 %27, i32 %sub13)
  %29 = load i32, i32* %d, align 4
  %30 = load i32, i32* %color.addr, align 4
  %sub14 = sub nsw i32 3, %30
  call void @influence_mark_non_territory(i32 %29, i32 %sub14)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat178(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 575), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 537), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %11, i32 %12)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %land.rhs, label %land.end.18

land.rhs:                                         ; preds = %if.then
  %13 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %13
  %14 = load i32, i32* %b, align 4
  %call8 = call i32 (i32, i32, i32, ...) @somewhere(i32 %sub, i32 0, i32 1, i32 %14)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %land.rhs
  %15 = load i32, i32* %color.addr, align 4
  %16 = load i32, i32* %a, align 4
  %17 = load i32, i32* %b, align 4
  %call10 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %15, i32 1, i32 1, i32 %16, i32 %17)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %land.rhs
  %18 = load i32, i32* %color.addr, align 4
  %sub12 = sub nsw i32 3, %18
  %19 = load i32, i32* %b, align 4
  %call13 = call i32 (i32, i32, i32, ...) @somewhere(i32 %sub12, i32 0, i32 1, i32 %19)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.end, label %land.rhs.15

land.rhs.15:                                      ; preds = %lor.rhs
  %20 = load i32, i32* %color.addr, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %b, align 4
  %call16 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %20, i32 1, i32 2, i32 %21, i32 %22, i32 %23)
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.15, %lor.rhs
  %24 = phi i1 [ false, %lor.rhs ], [ %tobool17, %land.rhs.15 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %25 = phi i1 [ true, %land.lhs.true ], [ %24, %land.end ]
  br label %land.end.18

land.end.18:                                      ; preds = %lor.end, %if.then
  %26 = phi i1 [ false, %if.then ], [ %25, %lor.end ]
  %land.ext = zext i1 %26 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %27 = load i32, i32* %c, align 4
  %28 = load i32, i32* %color.addr, align 4
  %sub19 = sub nsw i32 3, %28
  call void @influence_mark_non_territory(i32 %27, i32 %sub19)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end.18
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat179(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 573), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 536), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 537), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %14, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %19 = load i32, i32* %color.addr, align 4
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %c, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %a, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %19, i32 1, i32 3, i32 %20, i32 %21, i32 %22, i32 %23)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %24 = phi i1 [ false, %if.then ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %25 = load i32, i32* %b, align 4
  %26 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %26
  call void @influence_mark_non_territory(i32 %25, i32 %sub)
  %27 = load i32, i32* %c, align 4
  %28 = load i32, i32* %color.addr, align 4
  %sub13 = sub nsw i32 3, %28
  call void @influence_mark_non_territory(i32 %27, i32 %sub13)
  %29 = load i32, i32* %d, align 4
  %30 = load i32, i32* %color.addr, align 4
  %sub14 = sub nsw i32 3, %30
  call void @influence_mark_non_territory(i32 %29, i32 %sub14)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat180(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %a, align 4
  %call = call i32 @countlib(i32 %8)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %9 = load i32, i32* @stackp, align 4
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %10 = load i32, i32* %a, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom5
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx6, i32 0, i32 16
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %11 = load i32, i32* %arrayidx7, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %12 = load i32, i32* %a, align 4
  %call8 = call i32 @attack(i32 %12, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %call8, %cond.false ]
  %tobool9 = icmp ne i32 %cond, 0
  br label %land.end

land.end:                                         ; preds = %cond.end, %if.then
  %13 = phi i1 [ false, %if.then ], [ %tobool9, %cond.end ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %14, i32 %15)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat181(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %c = alloca i32, align 4
  %B = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %c, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %B, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %B, align 4
  %call = call i32 @countlib(i32 %11)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %color.addr, align 4
  %call7 = call i32 @safe_move(i32 %12, i32 %13)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %B, align 4
  %call9 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %14, i32 1, i32 1, i32 %15, i32 %16)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %if.then ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %18 = load i32, i32* %c, align 4
  %19 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %19
  call void @influence_mark_non_territory(i32 %18, i32 %sub)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat182(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 760), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 0, i32 1, i32 %12, i32 %13, i32 %14)
  %tobool7 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool7, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %15, i32 %16)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat183(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 760), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %C, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %D, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %C, align 4
  %18 = load i32, i32* %D, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %14, i32 0, i32 3, i32 %15, i32 0, i32 %16, i32 %17, i32 %18)
  %tobool10 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %20
  call void @influence_mark_non_territory(i32 %19, i32 %sub)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat184(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 612), i32 0, i64 %idxprom7
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
  %16 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %d, align 4
  %22 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %17, i32 0, i32 4, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %tobool13 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool13, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %23 = load i32, i32* %d, align 4
  %24 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %23, i32 %24)
  %25 = load i32, i32* %e, align 4
  %26 = load i32, i32* %color.addr, align 4
  call void @influence_mark_non_territory(i32 %25, i32 %26)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperbarrierspat185(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 574), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 575), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %color.addr, align 4
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %11, i32 1, i32 2, i32 %12, i32 %13, i32 %14)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load i32, i32* %c, align 4
  %16 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %16
  call void @influence_mark_non_territory(i32 %15, i32 %sub)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @play_break_through_n(i32, i32, ...) #1

declare i32 @play_attack_defend2_n(i32, i32, i32, ...) #1

declare i32 @find_defense(i32, i32*) #1

declare i32 @safe_move(i32, i32) #1

declare i32 @play_attack_defend_n(i32, i32, i32, ...) #1

declare i32 @attack(i32, i32*) #1

declare i32 @countlib(i32) #1

declare i32 @is_legal(i32, i32) #1

declare i32 @accuratelib(i32, i32, i32, i32*) #1

declare i32 @connect_and_cut_helper(i32, i32, i32) #1

declare i32 @somewhere(i32, i32, i32, ...) #1

declare void @influence_mark_non_territory(i32, i32) #1

declare i32 @is_halfeye(%struct.half_eye_data*, i32) #1

declare i32 @is_false_eye(%struct.half_eye_data*, i32) #1

declare i32 @connect_and_cut_helper2(i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
