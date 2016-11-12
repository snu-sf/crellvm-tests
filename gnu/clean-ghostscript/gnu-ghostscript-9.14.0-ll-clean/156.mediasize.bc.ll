; ModuleID = './mediasize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ms_SizeDescription = type { i32, i8*, [2 x float] }
%struct.ms_Flag = type { i32, i8* }

@list = internal constant [78 x %struct.ms_SizeDescription] [%struct.ms_SizeDescription { i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), [2 x float] zeroinitializer }, %struct.ms_SizeDescription { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), [2 x float] [float 0x40526CD9C0000000, float 0x405A3870E0000000] }, %struct.ms_SizeDescription { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), [2 x float] [float 0x4053D7AF60000000, float 0x405C58B160000000] }, %struct.ms_SizeDescription { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), [2 x float] [float 0x4055F7EFE0000000, float 0x405F2E5CC0000000] }, %struct.ms_SizeDescription { i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), [2 x float] [float 0x4056AD5AC0000000, float 0x405FE3C780000000] }, %struct.ms_SizeDescription { i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), [2 x float] [float 0x405A3870E0000000, float 0x40626CD9C0000000] }, %struct.ms_SizeDescription { i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), [2 x float] [float 0x405C58B160000000, float 0x40643264C0000000] }, %struct.ms_SizeDescription { i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), [2 x float] [float 0x405F2E5CC0000000, float 0x4065F7EFE0000000] }, %struct.ms_SizeDescription { i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), [2 x float] [float 0x405FE3C780000000, float 0x4066AD5AC0000000] }, %struct.ms_SizeDescription { i32 9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), [2 x float] [float 0x40626CD9C0000000, float 0x406A3870E0000000] }, %struct.ms_SizeDescription { i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), [2 x float] [float 0x40643264C0000000, float 0x406CB366C0000000] }, %struct.ms_SizeDescription { i32 11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), [2 x float] [float 0x4065F7EFE0000000, float 0x406F2E5CC0000000] }, %struct.ms_SizeDescription { i32 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), [2 x float] [float 0x4066AD5AC0000000, float 0x40701F3E80000000] }, %struct.ms_SizeDescription { i32 13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), [2 x float] [float 0x406A3870E0000000, float 0x40729A3460000000] }, %struct.ms_SizeDescription { i32 14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), [2 x float] [float 2.160000e+02, float 3.600000e+02] }, %struct.ms_SizeDescription { i32 15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), [2 x float] [float 0x406CB366C0000000, float 0x40743264C0000000] }, %struct.ms_SizeDescription { i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), [2 x float] [float 0x406F2E5CC0000000, float 0x4076254AA0000000] }, %struct.ms_SizeDescription { i32 17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), [2 x float] [float 0x406FE3C780000000, float 0x408228D1A0000000] }, %struct.ms_SizeDescription { i32 18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), [2 x float] [float 0x40701F3E80000000, float 0x4076AD5AC0000000] }, %struct.ms_SizeDescription { i32 19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), [2 x float] [float 2.790000e+02, float 5.400000e+02] }, %struct.ms_SizeDescription { i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), [2 x float] [float 2.790000e+02, float 6.390000e+02] }, %struct.ms_SizeDescription { i32 21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), [2 x float] [float 0x4071B76EE0000000, float 0x407A3870E0000000] }, %struct.ms_SizeDescription { i32 22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), [2 x float] [float 2.880000e+02, float 4.320000e+02] }, %struct.ms_SizeDescription { i32 23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), [2 x float] [float 2.970000e+02, float 6.840000e+02] }, %struct.ms_SizeDescription { i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), [2 x float] [float 0x40729A3460000000, float 0x407A3870E0000000] }, %struct.ms_SizeDescription { i32 25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), [2 x float] [float 0x40737CFA00000000, float 0x40837CFA00000000] }, %struct.ms_SizeDescription { i32 26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), [2 x float] [float 3.150000e+02, float 4.140000e+02] }, %struct.ms_SizeDescription { i32 27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), [2 x float] [float 0x40743264C0000000, float 0x407CB366C0000000] }, %struct.ms_SizeDescription { i32 28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), [2 x float] [float 0x4075428500000000, float 0x4084D12240000000] }, %struct.ms_SizeDescription { i32 29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), [2 x float] [float 0x4076254AA0000000, float 0x407F2E5CC0000000] }, %struct.ms_SizeDescription { i32 30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), [2 x float] [float 3.600000e+02, float 5.760000e+02] }, %struct.ms_SizeDescription { i32 31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), [2 x float] [float 0x4076AD5AC0000000, float 0x40801F3E80000000] }, %struct.ms_SizeDescription { i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), [2 x float] [float 3.960000e+02, float 6.120000e+02] }, %struct.ms_SizeDescription { i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), [2 x float] [float 0x407A3870E0000000, float 0x4081B76EE0000000] }, %struct.ms_SizeDescription { i32 34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), [2 x float] [float 0x407A3870E0000000, float 0x40829A3460000000] }, %struct.ms_SizeDescription { i32 35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), [2 x float] [float 0x407CB366C0000000, float 0x4084491220000000] }, %struct.ms_SizeDescription { i32 36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), [2 x float] [float 0x407F2E5CC0000000, float 0x4086254AA0000000] }, %struct.ms_SizeDescription { i32 37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), [2 x float] [float 0x40801F3E80000000, float 0x4086C40820000000] }, %struct.ms_SizeDescription { i32 38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), [2 x float] [float 5.220000e+02, float 7.560000e+02] }, %struct.ms_SizeDescription { i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), [2 x float] [float 0x40829A3460000000, float 0x408A4F1E40000000] }, %struct.ms_SizeDescription { i32 40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), [2 x float] [float 0x40829A3460000000, float 0x408D3B76E0000000] }, %struct.ms_SizeDescription { i32 41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), [2 x float] [float 6.120000e+02, float 0x40885E1480000000] }, %struct.ms_SizeDescription { i32 42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), [2 x float] [float 6.120000e+02, float 7.920000e+02] }, %struct.ms_SizeDescription { i32 43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), [2 x float] [float 6.120000e+02, float 1.008000e+03] }, %struct.ms_SizeDescription { i32 44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), [2 x float] [float 0x4083224480000000, float 0x4088899320000000] }, %struct.ms_SizeDescription { i32 45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), [2 x float] [float 0x40841BB760000000, float 0x408F891220000000] }, %struct.ms_SizeDescription { i32 46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), [2 x float] [float 6.480000e+02, float 8.640000e+02] }, %struct.ms_SizeDescription { i32 47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), [2 x float] [float 0x4084491220000000, float 0x408CB366C0000000] }, %struct.ms_SizeDescription { i32 48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), [2 x float] [float 0x4085428500000000, float 0x408D68D1A0000000] }, %struct.ms_SizeDescription { i32 49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), [2 x float] [float 0x4086254AA0000000, float 0x408F450A20000000] }, %struct.ms_SizeDescription { i32 50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), [2 x float] [float 0x4086C40820000000, float 0x40901F3E80000000] }, %struct.ms_SizeDescription { i32 51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), [2 x float] [float 7.920000e+02, float 1.224000e+03] }, %struct.ms_SizeDescription { i32 52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), [2 x float] [float 0x408A4F1E40000000, float 0x40929A3460000000] }, %struct.ms_SizeDescription { i32 53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), [2 x float] [float 8.640000e+02, float 1.296000e+03] }, %struct.ms_SizeDescription { i32 54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), [2 x float] [float 0x408B048920000000, float 0x409591E3C0000000] }, %struct.ms_SizeDescription { i32 55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), [2 x float] [float 0x408CB366C0000000, float 0x4094491220000000] }, %struct.ms_SizeDescription { i32 56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), [2 x float] [float 9.360000e+02, float 1.368000e+03] }, %struct.ms_SizeDescription { i32 57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), [2 x float] [float 0x408F450A20000000, float 0x4096254AA0000000] }, %struct.ms_SizeDescription { i32 58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), [2 x float] [float 0x40901F3E80000000, float 0x4096CF5EC0000000] }, %struct.ms_SizeDescription { i32 59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0), [2 x float] [float 0x40929A3460000000, float 0x409A4F1E40000000] }, %struct.ms_SizeDescription { i32 60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), [2 x float] [float 1.296000e+03, float 1.728000e+03] }, %struct.ms_SizeDescription { i32 61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), [2 x float] [float 0x4094491220000000, float 0x409CB366C0000000] }, %struct.ms_SizeDescription { i32 62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), [2 x float] [float 0x4096254AA0000000, float 0x409F5060C0000000] }, %struct.ms_SizeDescription { i32 63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), [2 x float] [float 0x4096CF5EC0000000, float 0x40A01F3E80000000] }, %struct.ms_SizeDescription { i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), [2 x float] [float 0x409A4F1E40000000, float 0x40A29FDFC0000000] }, %struct.ms_SizeDescription { i32 65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), [2 x float] [float 1.728000e+03, float 2.592000e+03] }, %struct.ms_SizeDescription { i32 66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), [2 x float] [float 0x409CB366C0000000, float 0x40A44EBD80000000] }, %struct.ms_SizeDescription { i32 67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), [2 x float] [float 0x409F5060C0000000, float 0x40A6254AA0000000] }, %struct.ms_SizeDescription { i32 68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), [2 x float] [float 0x40A01F3E80000000, float 0x40A6CF5EC0000000] }, %struct.ms_SizeDescription { i32 69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), [2 x float] [float 0x40A29FDFC0000000, float 0x40AA54C9A0000000] }, %struct.ms_SizeDescription { i32 70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), [2 x float] [float 2.592000e+03, float 3.456000e+03] }, %struct.ms_SizeDescription { i32 71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), [2 x float] [float 0x40A44EBD80000000, float 0x40ACB91220000000] }, %struct.ms_SizeDescription { i32 72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), [2 x float] [float 0x40A6254AA0000000, float 0x40AF5060C0000000] }, %struct.ms_SizeDescription { i32 73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), [2 x float] [float 0x40A6CF5EC0000000, float 0x40B01F3E80000000] }, %struct.ms_SizeDescription { i32 74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), [2 x float] [float 0x40AA54C9A0000000, float 0x40B29FDFC0000000] }, %struct.ms_SizeDescription { i32 75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), [2 x float] [float 0x40B29FDFC0000000, float 0x40BA54C9A0000000] }, %struct.ms_SizeDescription { i32 76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), [2 x float] zeroinitializer }, %struct.ms_SizeDescription { i32 77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), [2 x float] zeroinitializer }], align 16
@ms_find_code_from_name.sorted_list = internal global [77 x %struct.ms_SizeDescription*] zeroinitializer, align 16
@ms_find_code_from_name.entries = internal global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Transverse\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Big\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Small\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Extra\00", align 1
@substrings = internal constant [5 x %struct.ms_Flag] [%struct.ms_Flag { i32 2048, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0) }, %struct.ms_Flag { i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0) }, %struct.ms_Flag { i32 4096, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0) }, %struct.ms_Flag { i32 8192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0) }, %struct.ms_Flag zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [12 x i8] c".Transverse\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"A10\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"EnvC10\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ISOB10\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"JISB10\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"A9\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"EnvC9\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ISOB9\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"JISB9\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"A8\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"EnvC8\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"ISOB8\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"JISB8\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"A7\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Index3x5in\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"EnvC7\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"ISOB7\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"EnvChou4\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"JISB7\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"EnvMonarch\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Env9\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Postcard\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Index4x6in\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Env10\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"A6\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"EnvDL\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"EnvUS_A2\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"EnvC6\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"EnvChou3\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"ISOB6\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"Index5x8in\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"JISB6\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"Statement\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"DoublePostcard\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"EnvC5\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"ISOB5\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"JISB5\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"Executive\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Folio\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"Quarto\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"Letter\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"Legal\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"EnvKaku3\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"SuperA\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"ARCHA\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"EnvC4\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"EnvKaku2\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"ISOB4\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"JISB4\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"Tabloid\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"ARCHB\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"SuperB\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"EnvC3\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"HPSuperB\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"ISOB3\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"JISB3\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"ARCHC\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"EnvC2\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"ISOB2\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"JISB2\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"ARCHD\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"EnvC1\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"ISOB1\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"JISB1\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"ARCHE\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"EnvC0\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"ISOB0\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"JISB0\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"2A0\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"4A0\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"CustomPageSize\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"MaxPage\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"Rotated\00", align 1

