; ModuleID = 'patterns/aa_attackpat.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type { [80 x i8], i32, %struct.state_rt*, %struct.attrib_rt* }
%struct.state_rt = type { i16, [4 x i16] }
%struct.attrib_rt = type { i16, i16 }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }

@aa_attackpat = internal global [17 x %struct.pattern] [%struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @aa_attackpat0, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 721, [8 x i32] [i32 3932160, i32 3158016, i32 15728640, i32 808452096, i32 808452096, i32 3932160, i32 3158016, i32 15728640], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperaa_attackpat0, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @aa_attackpat1, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 2, i32 2, i32 4, i32 2, i32 721, [8 x i32] [i32 -33554688, i32 -50529036, i32 -768, i32 -50529156, i32 -50529036, i32 -768, i32 -50529156, i32 -33554688], [8 x i32] [i32 -1742733312, i32 136579072, i32 2136064, i32 -2141159424, i32 136579072, i32 2136064, i32 -2141159424, i32 -1742733312], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @aa_attackpat2, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 1, i32 3, i32 1, i32 2, i32 721, [8 x i32] [i32 1010580500, i32 16579584, i32 -252645376, i32 -33751040, i32 -50593792, i32 1010580480, i32 16645376, i32 -252645296], [8 x i32] [i32 404758528, i32 10749952, i32 539004928, i32 -2140667904, i32 144965632, i32 538974208, i32 6848512, i32 -1876942848], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @aa_attackpat3, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 1, i32 3, i32 1, i32 2, i32 721, [8 x i32] [i32 205274132, i32 15793152, i32 -252657664, i32 -46333952, i32 -51380224, i32 1010568192, i32 4062464, i32 -1057951664], [8 x i32] [i32 135274496, i32 9439232, i32 537952256, i32 -2145910784, i32 143654912, i32 537921536, i32 1605632, i32 -2146426880], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @aa_attackpat4, i32 0, i32 0), i32 2, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 205471488, i32 15793392, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061096448, i32 3996732, i32 -1057951744], [8 x i32] [i32 69337088, i32 2098208, i32 2113536, i32 1075838976, i32 69206016, i32 2229248, i32 2113568, i32 1075838976], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @aa_attackpat5, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 1, i32 1, i32 2, i32 0, i32 646, [8 x i32] [i32 -54788096, i32 742145024, i32 16317440, i32 -252649472, i32 1010576384, i32 12385280, i32 -521080832, i32 -50855936], [8 x i32] [i32 136577024, i32 2103296, i32 6324224, i32 -1876951040, i32 404750336, i32 2361344, i32 2134016, i32 -2141192192], i32 256, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperaa_attackpat5, i32 3, float 0x3FA99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @aa_attackpat6, i32 0, i32 0), i32 5, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 1061109504, i32 16579836, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061109504, i32 16579836, i32 -252645376], [8 x i32] [i32 572659968, i32 6848616, i32 -1876942848, i32 144965632, i32 -2140667904, i32 421667328, i32 10750116, i32 539004928], i32 16, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @aa_attackpat7, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 -63173632, i32 205323264, i32 -1057948672, i32 -51331072, i32 -63173632, i32 205323264, i32 -1057948672, i32 -51331072], [8 x i32] [i32 1075840000, i32 69222400, i32 1075840000, i32 69222400, i32 1075840000, i32 69222400, i32 1075840000, i32 69222400], i32 256, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @aa_attackpat8, i32 0, i32 0), i32 2, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2103296, i32 6324224, i32 -1876951040, i32 136577024, i32 -2141192192, i32 404750336, i32 2361344, i32 2134016], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperaa_attackpat8, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @aa_attackpat9, i32 0, i32 0), i32 3, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 821885952, i32 -251858944, i32 -50581504, i32 1023163392, i32 -251858944, i32 -50581504, i32 1023163392, i32 821885952], [8 x i32] [i32 546832384, i32 538451968, i32 9969664, i32 546316288, i32 538451968, i32 9969664, i32 546316288, i32 546832384], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @aa_attackpat10, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 0, i32 609, [8 x i32] [i32 -252645376, i32 -50593792, i32 1010581248, i32 16579776, i32 16579596, i32 -252645376, i32 -50593792, i32 1060912128], [8 x i32] [i32 539004928, i32 -2140667904, i32 404758528, i32 10749952, i32 6848512, i32 -1876942848, i32 144965632, i32 538974208], i32 256, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperaa_attackpat10, i32 3, float 0x3FA99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @aa_attackpat11, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 648, [8 x i32] [i32 15793392, i32 -252657664, i32 -63176704, i32 205471488, i32 -1057951744, i32 -51380224, i32 1061096448, i32 3996732], [8 x i32] [i32 2099232, i32 2129920, i32 -2145386496, i32 136445952, i32 -2145386496, i32 136314880, i32 2230272, i32 2129952], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperaa_attackpat11, i32 3, float 0x3FA47AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @aa_attackpat12, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 0, i32 3, i32 1, i32 2, i32 646, [8 x i32] [i32 -252645168, i32 -50593792, i32 1010580480, i32 16645888, i32 16579584, i32 -252645376, i32 -196608, i32 1010580508], [8 x i32] [i32 270540800, i32 10747904, i32 538972160, i32 6815744, i32 10747904, i32 538972160, i32 6815744, i32 270540800], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperaa_attackpat12, i32 3, float 0x3FA47AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @aa_attackpat13, i32 0, i32 0), i32 3, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 1061096448, i32 3996732, i32 -1057951744, i32 -51380224, i32 -63176704, i32 205471488, i32 15793392, i32 -252657664], [8 x i32] [i32 136446976, i32 2115616, i32 1075871744, i32 -2078277632, i32 1210056704, i32 69339136, i32 2130976, i32 -2145370112], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperaa_attackpat13, i32 3, float 0x40199999E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @aa_attackpat14, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 205459200, i32 3210480, i32 -1057964032, i32 -63963136, i32 -63963136, i32 255790080, i32 3210300, i32 -1057964032], [8 x i32] [i32 136317440, i32 2132096, i32 -2145353728, i32 -2011168768, i32 -2011168768, i32 169871360, i32 2131976, i32 -2145353728], i32 16, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperaa_attackpat14, i32 3, float 0x3FA47AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @aa_attackpat15, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 1, i32 2, i32 1, i32 2, i32 683, [8 x i32] [i32 876354560, i32 8188928, i32 -789549056, i32 2096365568, i32 -193200128, i32 473707520, i32 16022528, i32 1894830080], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperaa_attackpat15, i32 3, float 0x3F847AE140000000 }, %struct.pattern zeroinitializer], align 16
@dfa_aa_attackpat = internal global %struct.dfa_rt { [80 x i8] c"aa_attackpat\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, %struct.state_rt* getelementptr inbounds ([296 x %struct.state_rt], [296 x %struct.state_rt]* @state_aa_attackpat, i32 0, i32 0), %struct.attrib_rt* getelementptr inbounds ([17 x %struct.attrib_rt], [17 x %struct.attrib_rt]* @idx_aa_attackpat, i32 0, i32 0) }, align 8
@aa_attackpat_db = global %struct.pattern_db { i32 -1, i32 0, %struct.pattern* getelementptr inbounds ([17 x %struct.pattern], [17 x %struct.pattern]* @aa_attackpat, i32 0, i32 0), %struct.dfa_rt* @dfa_aa_attackpat }, align 8
@aa_attackpat0 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@aa_attackpat1 = internal global [5 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 609, i32 3 }, %struct.patval { i32 757, i32 3 }], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@aa_attackpat2 = internal global [5 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@aa_attackpat3 = internal global [4 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@aa_attackpat4 = internal global [2 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.4 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@aa_attackpat5 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.5 = private unnamed_addr constant [3 x i8] c"A6\00", align 1
@aa_attackpat6 = internal global [5 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.6 = private unnamed_addr constant [3 x i8] c"A7\00", align 1
@aa_attackpat7 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"A8\00", align 1
@aa_attackpat8 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.8 = private unnamed_addr constant [3 x i8] c"A9\00", align 1
@aa_attackpat9 = internal global [3 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"A10\00", align 1
@aa_attackpat10 = internal global [3 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 1 }], align 16
@.str.10 = private unnamed_addr constant [4 x i8] c"A11\00", align 1
@aa_attackpat11 = internal global [3 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 1 }], align 16
@.str.11 = private unnamed_addr constant [4 x i8] c"A12\00", align 1
@aa_attackpat12 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.12 = private unnamed_addr constant [4 x i8] c"A13\00", align 1
@aa_attackpat13 = internal global [3 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.13 = private unnamed_addr constant [4 x i8] c"A14\00", align 1
@aa_attackpat14 = internal global [4 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.14 = private unnamed_addr constant [4 x i8] c"A15\00", align 1
@aa_attackpat15 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 685, i32 3 }], align 16
@.str.15 = private unnamed_addr constant [4 x i8] c"A16\00", align 1
@transformation = external global [1369 x [8 x i32]], align 16
@state_aa_attackpat = internal constant [296 x %struct.state_rt] [%struct.state_rt zeroinitializer, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 1, i16 2, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 0, i16 3, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 3, i16 4, i16 5, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 6, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 7, i16 8, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 9, i16 10, i16 10] }, %struct.state_rt { i16 0, [4 x i16] [i16 10, i16 11, i16 12, i16 12] }, %struct.state_rt { i16 0, [4 x i16] [i16 12, i16 13, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 13, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 13, i16 13, i16 13, i16 0] }, %struct.state_rt { i16 3, [4 x i16] [i16 13, i16 14, i16 15, i16 16] }, %struct.state_rt { i16 0, [4 x i16] [i16 16, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 3, [4 x i16] [i16 15, i16 16, i16 17, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 0, i16 19, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 18, i16 0] }, %struct.state_rt { i16 3, [4 x i16] [i16 18, i16 19, i16 20, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 20, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 19, i16 0, i16 0] }, %struct.state_rt { i16 3, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 12, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 17, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 17, i16 17, i16 17, i16 17] }, %struct.state_rt { i16 0, [4 x i16] [i16 17, i16 18, i16 18, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 20, i16 20, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 21, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 16, i16 16, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 24, i16 24, i16 24] }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 24, i16 24, i16 24] }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 24, i16 24, i16 24] }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 0, i16 24, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 24, i16 25, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 27, i16 28] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 28] }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 24, i16 25, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 27, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 27, i16 28, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 27, i16 27, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 27, i16 27, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 27, i16 27, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 27, i16 27, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 27, i16 27, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 27, i16 27, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 27, i16 27, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 8, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 10, i16 10, i16 10, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 11, i16 27, i16 11] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 10, i16 27, i16 10] }, %struct.state_rt { i16 0, [4 x i16] [i16 9, i16 9, i16 9, i16 9] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 0, i16 26, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 26, i16 27, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 27, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 24, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 27, i16 24, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 26, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 22, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 22, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 0, i16 20, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 0, i16 19, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 24, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 24, i16 24, i16 24] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 24, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 14, i16 24, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 17, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 22, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 23, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 7, i16 8, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 10, i16 7, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 22, i16 23, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 0, i16 5, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 20, i16 20, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 12, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 12, [4 x i16] [i16 21, i16 21, i16 22, i16 21] }, %struct.state_rt { i16 12, [4 x i16] [i16 20, i16 20, i16 20, i16 20] }, %struct.state_rt { i16 12, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 20, i16 20, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 1, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 20, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 20, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 22, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 0, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 22, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 17, i16 17, i16 17, i16 17] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 11, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 19, i16 22, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 12, i16 12, i16 12, i16 12] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 20, i16 20, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 20, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 20, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 20, i16 21, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 0, i16 20, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 20, i16 19, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 20, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 18, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 19, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 13, i16 13, i16 19, i16 13] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 17, i16 17, i16 19, i16 17] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 16, i16 16, i16 16] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 20, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 20, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 17, i16 17, i16 17, i16 17] }, %struct.state_rt { i16 0, [4 x i16] [i16 16, i16 16, i16 19, i16 16] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 19, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 8, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 18, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 18, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 13, i16 13, i16 13] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 9, i16 9, i16 9] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 16, i16 16, i16 16] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 19, i16 19, i16 19] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 4, i16 4, i16 4] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 4, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 17, i16 17, i16 17, i16 17] }, %struct.state_rt { i16 0, [4 x i16] [i16 17, i16 17, i16 17, i16 17] }, %struct.state_rt { i16 0, [4 x i16] [i16 17, i16 17, i16 17, i16 17] }, %struct.state_rt { i16 0, [4 x i16] [i16 17, i16 17, i16 17, i16 17] }, %struct.state_rt { i16 0, [4 x i16] [i16 17, i16 17, i16 17, i16 17] }, %struct.state_rt { i16 0, [4 x i16] [i16 17, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 11, [4 x i16] zeroinitializer }, %struct.state_rt { i16 11, [4 x i16] [i16 12, i16 12, i16 12, i16 12] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 13] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 13, i16 13, i16 13, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 3, i16 3, i16 3, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 0, i16 15, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 13] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 14, i16 15, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 0, i16 15, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 15, i16 15, i16 15, i16 15] }, %struct.state_rt { i16 2, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 12, i16 12, i16 12] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 16, [4 x i16] [i16 13, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 16, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 12, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 12, i16 12, i16 12, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 12, i16 0] }, %struct.state_rt { i16 7, [4 x i16] zeroinitializer }, %struct.state_rt { i16 7, [4 x i16] [i16 0, i16 0, i16 10, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 10, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 10, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 10, i16 10, i16 10, i16 10] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 10, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 10, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 7, i16 10, i16 7, i16 7] }, %struct.state_rt { i16 15, [4 x i16] zeroinitializer }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 2, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 8, i16 8] }, %struct.state_rt { i16 6, [4 x i16] zeroinitializer }, %struct.state_rt { i16 9, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 6, [4 x i16] [i16 4, i16 4, i16 4, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 5, i16 4] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 5, i16 5] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 5, i16 5] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 5, i16 5] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 5, i16 5] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 5, i16 5] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 0, i16 5, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 5, i16 5] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 5, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 3, i16 3, i16 5, i16 3] }, %struct.state_rt { i16 5, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 4, i16 4, i16 4, i16 4] }, %struct.state_rt { i16 0, [4 x i16] [i16 4, i16 4, i16 4, i16 4] }, %struct.state_rt { i16 14, [4 x i16] zeroinitializer }, %struct.state_rt { i16 14, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 0, i16 2, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 10, [4 x i16] zeroinitializer }, %struct.state_rt { i16 13, [4 x i16] zeroinitializer }], align 16
@idx_aa_attackpat = internal constant [17 x %struct.attrib_rt] [%struct.attrib_rt { i16 -1, i16 0 }, %struct.attrib_rt { i16 9, i16 0 }, %struct.attrib_rt { i16 3, i16 0 }, %struct.attrib_rt zeroinitializer, %struct.attrib_rt { i16 7, i16 0 }, %struct.attrib_rt { i16 13, i16 0 }, %struct.attrib_rt { i16 14, i16 0 }, %struct.attrib_rt { i16 11, i16 0 }, %struct.attrib_rt { i16 15, i16 0 }, %struct.attrib_rt { i16 4, i16 0 }, %struct.attrib_rt { i16 1, i16 0 }, %struct.attrib_rt { i16 5, i16 0 }, %struct.attrib_rt { i16 8, i16 0 }, %struct.attrib_rt { i16 10, i16 0 }, %struct.attrib_rt { i16 6, i16 0 }, %struct.attrib_rt { i16 12, i16 0 }, %struct.attrib_rt { i16 2, i16 0 }], align 16