; Function Attrs: nounwind uwtable
define %struct.ms_SizeDescription* @ms_find_size_from_code(i32 %code) #0 {
entry:
  %retval = alloca %struct.ms_SizeDescription*, align 8
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4, !tbaa !1
  %0 = load i32, i32* %code.addr, align 4, !tbaa !1
  %and = and i32 %0, -65281
  store i32 %and, i32* %code.addr, align 4, !tbaa !1
  %1 = load i32, i32* %code.addr, align 4, !tbaa !1
  %cmp = icmp ult i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %code.addr, align 4, !tbaa !1
  %conv = zext i32 %2 to i64
  %cmp1 = icmp ule i64 78, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.ms_SizeDescription* null, %struct.ms_SizeDescription** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %code.addr, align 4, !tbaa !1
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.ms_SizeDescription, %struct.ms_SizeDescription* getelementptr inbounds ([78 x %struct.ms_SizeDescription], [78 x %struct.ms_SizeDescription]* @list, i32 0, i32 0), i64 %idx.ext
  store %struct.ms_SizeDescription* %add.ptr, %struct.ms_SizeDescription** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.ms_SizeDescription*, %struct.ms_SizeDescription** %retval
  ret %struct.ms_SizeDescription* %4
}

; Function Attrs: nounwind uwtable
define i32 @ms_find_code_from_name(i8* %name, %struct.ms_Flag* %user_flag_list) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %user_flag_list.addr = alloca %struct.ms_Flag*, align 8
  %end = alloca i8*, align 8
  %stripped_name = alloca [15 x i8], align 1
  %keydata = alloca %struct.ms_SizeDescription, align 8
  %key = alloca %struct.ms_SizeDescription*, align 8
  %found = alloca %struct.ms_SizeDescription**, align 8
  %flags = alloca i32, align 4
  %l = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %flag = alloca i32, align 4
  %flag70 = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8, !tbaa !5
  store %struct.ms_Flag* %user_flag_list, %struct.ms_Flag** %user_flag_list.addr, align 8, !tbaa !5
  %0 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [15 x i8]* %stripped_name to i8*
  call void @llvm.lifetime.start(i64 15, i8* %1) #1
  %2 = bitcast %struct.ms_SizeDescription* %keydata to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast %struct.ms_SizeDescription** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.ms_SizeDescription* %keydata, %struct.ms_SizeDescription** %key, align 8, !tbaa !5
  %4 = bitcast %struct.ms_SizeDescription*** %found to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %flags, align 4, !tbaa !1
  %6 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* @ms_find_code_from_name.entries, align 4, !tbaa !1
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %8 = load i32, i32* @ms_find_code_from_name.entries, align 4, !tbaa !1
  %conv = zext i32 %8 to i64
  %cmp1 = icmp ult i64 %conv, 77
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* @ms_find_code_from_name.entries, align 4, !tbaa !1
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.ms_SizeDescription, %struct.ms_SizeDescription* getelementptr inbounds ([78 x %struct.ms_SizeDescription], [78 x %struct.ms_SizeDescription]* @list, i32 0, i32 0), i64 %idx.ext
  %add.ptr3 = getelementptr inbounds %struct.ms_SizeDescription, %struct.ms_SizeDescription* %add.ptr, i64 1
  %10 = load i32, i32* @ms_find_code_from_name.entries, align 4, !tbaa !1
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds [77 x %struct.ms_SizeDescription*], [77 x %struct.ms_SizeDescription*]* @ms_find_code_from_name.sorted_list, i32 0, i64 %idxprom
  store %struct.ms_SizeDescription* %add.ptr3, %struct.ms_SizeDescription** %arrayidx, align 8, !tbaa !5
  %11 = load i32, i32* @ms_find_code_from_name.entries, align 4, !tbaa !1
  %inc = add i32 %11, 1
  store i32 %inc, i32* @ms_find_code_from_name.entries, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @qsort(i8* bitcast ([77 x %struct.ms_SizeDescription*]* @ms_find_code_from_name.sorted_list to i8*), i64 77, i64 8, i32 (i8*, i8*)* @cmp_by_name) #6
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %12 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %cmp4 = icmp eq i8* %12, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.end.7:                                         ; preds = %if.end
  %13 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %call = call i8* @strchr(i8* %13, i32 46) #7
  store i8* %call, i8** %end, align 8, !tbaa !5
  %14 = load i8*, i8** %end, align 8, !tbaa !5
  %cmp8 = icmp eq i8* %14, null
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %15 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %call11 = call i8* @__rawmemchr(i8* %15, i32 0) #6
  store i8* %call11, i8** %end, align 8, !tbaa !5
  br label %if.end.64

if.else:                                          ; preds = %if.end.7
  %16 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i8*, i8** %end, align 8, !tbaa !5
  store i8* %17, i8** %s, align 8, !tbaa !5
  %18 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %19 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i8*, i8** %s, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !5
  %21 = load i8*, i8** %s, align 8, !tbaa !5
  %call12 = call i8* @strchr(i8* %21, i32 46) #7
  store i8* %call12, i8** %t, align 8, !tbaa !5
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.body
  %22 = load i8*, i8** %s, align 8, !tbaa !5
  %call16 = call i8* @__rawmemchr(i8* %22, i32 0) #6
  store i8* %call16, i8** %t, align 8, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %do.body
  %23 = load i8*, i8** %t, align 8, !tbaa !5
  %24 = load i8*, i8** %s, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %l, align 8, !tbaa !7
  %25 = load i64, i64* %l, align 8, !tbaa !7
  %cmp18 = icmp eq i64 %25, 10
  br i1 %cmp18, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.end.17
  %26 = load i8*, i8** %s, align 8, !tbaa !5
  %27 = load i64, i64* %l, align 8, !tbaa !7
  %call20 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 %27) #8
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 16384, i32* %flag, align 4, !tbaa !1
  br label %if.end.52

if.else.24:                                       ; preds = %land.lhs.true, %if.end.17
  %28 = load i64, i64* %l, align 8, !tbaa !7
  %cmp25 = icmp eq i64 %28, 3
  br i1 %cmp25, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %29 = load i8*, i8** %s, align 8, !tbaa !5
  %30 = load i64, i64* %l, align 8, !tbaa !7
  %call28 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 %30) #8
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 2048, i32* %flag, align 4, !tbaa !1
  br label %if.end.51

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %31 = load i64, i64* %l, align 8, !tbaa !7
  %cmp33 = icmp eq i64 %31, 5
  br i1 %cmp33, label %land.lhs.true.35, label %if.else.40