; Function Attrs: nounwind uwtable
define internal i32 @autohelperaa_attackpat0(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperaa_attackpat5(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %cmp = icmp sgt i32 %call, 3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperaa_attackpat8(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %call = call i32 @safe_move(i32 %4, i32 %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperaa_attackpat10(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %cmp = icmp sgt i32 %call, 3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperaa_attackpat11(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
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
  %cmp2 = icmp sgt i32 %call1, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperaa_attackpat12(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load i32, i32* %move.addr, align 4
  %7 = load i32, i32* %color.addr, align 4
  %call1 = call i32 @accuratelib(i32 %6, i32 %7, i32 20, i32* null)
  %cmp2 = icmp sge i32 %call1, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperaa_attackpat13(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %B, align 4
  %8 = load i32, i32* %move.addr, align 4
  %9 = load i32, i32* %color.addr, align 4
  %call = call i32 @safe_move(i32 %8, i32 %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %color.addr, align 4
  %11 = load i32, i32* %move.addr, align 4
  %12 = load i32, i32* %A, align 4
  %13 = load i32, i32* %B, align 4
  %call4 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %10, i32 1, i32 1, i32 %11, i32 %12, i32 %13)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %A, align 4
  %17 = load i32, i32* %B, align 4
  %call6 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %14, i32 1, i32 1, i32 %15, i32 %16, i32 %17)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %18 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperaa_attackpat14(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %b = alloca i32, align 4
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
  store i32 %add, i32* %b, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %A, align 4
  %8 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %8)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %9 = load i32, i32* %b, align 4
  %10 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %10
  %call4 = call i32 @accuratelib(i32 %9, i32 %sub, i32 20, i32* null)
  %cmp5 = icmp sle i32 %call4, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %11 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperaa_attackpat15(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %cmp = icmp eq i32 %call, 3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @countlib(i32) #1

declare i32 @accuratelib(i32, i32, i32, i32*) #1

declare i32 @safe_move(i32, i32) #1

declare i32 @play_attack_defend2_n(i32, i32, i32, ...) #1

declare i32 @play_connect_n(i32, i32, i32, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