land.lhs.true.35:                                 ; preds = %if.else.32
  %32 = load i8*, i8** %s, align 8, !tbaa !5
  %33 = load i64, i64* %l, align 8, !tbaa !7
  %call36 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 %33) #8
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %land.lhs.true.35
  store i32 1024, i32* %flag, align 4, !tbaa !1
  br label %if.end.50

if.else.40:                                       ; preds = %land.lhs.true.35, %if.else.32
  %34 = load i64, i64* %l, align 8, !tbaa !7
  %cmp41 = icmp eq i64 %34, 5
  br i1 %cmp41, label %land.lhs.true.43, label %if.else.48

land.lhs.true.43:                                 ; preds = %if.else.40
  %35 = load i8*, i8** %s, align 8, !tbaa !5
  %36 = load i64, i64* %l, align 8, !tbaa !7
  %call44 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 %36) #8
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %land.lhs.true.43
  store i32 8192, i32* %flag, align 4, !tbaa !1
  br label %if.end.49

if.else.48:                                       ; preds = %land.lhs.true.43, %if.else.40
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.then.47
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.39
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.31
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.23
  %37 = load i32, i32* %flag, align 4, !tbaa !1
  %38 = load i32, i32* %flags, align 4, !tbaa !1
  %and = and i32 %37, %38
  %cmp53 = icmp ne i32 %and, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.end.52
  %39 = load i32, i32* %flag, align 4, !tbaa !1
  %40 = load i32, i32* %flags, align 4, !tbaa !1
  %or = or i32 %40, %39
  store i32 %or, i32* %flags, align 4, !tbaa !1
  %41 = load i8*, i8** %t, align 8, !tbaa !5
  store i8* %41, i8** %s, align 8, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.55, %if.else.48
  %42 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.60 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  %43 = load i8*, i8** %t, align 8, !tbaa !5
  %44 = load i8, i8* %43, align 1, !tbaa !9
  %conv57 = sext i8 %44 to i32
  %cmp58 = icmp ne i32 %conv57, 0
  br i1 %cmp58, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %do.end, %cleanup
  %45 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %cleanup.dest.62 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.62, label %cleanup.118 [
    i32 0, label %cleanup.cont.63
  ]

cleanup.cont.63:                                  ; preds = %cleanup.60
  br label %if.end.64

if.end.64:                                        ; preds = %cleanup.cont.63, %if.then.10
  %47 = load i8*, i8** %end, align 8, !tbaa !5
  %48 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %sub.ptr.lhs.cast65 = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast66 = ptrtoint i8* %48 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  store i64 %sub.ptr.sub67, i64* %l, align 8, !tbaa !7
  br label %while.cond.68

while.cond.68:                                    ; preds = %cleanup.cont.90, %if.end.64
  br label %while.body.69

while.body.69:                                    ; preds = %while.cond.68
  %49 = bitcast i32* %flag70 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %call71 = call i32 @find_flag(i8* %50, i64* %l, %struct.ms_Flag* getelementptr inbounds ([5 x %struct.ms_Flag], [5 x %struct.ms_Flag]* @substrings, i32 0, i32 0)) #6
  store i32 %call71, i32* %flag70, align 4, !tbaa !1
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.81

land.lhs.true.74:                                 ; preds = %while.body.69
  %51 = load %struct.ms_Flag*, %struct.ms_Flag** %user_flag_list.addr, align 8, !tbaa !5
  %cmp75 = icmp eq %struct.ms_Flag* %51, null
  br i1 %cmp75, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.74
  %52 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %53 = load %struct.ms_Flag*, %struct.ms_Flag** %user_flag_list.addr, align 8, !tbaa !5
  %call77 = call i32 @find_flag(i8* %52, i64* %l, %struct.ms_Flag* %53) #6
  store i32 %call77, i32* %flag70, align 4, !tbaa !1
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %lor.lhs.false, %land.lhs.true.74
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.88

if.end.81:                                        ; preds = %lor.lhs.false, %while.body.69
  %54 = load i32, i32* %flag70, align 4, !tbaa !1
  %55 = load i32, i32* %flags, align 4, !tbaa !1
  %and82 = and i32 %54, %55
  %cmp83 = icmp ne i32 %and82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.81
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.88

if.end.86:                                        ; preds = %if.end.81
  %56 = load i32, i32* %flag70, align 4, !tbaa !1
  %57 = load i32, i32* %flags, align 4, !tbaa !1
  %or87 = or i32 %57, %56
  store i32 %or87, i32* %flags, align 4, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.88

cleanup.88:                                       ; preds = %if.end.86, %if.then.85, %if.then.80
  %58 = bitcast i32* %flag70 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %cleanup.dest.89 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.89, label %cleanup.118 [
    i32 0, label %cleanup.cont.90
    i32 7, label %while.end.91
  ]

cleanup.cont.90:                                  ; preds = %cleanup.88
  br label %while.cond.68

while.end.91:                                     ; preds = %cleanup.88
  %59 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %60 = load i64, i64* %l, align 8, !tbaa !7
  %add.ptr92 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %add.ptr92, i8** %end, align 8, !tbaa !5
  %61 = load i32, i32* %flags, align 4, !tbaa !1
  %and93 = and i32 %61, 2048
  %cmp94 = icmp ne i32 %and93, 0
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.101

land.lhs.true.96:                                 ; preds = %while.end.91
  %62 = load i32, i32* %flags, align 4, !tbaa !1
  %and97 = and i32 %62, 1024
  %cmp98 = icmp ne i32 %and97, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %land.lhs.true.96
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.end.101:                                       ; preds = %land.lhs.true.96, %while.end.91
  %63 = load i8*, i8** %end, align 8, !tbaa !5
  %64 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %sub.ptr.lhs.cast102 = ptrtoint i8* %63 to i64
  %sub.ptr.rhs.cast103 = ptrtoint i8* %64 to i64
  %sub.ptr.sub104 = sub i64 %sub.ptr.lhs.cast102, %sub.ptr.rhs.cast103
  store i64 %sub.ptr.sub104, i64* %l, align 8, !tbaa !7
  %65 = load i64, i64* %l, align 8, !tbaa !7
  %cmp105 = icmp uge i64 %65, 15
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.101
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.end.108:                                       ; preds = %if.end.101
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %stripped_name, i32 0, i32 0
  %66 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %67 = load i64, i64* %l, align 8, !tbaa !7
  %call109 = call i8* @strncpy(i8* %arraydecay, i8* %66, i64 %67) #7
  %68 = load i64, i64* %l, align 8, !tbaa !7
  %arrayidx110 = getelementptr inbounds [15 x i8], [15 x i8]* %stripped_name, i32 0, i64 %68
  store i8 0, i8* %arrayidx110, align 1, !tbaa !9
  %arraydecay111 = getelementptr inbounds [15 x i8], [15 x i8]* %stripped_name, i32 0, i32 0
  %name112 = getelementptr inbounds %struct.ms_SizeDescription, %struct.ms_SizeDescription* %keydata, i32 0, i32 1
  store i8* %arraydecay111, i8** %name112, align 8, !tbaa !10
  %69 = bitcast %struct.ms_SizeDescription** %key to i8*
  %70 = load i32, i32* @ms_find_code_from_name.entries, align 4, !tbaa !1
  %conv113 = zext i32 %70 to i64
  %call114 = call i8* @bsearch(i8* %69, i8* bitcast ([77 x %struct.ms_SizeDescription*]* @ms_find_code_from_name.sorted_list to i8*), i64 %conv113, i64 8, i32 (i8*, i8*)* @cmp_by_name) #6
  %71 = bitcast i8* %call114 to %struct.ms_SizeDescription**
  store %struct.ms_SizeDescription** %71, %struct.ms_SizeDescription*** %found, align 8, !tbaa !5
  %72 = load %struct.ms_SizeDescription**, %struct.ms_SizeDescription*** %found, align 8, !tbaa !5
  %cmp115 = icmp eq %struct.ms_SizeDescription** %72, null
  br i1 %cmp115, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.108
  br label %cond.end

cond.false:                                       ; preds = %if.end.108
  %73 = load %struct.ms_SizeDescription**, %struct.ms_SizeDescription*** %found, align 8, !tbaa !5
  %74 = load %struct.ms_SizeDescription*, %struct.ms_SizeDescription** %73, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.ms_SizeDescription, %struct.ms_SizeDescription* %74, i32 0, i32 0
  %75 = load i32, i32* %size, align 4, !tbaa !12
  %76 = load i32, i32* %flags, align 4, !tbaa !1
  %or117 = or i32 %75, %76
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %or117, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

cleanup.118:                                      ; preds = %cond.end, %if.then.107, %if.then.100, %cleanup.88, %cleanup.60, %if.then.6
  %77 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast %struct.ms_SizeDescription*** %found to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast %struct.ms_SizeDescription** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct.ms_SizeDescription* %keydata to i8*
  call void @llvm.lifetime.end(i64 24, i8* %81) #1
  %82 = bitcast [15 x i8]* %stripped_name to i8*
  call void @llvm.lifetime.end(i64 15, i8* %82) #1
  %83 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cmp_by_name(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8, !tbaa !5
  store i8* %b, i8** %b.addr, align 8, !tbaa !5
  %0 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %a.addr, align 8, !tbaa !5
  %3 = bitcast i8* %2 to %struct.ms_SizeDescription**
  %4 = load %struct.ms_SizeDescription*, %struct.ms_SizeDescription** %3, align 8, !tbaa !5
  %name = getelementptr inbounds %struct.ms_SizeDescription, %struct.ms_SizeDescription* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8, !tbaa !10
  %6 = load i8*, i8** %b.addr, align 8, !tbaa !5
  %7 = bitcast i8* %6 to %struct.ms_SizeDescription**
  %8 = load %struct.ms_SizeDescription*, %struct.ms_SizeDescription** %7, align 8, !tbaa !5
  %name1 = getelementptr inbounds %struct.ms_SizeDescription, %struct.ms_SizeDescription* %8, i32 0, i32 1
  %9 = load i8*, i8** %name1, align 8, !tbaa !10
  %call = call i32 @strcmp(i8* %5, i8* %9) #7
  store i32 %call, i32* %tmp, !tbaa !1
  %10 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %tmp, !tbaa !1
  ret i32 %12
}

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

declare i8* @__rawmemchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_flag(i8* %name, i64* %length, %struct.ms_Flag* %flag_list) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %length.addr = alloca i64*, align 8
  %flag_list.addr = alloca %struct.ms_Flag*, align 8
  %j = alloca i32, align 4
  %L = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !5
  store i64* %length, i64** %length.addr, align 8, !tbaa !5
  store %struct.ms_Flag* %flag_list, %struct.ms_Flag** %flag_list.addr, align 8, !tbaa !5
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %j, align 4, !tbaa !1
  %1 = bitcast i64* %L to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_list.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %3, i64 %idxprom
  %code = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %code, align 4, !tbaa !13
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_list.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %6, i64 %idxprom1
  %name3 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %arrayidx2, i32 0, i32 1
  %7 = load i8*, i8** %name3, align 8, !tbaa !15
  %call = call i64 @strlen(i8* %7) #8
  store i64 %call, i64* %L, align 8, !tbaa !7
  %8 = load i64*, i64** %length.addr, align 8, !tbaa !5
  %9 = load i64, i64* %8, align 8, !tbaa !7
  %cmp4 = icmp uge i64 %call, %9
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %10 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %11 = load i64*, i64** %length.addr, align 8, !tbaa !5
  %12 = load i64, i64* %11, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %12
  %13 = load i64, i64* %L, align 8, !tbaa !7
  %idx.neg = sub i64 0, %13
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %14 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_list.addr, align 8, !tbaa !5
  %arrayidx7 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %15, i64 %idxprom6
  %name8 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %arrayidx7, i32 0, i32 1
  %16 = load i8*, i8** %name8, align 8, !tbaa !15
  %17 = load i64, i64* %L, align 8, !tbaa !7
  %call9 = call i32 @strncmp(i8* %add.ptr5, i8* %16, i64 %17) #8
  %cmp10 = icmp ne i32 %call9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %18 = phi i1 [ true, %land.rhs ], [ %cmp10, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %18, %lor.end ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load i32, i32* %j, align 4, !tbaa !1
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %21 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_list.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %22, i64 %idxprom11
  %code13 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %arrayidx12, i32 0, i32 0
  %23 = load i32, i32* %code13, align 4, !tbaa !13
  %cmp14 = icmp eq i32 %23, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end
  %24 = load i64, i64* %L, align 8, !tbaa !7
  %25 = load i64*, i64** %length.addr, align 8, !tbaa !5
  %26 = load i64, i64* %25, align 8, !tbaa !7
  %sub = sub i64 %26, %24
  store i64 %sub, i64* %25, align 8, !tbaa !7
  %27 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom15 = sext i32 %27 to i64
  %28 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_list.addr, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %28, i64 %idxprom15
  %code17 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %arrayidx16, i32 0, i32 0
  %29 = load i32, i32* %code17, align 4, !tbaa !13
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %30 = bitcast i64* %L to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define i32 @ms_find_name_from_code(i8* %buffer, i64 %length, i32 %code, %struct.ms_Flag* %user_flag_list) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %code.addr = alloca i32, align 4
  %user_flag_list.addr = alloca %struct.ms_Flag*, align 8
  %desc = alloca %struct.ms_SizeDescription*, align 8
  %l = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !5
  store i64 %length, i64* %length.addr, align 8, !tbaa !7
  store i32 %code, i32* %code.addr, align 4, !tbaa !1
  store %struct.ms_Flag* %user_flag_list, %struct.ms_Flag** %user_flag_list.addr, align 8, !tbaa !5
  %0 = bitcast %struct.ms_SizeDescription** %desc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %code.addr, align 4, !tbaa !1
  %call = call %struct.ms_SizeDescription* @ms_find_size_from_code(i32 %1) #6
  store %struct.ms_SizeDescription* %call, %struct.ms_SizeDescription** %desc, align 8, !tbaa !5
  %2 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %buffer.addr, align 8, !tbaa !5
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %length.addr, align 8, !tbaa !7
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = call i32* @__errno_location() #9
  store i32 22, i32* %call2, align 4, !tbaa !1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.ms_SizeDescription*, %struct.ms_SizeDescription** %desc, align 8, !tbaa !5
  %cmp3 = icmp eq %struct.ms_SizeDescription* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32* @__errno_location() #9
  store i32 33, i32* %call5, align 4, !tbaa !1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %6 = load %struct.ms_SizeDescription*, %struct.ms_SizeDescription** %desc, align 8, !tbaa !5
  %name = getelementptr inbounds %struct.ms_SizeDescription, %struct.ms_SizeDescription* %6, i32 0, i32 1
  %7 = load i8*, i8** %name, align 8, !tbaa !10
  %call7 = call i64 @strlen(i8* %7) #8
  store i64 %call7, i64* %l, align 8, !tbaa !7
  %8 = load i64, i64* %length.addr, align 8, !tbaa !7
  %9 = load i64, i64* %l, align 8, !tbaa !7
  %cmp8 = icmp ule i64 %8, %9
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %call10 = call i32* @__errno_location() #9
  store i32 34, i32* %call10, align 4, !tbaa !1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %10 = load i8*, i8** %buffer.addr, align 8, !tbaa !5
  %11 = load %struct.ms_SizeDescription*, %struct.ms_SizeDescription** %desc, align 8, !tbaa !5
  %name12 = getelementptr inbounds %struct.ms_SizeDescription, %struct.ms_SizeDescription* %11, i32 0, i32 1
  %12 = load i8*, i8** %name12, align 8, !tbaa !10
  %call13 = call i8* @strcpy(i8* %10, i8* %12) #7
  %13 = load i64, i64* %l, align 8, !tbaa !7
  %add = add i64 %13, 1
  %14 = load i64, i64* %length.addr, align 8, !tbaa !7
  %sub = sub i64 %14, %add
  store i64 %sub, i64* %length.addr, align 8, !tbaa !7
  %15 = load i32, i32* %code.addr, align 4, !tbaa !1
  %and = and i32 %15, 65280
  store i32 %and, i32* %code.addr, align 4, !tbaa !1
  %16 = load %struct.ms_Flag*, %struct.ms_Flag** %user_flag_list.addr, align 8, !tbaa !5
  %cmp14 = icmp ne %struct.ms_Flag* %16, null
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false.17

land.lhs.true:                                    ; preds = %if.end.11
  %17 = load i8*, i8** %buffer.addr, align 8, !tbaa !5
  %18 = load %struct.ms_Flag*, %struct.ms_Flag** %user_flag_list.addr, align 8, !tbaa !5
  %call15 = call i32 @add_substrings(i8* %17, i64* %length.addr, i32* %code.addr, %struct.ms_Flag* %18) #6
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true, %if.end.11
  %19 = load i8*, i8** %buffer.addr, align 8, !tbaa !5
  %call18 = call i32 @add_substrings(i8* %19, i64* %length.addr, i32* %code.addr, %struct.ms_Flag* getelementptr inbounds ([5 x %struct.ms_Flag], [5 x %struct.ms_Flag]* @substrings, i32 0, i32 0)) #6
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.17, %land.lhs.true
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %lor.lhs.false.17
  %20 = load i32, i32* %code.addr, align 4, !tbaa !1
  %and22 = and i32 %20, 16384
  %tobool = icmp ne i32 %and22, 0
  br i1 %tobool, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %if.end.21
  %21 = load i64, i64* %length.addr, align 8, !tbaa !7
  %cmp24 = icmp ult i64 %21, 11
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.23
  %call26 = call i32* @__errno_location() #9
  store i32 34, i32* %call26, align 4, !tbaa !1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.23
  %22 = load i8*, i8** %buffer.addr, align 8, !tbaa !5
  %call28 = call i8* @strcat(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)) #7
  %23 = load i32, i32* %code.addr, align 4, !tbaa !1
  %and29 = and i32 %23, -16385
  store i32 %and29, i32* %code.addr, align 4, !tbaa !1
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.27, %if.end.21
  %24 = load i32, i32* %code.addr, align 4, !tbaa !1
  %cmp31 = icmp ne i32 %24, 0
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %call33 = call i32* @__errno_location() #9
  store i32 33, i32* %call33, align 4, !tbaa !1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.32, %if.then.25, %if.then.20, %if.then.9, %if.then.4, %if.then
  %25 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.ms_SizeDescription** %desc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @add_substrings(i8* %buffer, i64* %length, i32* %code, %struct.ms_Flag* %flag_list) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %length.addr = alloca i64*, align 8
  %code.addr = alloca i32*, align 8
  %flag_list.addr = alloca %struct.ms_Flag*, align 8
  %j = alloca i32, align 4
  %l = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !5
  store i64* %length, i64** %length.addr, align 8, !tbaa !5
  store i32* %code, i32** %code.addr, align 8, !tbaa !5
  store %struct.ms_Flag* %flag_list, %struct.ms_Flag** %flag_list.addr, align 8, !tbaa !5
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32 0, i32* %j, align 4, !tbaa !1
  %2 = load i8*, i8** %buffer.addr, align 8, !tbaa !5
  %call = call i8* @__rawmemchr(i8* %2, i32 0) #6
  store i8* %call, i8** %buffer.addr, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %entry
  %3 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_list.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %4, i64 %idxprom
  %code1 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %code1, align 4, !tbaa !13
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_list.addr, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %7, i64 %idxprom2
  %code4 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %arrayidx3, i32 0, i32 0
  %8 = load i32, i32* %code4, align 4, !tbaa !13
  %9 = load i32*, i32** %code.addr, align 8, !tbaa !5
  %10 = load i32, i32* %9, align 4, !tbaa !1
  %and = and i32 %8, %10
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_list.addr, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %12, i64 %idxprom5
  %name = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %arrayidx6, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8, !tbaa !15
  %call7 = call i64 @strlen(i8* %13) #8
  store i64 %call7, i64* %l, align 8, !tbaa !7
  %14 = load i64*, i64** %length.addr, align 8, !tbaa !5
  %15 = load i64, i64* %14, align 8, !tbaa !7
  %16 = load i64, i64* %l, align 8, !tbaa !7
  %cmp8 = icmp ult i64 %15, %16
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %call10 = call i32* @__errno_location() #9
  store i32 34, i32* %call10, align 4, !tbaa !1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_list.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %18, i64 %idxprom11
  %code13 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %arrayidx12, i32 0, i32 0
  %19 = load i32, i32* %code13, align 4, !tbaa !13
  %neg = xor i32 %19, -1
  %20 = load i32*, i32** %code.addr, align 8, !tbaa !5
  %21 = load i32, i32* %20, align 4, !tbaa !1
  %and14 = and i32 %21, %neg
  store i32 %and14, i32* %20, align 4, !tbaa !1
  %22 = load i8*, i8** %buffer.addr, align 8, !tbaa !5
  %23 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_list.addr, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %24, i64 %idxprom15
  %name17 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %arrayidx16, i32 0, i32 1
  %25 = load i8*, i8** %name17, align 8, !tbaa !15
  %call18 = call i8* @strcpy(i8* %22, i8* %25) #7
  %26 = load i64, i64* %l, align 8, !tbaa !7
  %27 = load i8*, i8** %buffer.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %26
  store i8* %add.ptr, i8** %buffer.addr, align 8, !tbaa !5
  %28 = load i64, i64* %l, align 8, !tbaa !7
  %29 = load i64*, i64** %length.addr, align 8, !tbaa !5
  %30 = load i64, i64* %29, align 8, !tbaa !7
  %sub = sub i64 %30, %28
  store i64 %sub, i64* %29, align 8, !tbaa !7
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %while.body
  %31 = load i32, i32* %j, align 4, !tbaa !1
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.9
  %32 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readonly }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !6, i64 8}
!11 = !{!"", !3, i64 0, !6, i64 8, !3, i64 16}
!12 = !{!11, !3, i64 0}
!13 = !{!14, !2, i64 0}
!14 = !{!"", !2, i64 0, !6, i64 8}
!15 = !{!14, !6, i64 8}
