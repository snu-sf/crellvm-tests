; ModuleID = './MultiSource.Benchmarks.mafft/25.constants.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@polarity_ = global [20 x double] [double 8.100000e+00, double 1.050000e+01, double 1.160000e+01, double 1.300000e+01, double 5.500000e+00, double 1.050000e+01, double 1.230000e+01, double 9.000000e+00, double 1.040000e+01, double 5.200000e+00, double 4.900000e+00, double 1.130000e+01, double 5.700000e+00, double 5.200000e+00, double 8.000000e+00, double 9.200000e+00, double 8.600000e+00, double 5.400000e+00, double 6.200000e+00, double 5.900000e+00], align 16
@volume_ = global [20 x double] [double 3.100000e+01, double 1.240000e+02, double 5.600000e+01, double 5.400000e+01, double 5.500000e+01, double 8.500000e+01, double 8.300000e+01, double 3.000000e+00, double 9.600000e+01, double 1.110000e+02, double 1.110000e+02, double 1.190000e+02, double 1.050000e+02, double 1.320000e+02, double 3.250000e+01, double 3.200000e+01, double 6.100000e+01, double 1.700000e+02, double 1.360000e+02, double 8.400000e+01], align 16
@locpenaltym = global i32 -1440, align 4
@exgpm = global i32 0, align 4
@locaminom = global [27 x i8] c"ARNDCQEGHILKMFPSTWYVBZX.-U\00", align 16
@locgrpm = global [26 x i8] c"\00\03\02\02\05\02\02\00\03\01\01\03\01\04\00\00\00\04\04\01\02\02\06\06\06\06", align 16
@locn_dism = global [26 x [26 x i32]] [[26 x i32] [i32 600, i32 -235, i32 91, i32 -78, i32 202, i32 51, i32 -103, i32 340, i32 -21, i32 -169, i32 -189, i32 -246, i32 -92, i32 -323, i32 582, i32 454, i32 342, i32 -400, i32 -309, i32 71, i32 7, i32 -26, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -235, i32 600, i32 17, i32 -69, i32 -275, i32 277, i32 185, i32 -400, i32 365, i32 -112, i32 -149, i32 485, i32 -55, i32 -106, i32 -229, i32 -183, i32 20, i32 -178, i32 22, i32 -95, i32 -26, i32 231, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 91, i32 17, i32 600, i32 414, i32 -209, i32 317, i32 357, i32 39, i32 231, i32 -363, i32 -398, i32 74, i32 -280, i32 -400, i32 85, i32 225, i32 200, i32 -400, i32 -378, i32 -189, i32 507, i32 337, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -78, i32 -69, i32 414, i32 600, i32 -395, i32 179, i32 342, i32 -78, i32 108, i32 -400, i32 -400, i32 14, i32 -400, i32 -400, i32 -86, i32 65, i32 14, i32 -400, i32 -400, i32 -372, i32 507, i32 261, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 202, i32 -275, i32 -209, i32 -395, i32 600, i32 -109, i32 -332, i32 -35, i32 -132, i32 134, i32 128, i32 -335, i32 182, i32 -40, i32 220, i32 74, i32 185, i32 -355, i32 -81, i32 354, i32 -302, i32 -220, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 51, i32 277, i32 317, i32 179, i32 -109, i32 600, i32 360, i32 -109, i32 508, i32 -135, i32 -172, i32 297, i32 -58, i32 -203, i32 51, i32 128, i32 280, i32 -378, i32 -109, i32 -9, i32 248, i32 480, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -103, i32 185, i32 357, i32 342, i32 -332, i32 360, i32 600, i32 -195, i32 325, i32 -369, i32 -400, i32 274, i32 -295, i32 -400, i32 -109, i32 11, i32 77, i32 -400, i32 -321, i32 -249, i32 350, i32 480, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 340, i32 -400, i32 39, i32 -78, i32 -35, i32 -109, i32 -195, i32 600, i32 -195, i32 -400, i32 -400, i32 -400, i32 -355, i32 -400, i32 322, i32 357, i32 114, i32 -400, i32 -400, i32 -189, i32 -19, i32 -152, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -21, i32 365, i32 231, i32 108, i32 -132, i32 508, i32 325, i32 -195, i32 600, i32 -100, i32 -141, i32 374, i32 -26, i32 -152, i32 -15, i32 45, i32 222, i32 -303, i32 -49, i32 -3, i32 169, i32 417, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -169, i32 -112, i32 -363, i32 -400, i32 134, i32 -135, i32 -369, i32 -400, i32 -100, i32 600, i32 560, i32 -212, i32 517, i32 425, i32 -149, i32 -243, i32 -12, i32 108, i32 354, i32 357, i32 -400, i32 -252, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -189, i32 -149, i32 -398, i32 -400, i32 128, i32 -172, i32 -400, i32 -400, i32 -141, i32 560, i32 600, i32 -252, i32 482, i32 420, i32 -172, i32 -269, i32 -43, i32 105, i32 331, i32 340, i32 -400, i32 -290, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -246, i32 485, i32 74, i32 14, i32 -335, i32 297, i32 274, i32 -400, i32 374, i32 -212, i32 -252, i32 600, i32 -152, i32 -215, i32 -240, i32 -175, i32 -1, i32 -289, i32 -92, i32 -172, i32 44, i32 285, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -92, i32 -55, i32 -280, i32 -400, i32 182, i32 -58, i32 -295, i32 -355, i32 -26, i32 517, i32 482, i32 -152, i32 600, i32 365, i32 -75, i32 -163, i32 68, i32 59, i32 334, i32 422, i32 -368, i32 -176, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -323, i32 -106, i32 -400, i32 -400, i32 -40, i32 -203, i32 -400, i32 -400, i32 -152, i32 425, i32 420, i32 -215, i32 365, i32 600, i32 -306, i32 -386, i32 -143, i32 282, i32 462, i32 191, i32 -400, i32 -315, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 582, i32 -229, i32 85, i32 -86, i32 220, i32 51, i32 -109, i32 322, i32 -15, i32 -149, i32 -172, i32 -240, i32 -75, i32 -306, i32 600, i32 440, i32 351, i32 -400, i32 -292, i32 88, i32 0, i32 -29, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 454, i32 -183, i32 225, i32 65, i32 74, i32 128, i32 11, i32 357, i32 45, i32 -243, i32 -269, i32 -175, i32 -163, i32 -386, i32 440, i32 600, i32 345, i32 -400, i32 -352, i32 -15, i32 145, i32 70, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 342, i32 20, i32 200, i32 14, i32 185, i32 280, i32 77, i32 114, i32 222, i32 -12, i32 -43, i32 -1, i32 68, i32 -143, i32 351, i32 345, i32 600, i32 -400, i32 -100, i32 194, i32 107, i32 178, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -400, i32 -178, i32 -400, i32 -400, i32 -355, i32 -378, i32 -400, i32 -400, i32 -303, i32 108, i32 105, i32 -289, i32 59, i32 282, i32 -400, i32 -400, i32 -400, i32 600, i32 297, i32 -118, i32 -400, i32 -400, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -309, i32 22, i32 -378, i32 -400, i32 -81, i32 -109, i32 -321, i32 -400, i32 -49, i32 354, i32 331, i32 -92, i32 334, i32 462, i32 -292, i32 -352, i32 -100, i32 297, i32 600, i32 165, i32 -400, i32 -215, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 71, i32 -95, i32 -189, i32 -372, i32 354, i32 -9, i32 -249, i32 -189, i32 -3, i32 357, i32 340, i32 -172, i32 422, i32 191, i32 88, i32 -15, i32 194, i32 -118, i32 165, i32 600, i32 -280, i32 -129, i32 -15, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 7, i32 -26, i32 507, i32 507, i32 -302, i32 248, i32 350, i32 -19, i32 169, i32 -400, i32 -400, i32 44, i32 -368, i32 -400, i32 0, i32 145, i32 107, i32 -400, i32 -400, i32 -280, i32 507, i32 299, i32 -400, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -26, i32 231, i32 337, i32 261, i32 -220, i32 480, i32 480, i32 -152, i32 417, i32 -252, i32 -290, i32 285, i32 -176, i32 -315, i32 -29, i32 70, i32 178, i32 -400, i32 -215, i32 -129, i32 299, i32 480, i32 -400, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -400, i32 -400, i32 -400, i32 -400, i32 0, i32 -1400], [26 x i32] [i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 -400, i32 0, i32 -1400], [26 x i32] zeroinitializer, [26 x i32] [i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 -1400, i32 0, i32 1600]], align 16
@ribosum4 = global [4 x [4 x double]] [[4 x double] [double 2.220000e+00, double -1.460000e+00, double -1.860000e+00, double -1.390000e+00], [4 x double] [double -1.460000e+00, double 1.030000e+00, double -2.480000e+00, double -1.740000e+00], [4 x double] [double -1.860000e+00, double -2.480000e+00, double 1.160000e+00, double -1.050000e+00], [4 x double] [double -1.390000e+00, double -1.740000e+00, double -1.050000e+00, double 1.650000e+00]], align 16
@ribosum16 = global [16 x [16 x double]] [[16 x double] [double -2.490000e+00, double -8.240000e+00, double -7.040000e+00, double -4.320000e+00, double -6.860000e+00, double -8.390000e+00, double -5.030000e+00, double -5.840000e+00, double -8.840000e+00, double -4.680000e+00, double -1.437000e+01, double -1.264000e+01, double -4.010000e+00, double -6.160000e+00, double -1.132000e+01, double -9.050000e+00], [16 x double] [double -8.240000e+00, double -8.000000e-01, double -8.890000e+00, double -5.130000e+00, double -8.610000e+00, double -5.380000e+00, double -5.770000e+00, double -6.600000e+00, double -1.041000e+01, double -4.570000e+00, double -1.453000e+01, double -1.014000e+01, double -5.430000e+00, double -5.940000e+00, double -8.870000e+00, double -1.107000e+01], [16 x double] [double -7.040000e+00, double -8.890000e+00, double -2.110000e+00, double -2.040000e+00, double -9.730000e+00, double -1.105000e+01, double -3.810000e+00, double -4.720000e+00, double -9.370000e+00, double -5.860000e+00, double -9.080000e+00, double -1.045000e+01, double -5.330000e+00, double -6.930000e+00, double -8.670000e+00, double -7.830000e+00], [16 x double] [double -4.320000e+00, double -5.130000e+00, double -2.040000e+00, double 4.490000e+00, double -5.330000e+00, double -5.610000e+00, double 2.700000e+00, double 5.900000e-01, double -5.560000e+00, double 1.670000e+00, double -6.710000e+00, double -5.170000e+00, double 1.610000e+00, double -5.100000e-01, double -4.810000e+00, double -2.980000e+00], [16 x double] [double -6.860000e+00, double -8.610000e+00, double -9.730000e+00, double -5.330000e+00, double -1.050000e+00, double -8.670000e+00, double -4.880000e+00, double -6.100000e+00, double -7.980000e+00, double -6.000000e+00, double -1.243000e+01, double -7.710000e+00, double -5.850000e+00, double -7.550000e+00, double -6.630000e+00, double -1.154000e+01], [16 x double] [double -8.390000e+00, double -5.380000e+00, double -1.105000e+01, double -5.610000e+00, double -8.670000e+00, double -1.980000e+00, double -4.130000e+00, double -5.770000e+00, double -1.136000e+01, double -4.660000e+00, double -1.258000e+01, double -1.369000e+01, double -5.750000e+00, double -4.270000e+00, double -1.201000e+01, double -1.079000e+01], [16 x double] [double -5.030000e+00, double -5.770000e+00, double -3.810000e+00, double 2.700000e+00, double -4.880000e+00, double -4.130000e+00, double 5.620000e+00, double 1.210000e+00, double -5.950000e+00, double 2.110000e+00, double -3.700000e+00, double -5.840000e+00, double 1.600000e+00, double -8.000000e-02, double -4.490000e+00, double -3.900000e+00], [16 x double] [double -5.840000e+00, double -6.600000e+00, double -4.720000e+00, double 5.900000e-01, double -6.100000e+00, double -5.770000e+00, double 1.210000e+00, double 3.470000e+00, double -7.930000e+00, double -2.700000e-01, double -7.880000e+00, double -5.610000e+00, double -5.700000e-01, double -2.090000e+00, double -5.300000e+00, double -4.450000e+00], [16 x double] [double -8.840000e+00, double -1.041000e+01, double -9.370000e+00, double -5.560000e+00, double -7.980000e+00, double -1.136000e+01, double -5.950000e+00, double -7.930000e+00, double -5.130000e+00, double -3.570000e+00, double -1.045000e+01, double -8.490000e+00, double -2.420000e+00, double -5.630000e+00, double -7.080000e+00, double -8.390000e+00], [16 x double] [double -4.680000e+00, double -4.570000e+00, double -5.860000e+00, double 1.670000e+00, double -6.000000e+00, double -4.660000e+00, double 2.110000e+00, double -2.700000e-01, double -3.570000e+00, double 5.360000e+00, double -5.710000e+00, double -4.960000e+00, double 2.750000e+00, double 1.320000e+00, double -4.910000e+00, double -3.670000e+00], [16 x double] [double -1.437000e+01, double -1.453000e+01, double -9.080000e+00, double -6.710000e+00, double -1.243000e+01, double -1.258000e+01, double -3.700000e+00, double -7.880000e+00, double -1.045000e+01, double -5.710000e+00, double -3.590000e+00, double -5.770000e+00, double -6.880000e+00, double -8.410000e+00, double -7.400000e+00, double -5.410000e+00], [16 x double] [double -1.264000e+01, double -1.014000e+01, double -1.045000e+01, double -5.170000e+00, double -7.710000e+00, double -1.369000e+01, double -5.840000e+00, double -5.610000e+00, double -8.490000e+00, double -4.960000e+00, double -5.770000e+00, double -2.280000e+00, double -4.720000e+00, double -7.360000e+00, double -3.830000e+00, double -5.210000e+00], [16 x double] [double -4.010000e+00, double -5.430000e+00, double -5.330000e+00, double 1.610000e+00, double -5.850000e+00, double -5.750000e+00, double 1.600000e+00, double -5.700000e-01, double -2.420000e+00, double 2.750000e+00, double -6.880000e+00, double -4.720000e+00, double 4.970000e+00, double 1.140000e+00, double -2.980000e+00, double -3.390000e+00], [16 x double] [double -6.160000e+00, double -5.940000e+00, double -6.930000e+00, double -5.100000e-01, double -7.550000e+00, double -4.270000e+00, double -8.000000e-02, double -2.090000e+00, double -5.630000e+00, double 1.320000e+00, double -8.410000e+00, double -7.360000e+00, double 1.140000e+00, double 3.360000e+00, double -4.760000e+00, double -4.280000e+00], [16 x double] [double -1.132000e+01, double -8.870000e+00, double -8.670000e+00, double -4.810000e+00, double -6.630000e+00, double -1.201000e+01, double -4.490000e+00, double -5.300000e+00, double -7.080000e+00, double -4.910000e+00, double -7.400000e+00, double -3.830000e+00, double -2.980000e+00, double -4.760000e+00, double -3.210000e+00, double -5.970000e+00], [16 x double] [double -9.050000e+00, double -1.107000e+01, double -7.830000e+00, double -2.980000e+00, double -1.154000e+01, double -1.079000e+01, double -3.900000e+00, double -4.450000e+00, double -8.390000e+00, double -3.670000e+00, double -5.410000e+00, double -5.210000e+00, double -3.390000e+00, double -4.280000e+00, double -5.970000e+00, double -2.000000e-02]], align 16
@locpenaltyn = global i32 -1750, align 4
@locaminon = global [27 x i8] c"agctuAGCTUnNbdhkmnrsvwyx-O\00", align 16
@locgrpn = global [26 x i8] c"\00\01\02\03\03\00\01\02\03\03\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05", align 16
@exgpn = global i32 0, align 4
@locn_disn = global [26 x [26 x i32]] [[26 x i32] [i32 1000, i32 600, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 600, i32 1000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 1000, i32 600, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 600, i32 1000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 500, i32 500, i32 0, i32 0, i32 0, i32 500, i32 500, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500], [26 x i32] zeroinitializer, [26 x i32] [i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 500]], align 16
@JTTmtx.locamino0 = private unnamed_addr constant [27 x i8] c"ARNDCQEGHILKMFPSTWYVBZX.-U\00", align 16
@JTTmtx.locgrp0 = private unnamed_addr constant [26 x i8] c"\00\03\02\02\05\02\02\00\03\01\01\03\01\04\00\00\00\04\04\01\02\02\06\06\06\06", align 16
@JTTmtx.freq0 = private unnamed_addr constant [20 x double] [double 7.700000e-02, double 5.100000e-02, double 4.300000e-02, double 5.200000e-02, double 2.000000e-02, double 4.100000e-02, double 6.200000e-02, double 7.400000e-02, double 2.300000e-02, double 5.200000e-02, double 9.100000e-02, double 5.900000e-02, double 2.400000e-02, double 4.000000e-02, double 5.100000e-02, double 6.900000e-02, double 5.900000e-02, double 1.400000e-02, double 3.200000e-02, double 6.600000e-02], align 16
@JTTmtx.freq0_TM = private unnamed_addr constant [20 x double] [double 1.051000e-01, double 1.570000e-02, double 1.850000e-02, double 8.900000e-03, double 2.190000e-02, double 1.410000e-02, double 9.700000e-03, double 7.580000e-02, double 1.680000e-02, double 1.188000e-01, double 1.635000e-01, double 1.120000e-02, double 3.330000e-02, double 7.770000e-02, double 2.600000e-02, double 5.680000e-02, double 5.230000e-02, double 2.230000e-02, double 3.240000e-02, double 1.195000e-01], align 16
@BLOSUMmtx.locaminod = private unnamed_addr constant [27 x i8] c"ARNDCQEGHILKMFPSTWYVBZX.-U\00", align 16
@BLOSUMmtx.locgrpd = private unnamed_addr constant [26 x i8] c"\00\03\02\02\05\02\02\00\03\01\01\03\01\04\00\00\00\04\04\01\02\02\06\06\06\06", align 16
@BLOSUMmtx.freqd = private unnamed_addr constant [20 x double] [double 7.700000e-02, double 5.100000e-02, double 4.300000e-02, double 5.200000e-02, double 2.000000e-02, double 4.100000e-02, double 6.200000e-02, double 7.400000e-02, double 2.300000e-02, double 5.200000e-02, double 9.100000e-02, double 5.900000e-02, double 2.400000e-02, double 4.000000e-02, double 5.100000e-02, double 6.900000e-02, double 5.900000e-02, double 1.400000e-02, double 3.200000e-02, double 6.600000e-02], align 16
@BLOSUMmtx.tmpmtx30 = private unnamed_addr constant [276 x double] [double 4.000000e+00, double -1.000000e+00, double 8.000000e+00, double 0.000000e+00, double -2.000000e+00, double 8.000000e+00, double 0.000000e+00, double -1.000000e+00, double 1.000000e+00, double 9.000000e+00, double -3.000000e+00, double -2.000000e+00, double -1.000000e+00, double -3.000000e+00, double 1.700000e+01, double 1.000000e+00, double 3.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double 8.000000e+00, double 0.000000e+00, double -1.000000e+00, double -1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 2.000000e+00, double 6.000000e+00, double 0.000000e+00, double -2.000000e+00, double 0.000000e+00, double -1.000000e+00, double -4.000000e+00, double -2.000000e+00, double -2.000000e+00, double 8.000000e+00, double -2.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double -5.000000e+00, double 0.000000e+00, double 0.000000e+00, double -3.000000e+00, double 1.400000e+01, double 0.000000e+00, double -3.000000e+00, double 0.000000e+00, double -4.000000e+00, double -2.000000e+00, double -2.000000e+00, double -3.000000e+00, double -1.000000e+00, double -2.000000e+00, double 6.000000e+00, double -1.000000e+00, double -2.000000e+00, double -2.000000e+00, double -1.000000e+00, double 0.000000e+00, double -2.000000e+00, double -1.000000e+00, double -2.000000e+00, double -1.000000e+00, double 2.000000e+00, double 4.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double -3.000000e+00, double 0.000000e+00, double 2.000000e+00, double -1.000000e+00, double -2.000000e+00, double -2.000000e+00, double -2.000000e+00, double 4.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double -3.000000e+00, double -2.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double 2.000000e+00, double 1.000000e+00, double 2.000000e+00, double 2.000000e+00, double 6.000000e+00, double -2.000000e+00, double -1.000000e+00, double -1.000000e+00, double -5.000000e+00, double -3.000000e+00, double -3.000000e+00, double -4.000000e+00, double -3.000000e+00, double -3.000000e+00, double 0.000000e+00, double 2.000000e+00, double -1.000000e+00, double -2.000000e+00, double 1.000000e+01, double -1.000000e+00, double -1.000000e+00, double -3.000000e+00, double -1.000000e+00, double -3.000000e+00, double 0.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -3.000000e+00, double -3.000000e+00, double 1.000000e+00, double -4.000000e+00, double -4.000000e+00, double 1.100000e+01, double 1.000000e+00, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00, double -2.000000e+00, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double 0.000000e+00, double -2.000000e+00, double -1.000000e+00, double -1.000000e+00, double 4.000000e+00, double 1.000000e+00, double -3.000000e+00, double 1.000000e+00, double -1.000000e+00, double -2.000000e+00, double 0.000000e+00, double -2.000000e+00, double -2.000000e+00, double -2.000000e+00, double 0.000000e+00, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double -2.000000e+00, double 0.000000e+00, double 2.000000e+00, double 5.000000e+00, double -5.000000e+00, double 0.000000e+00, double -7.000000e+00, double -4.000000e+00, double -2.000000e+00, double -1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -5.000000e+00, double -3.000000e+00, double -2.000000e+00, double -2.000000e+00, double -3.000000e+00, double 1.000000e+00, double -3.000000e+00, double -3.000000e+00, double -5.000000e+00, double 2.000000e+01, double -4.000000e+00, double 0.000000e+00, double -4.000000e+00, double -1.000000e+00, double -6.000000e+00, double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double 0.000000e+00, double -1.000000e+00, double 3.000000e+00, double -1.000000e+00, double -1.000000e+00, double 3.000000e+00, double -2.000000e+00, double -2.000000e+00, double -1.000000e+00, double 5.000000e+00, double 9.000000e+00, double 1.000000e+00, double -1.000000e+00, double -2.000000e+00, double -2.000000e+00, double -2.000000e+00, double -3.000000e+00, double -3.000000e+00, double -3.000000e+00, double -3.000000e+00, double 4.000000e+00, double 1.000000e+00, double -2.000000e+00, double 0.000000e+00, double 1.000000e+00, double -4.000000e+00, double -1.000000e+00, double 1.000000e+00, double -3.000000e+00, double 1.000000e+00, double 5.000000e+00, double 0.000000e+00, double -2.000000e+00, double 4.000000e+00, double 5.000000e+00, double -2.000000e+00, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00, double -2.000000e+00, double -2.000000e+00, double -1.000000e+00, double 0.000000e+00, double -2.000000e+00, double -3.000000e+00, double -2.000000e+00, double 0.000000e+00, double 0.000000e+00, double -5.000000e+00, double -3.000000e+00, double -2.000000e+00, double 5.000000e+00, double 0.000000e+00, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 4.000000e+00, double 5.000000e+00, double -2.000000e+00, double 0.000000e+00, double -3.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double -4.000000e+00, double 0.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double 0.000000e+00, double 4.000000e+00, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double -1.000000e+00, double -2.000000e+00, double 0.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double -1.000000e+00, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00, double -2.000000e+00, double -1.000000e+00, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double -1.000000e+00], align 16
@BLOSUMmtx.tmpmtx45 = private unnamed_addr constant [210 x double] [double 5.000000e+00, double -2.000000e+00, double 7.000000e+00, double -1.000000e+00, double 0.000000e+00, double 6.000000e+00, double -2.000000e+00, double -1.000000e+00, double 2.000000e+00, double 7.000000e+00, double -1.000000e+00, double -3.000000e+00, double -2.000000e+00, double -3.000000e+00, double 1.200000e+01, double -1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double -3.000000e+00, double 6.000000e+00, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.000000e+00, double -3.000000e+00, double 2.000000e+00, double 6.000000e+00, double 0.000000e+00, double -2.000000e+00, double 0.000000e+00, double -1.000000e+00, double -3.000000e+00, double -2.000000e+00, double -2.000000e+00, double 7.000000e+00, double -2.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double -3.000000e+00, double 1.000000e+00, double 0.000000e+00, double -2.000000e+00, double 1.000000e+01, double -1.000000e+00, double -3.000000e+00, double -2.000000e+00, double -4.000000e+00, double -3.000000e+00, double -2.000000e+00, double -3.000000e+00, double -4.000000e+00, double -3.000000e+00, double 5.000000e+00, double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double -3.000000e+00, double -2.000000e+00, double -2.000000e+00, double -2.000000e+00, double -3.000000e+00, double -2.000000e+00, double 2.000000e+00, double 5.000000e+00, double -1.000000e+00, double 3.000000e+00, double 0.000000e+00, double 0.000000e+00, double -3.000000e+00, double 1.000000e+00, double 1.000000e+00, double -2.000000e+00, double -1.000000e+00, double -3.000000e+00, double -3.000000e+00, double 5.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double -2.000000e+00, double 0.000000e+00, double -2.000000e+00, double -2.000000e+00, double 0.000000e+00, double 2.000000e+00, double 2.000000e+00, double -1.000000e+00, double 6.000000e+00, double -2.000000e+00, double -2.000000e+00, double -2.000000e+00, double -4.000000e+00, double -2.000000e+00, double -4.000000e+00, double -3.000000e+00, double -3.000000e+00, double -2.000000e+00, double 0.000000e+00, double 1.000000e+00, double -3.000000e+00, double 0.000000e+00, double 8.000000e+00, double -1.000000e+00, double -2.000000e+00, double -2.000000e+00, double -1.000000e+00, double -4.000000e+00, double -1.000000e+00, double 0.000000e+00, double -2.000000e+00, double -2.000000e+00, double -2.000000e+00, double -3.000000e+00, double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double 9.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double -1.000000e+00, double -2.000000e+00, double -2.000000e+00, double -1.000000e+00, double 4.000000e+00, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double -2.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double 2.000000e+00, double 5.000000e+00, double -2.000000e+00, double -2.000000e+00, double -4.000000e+00, double -4.000000e+00, double -5.000000e+00, double -2.000000e+00, double -3.000000e+00, double -2.000000e+00, double -3.000000e+00, double -2.000000e+00, double -2.000000e+00, double -2.000000e+00, double -2.000000e+00, double 1.000000e+00, double -3.000000e+00, double -4.000000e+00, double -3.000000e+00, double 1.500000e+01, double -2.000000e+00, double -1.000000e+00, double -2.000000e+00, double -2.000000e+00, double -3.000000e+00, double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double 2.000000e+00, double 0.000000e+00, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double 3.000000e+00, double -3.000000e+00, double -2.000000e+00, double -1.000000e+00, double 3.000000e+00, double 8.000000e+00, double 0.000000e+00, double -2.000000e+00, double -3.000000e+00, double -3.000000e+00, double -1.000000e+00, double -3.000000e+00, double -3.000000e+00, double -3.000000e+00, double -3.000000e+00, double 3.000000e+00, double 1.000000e+00, double -2.000000e+00, double 1.000000e+00, double 0.000000e+00, double -3.000000e+00, double -1.000000e+00, double 0.000000e+00, double -3.000000e+00, double -1.000000e+00, double 5.000000e+00], align 16
@BLOSUMmtx.tmpmtx50 = private unnamed_addr constant [210 x double] [double 5.000000e+00, double -2.000000e+00, double 7.000000e+00, double -1.000000e+00, double -1.000000e+00, double 7.000000e+00, double -2.000000e+00, double -2.000000e+00, double 2.000000e+00, double 8.000000e+00, double -1.000000e+00, double -4.000000e+00, double -2.000000e+00, double -4.000000e+00, double 1.300000e+01, double -1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double -3.000000e+00, double 7.000000e+00, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.000000e+00, double -3.000000e+00, double 2.000000e+00, double 6.000000e+00, double 0.000000e+00, double -3.000000e+00, double 0.000000e+00, double -1.000000e+00, double -3.000000e+00, double -2.000000e+00, double -3.000000e+00, double 8.000000e+00, double -2.000000e+00, double 0.000000e+00, double 1.000000e+00, double -1.000000e+00, double -3.000000e+00, double 1.000000e+00, double 0.000000e+00, double -2.000000e+00, double 1.000000e+01, double -1.000000e+00, double -4.000000e+00, double -3.000000e+00, double -4.000000e+00, double -2.000000e+00, double -3.000000e+00, double -4.000000e+00, double -4.000000e+00, double -4.000000e+00, double 5.000000e+00, double -2.000000e+00, double -3.000000e+00, double -4.000000e+00, double -4.000000e+00, double -2.000000e+00, double -2.000000e+00, double -3.000000e+00, double -4.000000e+00, double -3.000000e+00, double 2.000000e+00, double 5.000000e+00, double -1.000000e+00, double 3.000000e+00, double 0.000000e+00, double -1.000000e+00, double -3.000000e+00, double 2.000000e+00, double 1.000000e+00, double -2.000000e+00, double 0.000000e+00, double -3.000000e+00, double -3.000000e+00, double 6.000000e+00, double -1.000000e+00, double -2.000000e+00, double -2.000000e+00, double -4.000000e+00, double -2.000000e+00, double 0.000000e+00, double -2.000000e+00, double -3.000000e+00, double -1.000000e+00, double 2.000000e+00, double 3.000000e+00, double -2.000000e+00, double 7.000000e+00, double -3.000000e+00, double -3.000000e+00, double -4.000000e+00, double -5.000000e+00, double -2.000000e+00, double -4.000000e+00, double -3.000000e+00, double -4.000000e+00, double -1.000000e+00, double 0.000000e+00, double 1.000000e+00, double -4.000000e+00, double 0.000000e+00, double 8.000000e+00, double -1.000000e+00, double -3.000000e+00, double -2.000000e+00, double -1.000000e+00, double -4.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double -2.000000e+00, double -3.000000e+00, double -4.000000e+00, double -1.000000e+00, double -3.000000e+00, double -4.000000e+00, double 1.000000e+01, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double -1.000000e+00, double -3.000000e+00, double -3.000000e+00, double 0.000000e+00, double -2.000000e+00, double -3.000000e+00, double -1.000000e+00, double 5.000000e+00, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double -2.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double -1.000000e+00, double 2.000000e+00, double 5.000000e+00, double -3.000000e+00, double -3.000000e+00, double -4.000000e+00, double -5.000000e+00, double -5.000000e+00, double -1.000000e+00, double -3.000000e+00, double -3.000000e+00, double -3.000000e+00, double -3.000000e+00, double -2.000000e+00, double -3.000000e+00, double -1.000000e+00, double 1.000000e+00, double -4.000000e+00, double -4.000000e+00, double -3.000000e+00, double 1.500000e+01, double -2.000000e+00, double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double -3.000000e+00, double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double 2.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double 0.000000e+00, double 4.000000e+00, double -3.000000e+00, double -2.000000e+00, double -2.000000e+00, double 2.000000e+00, double 8.000000e+00, double 0.000000e+00, double -3.000000e+00, double -3.000000e+00, double -4.000000e+00, double -1.000000e+00, double -3.000000e+00, double -3.000000e+00, double -4.000000e+00, double -4.000000e+00, double 4.000000e+00, double 1.000000e+00, double -3.000000e+00, double 1.000000e+00, double -1.000000e+00, double -3.000000e+00, double -2.000000e+00, double 0.000000e+00, double -3.000000e+00, double -1.000000e+00, double 5.000000e+00], align 16
@BLOSUMmtx.tmpmtx62 = private unnamed_addr constant [210 x double] [double 6.000000e+00, double -2.000000e+00, double 8.000000e+00, double -2.000000e+00, double -1.000000e+00, double 8.000000e+00, double -3.000000e+00, double -2.000000e+00, double 2.000000e+00, double 9.000000e+00, double -1.000000e+00, double -5.000000e+00, double -4.000000e+00, double -5.000000e+00, double 1.300000e+01, double -1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double -4.000000e+00, double 8.000000e+00, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.000000e+00, double -5.000000e+00, double 3.000000e+00, double 7.000000e+00, double 0.000000e+00, double -3.000000e+00, double -1.000000e+00, double -2.000000e+00, double -4.000000e+00, double -3.000000e+00, double -3.000000e+00, double 8.000000e+00, double -2.000000e+00, double 0.000000e+00, double 1.000000e+00, double -2.000000e+00, double -4.000000e+00, double 1.000000e+00, double 0.000000e+00, double -3.000000e+00, double 1.100000e+01, double -2.000000e+00, double -4.000000e+00, double -5.000000e+00, double -5.000000e+00, double -2.000000e+00, double -4.000000e+00, double -5.000000e+00, double -6.000000e+00, double -5.000000e+00, double 6.000000e+00, double -2.000000e+00, double -3.000000e+00, double -5.000000e+00, double -5.000000e+00, double -2.000000e+00, double -3.000000e+00, double -4.000000e+00, double -5.000000e+00, double -4.000000e+00, double 2.000000e+00, double 6.000000e+00, double -1.000000e+00, double 3.000000e+00, double 0.000000e+00, double -1.000000e+00, double -5.000000e+00, double 2.000000e+00, double 1.000000e+00, double -2.000000e+00, double -1.000000e+00, double -4.000000e+00, double -4.000000e+00, double 7.000000e+00, double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double -5.000000e+00, double -2.000000e+00, double -1.000000e+00, double -3.000000e+00, double -4.000000e+00, double -2.000000e+00, double 2.000000e+00, double 3.000000e+00, double -2.000000e+00, double 8.000000e+00, double -3.000000e+00, double -4.000000e+00, double -4.000000e+00, double -5.000000e+00, double -4.000000e+00, double -5.000000e+00, double -5.000000e+00, double -5.000000e+00, double -2.000000e+00, double 0.000000e+00, double 1.000000e+00, double -5.000000e+00, double 0.000000e+00, double 9.000000e+00, double -1.000000e+00, double -3.000000e+00, double -3.000000e+00, double -2.000000e+00, double -4.000000e+00, double -2.000000e+00, double -2.000000e+00, double -3.000000e+00, double -3.000000e+00, double -4.000000e+00, double -4.000000e+00, double -2.000000e+00, double -4.000000e+00, double -5.000000e+00, double 1.100000e+01, double 2.000000e+00, double -1.000000e+00, double 1.000000e+00, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double -1.000000e+00, double -4.000000e+00, double -4.000000e+00, double 0.000000e+00, double -2.000000e+00, double -4.000000e+00, double -1.000000e+00, double 6.000000e+00, double 0.000000e+00, double -2.000000e+00, double 0.000000e+00, double -2.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double -1.000000e+00, double -2.000000e+00, double -1.000000e+00, double -1.000000e+00, double -3.000000e+00, double -2.000000e+00, double 2.000000e+00, double 7.000000e+00, double -4.000000e+00, double -4.000000e+00, double -6.000000e+00, double -6.000000e+00, double -3.000000e+00, double -3.000000e+00, double -4.000000e+00, double -4.000000e+00, double -4.000000e+00, double -4.000000e+00, double -2.000000e+00, double -4.000000e+00, double -2.000000e+00, double 1.000000e+00, double -5.000000e+00, double -4.000000e+00, double -4.000000e+00, double 1.600000e+01, double -3.000000e+00, double -3.000000e+00, double -3.000000e+00, double -5.000000e+00, double -4.000000e+00, double -2.000000e+00, double -3.000000e+00, double -5.000000e+00, double 3.000000e+00, double -2.000000e+00, double -2.000000e+00, double -3.000000e+00, double -1.000000e+00, double 4.000000e+00, double -4.000000e+00, double -3.000000e+00, double -2.000000e+00, double 3.000000e+00, double 1.000000e+01, double 0.000000e+00, double -4.000000e+00, double -4.000000e+00, double -5.000000e+00, double -1.000000e+00, double -3.000000e+00, double -4.000000e+00, double -5.000000e+00, double -5.000000e+00, double 4.000000e+00, double 1.000000e+00, double -3.000000e+00, double 1.000000e+00, double -1.000000e+00, double -4.000000e+00, double -2.000000e+00, double 0.000000e+00, double -4.000000e+00, double -2.000000e+00, double 6.000000e+00], align 16
@BLOSUMmtx.tmpmtx80 = private unnamed_addr constant [210 x double] [double 7.000000e+00, double -3.000000e+00, double 9.000000e+00, double -3.000000e+00, double -1.000000e+00, double 9.000000e+00, double -3.000000e+00, double -3.000000e+00, double 2.000000e+00, double 1.000000e+01, double -1.000000e+00, double -6.000000e+00, double -5.000000e+00, double -7.000000e+00, double 1.300000e+01, double -2.000000e+00, double 1.000000e+00, double 0.000000e+00, double -1.000000e+00, double -5.000000e+00, double 9.000000e+00, double -2.000000e+00, double -1.000000e+00, double -1.000000e+00, double 2.000000e+00, double -7.000000e+00, double 3.000000e+00, double 8.000000e+00, double 0.000000e+00, double -4.000000e+00, double -1.000000e+00, double -3.000000e+00, double -6.000000e+00, double -4.000000e+00, double -4.000000e+00, double 9.000000e+00, double -3.000000e+00, double 0.000000e+00, double 1.000000e+00, double -2.000000e+00, double -7.000000e+00, double 1.000000e+00, double 0.000000e+00, double -4.000000e+00, double 1.200000e+01, double -3.000000e+00, double -5.000000e+00, double -6.000000e+00, double -7.000000e+00, double -2.000000e+00, double -5.000000e+00, double -6.000000e+00, double -7.000000e+00, double -6.000000e+00, double 7.000000e+00, double -3.000000e+00, double -4.000000e+00, double -6.000000e+00, double -7.000000e+00, double -3.000000e+00, double -4.000000e+00, double -6.000000e+00, double -7.000000e+00, double -5.000000e+00, double 2.000000e+00, double 6.000000e+00, double -1.000000e+00, double 3.000000e+00, double 0.000000e+00, double -2.000000e+00, double -6.000000e+00, double 2.000000e+00, double 1.000000e+00, double -3.000000e+00, double -1.000000e+00, double -5.000000e+00, double -4.000000e+00, double 8.000000e+00, double -2.000000e+00, double -3.000000e+00, double -4.000000e+00, double -6.000000e+00, double -3.000000e+00, double -1.000000e+00, double -4.000000e+00, double -5.000000e+00, double -4.000000e+00, double 2.000000e+00, double 3.000000e+00, double -3.000000e+00, double 9.000000e+00, double -4.000000e+00, double -5.000000e+00, double -6.000000e+00, double -6.000000e+00, double -4.000000e+00, double -5.000000e+00, double -6.000000e+00, double -6.000000e+00, double -2.000000e+00, double -1.000000e+00, double 0.000000e+00, double -5.000000e+00, double 0.000000e+00, double 1.000000e+01, double -1.000000e+00, double -3.000000e+00, double -4.000000e+00, double -3.000000e+00, double -6.000000e+00, double -3.000000e+00, double -2.000000e+00, double -5.000000e+00, double -4.000000e+00, double -5.000000e+00, double -5.000000e+00, double -2.000000e+00, double -4.000000e+00, double -6.000000e+00, double 1.200000e+01, double 2.000000e+00, double -2.000000e+00, double 1.000000e+00, double -1.000000e+00, double -2.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -2.000000e+00, double -4.000000e+00, double -4.000000e+00, double -1.000000e+00, double -3.000000e+00, double -4.000000e+00, double -2.000000e+00, double 7.000000e+00, double 0.000000e+00, double -2.000000e+00, double 0.000000e+00, double -2.000000e+00, double -2.000000e+00, double -1.000000e+00, double -2.000000e+00, double -3.000000e+00, double -3.000000e+00, double -2.000000e+00, double -3.000000e+00, double -1.000000e+00, double -1.000000e+00, double -4.000000e+00, double -3.000000e+00, double 2.000000e+00, double 8.000000e+00, double -5.000000e+00, double -5.000000e+00, double -7.000000e+00, double -8.000000e+00, double -5.000000e+00, double -4.000000e+00, double -6.000000e+00, double -6.000000e+00, double -4.000000e+00, double -5.000000e+00, double -4.000000e+00, double -6.000000e+00, double -3.000000e+00, double 0.000000e+00, double -7.000000e+00, double -6.000000e+00, double -5.000000e+00, double 1.600000e+01, double -4.000000e+00, double -4.000000e+00, double -4.000000e+00, double -6.000000e+00, double -5.000000e+00, double -3.000000e+00, double -5.000000e+00, double -6.000000e+00, double 3.000000e+00, double -3.000000e+00, double -2.000000e+00, double -4.000000e+00, double -3.000000e+00, double 4.000000e+00, double -6.000000e+00, double -3.000000e+00, double -3.000000e+00, double 3.000000e+00, double 1.100000e+01, double -1.000000e+00, double -4.000000e+00, double -5.000000e+00, double -6.000000e+00, double -2.000000e+00, double -4.000000e+00, double -4.000000e+00, double -6.000000e+00, double -5.000000e+00, double 4.000000e+00, double 1.000000e+00, double -4.000000e+00, double 1.000000e+00, double -2.000000e+00, double -4.000000e+00, double -3.000000e+00, double 0.000000e+00, double -5.000000e+00, double -3.000000e+00, double 7.000000e+00], align 16
@BLOSUMmtx.tmpmtx0 = private unnamed_addr constant [210 x double] [double 2.400000e+00, double -6.000000e-01, double 4.700000e+00, double -3.000000e-01, double 3.000000e-01, double 3.800000e+00, double -3.000000e-01, double -3.000000e-01, double 2.200000e+00, double 4.700000e+00, double 5.000000e-01, double -2.200000e+00, double -1.800000e+00, double -3.200000e+00, double 1.150000e+01, double -2.000000e-01, double 1.500000e+00, double 7.000000e-01, double 9.000000e-01, double -2.400000e+00, double 2.700000e+00, double 0.000000e+00, double 4.000000e-01, double 9.000000e-01, double 2.700000e+00, double -3.000000e+00, double 1.700000e+00, double 3.600000e+00, double 5.000000e-01, double -1.000000e+00, double 4.000000e-01, double 1.000000e-01, double -2.000000e+00, double -1.000000e+00, double -8.000000e-01, double 6.600000e+00, double -8.000000e-01, double 6.000000e-01, double 1.200000e+00, double 4.000000e-01, double -1.300000e+00, double 1.200000e+00, double 4.000000e-01, double -1.400000e+00, double 6.000000e+00, double -8.000000e-01, double -2.400000e+00, double -2.800000e+00, double -3.800000e+00, double -1.100000e+00, double -1.900000e+00, double -2.700000e+00, double -4.500000e+00, double -2.200000e+00, double 4.000000e+00, double -1.200000e+00, double -2.200000e+00, double -3.000000e+00, double -4.000000e+00, double -1.500000e+00, double -1.600000e+00, double -2.800000e+00, double -4.400000e+00, double -1.900000e+00, double 2.800000e+00, double 4.000000e+00, double -4.000000e-01, double 2.700000e+00, double 8.000000e-01, double 5.000000e-01, double -2.800000e+00, double 1.500000e+00, double 1.200000e+00, double -1.100000e+00, double 6.000000e-01, double -2.100000e+00, double -2.100000e+00, double 3.200000e+00, double -7.000000e-01, double -1.700000e+00, double -2.200000e+00, double -3.000000e+00, double -9.000000e-01, double -1.000000e+00, double -2.000000e+00, double -3.500000e+00, double -1.300000e+00, double 2.500000e+00, double 2.800000e+00, double -1.400000e+00, double 4.300000e+00, double -2.300000e+00, double -3.200000e+00, double -3.100000e+00, double -4.500000e+00, double -8.000000e-01, double -2.600000e+00, double -3.900000e+00, double -5.200000e+00, double -1.000000e-01, double 1.000000e+00, double 2.000000e+00, double -3.300000e+00, double 1.600000e+00, double 7.000000e+00, double 3.000000e-01, double -9.000000e-01, double -9.000000e-01, double -7.000000e-01, double -3.100000e+00, double -2.000000e-01, double -5.000000e-01, double -1.600000e+00, double -1.100000e+00, double -2.600000e+00, double -2.300000e+00, double -6.000000e-01, double -2.400000e+00, double -3.800000e+00, double 7.600000e+00, double 1.100000e+00, double -2.000000e-01, double 9.000000e-01, double 5.000000e-01, double 1.000000e-01, double 2.000000e-01, double 2.000000e-01, double 4.000000e-01, double -2.000000e-01, double -1.800000e+00, double -2.100000e+00, double 1.000000e-01, double -1.400000e+00, double -2.800000e+00, double 4.000000e-01, double 2.200000e+00, double 6.000000e-01, double -2.000000e-01, double 5.000000e-01, double 0.000000e+00, double -5.000000e-01, double 0.000000e+00, double -1.000000e-01, double -1.100000e+00, double -3.000000e-01, double -6.000000e-01, double -1.300000e+00, double 1.000000e-01, double -6.000000e-01, double -2.200000e+00, double 1.000000e-01, double 1.500000e+00, double 2.500000e+00, double -3.600000e+00, double -1.600000e+00, double -3.600000e+00, double -5.200000e+00, double -1.000000e+00, double -2.700000e+00, double -4.300000e+00, double -4.000000e+00, double -8.000000e-01, double -1.800000e+00, double -7.000000e-01, double -3.500000e+00, double -1.000000e+00, double 3.600000e+00, double -5.000000e+00, double -3.300000e+00, double -3.500000e+00, double 1.420000e+01, double -2.200000e+00, double -1.800000e+00, double -1.400000e+00, double -2.800000e+00, double -5.000000e-01, double -1.700000e+00, double -2.700000e+00, double -4.000000e+00, double 2.200000e+00, double -7.000000e-01, double 0.000000e+00, double -2.100000e+00, double -2.000000e-01, double 5.100000e+00, double -3.100000e+00, double -1.900000e+00, double -1.900000e+00, double 4.100000e+00, double 7.800000e+00, double 1.000000e-01, double -2.000000e+00, double -2.200000e+00, double -2.900000e+00, double 0.000000e+00, double -1.500000e+00, double -1.900000e+00, double -3.300000e+00, double -2.000000e+00, double 3.100000e+00, double 1.800000e+00, double -1.700000e+00, double 1.600000e+00, double 1.000000e-01, double -1.800000e+00, double -1.000000e+00, double 0.000000e+00, double -2.600000e+00, double -1.100000e+00, double 3.400000e+00], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"blosum %d ?\0A\00", align 1
@dorp = external global i32, align 4
@scoremtx = external global i32, align 4
@RNAppenalty = external global i32, align 4
@RNAppenalty_ex = external global i32, align 4
@ppenalty = external global i32, align 4
@ppenalty_OP = external global i32, align 4
@ppenalty_ex = external global i32, align 4
@ppenalty_EX = external global i32, align 4
@poffset = external global i32, align 4
@RNApthr = external global i32, align 4
@pamN = external global i32, align 4
@kimuraR = external global i32, align 4
@RNApenalty = external global i32, align 4
@RNApenalty_ex = external global i32, align 4
@RNAthr = external global i32, align 4
@penalty = external global i32, align 4
@penalty_OP = external global i32, align 4
@penalty_ex = external global i32, align 4
@penalty_EX = external global i32, align 4
@offset = external global i32, align 4
@offsetFFT = external global i32, align 4
@offsetLN = external global i32, align 4
@penaltyLN = external global i32, align 4
@penalty_exLN = external global i32, align 4
@modelname = external global [100 x i8], align 16
@.str.1 = private unnamed_addr constant [40 x i8] c"%s%d (%d), %6.3f (%6.3f), %6.3f (%6.3f)\00", align 1
@rnakozo = external global i32, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DNA\00", align 1
@disp = external global i32, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"average = %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"generating %dPAM scoring matrix for nucleotides ... \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" TPM \0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%+#6.10f\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"WARNING: pamx[i][j] = 0.0 ?\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" after log\0A\00", align 1
@amino = external global [26 x i8], align 16
@amino_n = external global [128 x i32], align 16
@fmodel = external global i32, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c" after shishagonyuu\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c" before dis\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c" score matrix  \0A\00", align 1
@amino_grp = external global [128 x i8], align 16
@n_dis = external global [26 x [26 x i32]], align 16
@.str.15 = private unnamed_addr constant [5 x i8] c"%+6d\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"ribosum after shishagonyuu\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"ribosum16 after shishagonyuu\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%+#7.0f\00", align 1
@ribosumdis = external global [37 x [37 x i32]], align 16
@.str.19 = private unnamed_addr constant [12 x i8] c"ribosumdis\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"%+5d\00", align 1
@nblosum = external global i32, align 4
@.str.21 = private unnamed_addr constant [36 x i8] c"User-defined, %6.3f, %+6.3f, %+6.3f\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"BLOSUM%d, %6.3f, %+6.3f, %+6.3f\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [19 x i8] c" scoring matrix  \0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"%c    \00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%5.0f\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"    %c\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"itch average = %f\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"parameters: %d, %d, %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Not supported\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"%s %dPAM, %6.3f, %6.3f\00", align 1
@TMorJTT = external global i32, align 4
@.str.33 = private unnamed_addr constant [14 x i8] c"Transmembrane\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"JTT\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"generating %dPAM %s scoring matrix for amino acids ... \00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"pam1 = \0A\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"%9.6f \00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"WARNING: pamx[%d][%d] = 0.0?\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"scoremtx = %d\0A\00", align 1
@amino_dis = external global [128 x [128 x i32]], align 16
@amino_disLN = external global [128 x [128 x i32]], align 16
@amino_dis_consweight_multi = external global [128 x [128 x double]], align 16
@consweight_multi = external global float, align 4
@n_dis_consweight_multi = external global [26 x [26 x float]], align 16
@n_disFFT = external global [26 x [26 x i32]], align 16
@ppid = external global i32, align 4
@fftThreshold = external global i32, align 4
@fftWinSize = external global i32, align 4
@fftscore = external global i32, align 4
@polarity = external global [20 x double], align 16
@volume = external global [20 x double], align 16
@.str.40 = private unnamed_addr constant [13 x i8] c"datafreq = \0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"total = %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @JTTmtx(double** %rsr, double* %freq, i8* %locamino, i8* %locgrp, i32 %isTM) #0 {
entry:
  %rsr.addr = alloca double**, align 8
  %freq.addr = alloca double*, align 8
  %locamino.addr = alloca i8*, align 8
  %locgrp.addr = alloca i8*, align 8
  %isTM.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca [20 x [20 x double]], align 16
  %locamino0 = alloca [27 x i8], align 16
  %locgrp0 = alloca [26 x i8], align 16
  %freq0 = alloca [20 x double], align 16
  %freq0_TM = alloca [20 x double], align 16
  store double** %rsr, double*** %rsr.addr, align 8
  store double* %freq, double** %freq.addr, align 8
  store i8* %locamino, i8** %locamino.addr, align 8
  store i8* %locgrp, i8** %locgrp.addr, align 8
  store i32 %isTM, i32* %isTM.addr, align 4
  %0 = bitcast [27 x i8]* %locamino0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @JTTmtx.locamino0, i32 0, i32 0), i64 27, i32 16, i1 false)
  %1 = bitcast [26 x i8]* %locgrp0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @JTTmtx.locgrp0, i32 0, i32 0), i64 26, i32 16, i1 false)
  %2 = bitcast [20 x double]* %freq0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([20 x double]* @JTTmtx.freq0 to i8*), i64 160, i32 16, i1 false)
  %3 = bitcast [20 x double]* %freq0_TM to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([20 x double]* @JTTmtx.freq0_TM to i8*), i64 160, i32 16, i1 false)
  %arrayidx = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx1 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx, i32 0, i64 0
  store double 2.470000e+02, double* %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx3 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx2, i32 0, i64 0
  store double 2.160000e+02, double* %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx5 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx4, i32 0, i64 1
  store double 1.160000e+02, double* %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx7 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx6, i32 0, i64 0
  store double 3.860000e+02, double* %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx9 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx8, i32 0, i64 1
  store double 4.800000e+01, double* %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx11 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx10, i32 0, i64 2
  store double 1.433000e+03, double* %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx13 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx12, i32 0, i64 0
  store double 1.060000e+02, double* %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx15 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx14, i32 0, i64 1
  store double 1.250000e+02, double* %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx17 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx16, i32 0, i64 2
  store double 3.200000e+01, double* %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx19 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx18, i32 0, i64 3
  store double 1.300000e+01, double* %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx21 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx20, i32 0, i64 0
  store double 2.080000e+02, double* %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx23 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx22, i32 0, i64 1
  store double 7.500000e+02, double* %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx25 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx24, i32 0, i64 2
  store double 1.590000e+02, double* %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx27 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx26, i32 0, i64 3
  store double 1.300000e+02, double* %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx29 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx28, i32 0, i64 4
  store double 9.000000e+00, double* %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx31 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx30, i32 0, i64 0
  store double 6.000000e+02, double* %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx33 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx32, i32 0, i64 1
  store double 1.190000e+02, double* %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx35 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx34, i32 0, i64 2
  store double 1.800000e+02, double* %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx37 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx36, i32 0, i64 3
  store double 2.914000e+03, double* %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx39 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx38, i32 0, i64 4
  store double 8.000000e+00, double* %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx41 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx40, i32 0, i64 5
  store double 1.027000e+03, double* %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx43 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx42, i32 0, i64 0
  store double 1.183000e+03, double* %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx45 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx44, i32 0, i64 1
  store double 6.140000e+02, double* %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx47 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx46, i32 0, i64 2
  store double 2.910000e+02, double* %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx49 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx48, i32 0, i64 3
  store double 5.770000e+02, double* %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx51 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx50, i32 0, i64 4
  store double 9.800000e+01, double* %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx53 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx52, i32 0, i64 5
  store double 8.400000e+01, double* %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx55 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx54, i32 0, i64 6
  store double 6.100000e+02, double* %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx57 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx56, i32 0, i64 0
  store double 4.600000e+01, double* %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx59 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx58, i32 0, i64 1
  store double 4.460000e+02, double* %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx61 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx60, i32 0, i64 2
  store double 4.660000e+02, double* %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx63 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx62, i32 0, i64 3
  store double 1.440000e+02, double* %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx65 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx64, i32 0, i64 4
  store double 4.000000e+01, double* %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx67 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx66, i32 0, i64 5
  store double 6.350000e+02, double* %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx69 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx68, i32 0, i64 6
  store double 4.100000e+01, double* %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx71 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx70, i32 0, i64 7
  store double 4.100000e+01, double* %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx73 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx72, i32 0, i64 0
  store double 1.730000e+02, double* %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx75 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx74, i32 0, i64 1
  store double 7.600000e+01, double* %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx77 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx76, i32 0, i64 2
  store double 1.300000e+02, double* %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx79 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx78, i32 0, i64 3
  store double 3.700000e+01, double* %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx81 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx80, i32 0, i64 4
  store double 1.900000e+01, double* %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx83 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx82, i32 0, i64 5
  store double 2.000000e+01, double* %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx85 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx84, i32 0, i64 6
  store double 4.300000e+01, double* %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx87 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx86, i32 0, i64 7
  store double 2.500000e+01, double* %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx89 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx88, i32 0, i64 8
  store double 2.600000e+01, double* %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx91 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx90, i32 0, i64 0
  store double 2.570000e+02, double* %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx93 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx92, i32 0, i64 1
  store double 2.050000e+02, double* %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx95 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx94, i32 0, i64 2
  store double 6.300000e+01, double* %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx97 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx96, i32 0, i64 3
  store double 3.400000e+01, double* %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx99 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx98, i32 0, i64 4
  store double 3.600000e+01, double* %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx101 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx100, i32 0, i64 5
  store double 3.140000e+02, double* %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx103 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx102, i32 0, i64 6
  store double 6.500000e+01, double* %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx105 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx104, i32 0, i64 7
  store double 5.600000e+01, double* %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx107 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx106, i32 0, i64 8
  store double 1.340000e+02, double* %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx109 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx108, i32 0, i64 9
  store double 1.324000e+03, double* %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx111 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx110, i32 0, i64 0
  store double 2.000000e+02, double* %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx113 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx112, i32 0, i64 1
  store double 2.348000e+03, double* %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx115 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx114, i32 0, i64 2
  store double 7.580000e+02, double* %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx117 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx116, i32 0, i64 3
  store double 1.020000e+02, double* %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx119 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx118, i32 0, i64 4
  store double 7.000000e+00, double* %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx121 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx120, i32 0, i64 5
  store double 8.580000e+02, double* %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx123 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx122, i32 0, i64 6
  store double 7.540000e+02, double* %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx125 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx124, i32 0, i64 7
  store double 1.420000e+02, double* %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx127 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx126, i32 0, i64 8
  store double 8.500000e+01, double* %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx129 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx128, i32 0, i64 9
  store double 7.500000e+01, double* %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx131 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx130, i32 0, i64 10
  store double 9.400000e+01, double* %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx133 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx132, i32 0, i64 0
  store double 1.000000e+02, double* %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx135 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx134, i32 0, i64 1
  store double 6.100000e+01, double* %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx137 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx136, i32 0, i64 2
  store double 3.900000e+01, double* %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx139 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx138, i32 0, i64 3
  store double 2.700000e+01, double* %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx141 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx140, i32 0, i64 4
  store double 2.300000e+01, double* %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx143 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx142, i32 0, i64 5
  store double 5.200000e+01, double* %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx145 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx144, i32 0, i64 6
  store double 3.000000e+01, double* %arrayidx145, align 8
  %arrayidx146 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx147 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx146, i32 0, i64 7
  store double 2.700000e+01, double* %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx149 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx148, i32 0, i64 8
  store double 2.100000e+01, double* %arrayidx149, align 8
  %arrayidx150 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx151 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx150, i32 0, i64 9
  store double 7.040000e+02, double* %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx153 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx152, i32 0, i64 10
  store double 9.740000e+02, double* %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx155 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx154, i32 0, i64 11
  store double 1.030000e+02, double* %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx157 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx156, i32 0, i64 0
  store double 5.100000e+01, double* %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx159 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx158, i32 0, i64 1
  store double 1.600000e+01, double* %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx161 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx160, i32 0, i64 2
  store double 1.500000e+01, double* %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx163 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx162, i32 0, i64 3
  store double 8.000000e+00, double* %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx165 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx164, i32 0, i64 4
  store double 6.600000e+01, double* %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx167 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx166, i32 0, i64 5
  store double 9.000000e+00, double* %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx169 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx168, i32 0, i64 6
  store double 1.300000e+01, double* %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx171 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx170, i32 0, i64 7
  store double 1.800000e+01, double* %arrayidx171, align 8
  %arrayidx172 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx173 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx172, i32 0, i64 8
  store double 5.000000e+01, double* %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx175 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx174, i32 0, i64 9
  store double 1.960000e+02, double* %arrayidx175, align 8
  %arrayidx176 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx177 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx176, i32 0, i64 10
  store double 1.093000e+03, double* %arrayidx177, align 8
  %arrayidx178 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx179 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx178, i32 0, i64 11
  store double 7.000000e+00, double* %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx181 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx180, i32 0, i64 12
  store double 4.900000e+01, double* %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx183 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx182, i32 0, i64 0
  store double 9.010000e+02, double* %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx185 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx184, i32 0, i64 1
  store double 2.170000e+02, double* %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx187 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx186, i32 0, i64 2
  store double 3.100000e+01, double* %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx189 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx188, i32 0, i64 3
  store double 3.900000e+01, double* %arrayidx189, align 8
  %arrayidx190 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx191 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx190, i32 0, i64 4
  store double 1.500000e+01, double* %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx193 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx192, i32 0, i64 5
  store double 3.950000e+02, double* %arrayidx193, align 8
  %arrayidx194 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx195 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx194, i32 0, i64 6
  store double 7.100000e+01, double* %arrayidx195, align 8
  %arrayidx196 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx197 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx196, i32 0, i64 7
  store double 9.300000e+01, double* %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx199 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx198, i32 0, i64 8
  store double 1.570000e+02, double* %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx201 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx200, i32 0, i64 9
  store double 3.100000e+01, double* %arrayidx201, align 8
  %arrayidx202 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx203 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx202, i32 0, i64 10
  store double 5.780000e+02, double* %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx205 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx204, i32 0, i64 11
  store double 7.700000e+01, double* %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx207 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx206, i32 0, i64 12
  store double 2.300000e+01, double* %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx209 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx208, i32 0, i64 13
  store double 3.600000e+01, double* %arrayidx209, align 8
  %arrayidx210 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx211 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx210, i32 0, i64 0
  store double 2.413000e+03, double* %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx213 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx212, i32 0, i64 1
  store double 4.130000e+02, double* %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx215 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx214, i32 0, i64 2
  store double 1.738000e+03, double* %arrayidx215, align 8
  %arrayidx216 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx217 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx216, i32 0, i64 3
  store double 2.440000e+02, double* %arrayidx217, align 8
  %arrayidx218 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx219 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx218, i32 0, i64 4
  store double 3.530000e+02, double* %arrayidx219, align 8
  %arrayidx220 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx221 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx220, i32 0, i64 5
  store double 1.820000e+02, double* %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx223 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx222, i32 0, i64 6
  store double 1.560000e+02, double* %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx225 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx224, i32 0, i64 7
  store double 1.131000e+03, double* %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx227 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx226, i32 0, i64 8
  store double 1.380000e+02, double* %arrayidx227, align 8
  %arrayidx228 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx229 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx228, i32 0, i64 9
  store double 1.720000e+02, double* %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx231 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx230, i32 0, i64 10
  store double 4.360000e+02, double* %arrayidx231, align 8
  %arrayidx232 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx233 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx232, i32 0, i64 11
  store double 2.280000e+02, double* %arrayidx233, align 8
  %arrayidx234 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx235 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx234, i32 0, i64 12
  store double 5.400000e+01, double* %arrayidx235, align 8
  %arrayidx236 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx237 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx236, i32 0, i64 13
  store double 3.090000e+02, double* %arrayidx237, align 8
  %arrayidx238 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx239 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx238, i32 0, i64 14
  store double 1.138000e+03, double* %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx241 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx240, i32 0, i64 0
  store double 2.440000e+03, double* %arrayidx241, align 8
  %arrayidx242 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx243 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx242, i32 0, i64 1
  store double 2.300000e+02, double* %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx245 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx244, i32 0, i64 2
  store double 6.930000e+02, double* %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx247 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx246, i32 0, i64 3
  store double 1.510000e+02, double* %arrayidx247, align 8
  %arrayidx248 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx249 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx248, i32 0, i64 4
  store double 6.600000e+01, double* %arrayidx249, align 8
  %arrayidx250 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx251 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx250, i32 0, i64 5
  store double 1.490000e+02, double* %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx253 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx252, i32 0, i64 6
  store double 1.420000e+02, double* %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx255 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx254, i32 0, i64 7
  store double 1.640000e+02, double* %arrayidx255, align 8
  %arrayidx256 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx257 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx256, i32 0, i64 8
  store double 7.600000e+01, double* %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx259 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx258, i32 0, i64 9
  store double 9.300000e+02, double* %arrayidx259, align 8
  %arrayidx260 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx261 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx260, i32 0, i64 10
  store double 1.720000e+02, double* %arrayidx261, align 8
  %arrayidx262 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx263 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx262, i32 0, i64 11
  store double 3.980000e+02, double* %arrayidx263, align 8
  %arrayidx264 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx265 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx264, i32 0, i64 12
  store double 3.430000e+02, double* %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx267 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx266, i32 0, i64 13
  store double 3.900000e+01, double* %arrayidx267, align 8
  %arrayidx268 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx269 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx268, i32 0, i64 14
  store double 4.120000e+02, double* %arrayidx269, align 8
  %arrayidx270 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx271 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx270, i32 0, i64 15
  store double 2.258000e+03, double* %arrayidx271, align 8
  %arrayidx272 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx273 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx272, i32 0, i64 0
  store double 1.100000e+01, double* %arrayidx273, align 8
  %arrayidx274 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx275 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx274, i32 0, i64 1
  store double 1.090000e+02, double* %arrayidx275, align 8
  %arrayidx276 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx277 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx276, i32 0, i64 2
  store double 2.000000e+00, double* %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx279 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx278, i32 0, i64 3
  store double 5.000000e+00, double* %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx281 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx280, i32 0, i64 4
  store double 3.800000e+01, double* %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx283 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx282, i32 0, i64 5
  store double 1.200000e+01, double* %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx285 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx284, i32 0, i64 6
  store double 1.200000e+01, double* %arrayidx285, align 8
  %arrayidx286 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx287 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx286, i32 0, i64 7
  store double 6.900000e+01, double* %arrayidx287, align 8
  %arrayidx288 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx289 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx288, i32 0, i64 8
  store double 5.000000e+00, double* %arrayidx289, align 8
  %arrayidx290 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx291 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx290, i32 0, i64 9
  store double 1.200000e+01, double* %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx293 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx292, i32 0, i64 10
  store double 8.200000e+01, double* %arrayidx293, align 8
  %arrayidx294 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx295 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx294, i32 0, i64 11
  store double 9.000000e+00, double* %arrayidx295, align 8
  %arrayidx296 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx297 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx296, i32 0, i64 12
  store double 8.000000e+00, double* %arrayidx297, align 8
  %arrayidx298 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx299 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx298, i32 0, i64 13
  store double 3.700000e+01, double* %arrayidx299, align 8
  %arrayidx300 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx301 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx300, i32 0, i64 14
  store double 6.000000e+00, double* %arrayidx301, align 8
  %arrayidx302 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx303 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx302, i32 0, i64 15
  store double 3.600000e+01, double* %arrayidx303, align 8
  %arrayidx304 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx305 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx304, i32 0, i64 16
  store double 8.000000e+00, double* %arrayidx305, align 8
  %arrayidx306 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx307 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx306, i32 0, i64 0
  store double 4.100000e+01, double* %arrayidx307, align 8
  %arrayidx308 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx309 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx308, i32 0, i64 1
  store double 4.600000e+01, double* %arrayidx309, align 8
  %arrayidx310 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx311 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx310, i32 0, i64 2
  store double 1.140000e+02, double* %arrayidx311, align 8
  %arrayidx312 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx313 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx312, i32 0, i64 3
  store double 8.900000e+01, double* %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx315 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx314, i32 0, i64 4
  store double 1.640000e+02, double* %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx317 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx316, i32 0, i64 5
  store double 4.000000e+01, double* %arrayidx317, align 8
  %arrayidx318 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx319 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx318, i32 0, i64 6
  store double 1.500000e+01, double* %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx321 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx320, i32 0, i64 7
  store double 1.500000e+01, double* %arrayidx321, align 8
  %arrayidx322 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx323 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx322, i32 0, i64 8
  store double 5.140000e+02, double* %arrayidx323, align 8
  %arrayidx324 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx325 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx324, i32 0, i64 9
  store double 6.100000e+01, double* %arrayidx325, align 8
  %arrayidx326 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx327 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx326, i32 0, i64 10
  store double 8.400000e+01, double* %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx329 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx328, i32 0, i64 11
  store double 2.000000e+01, double* %arrayidx329, align 8
  %arrayidx330 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx331 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx330, i32 0, i64 12
  store double 1.700000e+01, double* %arrayidx331, align 8
  %arrayidx332 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx333 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx332, i32 0, i64 13
  store double 8.500000e+02, double* %arrayidx333, align 8
  %arrayidx334 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx335 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx334, i32 0, i64 14
  store double 2.200000e+01, double* %arrayidx335, align 8
  %arrayidx336 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx337 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx336, i32 0, i64 15
  store double 1.640000e+02, double* %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx339 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx338, i32 0, i64 16
  store double 4.500000e+01, double* %arrayidx339, align 8
  %arrayidx340 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx341 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx340, i32 0, i64 17
  store double 4.100000e+01, double* %arrayidx341, align 8
  %arrayidx342 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx343 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx342, i32 0, i64 0
  store double 1.766000e+03, double* %arrayidx343, align 8
  %arrayidx344 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx345 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx344, i32 0, i64 1
  store double 6.900000e+01, double* %arrayidx345, align 8
  %arrayidx346 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx347 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx346, i32 0, i64 2
  store double 5.500000e+01, double* %arrayidx347, align 8
  %arrayidx348 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx349 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx348, i32 0, i64 3
  store double 1.270000e+02, double* %arrayidx349, align 8
  %arrayidx350 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx351 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx350, i32 0, i64 4
  store double 9.900000e+01, double* %arrayidx351, align 8
  %arrayidx352 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx353 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx352, i32 0, i64 5
  store double 5.800000e+01, double* %arrayidx353, align 8
  %arrayidx354 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx355 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx354, i32 0, i64 6
  store double 2.260000e+02, double* %arrayidx355, align 8
  %arrayidx356 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx357 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx356, i32 0, i64 7
  store double 2.760000e+02, double* %arrayidx357, align 8
  %arrayidx358 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx359 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx358, i32 0, i64 8
  store double 2.200000e+01, double* %arrayidx359, align 8
  %arrayidx360 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx361 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx360, i32 0, i64 9
  store double 3.938000e+03, double* %arrayidx361, align 8
  %arrayidx362 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx363 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx362, i32 0, i64 10
  store double 1.261000e+03, double* %arrayidx363, align 8
  %arrayidx364 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx365 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx364, i32 0, i64 11
  store double 5.800000e+01, double* %arrayidx365, align 8
  %arrayidx366 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx367 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx366, i32 0, i64 12
  store double 5.590000e+02, double* %arrayidx367, align 8
  %arrayidx368 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx369 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx368, i32 0, i64 13
  store double 1.890000e+02, double* %arrayidx369, align 8
  %arrayidx370 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx371 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx370, i32 0, i64 14
  store double 8.400000e+01, double* %arrayidx371, align 8
  %arrayidx372 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx373 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx372, i32 0, i64 15
  store double 2.190000e+02, double* %arrayidx373, align 8
  %arrayidx374 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx375 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx374, i32 0, i64 16
  store double 5.260000e+02, double* %arrayidx375, align 8
  %arrayidx376 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx377 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx376, i32 0, i64 17
  store double 2.700000e+01, double* %arrayidx377, align 8
  %arrayidx378 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 19
  %arrayidx379 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx378, i32 0, i64 18
  store double 4.200000e+01, double* %arrayidx379, align 8
  %arrayidx380 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx381 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx380, i32 0, i64 1
  store double 2.100000e+01, double* %arrayidx381, align 8
  %arrayidx382 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx383 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx382, i32 0, i64 2
  store double 2.000000e+00, double* %arrayidx383, align 8
  %arrayidx384 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx385 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx384, i32 0, i64 3
  store double 7.000000e+00, double* %arrayidx385, align 8
  %arrayidx386 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx387 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx386, i32 0, i64 4
  store double 1.300000e+01, double* %arrayidx387, align 8
  %arrayidx388 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx389 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx388, i32 0, i64 5
  store double 4.000000e+00, double* %arrayidx389, align 8
  %arrayidx390 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx391 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx390, i32 0, i64 6
  store double 6.000000e+00, double* %arrayidx391, align 8
  %arrayidx392 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx393 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx392, i32 0, i64 7
  store double 1.600000e+02, double* %arrayidx393, align 8
  %arrayidx394 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx395 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx394, i32 0, i64 8
  store double 6.000000e+00, double* %arrayidx395, align 8
  %arrayidx396 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx397 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx396, i32 0, i64 9
  store double 4.400000e+01, double* %arrayidx397, align 8
  %arrayidx398 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx399 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx398, i32 0, i64 10
  store double 4.300000e+01, double* %arrayidx399, align 8
  %arrayidx400 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx401 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx400, i32 0, i64 11
  store double 5.000000e+00, double* %arrayidx401, align 8
  %arrayidx402 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx403 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx402, i32 0, i64 12
  store double 1.000000e+01, double* %arrayidx403, align 8
  %arrayidx404 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx405 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx404, i32 0, i64 13
  store double 2.100000e+01, double* %arrayidx405, align 8
  %arrayidx406 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx407 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx406, i32 0, i64 14
  store double 3.400000e+01, double* %arrayidx407, align 8
  %arrayidx408 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx409 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx408, i32 0, i64 15
  store double 1.980000e+02, double* %arrayidx409, align 8
  %arrayidx410 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx411 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx410, i32 0, i64 16
  store double 2.020000e+02, double* %arrayidx411, align 8
  %arrayidx412 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx413 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx412, i32 0, i64 17
  store double 0.000000e+00, double* %arrayidx413, align 8
  %arrayidx414 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx415 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx414, i32 0, i64 18
  store double 1.000000e+00, double* %arrayidx415, align 8
  %arrayidx416 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 0
  %arrayidx417 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx416, i32 0, i64 19
  store double 2.920000e+02, double* %arrayidx417, align 8
  %arrayidx418 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx419 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx418, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx419, align 8
  %arrayidx420 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx421 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx420, i32 0, i64 3
  store double 1.000000e+00, double* %arrayidx421, align 8
  %arrayidx422 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx423 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx422, i32 0, i64 4
  store double 2.000000e+00, double* %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx425 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx424, i32 0, i64 5
  store double 2.100000e+01, double* %arrayidx425, align 8
  %arrayidx426 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx427 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx426, i32 0, i64 6
  store double 3.000000e+00, double* %arrayidx427, align 8
  %arrayidx428 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx429 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx428, i32 0, i64 7
  store double 2.200000e+01, double* %arrayidx429, align 8
  %arrayidx430 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx431 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx430, i32 0, i64 8
  store double 2.100000e+01, double* %arrayidx431, align 8
  %arrayidx432 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx433 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx432, i32 0, i64 9
  store double 4.000000e+00, double* %arrayidx433, align 8
  %arrayidx434 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx435 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx434, i32 0, i64 10
  store double 8.000000e+00, double* %arrayidx435, align 8
  %arrayidx436 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx437 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx436, i32 0, i64 11
  store double 5.300000e+01, double* %arrayidx437, align 8
  %arrayidx438 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx439 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx438, i32 0, i64 12
  store double 1.900000e+01, double* %arrayidx439, align 8
  %arrayidx440 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx441 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx440, i32 0, i64 13
  store double 0.000000e+00, double* %arrayidx441, align 8
  %arrayidx442 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx443 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx442, i32 0, i64 14
  store double 1.000000e+00, double* %arrayidx443, align 8
  %arrayidx444 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx445 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx444, i32 0, i64 15
  store double 5.000000e+00, double* %arrayidx445, align 8
  %arrayidx446 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx447 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx446, i32 0, i64 16
  store double 5.000000e+00, double* %arrayidx447, align 8
  %arrayidx448 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx449 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx448, i32 0, i64 17
  store double 2.800000e+01, double* %arrayidx449, align 8
  %arrayidx450 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx451 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx450, i32 0, i64 18
  store double 0.000000e+00, double* %arrayidx451, align 8
  %arrayidx452 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 1
  %arrayidx453 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx452, i32 0, i64 19
  store double 0.000000e+00, double* %arrayidx453, align 8
  %arrayidx454 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx455 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx454, i32 0, i64 3
  store double 1.400000e+01, double* %arrayidx455, align 8
  %arrayidx456 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx457 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx456, i32 0, i64 4
  store double 1.000000e+00, double* %arrayidx457, align 8
  %arrayidx458 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx459 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx458, i32 0, i64 5
  store double 7.000000e+00, double* %arrayidx459, align 8
  %arrayidx460 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx461 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx460, i32 0, i64 6
  store double 0.000000e+00, double* %arrayidx461, align 8
  %arrayidx462 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx463 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx462, i32 0, i64 7
  store double 0.000000e+00, double* %arrayidx463, align 8
  %arrayidx464 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx465 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx464, i32 0, i64 8
  store double 8.000000e+00, double* %arrayidx465, align 8
  %arrayidx466 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx467 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx466, i32 0, i64 9
  store double 4.000000e+00, double* %arrayidx467, align 8
  %arrayidx468 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx469 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx468, i32 0, i64 10
  store double 5.000000e+00, double* %arrayidx469, align 8
  %arrayidx470 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx471 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx470, i32 0, i64 11
  store double 1.100000e+01, double* %arrayidx471, align 8
  %arrayidx472 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx473 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx472, i32 0, i64 12
  store double 3.000000e+00, double* %arrayidx473, align 8
  %arrayidx474 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx475 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx474, i32 0, i64 13
  store double 1.000000e+00, double* %arrayidx475, align 8
  %arrayidx476 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx477 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx476, i32 0, i64 14
  store double 2.000000e+00, double* %arrayidx477, align 8
  %arrayidx478 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx479 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx478, i32 0, i64 15
  store double 3.200000e+01, double* %arrayidx479, align 8
  %arrayidx480 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx481 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx480, i32 0, i64 16
  store double 1.900000e+01, double* %arrayidx481, align 8
  %arrayidx482 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx483 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx482, i32 0, i64 17
  store double 1.000000e+00, double* %arrayidx483, align 8
  %arrayidx484 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx485 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx484, i32 0, i64 18
  store double 1.000000e+00, double* %arrayidx485, align 8
  %arrayidx486 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 2
  %arrayidx487 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx486, i32 0, i64 19
  store double 2.000000e+00, double* %arrayidx487, align 8
  %arrayidx488 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx489 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx488, i32 0, i64 4
  store double 0.000000e+00, double* %arrayidx489, align 8
  %arrayidx490 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx491 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx490, i32 0, i64 5
  store double 0.000000e+00, double* %arrayidx491, align 8
  %arrayidx492 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx493 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx492, i32 0, i64 6
  store double 1.200000e+01, double* %arrayidx493, align 8
  %arrayidx494 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx495 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx494, i32 0, i64 7
  store double 1.500000e+01, double* %arrayidx495, align 8
  %arrayidx496 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx497 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx496, i32 0, i64 8
  store double 4.000000e+00, double* %arrayidx497, align 8
  %arrayidx498 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx499 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx498, i32 0, i64 9
  store double 1.000000e+00, double* %arrayidx499, align 8
  %arrayidx500 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx501 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx500, i32 0, i64 10
  store double 0.000000e+00, double* %arrayidx501, align 8
  %arrayidx502 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx503 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx502, i32 0, i64 11
  store double 2.000000e+00, double* %arrayidx503, align 8
  %arrayidx504 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx505 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx504, i32 0, i64 12
  store double 1.000000e+00, double* %arrayidx505, align 8
  %arrayidx506 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx507 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx506, i32 0, i64 13
  store double 0.000000e+00, double* %arrayidx507, align 8
  %arrayidx508 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx509 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx508, i32 0, i64 14
  store double 1.000000e+00, double* %arrayidx509, align 8
  %arrayidx510 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx511 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx510, i32 0, i64 15
  store double 0.000000e+00, double* %arrayidx511, align 8
  %arrayidx512 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx513 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx512, i32 0, i64 16
  store double 6.000000e+00, double* %arrayidx513, align 8
  %arrayidx514 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx515 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx514, i32 0, i64 17
  store double 0.000000e+00, double* %arrayidx515, align 8
  %arrayidx516 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx517 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx516, i32 0, i64 18
  store double 1.000000e+00, double* %arrayidx517, align 8
  %arrayidx518 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 3
  %arrayidx519 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx518, i32 0, i64 19
  store double 4.000000e+00, double* %arrayidx519, align 8
  %arrayidx520 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx521 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx520, i32 0, i64 5
  store double 0.000000e+00, double* %arrayidx521, align 8
  %arrayidx522 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx523 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx522, i32 0, i64 6
  store double 0.000000e+00, double* %arrayidx523, align 8
  %arrayidx524 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx525 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx524, i32 0, i64 7
  store double 1.300000e+01, double* %arrayidx525, align 8
  %arrayidx526 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx527 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx526, i32 0, i64 8
  store double 2.000000e+00, double* %arrayidx527, align 8
  %arrayidx528 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx529 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx528, i32 0, i64 9
  store double 4.000000e+00, double* %arrayidx529, align 8
  %arrayidx530 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx531 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx530, i32 0, i64 10
  store double 1.100000e+01, double* %arrayidx531, align 8
  %arrayidx532 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx533 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx532, i32 0, i64 11
  store double 0.000000e+00, double* %arrayidx533, align 8
  %arrayidx534 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx535 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx534, i32 0, i64 12
  store double 1.000000e+00, double* %arrayidx535, align 8
  %arrayidx536 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx537 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx536, i32 0, i64 13
  store double 3.400000e+01, double* %arrayidx537, align 8
  %arrayidx538 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx539 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx538, i32 0, i64 14
  store double 0.000000e+00, double* %arrayidx539, align 8
  %arrayidx540 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx541 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx540, i32 0, i64 15
  store double 4.800000e+01, double* %arrayidx541, align 8
  %arrayidx542 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx543 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx542, i32 0, i64 16
  store double 1.300000e+01, double* %arrayidx543, align 8
  %arrayidx544 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx545 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx544, i32 0, i64 17
  store double 8.000000e+00, double* %arrayidx545, align 8
  %arrayidx546 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx547 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx546, i32 0, i64 18
  store double 2.300000e+01, double* %arrayidx547, align 8
  %arrayidx548 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 4
  %arrayidx549 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx548, i32 0, i64 19
  store double 4.700000e+01, double* %arrayidx549, align 8
  %arrayidx550 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx551 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx550, i32 0, i64 6
  store double 1.600000e+01, double* %arrayidx551, align 8
  %arrayidx552 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx553 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx552, i32 0, i64 7
  store double 1.000000e+00, double* %arrayidx553, align 8
  %arrayidx554 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx555 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx554, i32 0, i64 8
  store double 2.600000e+01, double* %arrayidx555, align 8
  %arrayidx556 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx557 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx556, i32 0, i64 9
  store double 1.000000e+00, double* %arrayidx557, align 8
  %arrayidx558 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx559 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx558, i32 0, i64 10
  store double 1.600000e+01, double* %arrayidx559, align 8
  %arrayidx560 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx561 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx560, i32 0, i64 11
  store double 6.000000e+00, double* %arrayidx561, align 8
  %arrayidx562 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx563 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx562, i32 0, i64 12
  store double 3.000000e+00, double* %arrayidx563, align 8
  %arrayidx564 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx565 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx564, i32 0, i64 13
  store double 0.000000e+00, double* %arrayidx565, align 8
  %arrayidx566 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx567 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx566, i32 0, i64 14
  store double 5.000000e+00, double* %arrayidx567, align 8
  %arrayidx568 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx569 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx568, i32 0, i64 15
  store double 7.000000e+00, double* %arrayidx569, align 8
  %arrayidx570 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx571 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx570, i32 0, i64 16
  store double 2.000000e+00, double* %arrayidx571, align 8
  %arrayidx572 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx573 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx572, i32 0, i64 17
  store double 0.000000e+00, double* %arrayidx573, align 8
  %arrayidx574 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx575 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx574, i32 0, i64 18
  store double 0.000000e+00, double* %arrayidx575, align 8
  %arrayidx576 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 5
  %arrayidx577 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx576, i32 0, i64 19
  store double 0.000000e+00, double* %arrayidx577, align 8
  %arrayidx578 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx579 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx578, i32 0, i64 7
  store double 2.100000e+01, double* %arrayidx579, align 8
  %arrayidx580 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx581 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx580, i32 0, i64 8
  store double 0.000000e+00, double* %arrayidx581, align 8
  %arrayidx582 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx583 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx582, i32 0, i64 9
  store double 0.000000e+00, double* %arrayidx583, align 8
  %arrayidx584 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx585 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx584, i32 0, i64 10
  store double 0.000000e+00, double* %arrayidx585, align 8
  %arrayidx586 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx587 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx586, i32 0, i64 11
  store double 0.000000e+00, double* %arrayidx587, align 8
  %arrayidx588 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx589 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx588, i32 0, i64 12
  store double 0.000000e+00, double* %arrayidx589, align 8
  %arrayidx590 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx591 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx590, i32 0, i64 13
  store double 0.000000e+00, double* %arrayidx591, align 8
  %arrayidx592 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx593 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx592, i32 0, i64 14
  store double 0.000000e+00, double* %arrayidx593, align 8
  %arrayidx594 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx595 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx594, i32 0, i64 15
  store double 4.000000e+00, double* %arrayidx595, align 8
  %arrayidx596 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx597 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx596, i32 0, i64 16
  store double 2.000000e+00, double* %arrayidx597, align 8
  %arrayidx598 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx599 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx598, i32 0, i64 17
  store double 0.000000e+00, double* %arrayidx599, align 8
  %arrayidx600 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx601 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx600, i32 0, i64 18
  store double 0.000000e+00, double* %arrayidx601, align 8
  %arrayidx602 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 6
  %arrayidx603 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx602, i32 0, i64 19
  store double 7.000000e+00, double* %arrayidx603, align 8
  %arrayidx604 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx605 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx604, i32 0, i64 8
  store double 1.000000e+00, double* %arrayidx605, align 8
  %arrayidx606 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx607 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx606, i32 0, i64 9
  store double 1.000000e+01, double* %arrayidx607, align 8
  %arrayidx608 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx609 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx608, i32 0, i64 10
  store double 0.000000e+00, double* %arrayidx609, align 8
  %arrayidx610 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx611 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx610, i32 0, i64 11
  store double 0.000000e+00, double* %arrayidx611, align 8
  %arrayidx612 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx613 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx612, i32 0, i64 12
  store double 3.000000e+00, double* %arrayidx613, align 8
  %arrayidx614 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx615 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx614, i32 0, i64 13
  store double 4.000000e+00, double* %arrayidx615, align 8
  %arrayidx616 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx617 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx616, i32 0, i64 14
  store double 7.000000e+00, double* %arrayidx617, align 8
  %arrayidx618 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx619 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx618, i32 0, i64 15
  store double 6.400000e+01, double* %arrayidx619, align 8
  %arrayidx620 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx621 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx620, i32 0, i64 16
  store double 1.200000e+01, double* %arrayidx621, align 8
  %arrayidx622 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx623 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx622, i32 0, i64 17
  store double 5.000000e+00, double* %arrayidx623, align 8
  %arrayidx624 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx625 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx624, i32 0, i64 18
  store double 0.000000e+00, double* %arrayidx625, align 8
  %arrayidx626 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 7
  %arrayidx627 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx626, i32 0, i64 19
  store double 5.300000e+01, double* %arrayidx627, align 8
  %arrayidx628 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx629 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx628, i32 0, i64 9
  store double 3.000000e+00, double* %arrayidx629, align 8
  %arrayidx630 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx631 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx630, i32 0, i64 10
  store double 2.000000e+00, double* %arrayidx631, align 8
  %arrayidx632 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx633 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx632, i32 0, i64 11
  store double 0.000000e+00, double* %arrayidx633, align 8
  %arrayidx634 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx635 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx634, i32 0, i64 12
  store double 1.000000e+00, double* %arrayidx635, align 8
  %arrayidx636 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx637 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx636, i32 0, i64 13
  store double 0.000000e+00, double* %arrayidx637, align 8
  %arrayidx638 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx639 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx638, i32 0, i64 14
  store double 0.000000e+00, double* %arrayidx639, align 8
  %arrayidx640 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx641 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx640, i32 0, i64 15
  store double 0.000000e+00, double* %arrayidx641, align 8
  %arrayidx642 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx643 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx642, i32 0, i64 16
  store double 4.000000e+00, double* %arrayidx643, align 8
  %arrayidx644 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx645 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx644, i32 0, i64 17
  store double 0.000000e+00, double* %arrayidx645, align 8
  %arrayidx646 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx647 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx646, i32 0, i64 18
  store double 2.900000e+01, double* %arrayidx647, align 8
  %arrayidx648 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 8
  %arrayidx649 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx648, i32 0, i64 19
  store double 2.000000e+00, double* %arrayidx649, align 8
  %arrayidx650 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx651 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx650, i32 0, i64 10
  store double 2.730000e+02, double* %arrayidx651, align 8
  %arrayidx652 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx653 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx652, i32 0, i64 11
  store double 0.000000e+00, double* %arrayidx653, align 8
  %arrayidx654 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx655 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx654, i32 0, i64 12
  store double 1.610000e+02, double* %arrayidx655, align 8
  %arrayidx656 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx657 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx656, i32 0, i64 13
  store double 6.600000e+01, double* %arrayidx657, align 8
  %arrayidx658 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx659 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx658, i32 0, i64 14
  store double 4.000000e+00, double* %arrayidx659, align 8
  %arrayidx660 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx661 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx660, i32 0, i64 15
  store double 2.200000e+01, double* %arrayidx661, align 8
  %arrayidx662 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx663 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx662, i32 0, i64 16
  store double 1.500000e+02, double* %arrayidx663, align 8
  %arrayidx664 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx665 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx664, i32 0, i64 17
  store double 1.000000e+00, double* %arrayidx665, align 8
  %arrayidx666 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx667 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx666, i32 0, i64 18
  store double 4.000000e+00, double* %arrayidx667, align 8
  %arrayidx668 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 9
  %arrayidx669 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx668, i32 0, i64 19
  store double 8.830000e+02, double* %arrayidx669, align 8
  %arrayidx670 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx671 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx670, i32 0, i64 11
  store double 1.000000e+00, double* %arrayidx671, align 8
  %arrayidx672 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx673 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx672, i32 0, i64 12
  store double 1.530000e+02, double* %arrayidx673, align 8
  %arrayidx674 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx675 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx674, i32 0, i64 13
  store double 2.510000e+02, double* %arrayidx675, align 8
  %arrayidx676 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx677 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx676, i32 0, i64 14
  store double 3.700000e+01, double* %arrayidx677, align 8
  %arrayidx678 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx679 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx678, i32 0, i64 15
  store double 4.300000e+01, double* %arrayidx679, align 8
  %arrayidx680 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx681 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx680, i32 0, i64 16
  store double 2.600000e+01, double* %arrayidx681, align 8
  %arrayidx682 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx683 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx682, i32 0, i64 17
  store double 2.000000e+01, double* %arrayidx683, align 8
  %arrayidx684 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx685 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx684, i32 0, i64 18
  store double 6.000000e+00, double* %arrayidx685, align 8
  %arrayidx686 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 10
  %arrayidx687 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx686, i32 0, i64 19
  store double 2.550000e+02, double* %arrayidx687, align 8
  %arrayidx688 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx689 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx688, i32 0, i64 12
  store double 4.000000e+00, double* %arrayidx689, align 8
  %arrayidx690 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx691 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx690, i32 0, i64 13
  store double 0.000000e+00, double* %arrayidx691, align 8
  %arrayidx692 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx693 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx692, i32 0, i64 14
  store double 0.000000e+00, double* %arrayidx693, align 8
  %arrayidx694 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx695 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx694, i32 0, i64 15
  store double 1.000000e+00, double* %arrayidx695, align 8
  %arrayidx696 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx697 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx696, i32 0, i64 16
  store double 2.000000e+00, double* %arrayidx697, align 8
  %arrayidx698 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx699 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx698, i32 0, i64 17
  store double 0.000000e+00, double* %arrayidx699, align 8
  %arrayidx700 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx701 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx700, i32 0, i64 18
  store double 5.000000e+00, double* %arrayidx701, align 8
  %arrayidx702 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 11
  %arrayidx703 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx702, i32 0, i64 19
  store double 1.000000e+00, double* %arrayidx703, align 8
  %arrayidx704 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx705 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx704, i32 0, i64 13
  store double 8.000000e+00, double* %arrayidx705, align 8
  %arrayidx706 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx707 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx706, i32 0, i64 14
  store double 0.000000e+00, double* %arrayidx707, align 8
  %arrayidx708 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx709 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx708, i32 0, i64 15
  store double 1.000000e+00, double* %arrayidx709, align 8
  %arrayidx710 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx711 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx710, i32 0, i64 16
  store double 3.200000e+01, double* %arrayidx711, align 8
  %arrayidx712 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx713 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx712, i32 0, i64 17
  store double 1.000000e+00, double* %arrayidx713, align 8
  %arrayidx714 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx715 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx714, i32 0, i64 18
  store double 5.000000e+00, double* %arrayidx715, align 8
  %arrayidx716 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 12
  %arrayidx717 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx716, i32 0, i64 19
  store double 8.900000e+01, double* %arrayidx717, align 8
  %arrayidx718 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx719 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx718, i32 0, i64 14
  store double 0.000000e+00, double* %arrayidx719, align 8
  %arrayidx720 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx721 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx720, i32 0, i64 15
  store double 3.200000e+01, double* %arrayidx721, align 8
  %arrayidx722 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx723 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx722, i32 0, i64 16
  store double 9.000000e+00, double* %arrayidx723, align 8
  %arrayidx724 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx725 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx724, i32 0, i64 17
  store double 2.000000e+00, double* %arrayidx725, align 8
  %arrayidx726 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx727 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx726, i32 0, i64 18
  store double 5.400000e+01, double* %arrayidx727, align 8
  %arrayidx728 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 13
  %arrayidx729 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx728, i32 0, i64 19
  store double 3.700000e+01, double* %arrayidx729, align 8
  %arrayidx730 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx731 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx730, i32 0, i64 15
  store double 9.000000e+00, double* %arrayidx731, align 8
  %arrayidx732 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx733 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx732, i32 0, i64 16
  store double 1.000000e+01, double* %arrayidx733, align 8
  %arrayidx734 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx735 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx734, i32 0, i64 17
  store double 0.000000e+00, double* %arrayidx735, align 8
  %arrayidx736 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx737 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx736, i32 0, i64 18
  store double 1.000000e+00, double* %arrayidx737, align 8
  %arrayidx738 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 14
  %arrayidx739 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx738, i32 0, i64 19
  store double 1.000000e+00, double* %arrayidx739, align 8
  %arrayidx740 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx741 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx740, i32 0, i64 16
  store double 1.340000e+02, double* %arrayidx741, align 8
  %arrayidx742 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx743 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx742, i32 0, i64 17
  store double 1.000000e+00, double* %arrayidx743, align 8
  %arrayidx744 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx745 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx744, i32 0, i64 18
  store double 2.200000e+01, double* %arrayidx745, align 8
  %arrayidx746 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 15
  %arrayidx747 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx746, i32 0, i64 19
  store double 1.300000e+01, double* %arrayidx747, align 8
  %arrayidx748 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx749 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx748, i32 0, i64 17
  store double 1.000000e+00, double* %arrayidx749, align 8
  %arrayidx750 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx751 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx750, i32 0, i64 18
  store double 3.000000e+00, double* %arrayidx751, align 8
  %arrayidx752 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 16
  %arrayidx753 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx752, i32 0, i64 19
  store double 4.800000e+01, double* %arrayidx753, align 8
  %arrayidx754 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx755 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx754, i32 0, i64 18
  store double 2.000000e+00, double* %arrayidx755, align 8
  %arrayidx756 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 17
  %arrayidx757 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx756, i32 0, i64 19
  store double 1.800000e+01, double* %arrayidx757, align 8
  %arrayidx758 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 18
  %arrayidx759 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx758, i32 0, i64 19
  store double 2.000000e+00, double* %arrayidx759, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom760 = sext i32 %6 to i64
  %arrayidx761 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 %idxprom760
  %arrayidx762 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx761, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx762, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %isTM.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 1, i32* %i, align 4
  br label %for.cond.763

for.cond.763:                                     ; preds = %for.inc.789, %if.then
  %9 = load i32, i32* %i, align 4
  %cmp764 = icmp slt i32 %9, 20
  br i1 %cmp764, label %for.body.765, label %for.end.791

for.body.765:                                     ; preds = %for.cond.763
  store i32 0, i32* %j, align 4
  br label %for.cond.766

for.cond.766:                                     ; preds = %for.inc.786, %for.body.765
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %i, align 4
  %cmp767 = icmp slt i32 %10, %11
  br i1 %cmp767, label %for.body.768, label %for.end.788

for.body.768:                                     ; preds = %for.cond.766
  %12 = load i32, i32* %i, align 4
  %idxprom769 = sext i32 %12 to i64
  %arrayidx770 = getelementptr inbounds [20 x double], [20 x double]* %freq0_TM, i32 0, i64 %idxprom769
  %13 = load double, double* %arrayidx770, align 8
  %mul = fmul double 4.000000e+02, %13
  %14 = load i32, i32* %j, align 4
  %idxprom771 = sext i32 %14 to i64
  %arrayidx772 = getelementptr inbounds [20 x double], [20 x double]* %freq0_TM, i32 0, i64 %idxprom771
  %15 = load double, double* %arrayidx772, align 8
  %mul773 = fmul double %mul, %15
  %16 = load i32, i32* %i, align 4
  %idxprom774 = sext i32 %16 to i64
  %17 = load i32, i32* %j, align 4
  %idxprom775 = sext i32 %17 to i64
  %arrayidx776 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 %idxprom775
  %arrayidx777 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx776, i32 0, i64 %idxprom774
  %18 = load double, double* %arrayidx777, align 8
  %div = fdiv double %18, %mul773
  store double %div, double* %arrayidx777, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom778 = sext i32 %19 to i64
  %20 = load i32, i32* %j, align 4
  %idxprom779 = sext i32 %20 to i64
  %arrayidx780 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 %idxprom779
  %arrayidx781 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx780, i32 0, i64 %idxprom778
  %21 = load double, double* %arrayidx781, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom782 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom783 = sext i32 %23 to i64
  %arrayidx784 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 %idxprom783
  %arrayidx785 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx784, i32 0, i64 %idxprom782
  store double %21, double* %arrayidx785, align 8
  br label %for.inc.786

for.inc.786:                                      ; preds = %for.body.768
  %24 = load i32, i32* %j, align 4
  %inc787 = add nsw i32 %24, 1
  store i32 %inc787, i32* %j, align 4
  br label %for.cond.766

for.end.788:                                      ; preds = %for.cond.766
  br label %for.inc.789

for.inc.789:                                      ; preds = %for.end.788
  %25 = load i32, i32* %i, align 4
  %inc790 = add nsw i32 %25, 1
  store i32 %inc790, i32* %i, align 4
  br label %for.cond.763

for.end.791:                                      ; preds = %for.cond.763
  store i32 0, i32* %i, align 4
  br label %for.cond.792

for.cond.792:                                     ; preds = %for.inc.799, %for.end.791
  %26 = load i32, i32* %i, align 4
  %cmp793 = icmp slt i32 %26, 20
  br i1 %cmp793, label %for.body.794, label %for.end.801

for.body.794:                                     ; preds = %for.cond.792
  %27 = load i32, i32* %i, align 4
  %idxprom795 = sext i32 %27 to i64
  %arrayidx796 = getelementptr inbounds [20 x double], [20 x double]* %freq0_TM, i32 0, i64 %idxprom795
  %28 = load double, double* %arrayidx796, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom797 = sext i32 %29 to i64
  %30 = load double*, double** %freq.addr, align 8
  %arrayidx798 = getelementptr inbounds double, double* %30, i64 %idxprom797
  store double %28, double* %arrayidx798, align 8
  br label %for.inc.799

for.inc.799:                                      ; preds = %for.body.794
  %31 = load i32, i32* %i, align 4
  %inc800 = add nsw i32 %31, 1
  store i32 %inc800, i32* %i, align 4
  br label %for.cond.792

for.end.801:                                      ; preds = %for.cond.792
  br label %if.end

if.else:                                          ; preds = %for.end
  store i32 1, i32* %i, align 4
  br label %for.cond.802

for.cond.802:                                     ; preds = %for.inc.830, %if.else
  %32 = load i32, i32* %i, align 4
  %cmp803 = icmp slt i32 %32, 20
  br i1 %cmp803, label %for.body.804, label %for.end.832

for.body.804:                                     ; preds = %for.cond.802
  store i32 0, i32* %j, align 4
  br label %for.cond.805

for.cond.805:                                     ; preds = %for.inc.827, %for.body.804
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %i, align 4
  %cmp806 = icmp slt i32 %33, %34
  br i1 %cmp806, label %for.body.807, label %for.end.829

for.body.807:                                     ; preds = %for.cond.805
  %35 = load i32, i32* %i, align 4
  %idxprom808 = sext i32 %35 to i64
  %arrayidx809 = getelementptr inbounds [20 x double], [20 x double]* %freq0, i32 0, i64 %idxprom808
  %36 = load double, double* %arrayidx809, align 8
  %mul810 = fmul double 4.000000e+02, %36
  %37 = load i32, i32* %j, align 4
  %idxprom811 = sext i32 %37 to i64
  %arrayidx812 = getelementptr inbounds [20 x double], [20 x double]* %freq0, i32 0, i64 %idxprom811
  %38 = load double, double* %arrayidx812, align 8
  %mul813 = fmul double %mul810, %38
  %39 = load i32, i32* %j, align 4
  %idxprom814 = sext i32 %39 to i64
  %40 = load i32, i32* %i, align 4
  %idxprom815 = sext i32 %40 to i64
  %arrayidx816 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 %idxprom815
  %arrayidx817 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx816, i32 0, i64 %idxprom814
  %41 = load double, double* %arrayidx817, align 8
  %div818 = fdiv double %41, %mul813
  store double %div818, double* %arrayidx817, align 8
  %42 = load i32, i32* %j, align 4
  %idxprom819 = sext i32 %42 to i64
  %43 = load i32, i32* %i, align 4
  %idxprom820 = sext i32 %43 to i64
  %arrayidx821 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 %idxprom820
  %arrayidx822 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx821, i32 0, i64 %idxprom819
  %44 = load double, double* %arrayidx822, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom823 = sext i32 %45 to i64
  %46 = load i32, i32* %j, align 4
  %idxprom824 = sext i32 %46 to i64
  %arrayidx825 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 %idxprom824
  %arrayidx826 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx825, i32 0, i64 %idxprom823
  store double %44, double* %arrayidx826, align 8
  br label %for.inc.827

for.inc.827:                                      ; preds = %for.body.807
  %47 = load i32, i32* %j, align 4
  %inc828 = add nsw i32 %47, 1
  store i32 %inc828, i32* %j, align 4
  br label %for.cond.805

for.end.829:                                      ; preds = %for.cond.805
  br label %for.inc.830

for.inc.830:                                      ; preds = %for.end.829
  %48 = load i32, i32* %i, align 4
  %inc831 = add nsw i32 %48, 1
  store i32 %inc831, i32* %i, align 4
  br label %for.cond.802

for.end.832:                                      ; preds = %for.cond.802
  store i32 0, i32* %i, align 4
  br label %for.cond.833

for.cond.833:                                     ; preds = %for.inc.840, %for.end.832
  %49 = load i32, i32* %i, align 4
  %cmp834 = icmp slt i32 %49, 20
  br i1 %cmp834, label %for.body.835, label %for.end.842

for.body.835:                                     ; preds = %for.cond.833
  %50 = load i32, i32* %i, align 4
  %idxprom836 = sext i32 %50 to i64
  %arrayidx837 = getelementptr inbounds [20 x double], [20 x double]* %freq0, i32 0, i64 %idxprom836
  %51 = load double, double* %arrayidx837, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom838 = sext i32 %52 to i64
  %53 = load double*, double** %freq.addr, align 8
  %arrayidx839 = getelementptr inbounds double, double* %53, i64 %idxprom838
  store double %51, double* %arrayidx839, align 8
  br label %for.inc.840

for.inc.840:                                      ; preds = %for.body.835
  %54 = load i32, i32* %i, align 4
  %inc841 = add nsw i32 %54, 1
  store i32 %inc841, i32* %i, align 4
  br label %for.cond.833

for.end.842:                                      ; preds = %for.cond.833
  br label %if.end

if.end:                                           ; preds = %for.end.842, %for.end.801
  store i32 0, i32* %i, align 4
  br label %for.cond.843

for.cond.843:                                     ; preds = %for.inc.850, %if.end
  %55 = load i32, i32* %i, align 4
  %cmp844 = icmp slt i32 %55, 26
  br i1 %cmp844, label %for.body.845, label %for.end.852

for.body.845:                                     ; preds = %for.cond.843
  %56 = load i32, i32* %i, align 4
  %idxprom846 = sext i32 %56 to i64
  %arrayidx847 = getelementptr inbounds [27 x i8], [27 x i8]* %locamino0, i32 0, i64 %idxprom846
  %57 = load i8, i8* %arrayidx847, align 1
  %58 = load i32, i32* %i, align 4
  %idxprom848 = sext i32 %58 to i64
  %59 = load i8*, i8** %locamino.addr, align 8
  %arrayidx849 = getelementptr inbounds i8, i8* %59, i64 %idxprom848
  store i8 %57, i8* %arrayidx849, align 1
  br label %for.inc.850

for.inc.850:                                      ; preds = %for.body.845
  %60 = load i32, i32* %i, align 4
  %inc851 = add nsw i32 %60, 1
  store i32 %inc851, i32* %i, align 4
  br label %for.cond.843

for.end.852:                                      ; preds = %for.cond.843
  store i32 0, i32* %i, align 4
  br label %for.cond.853

for.cond.853:                                     ; preds = %for.inc.862, %for.end.852
  %61 = load i32, i32* %i, align 4
  %cmp854 = icmp slt i32 %61, 26
  br i1 %cmp854, label %for.body.855, label %for.end.864

for.body.855:                                     ; preds = %for.cond.853
  %62 = load i32, i32* %i, align 4
  %idxprom856 = sext i32 %62 to i64
  %arrayidx857 = getelementptr inbounds [26 x i8], [26 x i8]* %locgrp0, i32 0, i64 %idxprom856
  %63 = load i8, i8* %arrayidx857, align 1
  %64 = load i32, i32* %i, align 4
  %idxprom858 = sext i32 %64 to i64
  %65 = load i8*, i8** %locamino.addr, align 8
  %arrayidx859 = getelementptr inbounds i8, i8* %65, i64 %idxprom858
  %66 = load i8, i8* %arrayidx859, align 1
  %conv = sext i8 %66 to i32
  %idxprom860 = sext i32 %conv to i64
  %67 = load i8*, i8** %locgrp.addr, align 8
  %arrayidx861 = getelementptr inbounds i8, i8* %67, i64 %idxprom860
  store i8 %63, i8* %arrayidx861, align 1
  br label %for.inc.862

for.inc.862:                                      ; preds = %for.body.855
  %68 = load i32, i32* %i, align 4
  %inc863 = add nsw i32 %68, 1
  store i32 %inc863, i32* %i, align 4
  br label %for.cond.853

for.end.864:                                      ; preds = %for.cond.853
  store i32 0, i32* %i, align 4
  br label %for.cond.865

for.cond.865:                                     ; preds = %for.inc.884, %for.end.864
  %69 = load i32, i32* %i, align 4
  %cmp866 = icmp slt i32 %69, 20
  br i1 %cmp866, label %for.body.868, label %for.end.886

for.body.868:                                     ; preds = %for.cond.865
  store i32 0, i32* %j, align 4
  br label %for.cond.869

for.cond.869:                                     ; preds = %for.inc.881, %for.body.868
  %70 = load i32, i32* %j, align 4
  %cmp870 = icmp slt i32 %70, 20
  br i1 %cmp870, label %for.body.872, label %for.end.883

for.body.872:                                     ; preds = %for.cond.869
  %71 = load i32, i32* %j, align 4
  %idxprom873 = sext i32 %71 to i64
  %72 = load i32, i32* %i, align 4
  %idxprom874 = sext i32 %72 to i64
  %arrayidx875 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %r, i32 0, i64 %idxprom874
  %arrayidx876 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx875, i32 0, i64 %idxprom873
  %73 = load double, double* %arrayidx876, align 8
  %74 = load i32, i32* %j, align 4
  %idxprom877 = sext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %idxprom878 = sext i32 %75 to i64
  %76 = load double**, double*** %rsr.addr, align 8
  %arrayidx879 = getelementptr inbounds double*, double** %76, i64 %idxprom878
  %77 = load double*, double** %arrayidx879, align 8
  %arrayidx880 = getelementptr inbounds double, double* %77, i64 %idxprom877
  store double %73, double* %arrayidx880, align 8
  br label %for.inc.881

for.inc.881:                                      ; preds = %for.body.872
  %78 = load i32, i32* %j, align 4
  %inc882 = add nsw i32 %78, 1
  store i32 %inc882, i32* %j, align 4
  br label %for.cond.869

for.end.883:                                      ; preds = %for.cond.869
  br label %for.inc.884

for.inc.884:                                      ; preds = %for.end.883
  %79 = load i32, i32* %i, align 4
  %inc885 = add nsw i32 %79, 1
  store i32 %inc885, i32* %i, align 4
  br label %for.cond.865

for.end.886:                                      ; preds = %for.cond.865
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @BLOSUMmtx(i32 %n, double** %matrix, double* %freq, i8* %amino, i8* %amino_grp) #0 {
entry:
  %n.addr = alloca i32, align 4
  %matrix.addr = alloca double**, align 8
  %freq.addr = alloca double*, align 8
  %amino.addr = alloca i8*, align 8
  %amino_grp.addr = alloca i8*, align 8
  %locaminod = alloca [27 x i8], align 16
  %locgrpd = alloca [26 x i8], align 16
  %freqd = alloca [20 x double], align 16
  %tmpmtx30 = alloca [276 x double], align 16
  %tmpmtx45 = alloca [210 x double], align 16
  %tmpmtx50 = alloca [210 x double], align 16
  %tmpmtx62 = alloca [210 x double], align 16
  %tmpmtx80 = alloca [210 x double], align 16
  %tmpmtx0 = alloca [210 x double], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %av = alloca double, align 8
  %tmpmtx = alloca double*, align 8
  store i32 %n, i32* %n.addr, align 4
  store double** %matrix, double*** %matrix.addr, align 8
  store double* %freq, double** %freq.addr, align 8
  store i8* %amino, i8** %amino.addr, align 8
  store i8* %amino_grp, i8** %amino_grp.addr, align 8
  %0 = bitcast [27 x i8]* %locaminod to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @BLOSUMmtx.locaminod, i32 0, i32 0), i64 27, i32 16, i1 false)
  %1 = bitcast [26 x i8]* %locgrpd to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @BLOSUMmtx.locgrpd, i32 0, i32 0), i64 26, i32 16, i1 false)
  %2 = bitcast [20 x double]* %freqd to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([20 x double]* @BLOSUMmtx.freqd to i8*), i64 160, i32 16, i1 false)
  %3 = bitcast [276 x double]* %tmpmtx30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([276 x double]* @BLOSUMmtx.tmpmtx30 to i8*), i64 2208, i32 16, i1 false)
  %4 = bitcast [210 x double]* %tmpmtx45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([210 x double]* @BLOSUMmtx.tmpmtx45 to i8*), i64 1680, i32 16, i1 false)
  %5 = bitcast [210 x double]* %tmpmtx50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([210 x double]* @BLOSUMmtx.tmpmtx50 to i8*), i64 1680, i32 16, i1 false)
  %6 = bitcast [210 x double]* %tmpmtx62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([210 x double]* @BLOSUMmtx.tmpmtx62 to i8*), i64 1680, i32 16, i1 false)
  %7 = bitcast [210 x double]* %tmpmtx80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([210 x double]* @BLOSUMmtx.tmpmtx80 to i8*), i64 1680, i32 16, i1 false)
  %8 = bitcast [210 x double]* %tmpmtx0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([210 x double]* @BLOSUMmtx.tmpmtx0 to i8*), i64 1680, i32 16, i1 false)
  %9 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %9, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [276 x double], [276 x double]* %tmpmtx30, i32 0, i32 0
  store double* %arraydecay, double** %tmpmtx, align 8
  br label %if.end.30

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp eq i32 %10, 45
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %arraydecay3 = getelementptr inbounds [210 x double], [210 x double]* %tmpmtx45, i32 0, i32 0
  store double* %arraydecay3, double** %tmpmtx, align 8
  br label %if.end.29

if.else.4:                                        ; preds = %if.else
  %11 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp eq i32 %11, 50
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else.4
  %arraydecay7 = getelementptr inbounds [210 x double], [210 x double]* %tmpmtx50, i32 0, i32 0
  store double* %arraydecay7, double** %tmpmtx, align 8
  br label %if.end.28

if.else.8:                                        ; preds = %if.else.4
  %12 = load i32, i32* %n.addr, align 4
  %cmp9 = icmp eq i32 %12, 62
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else.8
  %arraydecay11 = getelementptr inbounds [210 x double], [210 x double]* %tmpmtx62, i32 0, i32 0
  store double* %arraydecay11, double** %tmpmtx, align 8
  br label %if.end.27

if.else.12:                                       ; preds = %if.else.8
  %13 = load i32, i32* %n.addr, align 4
  %cmp13 = icmp eq i32 %13, 80
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.else.12
  %arraydecay15 = getelementptr inbounds [210 x double], [210 x double]* %tmpmtx80, i32 0, i32 0
  store double* %arraydecay15, double** %tmpmtx, align 8
  br label %if.end.26

if.else.16:                                       ; preds = %if.else.12
  %14 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp eq i32 %14, 0
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.16
  %arraydecay19 = getelementptr inbounds [210 x double], [210 x double]* %tmpmtx0, i32 0, i32 0
  store double* %arraydecay19, double** %tmpmtx, align 8
  br label %if.end.25

if.else.20:                                       ; preds = %if.else.16
  %15 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp eq i32 %15, -1
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.20
  %call = call double* @loadaamtx()
  store double* %call, double** %tmpmtx, align 8
  br label %if.end

if.else.23:                                       ; preds = %if.else.20
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i32, i32* %n.addr, align 4
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %17)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %if.then.22
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.14
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.10
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.6
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.2
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %if.end.30
  %18 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %18, 20
  br i1 %cmp31, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %for.body
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %i, align 4
  %cmp33 = icmp sle i32 %19, %20
  br i1 %cmp33, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.32
  %21 = load i32, i32* %count, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %count, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load double*, double** %tmpmtx, align 8
  %arrayidx = getelementptr inbounds double, double* %22, i64 %idxprom
  %23 = load double, double* %arrayidx, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %24 to i64
  %25 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %25 to i64
  %26 = load double**, double*** %matrix.addr, align 8
  %arrayidx37 = getelementptr inbounds double*, double** %26, i64 %idxprom36
  %27 = load double*, double** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds double, double* %27, i64 %idxprom35
  store double %23, double* %arrayidx38, align 8
  %28 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %29 to i64
  %30 = load double**, double*** %matrix.addr, align 8
  %arrayidx41 = getelementptr inbounds double*, double** %30, i64 %idxprom40
  %31 = load double*, double** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds double, double* %31, i64 %idxprom39
  store double %23, double* %arrayidx42, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.34
  %32 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %32, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %33, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  %34 = load i32, i32* %n.addr, align 4
  %cmp47 = icmp eq i32 %34, -1
  br i1 %cmp47, label %land.lhs.true, label %if.else.78

land.lhs.true:                                    ; preds = %for.end.46
  %35 = load double*, double** %tmpmtx, align 8
  %arrayidx48 = getelementptr inbounds double, double* %35, i64 400
  %36 = load double, double* %arrayidx48, align 8
  %cmp49 = fcmp une double %36, -1.000000e+00
  br i1 %cmp49, label %if.then.50, label %if.else.78

if.then.50:                                       ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.58, %if.then.50
  %37 = load i32, i32* %i, align 4
  %cmp52 = icmp slt i32 %37, 20
  br i1 %cmp52, label %for.body.53, label %for.end.60

for.body.53:                                      ; preds = %for.cond.51
  %38 = load i32, i32* %i, align 4
  %add = add nsw i32 400, %38
  %idxprom54 = sext i32 %add to i64
  %39 = load double*, double** %tmpmtx, align 8
  %arrayidx55 = getelementptr inbounds double, double* %39, i64 %idxprom54
  %40 = load double, double* %arrayidx55, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %41 to i64
  %42 = load double*, double** %freq.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %42, i64 %idxprom56
  store double %40, double* %arrayidx57, align 8
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.53
  %43 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %43, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond.51

for.end.60:                                       ; preds = %for.cond.51
  store double 0.000000e+00, double* %av, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.67, %for.end.60
  %44 = load i32, i32* %i, align 4
  %cmp62 = icmp slt i32 %44, 20
  br i1 %cmp62, label %for.body.63, label %for.end.69

for.body.63:                                      ; preds = %for.cond.61
  %45 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %45 to i64
  %46 = load double*, double** %freq.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %46, i64 %idxprom64
  %47 = load double, double* %arrayidx65, align 8
  %48 = load double, double* %av, align 8
  %add66 = fadd double %48, %47
  store double %add66, double* %av, align 8
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.63
  %49 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %49, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.61

for.end.69:                                       ; preds = %for.cond.61
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.75, %for.end.69
  %50 = load i32, i32* %i, align 4
  %cmp71 = icmp slt i32 %50, 20
  br i1 %cmp71, label %for.body.72, label %for.end.77

for.body.72:                                      ; preds = %for.cond.70
  %51 = load double, double* %av, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %52 to i64
  %53 = load double*, double** %freq.addr, align 8
  %arrayidx74 = getelementptr inbounds double, double* %53, i64 %idxprom73
  %54 = load double, double* %arrayidx74, align 8
  %div = fdiv double %54, %51
  store double %div, double* %arrayidx74, align 8
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.72
  %55 = load i32, i32* %i, align 4
  %inc76 = add nsw i32 %55, 1
  store i32 %inc76, i32* %i, align 4
  br label %for.cond.70

for.end.77:                                       ; preds = %for.cond.70
  br label %if.end.89

if.else.78:                                       ; preds = %land.lhs.true, %for.end.46
  store i32 0, i32* %i, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.86, %if.else.78
  %56 = load i32, i32* %i, align 4
  %cmp80 = icmp slt i32 %56, 20
  br i1 %cmp80, label %for.body.81, label %for.end.88

for.body.81:                                      ; preds = %for.cond.79
  %57 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %57 to i64
  %arrayidx83 = getelementptr inbounds [20 x double], [20 x double]* %freqd, i32 0, i64 %idxprom82
  %58 = load double, double* %arrayidx83, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %59 to i64
  %60 = load double*, double** %freq.addr, align 8
  %arrayidx85 = getelementptr inbounds double, double* %60, i64 %idxprom84
  store double %58, double* %arrayidx85, align 8
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.81
  %61 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %61, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond.79

for.end.88:                                       ; preds = %for.cond.79
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.88, %for.end.77
  store i32 0, i32* %i, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.97, %if.end.89
  %62 = load i32, i32* %i, align 4
  %cmp91 = icmp slt i32 %62, 26
  br i1 %cmp91, label %for.body.92, label %for.end.99

for.body.92:                                      ; preds = %for.cond.90
  %63 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %63 to i64
  %arrayidx94 = getelementptr inbounds [27 x i8], [27 x i8]* %locaminod, i32 0, i64 %idxprom93
  %64 = load i8, i8* %arrayidx94, align 1
  %65 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %65 to i64
  %66 = load i8*, i8** %amino.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %66, i64 %idxprom95
  store i8 %64, i8* %arrayidx96, align 1
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.92
  %67 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %67, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond.90

for.end.99:                                       ; preds = %for.cond.90
  store i32 0, i32* %i, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.109, %for.end.99
  %68 = load i32, i32* %i, align 4
  %cmp101 = icmp slt i32 %68, 26
  br i1 %cmp101, label %for.body.102, label %for.end.111

for.body.102:                                     ; preds = %for.cond.100
  %69 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %69 to i64
  %arrayidx104 = getelementptr inbounds [26 x i8], [26 x i8]* %locgrpd, i32 0, i64 %idxprom103
  %70 = load i8, i8* %arrayidx104, align 1
  %71 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %71 to i64
  %72 = load i8*, i8** %amino.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %72, i64 %idxprom105
  %73 = load i8, i8* %arrayidx106, align 1
  %conv = sext i8 %73 to i32
  %idxprom107 = sext i32 %conv to i64
  %74 = load i8*, i8** %amino_grp.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %74, i64 %idxprom107
  store i8 %70, i8* %arrayidx108, align 1
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.102
  %75 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %75, 1
  store i32 %inc110, i32* %i, align 4
  br label %for.cond.100

for.end.111:                                      ; preds = %for.cond.100
  ret void
}

declare double* @loadaamtx() #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @constants(i32 %nseq, i8** %seq) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %seq.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %average = alloca double, align 8
  %pamx = alloca double**, align 8
  %pam1 = alloca double**, align 8
  %freq = alloca double*, align 8
  %f = alloca double, align 8
  %s = alloca double, align 8
  %v = alloca double, align 8
  %freq1177 = alloca double*, align 8
  %freq1 = alloca double*, align 8
  %datafreq = alloca double*, align 8
  %average1178 = alloca double, align 8
  %n_distmp = alloca double**, align 8
  %rsr = alloca double**, align 8
  %pam11550 = alloca double**, align 8
  %pamx1551 = alloca double**, align 8
  %freq1552 = alloca double*, align 8
  %freq11553 = alloca double*, align 8
  %mutab = alloca double*, align 8
  %datafreq1554 = alloca double*, align 8
  %average1555 = alloca double, align 8
  %tmp = alloca double, align 8
  %delta = alloca double, align 8
  %av = alloca double, align 8
  %sd = alloca double, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i8** %seq, i8*** %seq.addr, align 8
  %0 = load i32, i32* @dorp, align 4
  %cmp = icmp eq i32 %0, 100
  br i1 %cmp, label %if.then, label %if.else.1171

if.then:                                          ; preds = %entry
  %call = call double** @AllocateDoubleMtx(i32 11, i32 11)
  store double** %call, double*** %pamx, align 8
  %call1 = call double** @AllocateDoubleMtx(i32 4, i32 4)
  store double** %call1, double*** %pam1, align 8
  %call2 = call double* @AllocateDoubleVec(i32 4)
  store double* %call2, double** %freq, align 8
  store i32 -1, i32* @scoremtx, align 4
  %1 = load i32, i32* @RNAppenalty, align 4
  %cmp3 = icmp eq i32 %1, 100009
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -1530, i32* @RNAppenalty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %2 = load i32, i32* @RNAppenalty_ex, align 4
  %cmp5 = icmp eq i32 %2, 100009
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* @RNAppenalty_ex, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %3 = load i32, i32* @ppenalty, align 4
  %cmp8 = icmp eq i32 %3, 100009
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 -1530, i32* @ppenalty, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %4 = load i32, i32* @ppenalty_OP, align 4
  %cmp11 = icmp eq i32 %4, 100009
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store i32 -1530, i32* @ppenalty_OP, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %5 = load i32, i32* @ppenalty_ex, align 4
  %cmp14 = icmp eq i32 %5, 100009
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  store i32 0, i32* @ppenalty_ex, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %6 = load i32, i32* @ppenalty_EX, align 4
  %cmp17 = icmp eq i32 %6, 100009
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  store i32 0, i32* @ppenalty_EX, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  %7 = load i32, i32* @poffset, align 4
  %cmp20 = icmp eq i32 %7, 100009
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  store i32 -123, i32* @poffset, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  %8 = load i32, i32* @RNApthr, align 4
  %cmp23 = icmp eq i32 %8, 100009
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  store i32 0, i32* @RNApthr, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %9 = load i32, i32* @pamN, align 4
  %cmp26 = icmp eq i32 %9, 100009
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  store i32 200, i32* @pamN, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  %10 = load i32, i32* @kimuraR, align 4
  %cmp29 = icmp eq i32 %10, 100009
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  store i32 2, i32* @kimuraR, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  %11 = load i32, i32* @RNAppenalty, align 4
  %conv = sitofp i32 %11 to double
  %mul = fmul double 1.800000e+00, %conv
  %add = fadd double %mul, 5.000000e-01
  %conv32 = fptosi double %add to i32
  store i32 %conv32, i32* @RNApenalty, align 4
  %12 = load i32, i32* @RNAppenalty_ex, align 4
  %conv33 = sitofp i32 %12 to double
  %mul34 = fmul double 1.800000e+00, %conv33
  %add35 = fadd double %mul34, 5.000000e-01
  %conv36 = fptosi double %add35 to i32
  store i32 %conv36, i32* @RNApenalty_ex, align 4
  %13 = load i32, i32* @RNApthr, align 4
  %conv37 = sitofp i32 %13 to double
  %mul38 = fmul double 1.800000e+00, %conv37
  %add39 = fadd double %mul38, 5.000000e-01
  %conv40 = fptosi double %add39 to i32
  store i32 %conv40, i32* @RNAthr, align 4
  %14 = load i32, i32* @ppenalty, align 4
  %conv41 = sitofp i32 %14 to double
  %mul42 = fmul double 1.800000e+00, %conv41
  %add43 = fadd double %mul42, 5.000000e-01
  %conv44 = fptosi double %add43 to i32
  store i32 %conv44, i32* @penalty, align 4
  %15 = load i32, i32* @ppenalty_OP, align 4
  %conv45 = sitofp i32 %15 to double
  %mul46 = fmul double 1.800000e+00, %conv45
  %add47 = fadd double %mul46, 5.000000e-01
  %conv48 = fptosi double %add47 to i32
  store i32 %conv48, i32* @penalty_OP, align 4
  %16 = load i32, i32* @ppenalty_ex, align 4
  %conv49 = sitofp i32 %16 to double
  %mul50 = fmul double 1.800000e+00, %conv49
  %add51 = fadd double %mul50, 5.000000e-01
  %conv52 = fptosi double %add51 to i32
  store i32 %conv52, i32* @penalty_ex, align 4
  %17 = load i32, i32* @ppenalty_EX, align 4
  %conv53 = sitofp i32 %17 to double
  %mul54 = fmul double 1.800000e+00, %conv53
  %add55 = fadd double %mul54, 5.000000e-01
  %conv56 = fptosi double %add55 to i32
  store i32 %conv56, i32* @penalty_EX, align 4
  %18 = load i32, i32* @poffset, align 4
  %conv57 = sitofp i32 %18 to double
  %mul58 = fmul double 1.800000e+00, %conv57
  %add59 = fadd double %mul58, 5.000000e-01
  %conv60 = fptosi double %add59 to i32
  store i32 %conv60, i32* @offset, align 4
  store i32 0, i32* @offsetFFT, align 4
  store i32 180, i32* @offsetLN, align 4
  store i32 -3599, i32* @penaltyLN, align 4
  store i32 -179, i32* @penalty_exLN, align 4
  %19 = load i32, i32* @rnakozo, align 4
  %tobool = icmp ne i32 %19, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)
  %20 = load i32, i32* @pamN, align 4
  %21 = load i32, i32* @kimuraR, align 4
  %22 = load i32, i32* @ppenalty, align 4
  %conv61 = sitofp i32 %22 to double
  %sub = fsub double -0.000000e+00, %conv61
  %mul62 = fmul double %sub, 1.000000e-03
  %23 = load i32, i32* @ppenalty, align 4
  %conv63 = sitofp i32 %23 to double
  %sub64 = fsub double -0.000000e+00, %conv63
  %mul65 = fmul double %sub64, 3.000000e-03
  %24 = load i32, i32* @poffset, align 4
  %conv66 = sitofp i32 %24 to double
  %sub67 = fsub double -0.000000e+00, %conv66
  %mul68 = fmul double %sub67, 1.000000e-03
  %25 = load i32, i32* @poffset, align 4
  %conv69 = sitofp i32 %25 to double
  %sub70 = fsub double -0.000000e+00, %conv69
  %mul71 = fmul double %sub70, 3.000000e-03
  %call72 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @modelname, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* %cond, i32 %20, i32 %21, double %mul62, double %mul65, double %mul68, double %mul71) #1
  %26 = load i32, i32* @kimuraR, align 4
  %cmp73 = icmp eq i32 %26, 9999
  br i1 %cmp73, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %if.end.31
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.89, %if.then.75
  %27 = load i32, i32* %i, align 4
  %cmp76 = icmp slt i32 %27, 4
  br i1 %cmp76, label %for.body, label %for.end.91

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc, %for.body
  %28 = load i32, i32* %j, align 4
  %cmp79 = icmp slt i32 %28, 4
  br i1 %cmp79, label %for.body.81, label %for.end

for.body.81:                                      ; preds = %for.cond.78
  %29 = load i32, i32* %j, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @locn_disn, i32 0, i64 %idxprom82
  %arrayidx83 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx, i32 0, i64 %idxprom
  %31 = load i32, i32* %arrayidx83, align 4
  %conv84 = sitofp i32 %31 to double
  %32 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %33 to i64
  %34 = load double**, double*** %pamx, align 8
  %arrayidx87 = getelementptr inbounds double*, double** %34, i64 %idxprom86
  %35 = load double*, double** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds double, double* %35, i64 %idxprom85
  store double %conv84, double* %arrayidx88, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.81
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.78

for.end:                                          ; preds = %for.cond.78
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.end
  %37 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %37, 1
  store i32 %inc90, i32* %i, align 4
  br label %for.cond

for.end.91:                                       ; preds = %for.cond
  store double 0.000000e+00, double* %average, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.108, %for.end.91
  %38 = load i32, i32* %i, align 4
  %cmp93 = icmp slt i32 %38, 4
  br i1 %cmp93, label %for.body.95, label %for.end.110

for.body.95:                                      ; preds = %for.cond.92
  store i32 0, i32* %j, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.105, %for.body.95
  %39 = load i32, i32* %j, align 4
  %cmp97 = icmp slt i32 %39, 4
  br i1 %cmp97, label %for.body.99, label %for.end.107

for.body.99:                                      ; preds = %for.cond.96
  %40 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %40 to i64
  %41 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %41 to i64
  %42 = load double**, double*** %pamx, align 8
  %arrayidx102 = getelementptr inbounds double*, double** %42, i64 %idxprom101
  %43 = load double*, double** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds double, double* %43, i64 %idxprom100
  %44 = load double, double* %arrayidx103, align 8
  %45 = load double, double* %average, align 8
  %add104 = fadd double %45, %44
  store double %add104, double* %average, align 8
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.99
  %46 = load i32, i32* %j, align 4
  %inc106 = add nsw i32 %46, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond.96

for.end.107:                                      ; preds = %for.cond.96
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end.107
  %47 = load i32, i32* %i, align 4
  %inc109 = add nsw i32 %47, 1
  store i32 %inc109, i32* %i, align 4
  br label %for.cond.92

for.end.110:                                      ; preds = %for.cond.92
  %48 = load double, double* %average, align 8
  %div = fdiv double %48, 1.600000e+01
  store double %div, double* %average, align 8
  %49 = load i32, i32* @disp, align 4
  %tobool111 = icmp ne i32 %49, 0
  br i1 %tobool111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %for.end.110
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = load double, double* %average, align 8
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), double %51)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %for.end.110
  store i32 0, i32* %i, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.131, %if.end.114
  %52 = load i32, i32* %i, align 4
  %cmp116 = icmp slt i32 %52, 4
  br i1 %cmp116, label %for.body.118, label %for.end.133

for.body.118:                                     ; preds = %for.cond.115
  store i32 0, i32* %j, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.128, %for.body.118
  %53 = load i32, i32* %j, align 4
  %cmp120 = icmp slt i32 %53, 4
  br i1 %cmp120, label %for.body.122, label %for.end.130

for.body.122:                                     ; preds = %for.cond.119
  %54 = load double, double* %average, align 8
  %55 = load i32, i32* %j, align 4
  %idxprom123 = sext i32 %55 to i64
  %56 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %56 to i64
  %57 = load double**, double*** %pamx, align 8
  %arrayidx125 = getelementptr inbounds double*, double** %57, i64 %idxprom124
  %58 = load double*, double** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds double, double* %58, i64 %idxprom123
  %59 = load double, double* %arrayidx126, align 8
  %sub127 = fsub double %59, %54
  store double %sub127, double* %arrayidx126, align 8
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.body.122
  %60 = load i32, i32* %j, align 4
  %inc129 = add nsw i32 %60, 1
  store i32 %inc129, i32* %j, align 4
  br label %for.cond.119

for.end.130:                                      ; preds = %for.cond.119
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.130
  %61 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %61, 1
  store i32 %inc132, i32* %i, align 4
  br label %for.cond.115

for.end.133:                                      ; preds = %for.cond.115
  store i32 0, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.151, %for.end.133
  %62 = load i32, i32* %i, align 4
  %cmp135 = icmp slt i32 %62, 4
  br i1 %cmp135, label %for.body.137, label %for.end.153

for.body.137:                                     ; preds = %for.cond.134
  store i32 0, i32* %j, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.148, %for.body.137
  %63 = load i32, i32* %j, align 4
  %cmp139 = icmp slt i32 %63, 4
  br i1 %cmp139, label %for.body.141, label %for.end.150

for.body.141:                                     ; preds = %for.cond.138
  %64 = load double, double* %average, align 8
  %div142 = fdiv double 6.000000e+02, %64
  %65 = load i32, i32* %j, align 4
  %idxprom143 = sext i32 %65 to i64
  %66 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %66 to i64
  %67 = load double**, double*** %pamx, align 8
  %arrayidx145 = getelementptr inbounds double*, double** %67, i64 %idxprom144
  %68 = load double*, double** %arrayidx145, align 8
  %arrayidx146 = getelementptr inbounds double, double* %68, i64 %idxprom143
  %69 = load double, double* %arrayidx146, align 8
  %mul147 = fmul double %69, %div142
  store double %mul147, double* %arrayidx146, align 8
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.141
  %70 = load i32, i32* %j, align 4
  %inc149 = add nsw i32 %70, 1
  store i32 %inc149, i32* %j, align 4
  br label %for.cond.138

for.end.150:                                      ; preds = %for.cond.138
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.end.150
  %71 = load i32, i32* %i, align 4
  %inc152 = add nsw i32 %71, 1
  store i32 %inc152, i32* %i, align 4
  br label %for.cond.134

for.end.153:                                      ; preds = %for.cond.134
  store i32 0, i32* %i, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.171, %for.end.153
  %72 = load i32, i32* %i, align 4
  %cmp155 = icmp slt i32 %72, 4
  br i1 %cmp155, label %for.body.157, label %for.end.173

for.body.157:                                     ; preds = %for.cond.154
  store i32 0, i32* %j, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.168, %for.body.157
  %73 = load i32, i32* %j, align 4
  %cmp159 = icmp slt i32 %73, 4
  br i1 %cmp159, label %for.body.161, label %for.end.170

for.body.161:                                     ; preds = %for.cond.158
  %74 = load i32, i32* @offset, align 4
  %conv162 = sitofp i32 %74 to double
  %75 = load i32, i32* %j, align 4
  %idxprom163 = sext i32 %75 to i64
  %76 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %76 to i64
  %77 = load double**, double*** %pamx, align 8
  %arrayidx165 = getelementptr inbounds double*, double** %77, i64 %idxprom164
  %78 = load double*, double** %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds double, double* %78, i64 %idxprom163
  %79 = load double, double* %arrayidx166, align 8
  %sub167 = fsub double %79, %conv162
  store double %sub167, double* %arrayidx166, align 8
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.161
  %80 = load i32, i32* %j, align 4
  %inc169 = add nsw i32 %80, 1
  store i32 %inc169, i32* %j, align 4
  br label %for.cond.158

for.end.170:                                      ; preds = %for.cond.158
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.end.170
  %81 = load i32, i32* %i, align 4
  %inc172 = add nsw i32 %81, 1
  store i32 %inc172, i32* %i, align 4
  br label %for.cond.154

for.end.173:                                      ; preds = %for.cond.154
  br label %if.end.518

if.else:                                          ; preds = %if.end.31
  store double 9.900000e-01, double* %f, align 8
  %82 = load i32, i32* @kimuraR, align 4
  %conv174 = sitofp i32 %82 to double
  %83 = load i32, i32* @kimuraR, align 4
  %add175 = add nsw i32 2, %83
  %conv176 = sitofp i32 %add175 to double
  %div177 = fdiv double %conv174, %conv176
  %mul178 = fmul double %div177, 1.000000e-02
  store double %mul178, double* %s, align 8
  %84 = load i32, i32* @kimuraR, align 4
  %add179 = add nsw i32 2, %84
  %conv180 = sitofp i32 %add179 to double
  %div181 = fdiv double 1.000000e+00, %conv180
  %mul182 = fmul double %div181, 1.000000e-02
  store double %mul182, double* %v, align 8
  %85 = load double, double* %f, align 8
  %86 = load double**, double*** %pam1, align 8
  %arrayidx183 = getelementptr inbounds double*, double** %86, i64 0
  %87 = load double*, double** %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds double, double* %87, i64 0
  store double %85, double* %arrayidx184, align 8
  %88 = load double, double* %s, align 8
  %89 = load double**, double*** %pam1, align 8
  %arrayidx185 = getelementptr inbounds double*, double** %89, i64 0
  %90 = load double*, double** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds double, double* %90, i64 1
  store double %88, double* %arrayidx186, align 8
  %91 = load double, double* %v, align 8
  %92 = load double**, double*** %pam1, align 8
  %arrayidx187 = getelementptr inbounds double*, double** %92, i64 0
  %93 = load double*, double** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds double, double* %93, i64 2
  store double %91, double* %arrayidx188, align 8
  %94 = load double, double* %v, align 8
  %95 = load double**, double*** %pam1, align 8
  %arrayidx189 = getelementptr inbounds double*, double** %95, i64 0
  %96 = load double*, double** %arrayidx189, align 8
  %arrayidx190 = getelementptr inbounds double, double* %96, i64 3
  store double %94, double* %arrayidx190, align 8
  %97 = load double, double* %s, align 8
  %98 = load double**, double*** %pam1, align 8
  %arrayidx191 = getelementptr inbounds double*, double** %98, i64 1
  %99 = load double*, double** %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds double, double* %99, i64 0
  store double %97, double* %arrayidx192, align 8
  %100 = load double, double* %f, align 8
  %101 = load double**, double*** %pam1, align 8
  %arrayidx193 = getelementptr inbounds double*, double** %101, i64 1
  %102 = load double*, double** %arrayidx193, align 8
  %arrayidx194 = getelementptr inbounds double, double* %102, i64 1
  store double %100, double* %arrayidx194, align 8
  %103 = load double, double* %v, align 8
  %104 = load double**, double*** %pam1, align 8
  %arrayidx195 = getelementptr inbounds double*, double** %104, i64 1
  %105 = load double*, double** %arrayidx195, align 8
  %arrayidx196 = getelementptr inbounds double, double* %105, i64 2
  store double %103, double* %arrayidx196, align 8
  %106 = load double, double* %v, align 8
  %107 = load double**, double*** %pam1, align 8
  %arrayidx197 = getelementptr inbounds double*, double** %107, i64 1
  %108 = load double*, double** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds double, double* %108, i64 3
  store double %106, double* %arrayidx198, align 8
  %109 = load double, double* %v, align 8
  %110 = load double**, double*** %pam1, align 8
  %arrayidx199 = getelementptr inbounds double*, double** %110, i64 2
  %111 = load double*, double** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds double, double* %111, i64 0
  store double %109, double* %arrayidx200, align 8
  %112 = load double, double* %v, align 8
  %113 = load double**, double*** %pam1, align 8
  %arrayidx201 = getelementptr inbounds double*, double** %113, i64 2
  %114 = load double*, double** %arrayidx201, align 8
  %arrayidx202 = getelementptr inbounds double, double* %114, i64 1
  store double %112, double* %arrayidx202, align 8
  %115 = load double, double* %f, align 8
  %116 = load double**, double*** %pam1, align 8
  %arrayidx203 = getelementptr inbounds double*, double** %116, i64 2
  %117 = load double*, double** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds double, double* %117, i64 2
  store double %115, double* %arrayidx204, align 8
  %118 = load double, double* %s, align 8
  %119 = load double**, double*** %pam1, align 8
  %arrayidx205 = getelementptr inbounds double*, double** %119, i64 2
  %120 = load double*, double** %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds double, double* %120, i64 3
  store double %118, double* %arrayidx206, align 8
  %121 = load double, double* %v, align 8
  %122 = load double**, double*** %pam1, align 8
  %arrayidx207 = getelementptr inbounds double*, double** %122, i64 3
  %123 = load double*, double** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds double, double* %123, i64 0
  store double %121, double* %arrayidx208, align 8
  %124 = load double, double* %v, align 8
  %125 = load double**, double*** %pam1, align 8
  %arrayidx209 = getelementptr inbounds double*, double** %125, i64 3
  %126 = load double*, double** %arrayidx209, align 8
  %arrayidx210 = getelementptr inbounds double, double* %126, i64 1
  store double %124, double* %arrayidx210, align 8
  %127 = load double, double* %s, align 8
  %128 = load double**, double*** %pam1, align 8
  %arrayidx211 = getelementptr inbounds double*, double** %128, i64 3
  %129 = load double*, double** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds double, double* %129, i64 2
  store double %127, double* %arrayidx212, align 8
  %130 = load double, double* %f, align 8
  %131 = load double**, double*** %pam1, align 8
  %arrayidx213 = getelementptr inbounds double*, double** %131, i64 3
  %132 = load double*, double** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds double, double* %132, i64 3
  store double %130, double* %arrayidx214, align 8
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %134 = load i32, i32* @pamN, align 4
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i32 0, i32 0), i32 %134)
  %135 = load i32, i32* @disp, align 4
  %tobool216 = icmp ne i32 %135, 0
  br i1 %tobool216, label %if.then.217, label %if.end.240

if.then.217:                                      ; preds = %if.else
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.236, %if.then.217
  %137 = load i32, i32* %i, align 4
  %cmp220 = icmp slt i32 %137, 4
  br i1 %cmp220, label %for.body.222, label %for.end.238

for.body.222:                                     ; preds = %for.cond.219
  store i32 0, i32* %j, align 4
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.232, %for.body.222
  %138 = load i32, i32* %j, align 4
  %cmp224 = icmp slt i32 %138, 4
  br i1 %cmp224, label %for.body.226, label %for.end.234

for.body.226:                                     ; preds = %for.cond.223
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %140 = load i32, i32* %j, align 4
  %idxprom227 = sext i32 %140 to i64
  %141 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %141 to i64
  %142 = load double**, double*** %pam1, align 8
  %arrayidx229 = getelementptr inbounds double*, double** %142, i64 %idxprom228
  %143 = load double*, double** %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds double, double* %143, i64 %idxprom227
  %144 = load double, double* %arrayidx230, align 8
  %call231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), double %144)
  br label %for.inc.232

for.inc.232:                                      ; preds = %for.body.226
  %145 = load i32, i32* %j, align 4
  %inc233 = add nsw i32 %145, 1
  store i32 %inc233, i32* %j, align 4
  br label %for.cond.223

for.end.234:                                      ; preds = %for.cond.223
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.236

for.inc.236:                                      ; preds = %for.end.234
  %147 = load i32, i32* %i, align 4
  %inc237 = add nsw i32 %147, 1
  store i32 %inc237, i32* %i, align 4
  br label %for.cond.219

for.end.238:                                      ; preds = %for.cond.219
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.240

if.end.240:                                       ; preds = %for.end.238, %if.else
  %149 = load double**, double*** %pamx, align 8
  call void @MtxuntDouble(double** %149, i32 4)
  store i32 0, i32* %x, align 4
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.245, %if.end.240
  %150 = load i32, i32* %x, align 4
  %151 = load i32, i32* @pamN, align 4
  %cmp242 = icmp slt i32 %150, %151
  br i1 %cmp242, label %for.body.244, label %for.end.247

for.body.244:                                     ; preds = %for.cond.241
  %152 = load double**, double*** %pamx, align 8
  %153 = load double**, double*** %pam1, align 8
  call void @MtxmltDouble(double** %152, double** %153, i32 4)
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.body.244
  %154 = load i32, i32* %x, align 4
  %inc246 = add nsw i32 %154, 1
  store i32 %inc246, i32* %x, align 4
  br label %for.cond.241

for.end.247:                                      ; preds = %for.cond.241
  store i32 0, i32* %i, align 4
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.264, %for.end.247
  %155 = load i32, i32* %i, align 4
  %cmp249 = icmp slt i32 %155, 4
  br i1 %cmp249, label %for.body.251, label %for.end.266

for.body.251:                                     ; preds = %for.cond.248
  store i32 0, i32* %j, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.261, %for.body.251
  %156 = load i32, i32* %j, align 4
  %cmp253 = icmp slt i32 %156, 4
  br i1 %cmp253, label %for.body.255, label %for.end.263

for.body.255:                                     ; preds = %for.cond.252
  %157 = load i32, i32* %j, align 4
  %idxprom256 = sext i32 %157 to i64
  %158 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %158 to i64
  %159 = load double**, double*** %pamx, align 8
  %arrayidx258 = getelementptr inbounds double*, double** %159, i64 %idxprom257
  %160 = load double*, double** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds double, double* %160, i64 %idxprom256
  %161 = load double, double* %arrayidx259, align 8
  %div260 = fdiv double %161, 2.500000e-01
  store double %div260, double* %arrayidx259, align 8
  br label %for.inc.261

for.inc.261:                                      ; preds = %for.body.255
  %162 = load i32, i32* %j, align 4
  %inc262 = add nsw i32 %162, 1
  store i32 %inc262, i32* %j, align 4
  br label %for.cond.252

for.end.263:                                      ; preds = %for.cond.252
  br label %for.inc.264

for.inc.264:                                      ; preds = %for.end.263
  %163 = load i32, i32* %i, align 4
  %inc265 = add nsw i32 %163, 1
  store i32 %inc265, i32* %i, align 4
  br label %for.cond.248

for.end.266:                                      ; preds = %for.cond.248
  store i32 0, i32* %i, align 4
  br label %for.cond.267

for.cond.267:                                     ; preds = %for.inc.301, %for.end.266
  %164 = load i32, i32* %i, align 4
  %cmp268 = icmp slt i32 %164, 4
  br i1 %cmp268, label %for.body.270, label %for.end.303

for.body.270:                                     ; preds = %for.cond.267
  store i32 0, i32* %j, align 4
  br label %for.cond.271

for.cond.271:                                     ; preds = %for.inc.298, %for.body.270
  %165 = load i32, i32* %j, align 4
  %cmp272 = icmp slt i32 %165, 4
  br i1 %cmp272, label %for.body.274, label %for.end.300

for.body.274:                                     ; preds = %for.cond.271
  %166 = load i32, i32* %j, align 4
  %idxprom275 = sext i32 %166 to i64
  %167 = load i32, i32* %i, align 4
  %idxprom276 = sext i32 %167 to i64
  %168 = load double**, double*** %pamx, align 8
  %arrayidx277 = getelementptr inbounds double*, double** %168, i64 %idxprom276
  %169 = load double*, double** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds double, double* %169, i64 %idxprom275
  %170 = load double, double* %arrayidx278, align 8
  %cmp279 = fcmp oeq double %170, 0.000000e+00
  br i1 %cmp279, label %if.then.281, label %if.end.287

if.then.281:                                      ; preds = %for.body.274
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call282 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  %172 = load i32, i32* %j, align 4
  %idxprom283 = sext i32 %172 to i64
  %173 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %173 to i64
  %174 = load double**, double*** %pamx, align 8
  %arrayidx285 = getelementptr inbounds double*, double** %174, i64 %idxprom284
  %175 = load double*, double** %arrayidx285, align 8
  %arrayidx286 = getelementptr inbounds double, double* %175, i64 %idxprom283
  store double 1.000000e-05, double* %arrayidx286, align 8
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.281, %for.body.274
  %176 = load i32, i32* %j, align 4
  %idxprom288 = sext i32 %176 to i64
  %177 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %177 to i64
  %178 = load double**, double*** %pamx, align 8
  %arrayidx290 = getelementptr inbounds double*, double** %178, i64 %idxprom289
  %179 = load double*, double** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds double, double* %179, i64 %idxprom288
  %180 = load double, double* %arrayidx291, align 8
  %call292 = call double @log10(double %180) #1
  %mul293 = fmul double %call292, 1.000000e+03
  %181 = load i32, i32* %j, align 4
  %idxprom294 = sext i32 %181 to i64
  %182 = load i32, i32* %i, align 4
  %idxprom295 = sext i32 %182 to i64
  %183 = load double**, double*** %pamx, align 8
  %arrayidx296 = getelementptr inbounds double*, double** %183, i64 %idxprom295
  %184 = load double*, double** %arrayidx296, align 8
  %arrayidx297 = getelementptr inbounds double, double* %184, i64 %idxprom294
  store double %mul293, double* %arrayidx297, align 8
  br label %for.inc.298

for.inc.298:                                      ; preds = %if.end.287
  %185 = load i32, i32* %j, align 4
  %inc299 = add nsw i32 %185, 1
  store i32 %inc299, i32* %j, align 4
  br label %for.cond.271

for.end.300:                                      ; preds = %for.cond.271
  br label %for.inc.301

for.inc.301:                                      ; preds = %for.end.300
  %186 = load i32, i32* %i, align 4
  %inc302 = add nsw i32 %186, 1
  store i32 %inc302, i32* %i, align 4
  br label %for.cond.267

for.end.303:                                      ; preds = %for.cond.267
  %187 = load i32, i32* @disp, align 4
  %tobool304 = icmp ne i32 %187, 0
  br i1 %tobool304, label %if.then.305, label %if.end.328

if.then.305:                                      ; preds = %for.end.303
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc.324, %if.then.305
  %189 = load i32, i32* %i, align 4
  %cmp308 = icmp slt i32 %189, 4
  br i1 %cmp308, label %for.body.310, label %for.end.326

for.body.310:                                     ; preds = %for.cond.307
  store i32 0, i32* %j, align 4
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.320, %for.body.310
  %190 = load i32, i32* %j, align 4
  %cmp312 = icmp slt i32 %190, 4
  br i1 %cmp312, label %for.body.314, label %for.end.322

for.body.314:                                     ; preds = %for.cond.311
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %192 = load i32, i32* %j, align 4
  %idxprom315 = sext i32 %192 to i64
  %193 = load i32, i32* %i, align 4
  %idxprom316 = sext i32 %193 to i64
  %194 = load double**, double*** %pamx, align 8
  %arrayidx317 = getelementptr inbounds double*, double** %194, i64 %idxprom316
  %195 = load double*, double** %arrayidx317, align 8
  %arrayidx318 = getelementptr inbounds double, double* %195, i64 %idxprom315
  %196 = load double, double* %arrayidx318, align 8
  %call319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), double %196)
  br label %for.inc.320

for.inc.320:                                      ; preds = %for.body.314
  %197 = load i32, i32* %j, align 4
  %inc321 = add nsw i32 %197, 1
  store i32 %inc321, i32* %j, align 4
  br label %for.cond.311

for.end.322:                                      ; preds = %for.cond.311
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call323 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.324

for.inc.324:                                      ; preds = %for.end.322
  %199 = load i32, i32* %i, align 4
  %inc325 = add nsw i32 %199, 1
  store i32 %inc325, i32* %i, align 4
  br label %for.cond.307

for.end.326:                                      ; preds = %for.cond.307
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call327 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.328

if.end.328:                                       ; preds = %for.end.326, %for.end.303
  store i32 0, i32* %i, align 4
  br label %for.cond.329

for.cond.329:                                     ; preds = %for.inc.337, %if.end.328
  %201 = load i32, i32* %i, align 4
  %cmp330 = icmp slt i32 %201, 26
  br i1 %cmp330, label %for.body.332, label %for.end.339

for.body.332:                                     ; preds = %for.cond.329
  %202 = load i32, i32* %i, align 4
  %idxprom333 = sext i32 %202 to i64
  %arrayidx334 = getelementptr inbounds [27 x i8], [27 x i8]* @locaminon, i32 0, i64 %idxprom333
  %203 = load i8, i8* %arrayidx334, align 1
  %204 = load i32, i32* %i, align 4
  %idxprom335 = sext i32 %204 to i64
  %arrayidx336 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom335
  store i8 %203, i8* %arrayidx336, align 1
  br label %for.inc.337

for.inc.337:                                      ; preds = %for.body.332
  %205 = load i32, i32* %i, align 4
  %inc338 = add nsw i32 %205, 1
  store i32 %inc338, i32* %i, align 4
  br label %for.cond.329

for.end.339:                                      ; preds = %for.cond.329
  store i32 0, i32* %i, align 4
  br label %for.cond.340

for.cond.340:                                     ; preds = %for.inc.346, %for.end.339
  %206 = load i32, i32* %i, align 4
  %cmp341 = icmp slt i32 %206, 128
  br i1 %cmp341, label %for.body.343, label %for.end.348

for.body.343:                                     ; preds = %for.cond.340
  %207 = load i32, i32* %i, align 4
  %idxprom344 = sext i32 %207 to i64
  %arrayidx345 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom344
  store i32 -1, i32* %arrayidx345, align 4
  br label %for.inc.346

for.inc.346:                                      ; preds = %for.body.343
  %208 = load i32, i32* %i, align 4
  %inc347 = add nsw i32 %208, 1
  store i32 %inc347, i32* %i, align 4
  br label %for.cond.340

for.end.348:                                      ; preds = %for.cond.340
  store i32 0, i32* %i, align 4
  br label %for.cond.349

for.cond.349:                                     ; preds = %for.inc.358, %for.end.348
  %209 = load i32, i32* %i, align 4
  %cmp350 = icmp slt i32 %209, 26
  br i1 %cmp350, label %for.body.352, label %for.end.360

for.body.352:                                     ; preds = %for.cond.349
  %210 = load i32, i32* %i, align 4
  %211 = load i32, i32* %i, align 4
  %idxprom353 = sext i32 %211 to i64
  %arrayidx354 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom353
  %212 = load i8, i8* %arrayidx354, align 1
  %conv355 = sext i8 %212 to i32
  %idxprom356 = sext i32 %conv355 to i64
  %arrayidx357 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom356
  store i32 %210, i32* %arrayidx357, align 4
  br label %for.inc.358

for.inc.358:                                      ; preds = %for.body.352
  %213 = load i32, i32* %i, align 4
  %inc359 = add nsw i32 %213, 1
  store i32 %inc359, i32* %i, align 4
  br label %for.cond.349

for.end.360:                                      ; preds = %for.cond.349
  %214 = load i32, i32* @fmodel, align 4
  %cmp361 = icmp eq i32 %214, 1
  br i1 %cmp361, label %if.then.363, label %if.else.364

if.then.363:                                      ; preds = %for.end.360
  %215 = load i32, i32* %nseq.addr, align 4
  %216 = load i8**, i8*** %seq.addr, align 8
  %217 = load double*, double** %freq, align 8
  call void @calcfreq_nuc(i32 %215, i8** %216, double* %217)
  br label %if.end.369

if.else.364:                                      ; preds = %for.end.360
  %218 = load double*, double** %freq, align 8
  %arrayidx365 = getelementptr inbounds double, double* %218, i64 0
  store double 2.500000e-01, double* %arrayidx365, align 8
  %219 = load double*, double** %freq, align 8
  %arrayidx366 = getelementptr inbounds double, double* %219, i64 1
  store double 2.500000e-01, double* %arrayidx366, align 8
  %220 = load double*, double** %freq, align 8
  %arrayidx367 = getelementptr inbounds double, double* %220, i64 2
  store double 2.500000e-01, double* %arrayidx367, align 8
  %221 = load double*, double** %freq, align 8
  %arrayidx368 = getelementptr inbounds double, double* %221, i64 3
  store double 2.500000e-01, double* %arrayidx368, align 8
  br label %if.end.369

if.end.369:                                       ; preds = %if.else.364, %if.then.363
  store double 0.000000e+00, double* %average, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.370

for.cond.370:                                     ; preds = %for.inc.392, %if.end.369
  %222 = load i32, i32* %i, align 4
  %cmp371 = icmp slt i32 %222, 4
  br i1 %cmp371, label %for.body.373, label %for.end.394

for.body.373:                                     ; preds = %for.cond.370
  store i32 0, i32* %j, align 4
  br label %for.cond.374

for.cond.374:                                     ; preds = %for.inc.389, %for.body.373
  %223 = load i32, i32* %j, align 4
  %cmp375 = icmp slt i32 %223, 4
  br i1 %cmp375, label %for.body.377, label %for.end.391

for.body.377:                                     ; preds = %for.cond.374
  %224 = load i32, i32* %j, align 4
  %idxprom378 = sext i32 %224 to i64
  %225 = load i32, i32* %i, align 4
  %idxprom379 = sext i32 %225 to i64
  %226 = load double**, double*** %pamx, align 8
  %arrayidx380 = getelementptr inbounds double*, double** %226, i64 %idxprom379
  %227 = load double*, double** %arrayidx380, align 8
  %arrayidx381 = getelementptr inbounds double, double* %227, i64 %idxprom378
  %228 = load double, double* %arrayidx381, align 8
  %229 = load i32, i32* %i, align 4
  %idxprom382 = sext i32 %229 to i64
  %230 = load double*, double** %freq, align 8
  %arrayidx383 = getelementptr inbounds double, double* %230, i64 %idxprom382
  %231 = load double, double* %arrayidx383, align 8
  %mul384 = fmul double %228, %231
  %232 = load i32, i32* %j, align 4
  %idxprom385 = sext i32 %232 to i64
  %233 = load double*, double** %freq, align 8
  %arrayidx386 = getelementptr inbounds double, double* %233, i64 %idxprom385
  %234 = load double, double* %arrayidx386, align 8
  %mul387 = fmul double %mul384, %234
  %235 = load double, double* %average, align 8
  %add388 = fadd double %235, %mul387
  store double %add388, double* %average, align 8
  br label %for.inc.389

for.inc.389:                                      ; preds = %for.body.377
  %236 = load i32, i32* %j, align 4
  %inc390 = add nsw i32 %236, 1
  store i32 %inc390, i32* %j, align 4
  br label %for.cond.374

for.end.391:                                      ; preds = %for.cond.374
  br label %for.inc.392

for.inc.392:                                      ; preds = %for.end.391
  %237 = load i32, i32* %i, align 4
  %inc393 = add nsw i32 %237, 1
  store i32 %inc393, i32* %i, align 4
  br label %for.cond.370

for.end.394:                                      ; preds = %for.cond.370
  store i32 0, i32* %i, align 4
  br label %for.cond.395

for.cond.395:                                     ; preds = %for.inc.411, %for.end.394
  %238 = load i32, i32* %i, align 4
  %cmp396 = icmp slt i32 %238, 4
  br i1 %cmp396, label %for.body.398, label %for.end.413

for.body.398:                                     ; preds = %for.cond.395
  store i32 0, i32* %j, align 4
  br label %for.cond.399

for.cond.399:                                     ; preds = %for.inc.408, %for.body.398
  %239 = load i32, i32* %j, align 4
  %cmp400 = icmp slt i32 %239, 4
  br i1 %cmp400, label %for.body.402, label %for.end.410

for.body.402:                                     ; preds = %for.cond.399
  %240 = load double, double* %average, align 8
  %241 = load i32, i32* %j, align 4
  %idxprom403 = sext i32 %241 to i64
  %242 = load i32, i32* %i, align 4
  %idxprom404 = sext i32 %242 to i64
  %243 = load double**, double*** %pamx, align 8
  %arrayidx405 = getelementptr inbounds double*, double** %243, i64 %idxprom404
  %244 = load double*, double** %arrayidx405, align 8
  %arrayidx406 = getelementptr inbounds double, double* %244, i64 %idxprom403
  %245 = load double, double* %arrayidx406, align 8
  %sub407 = fsub double %245, %240
  store double %sub407, double* %arrayidx406, align 8
  br label %for.inc.408

for.inc.408:                                      ; preds = %for.body.402
  %246 = load i32, i32* %j, align 4
  %inc409 = add nsw i32 %246, 1
  store i32 %inc409, i32* %j, align 4
  br label %for.cond.399

for.end.410:                                      ; preds = %for.cond.399
  br label %for.inc.411

for.inc.411:                                      ; preds = %for.end.410
  %247 = load i32, i32* %i, align 4
  %inc412 = add nsw i32 %247, 1
  store i32 %inc412, i32* %i, align 4
  br label %for.cond.395

for.end.413:                                      ; preds = %for.cond.395
  store double 0.000000e+00, double* %average, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.414

for.cond.414:                                     ; preds = %for.inc.425, %for.end.413
  %248 = load i32, i32* %i, align 4
  %cmp415 = icmp slt i32 %248, 4
  br i1 %cmp415, label %for.body.417, label %for.end.427

for.body.417:                                     ; preds = %for.cond.414
  %249 = load i32, i32* %i, align 4
  %idxprom418 = sext i32 %249 to i64
  %250 = load i32, i32* %i, align 4
  %idxprom419 = sext i32 %250 to i64
  %251 = load double**, double*** %pamx, align 8
  %arrayidx420 = getelementptr inbounds double*, double** %251, i64 %idxprom419
  %252 = load double*, double** %arrayidx420, align 8
  %arrayidx421 = getelementptr inbounds double, double* %252, i64 %idxprom418
  %253 = load double, double* %arrayidx421, align 8
  %mul422 = fmul double %253, 1.000000e+00
  %div423 = fdiv double %mul422, 4.000000e+00
  %254 = load double, double* %average, align 8
  %add424 = fadd double %254, %div423
  store double %add424, double* %average, align 8
  br label %for.inc.425

for.inc.425:                                      ; preds = %for.body.417
  %255 = load i32, i32* %i, align 4
  %inc426 = add nsw i32 %255, 1
  store i32 %inc426, i32* %i, align 4
  br label %for.cond.414

for.end.427:                                      ; preds = %for.cond.414
  store i32 0, i32* %i, align 4
  br label %for.cond.428

for.cond.428:                                     ; preds = %for.inc.445, %for.end.427
  %256 = load i32, i32* %i, align 4
  %cmp429 = icmp slt i32 %256, 4
  br i1 %cmp429, label %for.body.431, label %for.end.447

for.body.431:                                     ; preds = %for.cond.428
  store i32 0, i32* %j, align 4
  br label %for.cond.432

for.cond.432:                                     ; preds = %for.inc.442, %for.body.431
  %257 = load i32, i32* %j, align 4
  %cmp433 = icmp slt i32 %257, 4
  br i1 %cmp433, label %for.body.435, label %for.end.444

for.body.435:                                     ; preds = %for.cond.432
  %258 = load double, double* %average, align 8
  %div436 = fdiv double 6.000000e+02, %258
  %259 = load i32, i32* %j, align 4
  %idxprom437 = sext i32 %259 to i64
  %260 = load i32, i32* %i, align 4
  %idxprom438 = sext i32 %260 to i64
  %261 = load double**, double*** %pamx, align 8
  %arrayidx439 = getelementptr inbounds double*, double** %261, i64 %idxprom438
  %262 = load double*, double** %arrayidx439, align 8
  %arrayidx440 = getelementptr inbounds double, double* %262, i64 %idxprom437
  %263 = load double, double* %arrayidx440, align 8
  %mul441 = fmul double %263, %div436
  store double %mul441, double* %arrayidx440, align 8
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.body.435
  %264 = load i32, i32* %j, align 4
  %inc443 = add nsw i32 %264, 1
  store i32 %inc443, i32* %j, align 4
  br label %for.cond.432

for.end.444:                                      ; preds = %for.cond.432
  br label %for.inc.445

for.inc.445:                                      ; preds = %for.end.444
  %265 = load i32, i32* %i, align 4
  %inc446 = add nsw i32 %265, 1
  store i32 %inc446, i32* %i, align 4
  br label %for.cond.428

for.end.447:                                      ; preds = %for.cond.428
  store i32 0, i32* %i, align 4
  br label %for.cond.448

for.cond.448:                                     ; preds = %for.inc.465, %for.end.447
  %266 = load i32, i32* %i, align 4
  %cmp449 = icmp slt i32 %266, 4
  br i1 %cmp449, label %for.body.451, label %for.end.467

for.body.451:                                     ; preds = %for.cond.448
  store i32 0, i32* %j, align 4
  br label %for.cond.452

for.cond.452:                                     ; preds = %for.inc.462, %for.body.451
  %267 = load i32, i32* %j, align 4
  %cmp453 = icmp slt i32 %267, 4
  br i1 %cmp453, label %for.body.455, label %for.end.464

for.body.455:                                     ; preds = %for.cond.452
  %268 = load i32, i32* @offset, align 4
  %conv456 = sitofp i32 %268 to double
  %269 = load i32, i32* %j, align 4
  %idxprom457 = sext i32 %269 to i64
  %270 = load i32, i32* %i, align 4
  %idxprom458 = sext i32 %270 to i64
  %271 = load double**, double*** %pamx, align 8
  %arrayidx459 = getelementptr inbounds double*, double** %271, i64 %idxprom458
  %272 = load double*, double** %arrayidx459, align 8
  %arrayidx460 = getelementptr inbounds double, double* %272, i64 %idxprom457
  %273 = load double, double* %arrayidx460, align 8
  %sub461 = fsub double %273, %conv456
  store double %sub461, double* %arrayidx460, align 8
  br label %for.inc.462

for.inc.462:                                      ; preds = %for.body.455
  %274 = load i32, i32* %j, align 4
  %inc463 = add nsw i32 %274, 1
  store i32 %inc463, i32* %j, align 4
  br label %for.cond.452

for.end.464:                                      ; preds = %for.cond.452
  br label %for.inc.465

for.inc.465:                                      ; preds = %for.end.464
  %275 = load i32, i32* %i, align 4
  %inc466 = add nsw i32 %275, 1
  store i32 %inc466, i32* %i, align 4
  br label %for.cond.448

for.end.467:                                      ; preds = %for.cond.448
  store i32 0, i32* %i, align 4
  br label %for.cond.468

for.cond.468:                                     ; preds = %for.inc.489, %for.end.467
  %276 = load i32, i32* %i, align 4
  %cmp469 = icmp slt i32 %276, 4
  br i1 %cmp469, label %for.body.471, label %for.end.491

for.body.471:                                     ; preds = %for.cond.468
  store i32 0, i32* %j, align 4
  br label %for.cond.472

for.cond.472:                                     ; preds = %for.inc.486, %for.body.471
  %277 = load i32, i32* %j, align 4
  %cmp473 = icmp slt i32 %277, 4
  br i1 %cmp473, label %for.body.475, label %for.end.488

for.body.475:                                     ; preds = %for.cond.472
  %278 = load i32, i32* %j, align 4
  %idxprom476 = sext i32 %278 to i64
  %279 = load i32, i32* %i, align 4
  %idxprom477 = sext i32 %279 to i64
  %280 = load double**, double*** %pamx, align 8
  %arrayidx478 = getelementptr inbounds double*, double** %280, i64 %idxprom477
  %281 = load double*, double** %arrayidx478, align 8
  %arrayidx479 = getelementptr inbounds double, double* %281, i64 %idxprom476
  %282 = load double, double* %arrayidx479, align 8
  %call480 = call i32 @shishagonyuu(double %282)
  %conv481 = sitofp i32 %call480 to double
  %283 = load i32, i32* %j, align 4
  %idxprom482 = sext i32 %283 to i64
  %284 = load i32, i32* %i, align 4
  %idxprom483 = sext i32 %284 to i64
  %285 = load double**, double*** %pamx, align 8
  %arrayidx484 = getelementptr inbounds double*, double** %285, i64 %idxprom483
  %286 = load double*, double** %arrayidx484, align 8
  %arrayidx485 = getelementptr inbounds double, double* %286, i64 %idxprom482
  store double %conv481, double* %arrayidx485, align 8
  br label %for.inc.486

for.inc.486:                                      ; preds = %for.body.475
  %287 = load i32, i32* %j, align 4
  %inc487 = add nsw i32 %287, 1
  store i32 %inc487, i32* %j, align 4
  br label %for.cond.472

for.end.488:                                      ; preds = %for.cond.472
  br label %for.inc.489

for.inc.489:                                      ; preds = %for.end.488
  %288 = load i32, i32* %i, align 4
  %inc490 = add nsw i32 %288, 1
  store i32 %inc490, i32* %i, align 4
  br label %for.cond.468

for.end.491:                                      ; preds = %for.cond.468
  %289 = load i32, i32* @disp, align 4
  %tobool492 = icmp ne i32 %289, 0
  br i1 %tobool492, label %if.then.493, label %if.end.516

if.then.493:                                      ; preds = %for.end.491
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call494 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %290, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.495

for.cond.495:                                     ; preds = %for.inc.512, %if.then.493
  %291 = load i32, i32* %i, align 4
  %cmp496 = icmp slt i32 %291, 4
  br i1 %cmp496, label %for.body.498, label %for.end.514

for.body.498:                                     ; preds = %for.cond.495
  store i32 0, i32* %j, align 4
  br label %for.cond.499

for.cond.499:                                     ; preds = %for.inc.508, %for.body.498
  %292 = load i32, i32* %j, align 4
  %cmp500 = icmp slt i32 %292, 4
  br i1 %cmp500, label %for.body.502, label %for.end.510

for.body.502:                                     ; preds = %for.cond.499
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %294 = load i32, i32* %j, align 4
  %idxprom503 = sext i32 %294 to i64
  %295 = load i32, i32* %i, align 4
  %idxprom504 = sext i32 %295 to i64
  %296 = load double**, double*** %pamx, align 8
  %arrayidx505 = getelementptr inbounds double*, double** %296, i64 %idxprom504
  %297 = load double*, double** %arrayidx505, align 8
  %arrayidx506 = getelementptr inbounds double, double* %297, i64 %idxprom503
  %298 = load double, double* %arrayidx506, align 8
  %call507 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %293, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), double %298)
  br label %for.inc.508

for.inc.508:                                      ; preds = %for.body.502
  %299 = load i32, i32* %j, align 4
  %inc509 = add nsw i32 %299, 1
  store i32 %inc509, i32* %j, align 4
  br label %for.cond.499

for.end.510:                                      ; preds = %for.cond.499
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call511 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %300, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.512

for.inc.512:                                      ; preds = %for.end.510
  %301 = load i32, i32* %i, align 4
  %inc513 = add nsw i32 %301, 1
  store i32 %inc513, i32* %i, align 4
  br label %for.cond.495

for.end.514:                                      ; preds = %for.cond.495
  %302 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call515 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.516

if.end.516:                                       ; preds = %for.end.514, %for.end.491
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call517 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.518

if.end.518:                                       ; preds = %if.end.516, %for.end.173
  store i32 0, i32* %i, align 4
  br label %for.cond.519

for.cond.519:                                     ; preds = %for.inc.535, %if.end.518
  %304 = load i32, i32* %i, align 4
  %cmp520 = icmp slt i32 %304, 5
  br i1 %cmp520, label %for.body.522, label %for.end.537

for.body.522:                                     ; preds = %for.cond.519
  %305 = load i32, i32* %i, align 4
  %idxprom523 = sext i32 %305 to i64
  %306 = load double**, double*** %pamx, align 8
  %arrayidx524 = getelementptr inbounds double*, double** %306, i64 3
  %307 = load double*, double** %arrayidx524, align 8
  %arrayidx525 = getelementptr inbounds double, double* %307, i64 %idxprom523
  %308 = load double, double* %arrayidx525, align 8
  %309 = load i32, i32* %i, align 4
  %idxprom526 = sext i32 %309 to i64
  %310 = load double**, double*** %pamx, align 8
  %arrayidx527 = getelementptr inbounds double*, double** %310, i64 4
  %311 = load double*, double** %arrayidx527, align 8
  %arrayidx528 = getelementptr inbounds double, double* %311, i64 %idxprom526
  store double %308, double* %arrayidx528, align 8
  %312 = load i32, i32* %i, align 4
  %idxprom529 = sext i32 %312 to i64
  %313 = load double**, double*** %pamx, align 8
  %arrayidx530 = getelementptr inbounds double*, double** %313, i64 %idxprom529
  %314 = load double*, double** %arrayidx530, align 8
  %arrayidx531 = getelementptr inbounds double, double* %314, i64 3
  %315 = load double, double* %arrayidx531, align 8
  %316 = load i32, i32* %i, align 4
  %idxprom532 = sext i32 %316 to i64
  %317 = load double**, double*** %pamx, align 8
  %arrayidx533 = getelementptr inbounds double*, double** %317, i64 %idxprom532
  %318 = load double*, double** %arrayidx533, align 8
  %arrayidx534 = getelementptr inbounds double, double* %318, i64 4
  store double %315, double* %arrayidx534, align 8
  br label %for.inc.535

for.inc.535:                                      ; preds = %for.body.522
  %319 = load i32, i32* %i, align 4
  %inc536 = add nsw i32 %319, 1
  store i32 %inc536, i32* %i, align 4
  br label %for.cond.519

for.end.537:                                      ; preds = %for.cond.519
  store i32 5, i32* %i, align 4
  br label %for.cond.538

for.cond.538:                                     ; preds = %for.inc.559, %for.end.537
  %320 = load i32, i32* %i, align 4
  %cmp539 = icmp slt i32 %320, 10
  br i1 %cmp539, label %for.body.541, label %for.end.561

for.body.541:                                     ; preds = %for.cond.538
  store i32 5, i32* %j, align 4
  br label %for.cond.542

for.cond.542:                                     ; preds = %for.inc.556, %for.body.541
  %321 = load i32, i32* %j, align 4
  %cmp543 = icmp slt i32 %321, 10
  br i1 %cmp543, label %for.body.545, label %for.end.558

for.body.545:                                     ; preds = %for.cond.542
  %322 = load i32, i32* %j, align 4
  %sub546 = sub nsw i32 %322, 5
  %idxprom547 = sext i32 %sub546 to i64
  %323 = load i32, i32* %i, align 4
  %sub548 = sub nsw i32 %323, 5
  %idxprom549 = sext i32 %sub548 to i64
  %324 = load double**, double*** %pamx, align 8
  %arrayidx550 = getelementptr inbounds double*, double** %324, i64 %idxprom549
  %325 = load double*, double** %arrayidx550, align 8
  %arrayidx551 = getelementptr inbounds double, double* %325, i64 %idxprom547
  %326 = load double, double* %arrayidx551, align 8
  %327 = load i32, i32* %j, align 4
  %idxprom552 = sext i32 %327 to i64
  %328 = load i32, i32* %i, align 4
  %idxprom553 = sext i32 %328 to i64
  %329 = load double**, double*** %pamx, align 8
  %arrayidx554 = getelementptr inbounds double*, double** %329, i64 %idxprom553
  %330 = load double*, double** %arrayidx554, align 8
  %arrayidx555 = getelementptr inbounds double, double* %330, i64 %idxprom552
  store double %326, double* %arrayidx555, align 8
  br label %for.inc.556

for.inc.556:                                      ; preds = %for.body.545
  %331 = load i32, i32* %j, align 4
  %inc557 = add nsw i32 %331, 1
  store i32 %inc557, i32* %j, align 4
  br label %for.cond.542

for.end.558:                                      ; preds = %for.cond.542
  br label %for.inc.559

for.inc.559:                                      ; preds = %for.end.558
  %332 = load i32, i32* %i, align 4
  %inc560 = add nsw i32 %332, 1
  store i32 %inc560, i32* %i, align 4
  br label %for.cond.538

for.end.561:                                      ; preds = %for.cond.538
  %333 = load i32, i32* @disp, align 4
  %tobool562 = icmp ne i32 %333, 0
  br i1 %tobool562, label %if.then.563, label %if.end.586

if.then.563:                                      ; preds = %for.end.561
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call564 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %334, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.565

for.cond.565:                                     ; preds = %for.inc.582, %if.then.563
  %335 = load i32, i32* %i, align 4
  %cmp566 = icmp slt i32 %335, 4
  br i1 %cmp566, label %for.body.568, label %for.end.584

for.body.568:                                     ; preds = %for.cond.565
  store i32 0, i32* %j, align 4
  br label %for.cond.569

for.cond.569:                                     ; preds = %for.inc.578, %for.body.568
  %336 = load i32, i32* %j, align 4
  %cmp570 = icmp slt i32 %336, 4
  br i1 %cmp570, label %for.body.572, label %for.end.580

for.body.572:                                     ; preds = %for.cond.569
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %338 = load i32, i32* %j, align 4
  %idxprom573 = sext i32 %338 to i64
  %339 = load i32, i32* %i, align 4
  %idxprom574 = sext i32 %339 to i64
  %340 = load double**, double*** %pamx, align 8
  %arrayidx575 = getelementptr inbounds double*, double** %340, i64 %idxprom574
  %341 = load double*, double** %arrayidx575, align 8
  %arrayidx576 = getelementptr inbounds double, double* %341, i64 %idxprom573
  %342 = load double, double* %arrayidx576, align 8
  %call577 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %337, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), double %342)
  br label %for.inc.578

for.inc.578:                                      ; preds = %for.body.572
  %343 = load i32, i32* %j, align 4
  %inc579 = add nsw i32 %343, 1
  store i32 %inc579, i32* %j, align 4
  br label %for.cond.569

for.end.580:                                      ; preds = %for.cond.569
  %344 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call581 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %344, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.582

for.inc.582:                                      ; preds = %for.end.580
  %345 = load i32, i32* %i, align 4
  %inc583 = add nsw i32 %345, 1
  store i32 %inc583, i32* %i, align 4
  br label %for.cond.565

for.end.584:                                      ; preds = %for.cond.565
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call585 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %346, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.586

if.end.586:                                       ; preds = %for.end.584, %for.end.561
  %347 = load i32, i32* @disp, align 4
  %tobool587 = icmp ne i32 %347, 0
  br i1 %tobool587, label %if.then.588, label %if.end.611

if.then.588:                                      ; preds = %if.end.586
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call589 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %348, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.590

for.cond.590:                                     ; preds = %for.inc.607, %if.then.588
  %349 = load i32, i32* %i, align 4
  %cmp591 = icmp slt i32 %349, 4
  br i1 %cmp591, label %for.body.593, label %for.end.609

for.body.593:                                     ; preds = %for.cond.590
  store i32 0, i32* %j, align 4
  br label %for.cond.594

for.cond.594:                                     ; preds = %for.inc.603, %for.body.593
  %350 = load i32, i32* %j, align 4
  %cmp595 = icmp slt i32 %350, 4
  br i1 %cmp595, label %for.body.597, label %for.end.605

for.body.597:                                     ; preds = %for.cond.594
  %351 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %352 = load i32, i32* %j, align 4
  %idxprom598 = sext i32 %352 to i64
  %353 = load i32, i32* %i, align 4
  %idxprom599 = sext i32 %353 to i64
  %354 = load double**, double*** %pamx, align 8
  %arrayidx600 = getelementptr inbounds double*, double** %354, i64 %idxprom599
  %355 = load double*, double** %arrayidx600, align 8
  %arrayidx601 = getelementptr inbounds double, double* %355, i64 %idxprom598
  %356 = load double, double* %arrayidx601, align 8
  %call602 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), double %356)
  br label %for.inc.603

for.inc.603:                                      ; preds = %for.body.597
  %357 = load i32, i32* %j, align 4
  %inc604 = add nsw i32 %357, 1
  store i32 %inc604, i32* %j, align 4
  br label %for.cond.594

for.end.605:                                      ; preds = %for.cond.594
  %358 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call606 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %358, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.607

for.inc.607:                                      ; preds = %for.end.605
  %359 = load i32, i32* %i, align 4
  %inc608 = add nsw i32 %359, 1
  store i32 %inc608, i32* %i, align 4
  br label %for.cond.590

for.end.609:                                      ; preds = %for.cond.590
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call610 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %360, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.611

if.end.611:                                       ; preds = %for.end.609, %if.end.586
  store i32 0, i32* %i, align 4
  br label %for.cond.612

for.cond.612:                                     ; preds = %for.inc.620, %if.end.611
  %361 = load i32, i32* %i, align 4
  %cmp613 = icmp slt i32 %361, 26
  br i1 %cmp613, label %for.body.615, label %for.end.622

for.body.615:                                     ; preds = %for.cond.612
  %362 = load i32, i32* %i, align 4
  %idxprom616 = sext i32 %362 to i64
  %arrayidx617 = getelementptr inbounds [27 x i8], [27 x i8]* @locaminon, i32 0, i64 %idxprom616
  %363 = load i8, i8* %arrayidx617, align 1
  %364 = load i32, i32* %i, align 4
  %idxprom618 = sext i32 %364 to i64
  %arrayidx619 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom618
  store i8 %363, i8* %arrayidx619, align 1
  br label %for.inc.620

for.inc.620:                                      ; preds = %for.body.615
  %365 = load i32, i32* %i, align 4
  %inc621 = add nsw i32 %365, 1
  store i32 %inc621, i32* %i, align 4
  br label %for.cond.612

for.end.622:                                      ; preds = %for.cond.612
  store i32 0, i32* %i, align 4
  br label %for.cond.623

for.cond.623:                                     ; preds = %for.inc.634, %for.end.622
  %366 = load i32, i32* %i, align 4
  %cmp624 = icmp slt i32 %366, 26
  br i1 %cmp624, label %for.body.626, label %for.end.636

for.body.626:                                     ; preds = %for.cond.623
  %367 = load i32, i32* %i, align 4
  %idxprom627 = sext i32 %367 to i64
  %arrayidx628 = getelementptr inbounds [26 x i8], [26 x i8]* @locgrpn, i32 0, i64 %idxprom627
  %368 = load i8, i8* %arrayidx628, align 1
  %369 = load i32, i32* %i, align 4
  %idxprom629 = sext i32 %369 to i64
  %arrayidx630 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom629
  %370 = load i8, i8* %arrayidx630, align 1
  %conv631 = sext i8 %370 to i32
  %idxprom632 = sext i32 %conv631 to i64
  %arrayidx633 = getelementptr inbounds [128 x i8], [128 x i8]* @amino_grp, i32 0, i64 %idxprom632
  store i8 %368, i8* %arrayidx633, align 1
  br label %for.inc.634

for.inc.634:                                      ; preds = %for.body.626
  %371 = load i32, i32* %i, align 4
  %inc635 = add nsw i32 %371, 1
  store i32 %inc635, i32* %i, align 4
  br label %for.cond.623

for.end.636:                                      ; preds = %for.cond.623
  store i32 0, i32* %i, align 4
  br label %for.cond.637

for.cond.637:                                     ; preds = %for.inc.652, %for.end.636
  %372 = load i32, i32* %i, align 4
  %cmp638 = icmp slt i32 %372, 26
  br i1 %cmp638, label %for.body.640, label %for.end.654

for.body.640:                                     ; preds = %for.cond.637
  store i32 0, i32* %j, align 4
  br label %for.cond.641

for.cond.641:                                     ; preds = %for.inc.649, %for.body.640
  %373 = load i32, i32* %j, align 4
  %cmp642 = icmp slt i32 %373, 26
  br i1 %cmp642, label %for.body.644, label %for.end.651

for.body.644:                                     ; preds = %for.cond.641
  %374 = load i32, i32* %j, align 4
  %idxprom645 = sext i32 %374 to i64
  %375 = load i32, i32* %i, align 4
  %idxprom646 = sext i32 %375 to i64
  %arrayidx647 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom646
  %arrayidx648 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx647, i32 0, i64 %idxprom645
  store i32 0, i32* %arrayidx648, align 4
  br label %for.inc.649

for.inc.649:                                      ; preds = %for.body.644
  %376 = load i32, i32* %j, align 4
  %inc650 = add nsw i32 %376, 1
  store i32 %inc650, i32* %j, align 4
  br label %for.cond.641

for.end.651:                                      ; preds = %for.cond.641
  br label %for.inc.652

for.inc.652:                                      ; preds = %for.end.651
  %377 = load i32, i32* %i, align 4
  %inc653 = add nsw i32 %377, 1
  store i32 %inc653, i32* %i, align 4
  br label %for.cond.637

for.end.654:                                      ; preds = %for.cond.637
  store i32 0, i32* %i, align 4
  br label %for.cond.655

for.cond.655:                                     ; preds = %for.inc.675, %for.end.654
  %378 = load i32, i32* %i, align 4
  %cmp656 = icmp slt i32 %378, 10
  br i1 %cmp656, label %for.body.658, label %for.end.677

for.body.658:                                     ; preds = %for.cond.655
  store i32 0, i32* %j, align 4
  br label %for.cond.659

for.cond.659:                                     ; preds = %for.inc.672, %for.body.658
  %379 = load i32, i32* %j, align 4
  %cmp660 = icmp slt i32 %379, 10
  br i1 %cmp660, label %for.body.662, label %for.end.674

for.body.662:                                     ; preds = %for.cond.659
  %380 = load i32, i32* %j, align 4
  %idxprom663 = sext i32 %380 to i64
  %381 = load i32, i32* %i, align 4
  %idxprom664 = sext i32 %381 to i64
  %382 = load double**, double*** %pamx, align 8
  %arrayidx665 = getelementptr inbounds double*, double** %382, i64 %idxprom664
  %383 = load double*, double** %arrayidx665, align 8
  %arrayidx666 = getelementptr inbounds double, double* %383, i64 %idxprom663
  %384 = load double, double* %arrayidx666, align 8
  %call667 = call i32 @shishagonyuu(double %384)
  %385 = load i32, i32* %j, align 4
  %idxprom668 = sext i32 %385 to i64
  %386 = load i32, i32* %i, align 4
  %idxprom669 = sext i32 %386 to i64
  %arrayidx670 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom669
  %arrayidx671 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx670, i32 0, i64 %idxprom668
  store i32 %call667, i32* %arrayidx671, align 4
  br label %for.inc.672

for.inc.672:                                      ; preds = %for.body.662
  %387 = load i32, i32* %j, align 4
  %inc673 = add nsw i32 %387, 1
  store i32 %inc673, i32* %j, align 4
  br label %for.cond.659

for.end.674:                                      ; preds = %for.cond.659
  br label %for.inc.675

for.inc.675:                                      ; preds = %for.end.674
  %388 = load i32, i32* %i, align 4
  %inc676 = add nsw i32 %388, 1
  store i32 %inc676, i32* %i, align 4
  br label %for.cond.655

for.end.677:                                      ; preds = %for.cond.655
  %389 = load i32, i32* @disp, align 4
  %tobool678 = icmp ne i32 %389, 0
  br i1 %tobool678, label %if.then.679, label %if.end.702

if.then.679:                                      ; preds = %for.end.677
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call680 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %390, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.681

for.cond.681:                                     ; preds = %for.inc.698, %if.then.679
  %391 = load i32, i32* %i, align 4
  %cmp682 = icmp slt i32 %391, 26
  br i1 %cmp682, label %for.body.684, label %for.end.700

for.body.684:                                     ; preds = %for.cond.681
  store i32 0, i32* %j, align 4
  br label %for.cond.685

for.cond.685:                                     ; preds = %for.inc.694, %for.body.684
  %392 = load i32, i32* %j, align 4
  %cmp686 = icmp slt i32 %392, 26
  br i1 %cmp686, label %for.body.688, label %for.end.696

for.body.688:                                     ; preds = %for.cond.685
  %393 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %394 = load i32, i32* %j, align 4
  %idxprom689 = sext i32 %394 to i64
  %395 = load i32, i32* %i, align 4
  %idxprom690 = sext i32 %395 to i64
  %arrayidx691 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom690
  %arrayidx692 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx691, i32 0, i64 %idxprom689
  %396 = load i32, i32* %arrayidx692, align 4
  %call693 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %393, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %396)
  br label %for.inc.694

for.inc.694:                                      ; preds = %for.body.688
  %397 = load i32, i32* %j, align 4
  %inc695 = add nsw i32 %397, 1
  store i32 %inc695, i32* %j, align 4
  br label %for.cond.685

for.end.696:                                      ; preds = %for.cond.685
  %398 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call697 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %398, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.698

for.inc.698:                                      ; preds = %for.end.696
  %399 = load i32, i32* %i, align 4
  %inc699 = add nsw i32 %399, 1
  store i32 %inc699, i32* %i, align 4
  br label %for.cond.681

for.end.700:                                      ; preds = %for.cond.681
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call701 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %400, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.702

if.end.702:                                       ; preds = %for.end.700, %for.end.677
  store double 0.000000e+00, double* %average, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.703

for.cond.703:                                     ; preds = %for.inc.725, %if.end.702
  %401 = load i32, i32* %i, align 4
  %cmp704 = icmp slt i32 %401, 4
  br i1 %cmp704, label %for.body.706, label %for.end.727

for.body.706:                                     ; preds = %for.cond.703
  store i32 0, i32* %j, align 4
  br label %for.cond.707

for.cond.707:                                     ; preds = %for.inc.722, %for.body.706
  %402 = load i32, i32* %j, align 4
  %cmp708 = icmp slt i32 %402, 4
  br i1 %cmp708, label %for.body.710, label %for.end.724

for.body.710:                                     ; preds = %for.cond.707
  %403 = load i32, i32* %j, align 4
  %idxprom711 = sext i32 %403 to i64
  %404 = load i32, i32* %i, align 4
  %idxprom712 = sext i32 %404 to i64
  %arrayidx713 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @ribosum4, i32 0, i64 %idxprom712
  %arrayidx714 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx713, i32 0, i64 %idxprom711
  %405 = load double, double* %arrayidx714, align 8
  %406 = load i32, i32* %i, align 4
  %idxprom715 = sext i32 %406 to i64
  %407 = load double*, double** %freq, align 8
  %arrayidx716 = getelementptr inbounds double, double* %407, i64 %idxprom715
  %408 = load double, double* %arrayidx716, align 8
  %mul717 = fmul double %405, %408
  %409 = load i32, i32* %j, align 4
  %idxprom718 = sext i32 %409 to i64
  %410 = load double*, double** %freq, align 8
  %arrayidx719 = getelementptr inbounds double, double* %410, i64 %idxprom718
  %411 = load double, double* %arrayidx719, align 8
  %mul720 = fmul double %mul717, %411
  %412 = load double, double* %average, align 8
  %add721 = fadd double %412, %mul720
  store double %add721, double* %average, align 8
  br label %for.inc.722

for.inc.722:                                      ; preds = %for.body.710
  %413 = load i32, i32* %j, align 4
  %inc723 = add nsw i32 %413, 1
  store i32 %inc723, i32* %j, align 4
  br label %for.cond.707

for.end.724:                                      ; preds = %for.cond.707
  br label %for.inc.725

for.inc.725:                                      ; preds = %for.end.724
  %414 = load i32, i32* %i, align 4
  %inc726 = add nsw i32 %414, 1
  store i32 %inc726, i32* %i, align 4
  br label %for.cond.703

for.end.727:                                      ; preds = %for.cond.703
  store i32 0, i32* %i, align 4
  br label %for.cond.728

for.cond.728:                                     ; preds = %for.inc.744, %for.end.727
  %415 = load i32, i32* %i, align 4
  %cmp729 = icmp slt i32 %415, 4
  br i1 %cmp729, label %for.body.731, label %for.end.746

for.body.731:                                     ; preds = %for.cond.728
  store i32 0, i32* %j, align 4
  br label %for.cond.732

for.cond.732:                                     ; preds = %for.inc.741, %for.body.731
  %416 = load i32, i32* %j, align 4
  %cmp733 = icmp slt i32 %416, 4
  br i1 %cmp733, label %for.body.735, label %for.end.743

for.body.735:                                     ; preds = %for.cond.732
  %417 = load double, double* %average, align 8
  %418 = load i32, i32* %j, align 4
  %idxprom736 = sext i32 %418 to i64
  %419 = load i32, i32* %i, align 4
  %idxprom737 = sext i32 %419 to i64
  %arrayidx738 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @ribosum4, i32 0, i64 %idxprom737
  %arrayidx739 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx738, i32 0, i64 %idxprom736
  %420 = load double, double* %arrayidx739, align 8
  %sub740 = fsub double %420, %417
  store double %sub740, double* %arrayidx739, align 8
  br label %for.inc.741

for.inc.741:                                      ; preds = %for.body.735
  %421 = load i32, i32* %j, align 4
  %inc742 = add nsw i32 %421, 1
  store i32 %inc742, i32* %j, align 4
  br label %for.cond.732

for.end.743:                                      ; preds = %for.cond.732
  br label %for.inc.744

for.inc.744:                                      ; preds = %for.end.743
  %422 = load i32, i32* %i, align 4
  %inc745 = add nsw i32 %422, 1
  store i32 %inc745, i32* %i, align 4
  br label %for.cond.728

for.end.746:                                      ; preds = %for.cond.728
  store double 0.000000e+00, double* %average, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.747

for.cond.747:                                     ; preds = %for.inc.793, %for.end.746
  %423 = load i32, i32* %i, align 4
  %cmp748 = icmp slt i32 %423, 4
  br i1 %cmp748, label %for.body.750, label %for.end.795

for.body.750:                                     ; preds = %for.cond.747
  store i32 0, i32* %j, align 4
  br label %for.cond.751

for.cond.751:                                     ; preds = %for.inc.790, %for.body.750
  %424 = load i32, i32* %j, align 4
  %cmp752 = icmp slt i32 %424, 4
  br i1 %cmp752, label %for.body.754, label %for.end.792

for.body.754:                                     ; preds = %for.cond.751
  store i32 0, i32* %k, align 4
  br label %for.cond.755

for.cond.755:                                     ; preds = %for.inc.787, %for.body.754
  %425 = load i32, i32* %k, align 4
  %cmp756 = icmp slt i32 %425, 4
  br i1 %cmp756, label %for.body.758, label %for.end.789

for.body.758:                                     ; preds = %for.cond.755
  store i32 0, i32* %m, align 4
  br label %for.cond.759

for.cond.759:                                     ; preds = %for.inc.784, %for.body.758
  %426 = load i32, i32* %m, align 4
  %cmp760 = icmp slt i32 %426, 4
  br i1 %cmp760, label %for.body.762, label %for.end.786

for.body.762:                                     ; preds = %for.cond.759
  %427 = load i32, i32* %k, align 4
  %mul763 = mul nsw i32 %427, 4
  %428 = load i32, i32* %m, align 4
  %add764 = add nsw i32 %mul763, %428
  %idxprom765 = sext i32 %add764 to i64
  %429 = load i32, i32* %i, align 4
  %mul766 = mul nsw i32 %429, 4
  %430 = load i32, i32* %j, align 4
  %add767 = add nsw i32 %mul766, %430
  %idxprom768 = sext i32 %add767 to i64
  %arrayidx769 = getelementptr inbounds [16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 %idxprom768
  %arrayidx770 = getelementptr inbounds [16 x double], [16 x double]* %arrayidx769, i32 0, i64 %idxprom765
  %431 = load double, double* %arrayidx770, align 8
  %432 = load i32, i32* %i, align 4
  %idxprom771 = sext i32 %432 to i64
  %433 = load double*, double** %freq, align 8
  %arrayidx772 = getelementptr inbounds double, double* %433, i64 %idxprom771
  %434 = load double, double* %arrayidx772, align 8
  %mul773 = fmul double %431, %434
  %435 = load i32, i32* %j, align 4
  %idxprom774 = sext i32 %435 to i64
  %436 = load double*, double** %freq, align 8
  %arrayidx775 = getelementptr inbounds double, double* %436, i64 %idxprom774
  %437 = load double, double* %arrayidx775, align 8
  %mul776 = fmul double %mul773, %437
  %438 = load i32, i32* %k, align 4
  %idxprom777 = sext i32 %438 to i64
  %439 = load double*, double** %freq, align 8
  %arrayidx778 = getelementptr inbounds double, double* %439, i64 %idxprom777
  %440 = load double, double* %arrayidx778, align 8
  %mul779 = fmul double %mul776, %440
  %441 = load i32, i32* %m, align 4
  %idxprom780 = sext i32 %441 to i64
  %442 = load double*, double** %freq, align 8
  %arrayidx781 = getelementptr inbounds double, double* %442, i64 %idxprom780
  %443 = load double, double* %arrayidx781, align 8
  %mul782 = fmul double %mul779, %443
  %444 = load double, double* %average, align 8
  %add783 = fadd double %444, %mul782
  store double %add783, double* %average, align 8
  br label %for.inc.784

for.inc.784:                                      ; preds = %for.body.762
  %445 = load i32, i32* %m, align 4
  %inc785 = add nsw i32 %445, 1
  store i32 %inc785, i32* %m, align 4
  br label %for.cond.759

for.end.786:                                      ; preds = %for.cond.759
  br label %for.inc.787

for.inc.787:                                      ; preds = %for.end.786
  %446 = load i32, i32* %k, align 4
  %inc788 = add nsw i32 %446, 1
  store i32 %inc788, i32* %k, align 4
  br label %for.cond.755

for.end.789:                                      ; preds = %for.cond.755
  br label %for.inc.790

for.inc.790:                                      ; preds = %for.end.789
  %447 = load i32, i32* %j, align 4
  %inc791 = add nsw i32 %447, 1
  store i32 %inc791, i32* %j, align 4
  br label %for.cond.751

for.end.792:                                      ; preds = %for.cond.751
  br label %for.inc.793

for.inc.793:                                      ; preds = %for.end.792
  %448 = load i32, i32* %i, align 4
  %inc794 = add nsw i32 %448, 1
  store i32 %inc794, i32* %i, align 4
  br label %for.cond.747

for.end.795:                                      ; preds = %for.cond.747
  store i32 0, i32* %i, align 4
  br label %for.cond.796

for.cond.796:                                     ; preds = %for.inc.812, %for.end.795
  %449 = load i32, i32* %i, align 4
  %cmp797 = icmp slt i32 %449, 16
  br i1 %cmp797, label %for.body.799, label %for.end.814

for.body.799:                                     ; preds = %for.cond.796
  store i32 0, i32* %j, align 4
  br label %for.cond.800

for.cond.800:                                     ; preds = %for.inc.809, %for.body.799
  %450 = load i32, i32* %j, align 4
  %cmp801 = icmp slt i32 %450, 16
  br i1 %cmp801, label %for.body.803, label %for.end.811

for.body.803:                                     ; preds = %for.cond.800
  %451 = load double, double* %average, align 8
  %452 = load i32, i32* %j, align 4
  %idxprom804 = sext i32 %452 to i64
  %453 = load i32, i32* %i, align 4
  %idxprom805 = sext i32 %453 to i64
  %arrayidx806 = getelementptr inbounds [16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 %idxprom805
  %arrayidx807 = getelementptr inbounds [16 x double], [16 x double]* %arrayidx806, i32 0, i64 %idxprom804
  %454 = load double, double* %arrayidx807, align 8
  %sub808 = fsub double %454, %451
  store double %sub808, double* %arrayidx807, align 8
  br label %for.inc.809

for.inc.809:                                      ; preds = %for.body.803
  %455 = load i32, i32* %j, align 4
  %inc810 = add nsw i32 %455, 1
  store i32 %inc810, i32* %j, align 4
  br label %for.cond.800

for.end.811:                                      ; preds = %for.cond.800
  br label %for.inc.812

for.inc.812:                                      ; preds = %for.end.811
  %456 = load i32, i32* %i, align 4
  %inc813 = add nsw i32 %456, 1
  store i32 %inc813, i32* %i, align 4
  br label %for.cond.796

for.end.814:                                      ; preds = %for.cond.796
  store double 0.000000e+00, double* %average, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.815

for.cond.815:                                     ; preds = %for.inc.827, %for.end.814
  %457 = load i32, i32* %i, align 4
  %cmp816 = icmp slt i32 %457, 4
  br i1 %cmp816, label %for.body.818, label %for.end.829

for.body.818:                                     ; preds = %for.cond.815
  %458 = load i32, i32* %i, align 4
  %idxprom819 = sext i32 %458 to i64
  %459 = load i32, i32* %i, align 4
  %idxprom820 = sext i32 %459 to i64
  %arrayidx821 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @ribosum4, i32 0, i64 %idxprom820
  %arrayidx822 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx821, i32 0, i64 %idxprom819
  %460 = load double, double* %arrayidx822, align 8
  %461 = load i32, i32* %i, align 4
  %idxprom823 = sext i32 %461 to i64
  %462 = load double*, double** %freq, align 8
  %arrayidx824 = getelementptr inbounds double, double* %462, i64 %idxprom823
  %463 = load double, double* %arrayidx824, align 8
  %mul825 = fmul double %460, %463
  %464 = load double, double* %average, align 8
  %add826 = fadd double %464, %mul825
  store double %add826, double* %average, align 8
  br label %for.inc.827

for.inc.827:                                      ; preds = %for.body.818
  %465 = load i32, i32* %i, align 4
  %inc828 = add nsw i32 %465, 1
  store i32 %inc828, i32* %i, align 4
  br label %for.cond.815

for.end.829:                                      ; preds = %for.cond.815
  store i32 0, i32* %i, align 4
  br label %for.cond.830

for.cond.830:                                     ; preds = %for.inc.847, %for.end.829
  %466 = load i32, i32* %i, align 4
  %cmp831 = icmp slt i32 %466, 4
  br i1 %cmp831, label %for.body.833, label %for.end.849

for.body.833:                                     ; preds = %for.cond.830
  store i32 0, i32* %j, align 4
  br label %for.cond.834

for.cond.834:                                     ; preds = %for.inc.844, %for.body.833
  %467 = load i32, i32* %j, align 4
  %cmp835 = icmp slt i32 %467, 4
  br i1 %cmp835, label %for.body.837, label %for.end.846

for.body.837:                                     ; preds = %for.cond.834
  %468 = load double, double* %average, align 8
  %div838 = fdiv double 6.000000e+02, %468
  %469 = load i32, i32* %j, align 4
  %idxprom839 = sext i32 %469 to i64
  %470 = load i32, i32* %i, align 4
  %idxprom840 = sext i32 %470 to i64
  %arrayidx841 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @ribosum4, i32 0, i64 %idxprom840
  %arrayidx842 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx841, i32 0, i64 %idxprom839
  %471 = load double, double* %arrayidx842, align 8
  %mul843 = fmul double %471, %div838
  store double %mul843, double* %arrayidx842, align 8
  br label %for.inc.844

for.inc.844:                                      ; preds = %for.body.837
  %472 = load i32, i32* %j, align 4
  %inc845 = add nsw i32 %472, 1
  store i32 %inc845, i32* %j, align 4
  br label %for.cond.834

for.end.846:                                      ; preds = %for.cond.834
  br label %for.inc.847

for.inc.847:                                      ; preds = %for.end.846
  %473 = load i32, i32* %i, align 4
  %inc848 = add nsw i32 %473, 1
  store i32 %inc848, i32* %i, align 4
  br label %for.cond.830

for.end.849:                                      ; preds = %for.cond.830
  store double 0.000000e+00, double* %average, align 8
  %474 = load double, double* getelementptr inbounds ([16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 3, i64 3), align 8
  %475 = load double*, double** %freq, align 8
  %arrayidx850 = getelementptr inbounds double, double* %475, i64 0
  %476 = load double, double* %arrayidx850, align 8
  %mul851 = fmul double %474, %476
  %477 = load double*, double** %freq, align 8
  %arrayidx852 = getelementptr inbounds double, double* %477, i64 3
  %478 = load double, double* %arrayidx852, align 8
  %mul853 = fmul double %mul851, %478
  %479 = load double, double* %average, align 8
  %add854 = fadd double %479, %mul853
  store double %add854, double* %average, align 8
  %480 = load double, double* getelementptr inbounds ([16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 12, i64 12), align 8
  %481 = load double*, double** %freq, align 8
  %arrayidx855 = getelementptr inbounds double, double* %481, i64 3
  %482 = load double, double* %arrayidx855, align 8
  %mul856 = fmul double %480, %482
  %483 = load double*, double** %freq, align 8
  %arrayidx857 = getelementptr inbounds double, double* %483, i64 0
  %484 = load double, double* %arrayidx857, align 8
  %mul858 = fmul double %mul856, %484
  %485 = load double, double* %average, align 8
  %add859 = fadd double %485, %mul858
  store double %add859, double* %average, align 8
  %486 = load double, double* getelementptr inbounds ([16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 6, i64 6), align 8
  %487 = load double*, double** %freq, align 8
  %arrayidx860 = getelementptr inbounds double, double* %487, i64 1
  %488 = load double, double* %arrayidx860, align 8
  %mul861 = fmul double %486, %488
  %489 = load double*, double** %freq, align 8
  %arrayidx862 = getelementptr inbounds double, double* %489, i64 2
  %490 = load double, double* %arrayidx862, align 8
  %mul863 = fmul double %mul861, %490
  %491 = load double, double* %average, align 8
  %add864 = fadd double %491, %mul863
  store double %add864, double* %average, align 8
  %492 = load double, double* getelementptr inbounds ([16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 9, i64 9), align 8
  %493 = load double*, double** %freq, align 8
  %arrayidx865 = getelementptr inbounds double, double* %493, i64 2
  %494 = load double, double* %arrayidx865, align 8
  %mul866 = fmul double %492, %494
  %495 = load double*, double** %freq, align 8
  %arrayidx867 = getelementptr inbounds double, double* %495, i64 1
  %496 = load double, double* %arrayidx867, align 8
  %mul868 = fmul double %mul866, %496
  %497 = load double, double* %average, align 8
  %add869 = fadd double %497, %mul868
  store double %add869, double* %average, align 8
  %498 = load double, double* getelementptr inbounds ([16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 7, i64 7), align 8
  %499 = load double*, double** %freq, align 8
  %arrayidx870 = getelementptr inbounds double, double* %499, i64 1
  %500 = load double, double* %arrayidx870, align 8
  %mul871 = fmul double %498, %500
  %501 = load double*, double** %freq, align 8
  %arrayidx872 = getelementptr inbounds double, double* %501, i64 3
  %502 = load double, double* %arrayidx872, align 8
  %mul873 = fmul double %mul871, %502
  %503 = load double, double* %average, align 8
  %add874 = fadd double %503, %mul873
  store double %add874, double* %average, align 8
  %504 = load double, double* getelementptr inbounds ([16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 13, i64 13), align 8
  %505 = load double*, double** %freq, align 8
  %arrayidx875 = getelementptr inbounds double, double* %505, i64 3
  %506 = load double, double* %arrayidx875, align 8
  %mul876 = fmul double %504, %506
  %507 = load double*, double** %freq, align 8
  %arrayidx877 = getelementptr inbounds double, double* %507, i64 1
  %508 = load double, double* %arrayidx877, align 8
  %mul878 = fmul double %mul876, %508
  %509 = load double, double* %average, align 8
  %add879 = fadd double %509, %mul878
  store double %add879, double* %average, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.880

for.cond.880:                                     ; preds = %for.inc.897, %for.end.849
  %510 = load i32, i32* %i, align 4
  %cmp881 = icmp slt i32 %510, 16
  br i1 %cmp881, label %for.body.883, label %for.end.899

for.body.883:                                     ; preds = %for.cond.880
  store i32 0, i32* %j, align 4
  br label %for.cond.884

for.cond.884:                                     ; preds = %for.inc.894, %for.body.883
  %511 = load i32, i32* %j, align 4
  %cmp885 = icmp slt i32 %511, 16
  br i1 %cmp885, label %for.body.887, label %for.end.896

for.body.887:                                     ; preds = %for.cond.884
  %512 = load double, double* %average, align 8
  %div888 = fdiv double 6.000000e+02, %512
  %513 = load i32, i32* %j, align 4
  %idxprom889 = sext i32 %513 to i64
  %514 = load i32, i32* %i, align 4
  %idxprom890 = sext i32 %514 to i64
  %arrayidx891 = getelementptr inbounds [16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 %idxprom890
  %arrayidx892 = getelementptr inbounds [16 x double], [16 x double]* %arrayidx891, i32 0, i64 %idxprom889
  %515 = load double, double* %arrayidx892, align 8
  %mul893 = fmul double %515, %div888
  store double %mul893, double* %arrayidx892, align 8
  br label %for.inc.894

for.inc.894:                                      ; preds = %for.body.887
  %516 = load i32, i32* %j, align 4
  %inc895 = add nsw i32 %516, 1
  store i32 %inc895, i32* %j, align 4
  br label %for.cond.884

for.end.896:                                      ; preds = %for.cond.884
  br label %for.inc.897

for.inc.897:                                      ; preds = %for.end.896
  %517 = load i32, i32* %i, align 4
  %inc898 = add nsw i32 %517, 1
  store i32 %inc898, i32* %i, align 4
  br label %for.cond.880

for.end.899:                                      ; preds = %for.cond.880
  store i32 0, i32* %i, align 4
  br label %for.cond.900

for.cond.900:                                     ; preds = %for.inc.917, %for.end.899
  %518 = load i32, i32* %i, align 4
  %cmp901 = icmp slt i32 %518, 4
  br i1 %cmp901, label %for.body.903, label %for.end.919

for.body.903:                                     ; preds = %for.cond.900
  store i32 0, i32* %j, align 4
  br label %for.cond.904

for.cond.904:                                     ; preds = %for.inc.914, %for.body.903
  %519 = load i32, i32* %j, align 4
  %cmp905 = icmp slt i32 %519, 4
  br i1 %cmp905, label %for.body.907, label %for.end.916

for.body.907:                                     ; preds = %for.cond.904
  %520 = load i32, i32* @offset, align 4
  %conv908 = sitofp i32 %520 to double
  %521 = load i32, i32* %j, align 4
  %idxprom909 = sext i32 %521 to i64
  %522 = load i32, i32* %i, align 4
  %idxprom910 = sext i32 %522 to i64
  %arrayidx911 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @ribosum4, i32 0, i64 %idxprom910
  %arrayidx912 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx911, i32 0, i64 %idxprom909
  %523 = load double, double* %arrayidx912, align 8
  %sub913 = fsub double %523, %conv908
  store double %sub913, double* %arrayidx912, align 8
  br label %for.inc.914

for.inc.914:                                      ; preds = %for.body.907
  %524 = load i32, i32* %j, align 4
  %inc915 = add nsw i32 %524, 1
  store i32 %inc915, i32* %j, align 4
  br label %for.cond.904

for.end.916:                                      ; preds = %for.cond.904
  br label %for.inc.917

for.inc.917:                                      ; preds = %for.end.916
  %525 = load i32, i32* %i, align 4
  %inc918 = add nsw i32 %525, 1
  store i32 %inc918, i32* %i, align 4
  br label %for.cond.900

for.end.919:                                      ; preds = %for.cond.900
  store i32 0, i32* %i, align 4
  br label %for.cond.920

for.cond.920:                                     ; preds = %for.inc.937, %for.end.919
  %526 = load i32, i32* %i, align 4
  %cmp921 = icmp slt i32 %526, 16
  br i1 %cmp921, label %for.body.923, label %for.end.939

for.body.923:                                     ; preds = %for.cond.920
  store i32 0, i32* %j, align 4
  br label %for.cond.924

for.cond.924:                                     ; preds = %for.inc.934, %for.body.923
  %527 = load i32, i32* %j, align 4
  %cmp925 = icmp slt i32 %527, 16
  br i1 %cmp925, label %for.body.927, label %for.end.936

for.body.927:                                     ; preds = %for.cond.924
  %528 = load i32, i32* @offset, align 4
  %conv928 = sitofp i32 %528 to double
  %529 = load i32, i32* %j, align 4
  %idxprom929 = sext i32 %529 to i64
  %530 = load i32, i32* %i, align 4
  %idxprom930 = sext i32 %530 to i64
  %arrayidx931 = getelementptr inbounds [16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 %idxprom930
  %arrayidx932 = getelementptr inbounds [16 x double], [16 x double]* %arrayidx931, i32 0, i64 %idxprom929
  %531 = load double, double* %arrayidx932, align 8
  %sub933 = fsub double %531, %conv928
  store double %sub933, double* %arrayidx932, align 8
  br label %for.inc.934

for.inc.934:                                      ; preds = %for.body.927
  %532 = load i32, i32* %j, align 4
  %inc935 = add nsw i32 %532, 1
  store i32 %inc935, i32* %j, align 4
  br label %for.cond.924

for.end.936:                                      ; preds = %for.cond.924
  br label %for.inc.937

for.inc.937:                                      ; preds = %for.end.936
  %533 = load i32, i32* %i, align 4
  %inc938 = add nsw i32 %533, 1
  store i32 %inc938, i32* %i, align 4
  br label %for.cond.920

for.end.939:                                      ; preds = %for.cond.920
  store i32 0, i32* %i, align 4
  br label %for.cond.940

for.cond.940:                                     ; preds = %for.inc.961, %for.end.939
  %534 = load i32, i32* %i, align 4
  %cmp941 = icmp slt i32 %534, 4
  br i1 %cmp941, label %for.body.943, label %for.end.963

for.body.943:                                     ; preds = %for.cond.940
  store i32 0, i32* %j, align 4
  br label %for.cond.944

for.cond.944:                                     ; preds = %for.inc.958, %for.body.943
  %535 = load i32, i32* %j, align 4
  %cmp945 = icmp slt i32 %535, 4
  br i1 %cmp945, label %for.body.947, label %for.end.960

for.body.947:                                     ; preds = %for.cond.944
  %536 = load i32, i32* %j, align 4
  %idxprom948 = sext i32 %536 to i64
  %537 = load i32, i32* %i, align 4
  %idxprom949 = sext i32 %537 to i64
  %arrayidx950 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @ribosum4, i32 0, i64 %idxprom949
  %arrayidx951 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx950, i32 0, i64 %idxprom948
  %538 = load double, double* %arrayidx951, align 8
  %call952 = call i32 @shishagonyuu(double %538)
  %conv953 = sitofp i32 %call952 to double
  %539 = load i32, i32* %j, align 4
  %idxprom954 = sext i32 %539 to i64
  %540 = load i32, i32* %i, align 4
  %idxprom955 = sext i32 %540 to i64
  %arrayidx956 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @ribosum4, i32 0, i64 %idxprom955
  %arrayidx957 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx956, i32 0, i64 %idxprom954
  store double %conv953, double* %arrayidx957, align 8
  br label %for.inc.958

for.inc.958:                                      ; preds = %for.body.947
  %541 = load i32, i32* %j, align 4
  %inc959 = add nsw i32 %541, 1
  store i32 %inc959, i32* %j, align 4
  br label %for.cond.944

for.end.960:                                      ; preds = %for.cond.944
  br label %for.inc.961

for.inc.961:                                      ; preds = %for.end.960
  %542 = load i32, i32* %i, align 4
  %inc962 = add nsw i32 %542, 1
  store i32 %inc962, i32* %i, align 4
  br label %for.cond.940

for.end.963:                                      ; preds = %for.cond.940
  store i32 0, i32* %i, align 4
  br label %for.cond.964

for.cond.964:                                     ; preds = %for.inc.985, %for.end.963
  %543 = load i32, i32* %i, align 4
  %cmp965 = icmp slt i32 %543, 16
  br i1 %cmp965, label %for.body.967, label %for.end.987

for.body.967:                                     ; preds = %for.cond.964
  store i32 0, i32* %j, align 4
  br label %for.cond.968

for.cond.968:                                     ; preds = %for.inc.982, %for.body.967
  %544 = load i32, i32* %j, align 4
  %cmp969 = icmp slt i32 %544, 16
  br i1 %cmp969, label %for.body.971, label %for.end.984

for.body.971:                                     ; preds = %for.cond.968
  %545 = load i32, i32* %j, align 4
  %idxprom972 = sext i32 %545 to i64
  %546 = load i32, i32* %i, align 4
  %idxprom973 = sext i32 %546 to i64
  %arrayidx974 = getelementptr inbounds [16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 %idxprom973
  %arrayidx975 = getelementptr inbounds [16 x double], [16 x double]* %arrayidx974, i32 0, i64 %idxprom972
  %547 = load double, double* %arrayidx975, align 8
  %call976 = call i32 @shishagonyuu(double %547)
  %conv977 = sitofp i32 %call976 to double
  %548 = load i32, i32* %j, align 4
  %idxprom978 = sext i32 %548 to i64
  %549 = load i32, i32* %i, align 4
  %idxprom979 = sext i32 %549 to i64
  %arrayidx980 = getelementptr inbounds [16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 %idxprom979
  %arrayidx981 = getelementptr inbounds [16 x double], [16 x double]* %arrayidx980, i32 0, i64 %idxprom978
  store double %conv977, double* %arrayidx981, align 8
  br label %for.inc.982

for.inc.982:                                      ; preds = %for.body.971
  %550 = load i32, i32* %j, align 4
  %inc983 = add nsw i32 %550, 1
  store i32 %inc983, i32* %j, align 4
  br label %for.cond.968

for.end.984:                                      ; preds = %for.cond.968
  br label %for.inc.985

for.inc.985:                                      ; preds = %for.end.984
  %551 = load i32, i32* %i, align 4
  %inc986 = add nsw i32 %551, 1
  store i32 %inc986, i32* %i, align 4
  br label %for.cond.964

for.end.987:                                      ; preds = %for.cond.964
  %552 = load i32, i32* @disp, align 4
  %tobool988 = icmp ne i32 %552, 0
  br i1 %tobool988, label %if.then.989, label %if.end.1034

if.then.989:                                      ; preds = %for.end.987
  %553 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call990 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %553, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.991

for.cond.991:                                     ; preds = %for.inc.1008, %if.then.989
  %554 = load i32, i32* %i, align 4
  %cmp992 = icmp slt i32 %554, 4
  br i1 %cmp992, label %for.body.994, label %for.end.1010

for.body.994:                                     ; preds = %for.cond.991
  store i32 0, i32* %j, align 4
  br label %for.cond.995

for.cond.995:                                     ; preds = %for.inc.1004, %for.body.994
  %555 = load i32, i32* %j, align 4
  %cmp996 = icmp slt i32 %555, 4
  br i1 %cmp996, label %for.body.998, label %for.end.1006

for.body.998:                                     ; preds = %for.cond.995
  %556 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %557 = load i32, i32* %j, align 4
  %idxprom999 = sext i32 %557 to i64
  %558 = load i32, i32* %i, align 4
  %idxprom1000 = sext i32 %558 to i64
  %arrayidx1001 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @ribosum4, i32 0, i64 %idxprom1000
  %arrayidx1002 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx1001, i32 0, i64 %idxprom999
  %559 = load double, double* %arrayidx1002, align 8
  %call1003 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %556, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), double %559)
  br label %for.inc.1004

for.inc.1004:                                     ; preds = %for.body.998
  %560 = load i32, i32* %j, align 4
  %inc1005 = add nsw i32 %560, 1
  store i32 %inc1005, i32* %j, align 4
  br label %for.cond.995

for.end.1006:                                     ; preds = %for.cond.995
  %561 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1007 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %561, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.1008

for.inc.1008:                                     ; preds = %for.end.1006
  %562 = load i32, i32* %i, align 4
  %inc1009 = add nsw i32 %562, 1
  store i32 %inc1009, i32* %i, align 4
  br label %for.cond.991

for.end.1010:                                     ; preds = %for.cond.991
  %563 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1011 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %563, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %564 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1012 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %564, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.1013

for.cond.1013:                                    ; preds = %for.inc.1030, %for.end.1010
  %565 = load i32, i32* %i, align 4
  %cmp1014 = icmp slt i32 %565, 16
  br i1 %cmp1014, label %for.body.1016, label %for.end.1032

for.body.1016:                                    ; preds = %for.cond.1013
  store i32 0, i32* %j, align 4
  br label %for.cond.1017

for.cond.1017:                                    ; preds = %for.inc.1026, %for.body.1016
  %566 = load i32, i32* %j, align 4
  %cmp1018 = icmp slt i32 %566, 16
  br i1 %cmp1018, label %for.body.1020, label %for.end.1028

for.body.1020:                                    ; preds = %for.cond.1017
  %567 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %568 = load i32, i32* %j, align 4
  %idxprom1021 = sext i32 %568 to i64
  %569 = load i32, i32* %i, align 4
  %idxprom1022 = sext i32 %569 to i64
  %arrayidx1023 = getelementptr inbounds [16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 %idxprom1022
  %arrayidx1024 = getelementptr inbounds [16 x double], [16 x double]* %arrayidx1023, i32 0, i64 %idxprom1021
  %570 = load double, double* %arrayidx1024, align 8
  %call1025 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %567, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), double %570)
  br label %for.inc.1026

for.inc.1026:                                     ; preds = %for.body.1020
  %571 = load i32, i32* %j, align 4
  %inc1027 = add nsw i32 %571, 1
  store i32 %inc1027, i32* %j, align 4
  br label %for.cond.1017

for.end.1028:                                     ; preds = %for.cond.1017
  %572 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1029 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %572, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.1030

for.inc.1030:                                     ; preds = %for.end.1028
  %573 = load i32, i32* %i, align 4
  %inc1031 = add nsw i32 %573, 1
  store i32 %inc1031, i32* %i, align 4
  br label %for.cond.1013

for.end.1032:                                     ; preds = %for.cond.1013
  %574 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1033 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %574, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.1034

if.end.1034:                                      ; preds = %for.end.1032, %for.end.987
  %575 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1035 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %575, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.1036

for.cond.1036:                                    ; preds = %for.inc.1051, %if.end.1034
  %576 = load i32, i32* %i, align 4
  %cmp1037 = icmp slt i32 %576, 37
  br i1 %cmp1037, label %for.body.1039, label %for.end.1053

for.body.1039:                                    ; preds = %for.cond.1036
  store i32 0, i32* %j, align 4
  br label %for.cond.1040

for.cond.1040:                                    ; preds = %for.inc.1048, %for.body.1039
  %577 = load i32, i32* %j, align 4
  %cmp1041 = icmp slt i32 %577, 37
  br i1 %cmp1041, label %for.body.1043, label %for.end.1050

for.body.1043:                                    ; preds = %for.cond.1040
  %578 = load i32, i32* %j, align 4
  %idxprom1044 = sext i32 %578 to i64
  %579 = load i32, i32* %i, align 4
  %idxprom1045 = sext i32 %579 to i64
  %arrayidx1046 = getelementptr inbounds [37 x [37 x i32]], [37 x [37 x i32]]* @ribosumdis, i32 0, i64 %idxprom1045
  %arrayidx1047 = getelementptr inbounds [37 x i32], [37 x i32]* %arrayidx1046, i32 0, i64 %idxprom1044
  store i32 0, i32* %arrayidx1047, align 4
  br label %for.inc.1048

for.inc.1048:                                     ; preds = %for.body.1043
  %580 = load i32, i32* %j, align 4
  %inc1049 = add nsw i32 %580, 1
  store i32 %inc1049, i32* %j, align 4
  br label %for.cond.1040

for.end.1050:                                     ; preds = %for.cond.1040
  br label %for.inc.1051

for.inc.1051:                                     ; preds = %for.end.1050
  %581 = load i32, i32* %i, align 4
  %inc1052 = add nsw i32 %581, 1
  store i32 %inc1052, i32* %i, align 4
  br label %for.cond.1036

for.end.1053:                                     ; preds = %for.cond.1036
  store i32 0, i32* %m, align 4
  br label %for.cond.1054

for.cond.1054:                                    ; preds = %for.inc.1092, %for.end.1053
  %582 = load i32, i32* %m, align 4
  %cmp1055 = icmp slt i32 %582, 9
  br i1 %cmp1055, label %for.body.1057, label %for.end.1094

for.body.1057:                                    ; preds = %for.cond.1054
  store i32 0, i32* %i, align 4
  br label %for.cond.1058

for.cond.1058:                                    ; preds = %for.inc.1089, %for.body.1057
  %583 = load i32, i32* %i, align 4
  %cmp1059 = icmp slt i32 %583, 4
  br i1 %cmp1059, label %for.body.1061, label %for.end.1091

for.body.1061:                                    ; preds = %for.cond.1058
  store i32 0, i32* %k, align 4
  br label %for.cond.1062

for.cond.1062:                                    ; preds = %for.inc.1086, %for.body.1061
  %584 = load i32, i32* %k, align 4
  %cmp1063 = icmp slt i32 %584, 9
  br i1 %cmp1063, label %for.body.1065, label %for.end.1088

for.body.1065:                                    ; preds = %for.cond.1062
  store i32 0, i32* %j, align 4
  br label %for.cond.1066

for.cond.1066:                                    ; preds = %for.inc.1083, %for.body.1065
  %585 = load i32, i32* %j, align 4
  %cmp1067 = icmp slt i32 %585, 4
  br i1 %cmp1067, label %for.body.1069, label %for.end.1085

for.body.1069:                                    ; preds = %for.cond.1066
  %586 = load i32, i32* %j, align 4
  %idxprom1070 = sext i32 %586 to i64
  %587 = load i32, i32* %i, align 4
  %idxprom1071 = sext i32 %587 to i64
  %arrayidx1072 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @ribosum4, i32 0, i64 %idxprom1071
  %arrayidx1073 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx1072, i32 0, i64 %idxprom1070
  %588 = load double, double* %arrayidx1073, align 8
  %conv1074 = fptosi double %588 to i32
  %589 = load i32, i32* %k, align 4
  %mul1075 = mul nsw i32 %589, 4
  %590 = load i32, i32* %j, align 4
  %add1076 = add nsw i32 %mul1075, %590
  %idxprom1077 = sext i32 %add1076 to i64
  %591 = load i32, i32* %m, align 4
  %mul1078 = mul nsw i32 %591, 4
  %592 = load i32, i32* %i, align 4
  %add1079 = add nsw i32 %mul1078, %592
  %idxprom1080 = sext i32 %add1079 to i64
  %arrayidx1081 = getelementptr inbounds [37 x [37 x i32]], [37 x [37 x i32]]* @ribosumdis, i32 0, i64 %idxprom1080
  %arrayidx1082 = getelementptr inbounds [37 x i32], [37 x i32]* %arrayidx1081, i32 0, i64 %idxprom1077
  store i32 %conv1074, i32* %arrayidx1082, align 4
  br label %for.inc.1083

for.inc.1083:                                     ; preds = %for.body.1069
  %593 = load i32, i32* %j, align 4
  %inc1084 = add nsw i32 %593, 1
  store i32 %inc1084, i32* %j, align 4
  br label %for.cond.1066

for.end.1085:                                     ; preds = %for.cond.1066
  br label %for.inc.1086

for.inc.1086:                                     ; preds = %for.end.1085
  %594 = load i32, i32* %k, align 4
  %inc1087 = add nsw i32 %594, 1
  store i32 %inc1087, i32* %k, align 4
  br label %for.cond.1062

for.end.1088:                                     ; preds = %for.cond.1062
  br label %for.inc.1089

for.inc.1089:                                     ; preds = %for.end.1088
  %595 = load i32, i32* %i, align 4
  %inc1090 = add nsw i32 %595, 1
  store i32 %inc1090, i32* %i, align 4
  br label %for.cond.1058

for.end.1091:                                     ; preds = %for.cond.1058
  br label %for.inc.1092

for.inc.1092:                                     ; preds = %for.end.1091
  %596 = load i32, i32* %m, align 4
  %inc1093 = add nsw i32 %596, 1
  store i32 %inc1093, i32* %m, align 4
  br label %for.cond.1054

for.end.1094:                                     ; preds = %for.cond.1054
  store i32 0, i32* %i, align 4
  br label %for.cond.1095

for.cond.1095:                                    ; preds = %for.inc.1117, %for.end.1094
  %597 = load i32, i32* %i, align 4
  %cmp1096 = icmp slt i32 %597, 16
  br i1 %cmp1096, label %for.body.1098, label %for.end.1119

for.body.1098:                                    ; preds = %for.cond.1095
  store i32 0, i32* %j, align 4
  br label %for.cond.1099

for.cond.1099:                                    ; preds = %for.inc.1114, %for.body.1098
  %598 = load i32, i32* %j, align 4
  %cmp1100 = icmp slt i32 %598, 16
  br i1 %cmp1100, label %for.body.1102, label %for.end.1116

for.body.1102:                                    ; preds = %for.cond.1099
  %599 = load i32, i32* %j, align 4
  %idxprom1103 = sext i32 %599 to i64
  %600 = load i32, i32* %i, align 4
  %idxprom1104 = sext i32 %600 to i64
  %arrayidx1105 = getelementptr inbounds [16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 %idxprom1104
  %arrayidx1106 = getelementptr inbounds [16 x double], [16 x double]* %arrayidx1105, i32 0, i64 %idxprom1103
  %601 = load double, double* %arrayidx1106, align 8
  %conv1107 = fptosi double %601 to i32
  %602 = load i32, i32* %j, align 4
  %add1108 = add nsw i32 %602, 4
  %idxprom1109 = sext i32 %add1108 to i64
  %603 = load i32, i32* %i, align 4
  %add1110 = add nsw i32 %603, 4
  %idxprom1111 = sext i32 %add1110 to i64
  %arrayidx1112 = getelementptr inbounds [37 x [37 x i32]], [37 x [37 x i32]]* @ribosumdis, i32 0, i64 %idxprom1111
  %arrayidx1113 = getelementptr inbounds [37 x i32], [37 x i32]* %arrayidx1112, i32 0, i64 %idxprom1109
  store i32 %conv1107, i32* %arrayidx1113, align 4
  br label %for.inc.1114

for.inc.1114:                                     ; preds = %for.body.1102
  %604 = load i32, i32* %j, align 4
  %inc1115 = add nsw i32 %604, 1
  store i32 %inc1115, i32* %j, align 4
  br label %for.cond.1099

for.end.1116:                                     ; preds = %for.cond.1099
  br label %for.inc.1117

for.inc.1117:                                     ; preds = %for.end.1116
  %605 = load i32, i32* %i, align 4
  %inc1118 = add nsw i32 %605, 1
  store i32 %inc1118, i32* %i, align 4
  br label %for.cond.1095

for.end.1119:                                     ; preds = %for.cond.1095
  store i32 0, i32* %i, align 4
  br label %for.cond.1120

for.cond.1120:                                    ; preds = %for.inc.1142, %for.end.1119
  %606 = load i32, i32* %i, align 4
  %cmp1121 = icmp slt i32 %606, 16
  br i1 %cmp1121, label %for.body.1123, label %for.end.1144

for.body.1123:                                    ; preds = %for.cond.1120
  store i32 0, i32* %j, align 4
  br label %for.cond.1124

for.cond.1124:                                    ; preds = %for.inc.1139, %for.body.1123
  %607 = load i32, i32* %j, align 4
  %cmp1125 = icmp slt i32 %607, 16
  br i1 %cmp1125, label %for.body.1127, label %for.end.1141

for.body.1127:                                    ; preds = %for.cond.1124
  %608 = load i32, i32* %j, align 4
  %idxprom1128 = sext i32 %608 to i64
  %609 = load i32, i32* %i, align 4
  %idxprom1129 = sext i32 %609 to i64
  %arrayidx1130 = getelementptr inbounds [16 x [16 x double]], [16 x [16 x double]]* @ribosum16, i32 0, i64 %idxprom1129
  %arrayidx1131 = getelementptr inbounds [16 x double], [16 x double]* %arrayidx1130, i32 0, i64 %idxprom1128
  %610 = load double, double* %arrayidx1131, align 8
  %conv1132 = fptosi double %610 to i32
  %611 = load i32, i32* %j, align 4
  %add1133 = add nsw i32 %611, 20
  %idxprom1134 = sext i32 %add1133 to i64
  %612 = load i32, i32* %i, align 4
  %add1135 = add nsw i32 %612, 20
  %idxprom1136 = sext i32 %add1135 to i64
  %arrayidx1137 = getelementptr inbounds [37 x [37 x i32]], [37 x [37 x i32]]* @ribosumdis, i32 0, i64 %idxprom1136
  %arrayidx1138 = getelementptr inbounds [37 x i32], [37 x i32]* %arrayidx1137, i32 0, i64 %idxprom1134
  store i32 %conv1132, i32* %arrayidx1138, align 4
  br label %for.inc.1139

for.inc.1139:                                     ; preds = %for.body.1127
  %613 = load i32, i32* %j, align 4
  %inc1140 = add nsw i32 %613, 1
  store i32 %inc1140, i32* %j, align 4
  br label %for.cond.1124

for.end.1141:                                     ; preds = %for.cond.1124
  br label %for.inc.1142

for.inc.1142:                                     ; preds = %for.end.1141
  %614 = load i32, i32* %i, align 4
  %inc1143 = add nsw i32 %614, 1
  store i32 %inc1143, i32* %i, align 4
  br label %for.cond.1120

for.end.1144:                                     ; preds = %for.cond.1120
  %615 = load i32, i32* @disp, align 4
  %tobool1145 = icmp ne i32 %615, 0
  br i1 %tobool1145, label %if.then.1146, label %if.end.1169

if.then.1146:                                     ; preds = %for.end.1144
  %616 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %616, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.1148

for.cond.1148:                                    ; preds = %for.inc.1165, %if.then.1146
  %617 = load i32, i32* %i, align 4
  %cmp1149 = icmp slt i32 %617, 37
  br i1 %cmp1149, label %for.body.1151, label %for.end.1167

for.body.1151:                                    ; preds = %for.cond.1148
  store i32 0, i32* %j, align 4
  br label %for.cond.1152

for.cond.1152:                                    ; preds = %for.inc.1161, %for.body.1151
  %618 = load i32, i32* %j, align 4
  %cmp1153 = icmp slt i32 %618, 37
  br i1 %cmp1153, label %for.body.1155, label %for.end.1163

for.body.1155:                                    ; preds = %for.cond.1152
  %619 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %620 = load i32, i32* %j, align 4
  %idxprom1156 = sext i32 %620 to i64
  %621 = load i32, i32* %i, align 4
  %idxprom1157 = sext i32 %621 to i64
  %arrayidx1158 = getelementptr inbounds [37 x [37 x i32]], [37 x [37 x i32]]* @ribosumdis, i32 0, i64 %idxprom1157
  %arrayidx1159 = getelementptr inbounds [37 x i32], [37 x i32]* %arrayidx1158, i32 0, i64 %idxprom1156
  %622 = load i32, i32* %arrayidx1159, align 4
  %call1160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %619, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 %622)
  br label %for.inc.1161

for.inc.1161:                                     ; preds = %for.body.1155
  %623 = load i32, i32* %j, align 4
  %inc1162 = add nsw i32 %623, 1
  store i32 %inc1162, i32* %j, align 4
  br label %for.cond.1152

for.end.1163:                                     ; preds = %for.cond.1152
  %624 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %624, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.1165

for.inc.1165:                                     ; preds = %for.end.1163
  %625 = load i32, i32* %i, align 4
  %inc1166 = add nsw i32 %625, 1
  store i32 %inc1166, i32* %i, align 4
  br label %for.cond.1148

for.end.1167:                                     ; preds = %for.cond.1148
  %626 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %626, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.1169

if.end.1169:                                      ; preds = %for.end.1167, %for.end.1144
  %627 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %627, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %628 = load double**, double*** %pam1, align 8
  call void @FreeDoubleMtx(double** %628)
  %629 = load double**, double*** %pamx, align 8
  call void @FreeDoubleMtx(double** %629)
  %630 = load double*, double** %freq, align 8
  %631 = bitcast double* %630 to i8*
  call void @free(i8* %631) #1
  br label %if.end.2069

if.else.1171:                                     ; preds = %entry
  %632 = load i32, i32* @dorp, align 4
  %cmp1172 = icmp eq i32 %632, 112
  br i1 %cmp1172, label %land.lhs.true, label %if.else.1541

land.lhs.true:                                    ; preds = %if.else.1171
  %633 = load i32, i32* @scoremtx, align 4
  %cmp1174 = icmp eq i32 %633, 1
  br i1 %cmp1174, label %if.then.1176, label %if.else.1541

if.then.1176:                                     ; preds = %land.lhs.true
  %call1179 = call double** @AllocateDoubleMtx(i32 20, i32 20)
  store double** %call1179, double*** %n_distmp, align 8
  %call1180 = call double* @AllocateDoubleVec(i32 20)
  store double* %call1180, double** %datafreq, align 8
  %call1181 = call double* @AllocateDoubleVec(i32 20)
  store double* %call1181, double** %freq1177, align 8
  %634 = load i32, i32* @ppenalty, align 4
  %cmp1182 = icmp eq i32 %634, 100009
  br i1 %cmp1182, label %if.then.1184, label %if.end.1185

if.then.1184:                                     ; preds = %if.then.1176
  store i32 -1530, i32* @ppenalty, align 4
  br label %if.end.1185

if.end.1185:                                      ; preds = %if.then.1184, %if.then.1176
  %635 = load i32, i32* @ppenalty_OP, align 4
  %cmp1186 = icmp eq i32 %635, 100009
  br i1 %cmp1186, label %if.then.1188, label %if.end.1189

if.then.1188:                                     ; preds = %if.end.1185
  store i32 -1530, i32* @ppenalty_OP, align 4
  br label %if.end.1189

if.end.1189:                                      ; preds = %if.then.1188, %if.end.1185
  %636 = load i32, i32* @ppenalty_ex, align 4
  %cmp1190 = icmp eq i32 %636, 100009
  br i1 %cmp1190, label %if.then.1192, label %if.end.1193

if.then.1192:                                     ; preds = %if.end.1189
  store i32 0, i32* @ppenalty_ex, align 4
  br label %if.end.1193

if.end.1193:                                      ; preds = %if.then.1192, %if.end.1189
  %637 = load i32, i32* @ppenalty_EX, align 4
  %cmp1194 = icmp eq i32 %637, 100009
  br i1 %cmp1194, label %if.then.1196, label %if.end.1197

if.then.1196:                                     ; preds = %if.end.1193
  store i32 0, i32* @ppenalty_EX, align 4
  br label %if.end.1197

if.end.1197:                                      ; preds = %if.then.1196, %if.end.1193
  %638 = load i32, i32* @poffset, align 4
  %cmp1198 = icmp eq i32 %638, 100009
  br i1 %cmp1198, label %if.then.1200, label %if.end.1201

if.then.1200:                                     ; preds = %if.end.1197
  store i32 -123, i32* @poffset, align 4
  br label %if.end.1201

if.end.1201:                                      ; preds = %if.then.1200, %if.end.1197
  %639 = load i32, i32* @pamN, align 4
  %cmp1202 = icmp eq i32 %639, 100009
  br i1 %cmp1202, label %if.then.1204, label %if.end.1205

if.then.1204:                                     ; preds = %if.end.1201
  store i32 0, i32* @pamN, align 4
  br label %if.end.1205

if.end.1205:                                      ; preds = %if.then.1204, %if.end.1201
  %640 = load i32, i32* @kimuraR, align 4
  %cmp1206 = icmp eq i32 %640, 100009
  br i1 %cmp1206, label %if.then.1208, label %if.end.1209

if.then.1208:                                     ; preds = %if.end.1205
  store i32 1, i32* @kimuraR, align 4
  br label %if.end.1209

if.end.1209:                                      ; preds = %if.then.1208, %if.end.1205
  %641 = load i32, i32* @ppenalty, align 4
  %conv1210 = sitofp i32 %641 to double
  %mul1211 = fmul double 6.000000e-01, %conv1210
  %add1212 = fadd double %mul1211, 5.000000e-01
  %conv1213 = fptosi double %add1212 to i32
  store i32 %conv1213, i32* @penalty, align 4
  %642 = load i32, i32* @ppenalty_OP, align 4
  %conv1214 = sitofp i32 %642 to double
  %mul1215 = fmul double 6.000000e-01, %conv1214
  %add1216 = fadd double %mul1215, 5.000000e-01
  %conv1217 = fptosi double %add1216 to i32
  store i32 %conv1217, i32* @penalty_OP, align 4
  %643 = load i32, i32* @ppenalty_ex, align 4
  %conv1218 = sitofp i32 %643 to double
  %mul1219 = fmul double 6.000000e-01, %conv1218
  %add1220 = fadd double %mul1219, 5.000000e-01
  %conv1221 = fptosi double %add1220 to i32
  store i32 %conv1221, i32* @penalty_ex, align 4
  %644 = load i32, i32* @ppenalty_EX, align 4
  %conv1222 = sitofp i32 %644 to double
  %mul1223 = fmul double 6.000000e-01, %conv1222
  %add1224 = fadd double %mul1223, 5.000000e-01
  %conv1225 = fptosi double %add1224 to i32
  store i32 %conv1225, i32* @penalty_EX, align 4
  %645 = load i32, i32* @poffset, align 4
  %conv1226 = sitofp i32 %645 to double
  %mul1227 = fmul double 6.000000e-01, %conv1226
  %add1228 = fadd double %mul1227, 5.000000e-01
  %conv1229 = fptosi double %add1228 to i32
  store i32 %conv1229, i32* @offset, align 4
  store i32 0, i32* @offsetFFT, align 4
  store i32 60, i32* @offsetLN, align 4
  store i32 -1199, i32* @penaltyLN, align 4
  store i32 -59, i32* @penalty_exLN, align 4
  %646 = load i32, i32* @nblosum, align 4
  %647 = load double**, double*** %n_distmp, align 8
  %648 = load double*, double** %freq1177, align 8
  call void @BLOSUMmtx(i32 %646, double** %647, double* %648, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @amino, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @amino_grp, i32 0, i32 0))
  %649 = load i32, i32* @nblosum, align 4
  %cmp1230 = icmp eq i32 %649, -1
  br i1 %cmp1230, label %if.then.1232, label %if.else.1243

if.then.1232:                                     ; preds = %if.end.1209
  %650 = load i32, i32* @ppenalty, align 4
  %conv1233 = sitofp i32 %650 to double
  %sub1234 = fsub double -0.000000e+00, %conv1233
  %div1235 = fdiv double %sub1234, 1.000000e+03
  %651 = load i32, i32* @poffset, align 4
  %conv1236 = sitofp i32 %651 to double
  %sub1237 = fsub double -0.000000e+00, %conv1236
  %div1238 = fdiv double %sub1237, 1.000000e+03
  %652 = load i32, i32* @ppenalty_ex, align 4
  %conv1239 = sitofp i32 %652 to double
  %sub1240 = fsub double -0.000000e+00, %conv1239
  %div1241 = fdiv double %sub1240, 1.000000e+03
  %call1242 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @modelname, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0), double %div1235, double %div1238, double %div1241) #1
  br label %if.end.1254

if.else.1243:                                     ; preds = %if.end.1209
  %653 = load i32, i32* @nblosum, align 4
  %654 = load i32, i32* @ppenalty, align 4
  %conv1244 = sitofp i32 %654 to double
  %sub1245 = fsub double -0.000000e+00, %conv1244
  %div1246 = fdiv double %sub1245, 1.000000e+03
  %655 = load i32, i32* @poffset, align 4
  %conv1247 = sitofp i32 %655 to double
  %sub1248 = fsub double -0.000000e+00, %conv1247
  %div1249 = fdiv double %sub1248, 1.000000e+03
  %656 = load i32, i32* @ppenalty_ex, align 4
  %conv1250 = sitofp i32 %656 to double
  %sub1251 = fsub double -0.000000e+00, %conv1250
  %div1252 = fdiv double %sub1251, 1.000000e+03
  %call1253 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @modelname, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i32 %653, double %div1246, double %div1249, double %div1252) #1
  br label %if.end.1254

if.end.1254:                                      ; preds = %if.else.1243, %if.then.1232
  store i32 0, i32* %i, align 4
  br label %for.cond.1255

for.cond.1255:                                    ; preds = %for.inc.1261, %if.end.1254
  %657 = load i32, i32* %i, align 4
  %cmp1256 = icmp slt i32 %657, 128
  br i1 %cmp1256, label %for.body.1258, label %for.end.1263

for.body.1258:                                    ; preds = %for.cond.1255
  %658 = load i32, i32* %i, align 4
  %idxprom1259 = sext i32 %658 to i64
  %arrayidx1260 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom1259
  store i32 -1, i32* %arrayidx1260, align 4
  br label %for.inc.1261

for.inc.1261:                                     ; preds = %for.body.1258
  %659 = load i32, i32* %i, align 4
  %inc1262 = add nsw i32 %659, 1
  store i32 %inc1262, i32* %i, align 4
  br label %for.cond.1255

for.end.1263:                                     ; preds = %for.cond.1255
  store i32 0, i32* %i, align 4
  br label %for.cond.1264

for.cond.1264:                                    ; preds = %for.inc.1273, %for.end.1263
  %660 = load i32, i32* %i, align 4
  %cmp1265 = icmp slt i32 %660, 26
  br i1 %cmp1265, label %for.body.1267, label %for.end.1275

for.body.1267:                                    ; preds = %for.cond.1264
  %661 = load i32, i32* %i, align 4
  %662 = load i32, i32* %i, align 4
  %idxprom1268 = sext i32 %662 to i64
  %arrayidx1269 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom1268
  %663 = load i8, i8* %arrayidx1269, align 1
  %conv1270 = sext i8 %663 to i32
  %idxprom1271 = sext i32 %conv1270 to i64
  %arrayidx1272 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom1271
  store i32 %661, i32* %arrayidx1272, align 4
  br label %for.inc.1273

for.inc.1273:                                     ; preds = %for.body.1267
  %664 = load i32, i32* %i, align 4
  %inc1274 = add nsw i32 %664, 1
  store i32 %inc1274, i32* %i, align 4
  br label %for.cond.1264

for.end.1275:                                     ; preds = %for.cond.1264
  %665 = load i32, i32* @fmodel, align 4
  %cmp1276 = icmp eq i32 %665, 1
  br i1 %cmp1276, label %if.then.1278, label %if.else.1279

if.then.1278:                                     ; preds = %for.end.1275
  %666 = load i32, i32* %nseq.addr, align 4
  %667 = load i8**, i8*** %seq.addr, align 8
  %668 = load double*, double** %datafreq, align 8
  call void @calcfreq(i32 %666, i8** %667, double* %668)
  %669 = load double*, double** %datafreq, align 8
  store double* %669, double** %freq1, align 8
  br label %if.end.1280

if.else.1279:                                     ; preds = %for.end.1275
  %670 = load double*, double** %freq1177, align 8
  store double* %670, double** %freq1, align 8
  br label %if.end.1280

if.end.1280:                                      ; preds = %if.else.1279, %if.then.1278
  %671 = load i32, i32* @fmodel, align 4
  %cmp1281 = icmp eq i32 %671, -1
  br i1 %cmp1281, label %if.then.1283, label %if.else.1284

if.then.1283:                                     ; preds = %if.end.1280
  store double 0.000000e+00, double* %average1178, align 8
  br label %if.end.1317

if.else.1284:                                     ; preds = %if.end.1280
  store i32 0, i32* %i, align 4
  br label %for.cond.1285

for.cond.1285:                                    ; preds = %for.inc.1289, %if.else.1284
  %672 = load i32, i32* %i, align 4
  %cmp1286 = icmp slt i32 %672, 20
  br i1 %cmp1286, label %for.body.1288, label %for.end.1291

for.body.1288:                                    ; preds = %for.cond.1285
  store double 0.000000e+00, double* %average1178, align 8
  br label %for.inc.1289

for.inc.1289:                                     ; preds = %for.body.1288
  %673 = load i32, i32* %i, align 4
  %inc1290 = add nsw i32 %673, 1
  store i32 %inc1290, i32* %i, align 4
  br label %for.cond.1285

for.end.1291:                                     ; preds = %for.cond.1285
  store i32 0, i32* %i, align 4
  br label %for.cond.1292

for.cond.1292:                                    ; preds = %for.inc.1314, %for.end.1291
  %674 = load i32, i32* %i, align 4
  %cmp1293 = icmp slt i32 %674, 20
  br i1 %cmp1293, label %for.body.1295, label %for.end.1316

for.body.1295:                                    ; preds = %for.cond.1292
  store i32 0, i32* %j, align 4
  br label %for.cond.1296

for.cond.1296:                                    ; preds = %for.inc.1311, %for.body.1295
  %675 = load i32, i32* %j, align 4
  %cmp1297 = icmp slt i32 %675, 20
  br i1 %cmp1297, label %for.body.1299, label %for.end.1313

for.body.1299:                                    ; preds = %for.cond.1296
  %676 = load i32, i32* %j, align 4
  %idxprom1300 = sext i32 %676 to i64
  %677 = load i32, i32* %i, align 4
  %idxprom1301 = sext i32 %677 to i64
  %678 = load double**, double*** %n_distmp, align 8
  %arrayidx1302 = getelementptr inbounds double*, double** %678, i64 %idxprom1301
  %679 = load double*, double** %arrayidx1302, align 8
  %arrayidx1303 = getelementptr inbounds double, double* %679, i64 %idxprom1300
  %680 = load double, double* %arrayidx1303, align 8
  %681 = load i32, i32* %i, align 4
  %idxprom1304 = sext i32 %681 to i64
  %682 = load double*, double** %freq1, align 8
  %arrayidx1305 = getelementptr inbounds double, double* %682, i64 %idxprom1304
  %683 = load double, double* %arrayidx1305, align 8
  %mul1306 = fmul double %680, %683
  %684 = load i32, i32* %j, align 4
  %idxprom1307 = sext i32 %684 to i64
  %685 = load double*, double** %freq1, align 8
  %arrayidx1308 = getelementptr inbounds double, double* %685, i64 %idxprom1307
  %686 = load double, double* %arrayidx1308, align 8
  %mul1309 = fmul double %mul1306, %686
  %687 = load double, double* %average1178, align 8
  %add1310 = fadd double %687, %mul1309
  store double %add1310, double* %average1178, align 8
  br label %for.inc.1311

for.inc.1311:                                     ; preds = %for.body.1299
  %688 = load i32, i32* %j, align 4
  %inc1312 = add nsw i32 %688, 1
  store i32 %inc1312, i32* %j, align 4
  br label %for.cond.1296

for.end.1313:                                     ; preds = %for.cond.1296
  br label %for.inc.1314

for.inc.1314:                                     ; preds = %for.end.1313
  %689 = load i32, i32* %i, align 4
  %inc1315 = add nsw i32 %689, 1
  store i32 %inc1315, i32* %i, align 4
  br label %for.cond.1292

for.end.1316:                                     ; preds = %for.cond.1292
  br label %if.end.1317

if.end.1317:                                      ; preds = %for.end.1316, %if.then.1283
  store i32 0, i32* %i, align 4
  br label %for.cond.1318

for.cond.1318:                                    ; preds = %for.inc.1334, %if.end.1317
  %690 = load i32, i32* %i, align 4
  %cmp1319 = icmp slt i32 %690, 20
  br i1 %cmp1319, label %for.body.1321, label %for.end.1336

for.body.1321:                                    ; preds = %for.cond.1318
  store i32 0, i32* %j, align 4
  br label %for.cond.1322

for.cond.1322:                                    ; preds = %for.inc.1331, %for.body.1321
  %691 = load i32, i32* %j, align 4
  %cmp1323 = icmp slt i32 %691, 20
  br i1 %cmp1323, label %for.body.1325, label %for.end.1333

for.body.1325:                                    ; preds = %for.cond.1322
  %692 = load double, double* %average1178, align 8
  %693 = load i32, i32* %j, align 4
  %idxprom1326 = sext i32 %693 to i64
  %694 = load i32, i32* %i, align 4
  %idxprom1327 = sext i32 %694 to i64
  %695 = load double**, double*** %n_distmp, align 8
  %arrayidx1328 = getelementptr inbounds double*, double** %695, i64 %idxprom1327
  %696 = load double*, double** %arrayidx1328, align 8
  %arrayidx1329 = getelementptr inbounds double, double* %696, i64 %idxprom1326
  %697 = load double, double* %arrayidx1329, align 8
  %sub1330 = fsub double %697, %692
  store double %sub1330, double* %arrayidx1329, align 8
  br label %for.inc.1331

for.inc.1331:                                     ; preds = %for.body.1325
  %698 = load i32, i32* %j, align 4
  %inc1332 = add nsw i32 %698, 1
  store i32 %inc1332, i32* %j, align 4
  br label %for.cond.1322

for.end.1333:                                     ; preds = %for.cond.1322
  br label %for.inc.1334

for.inc.1334:                                     ; preds = %for.end.1333
  %699 = load i32, i32* %i, align 4
  %inc1335 = add nsw i32 %699, 1
  store i32 %inc1335, i32* %i, align 4
  br label %for.cond.1318

for.end.1336:                                     ; preds = %for.cond.1318
  store double 0.000000e+00, double* %average1178, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1337

for.cond.1337:                                    ; preds = %for.inc.1349, %for.end.1336
  %700 = load i32, i32* %i, align 4
  %cmp1338 = icmp slt i32 %700, 20
  br i1 %cmp1338, label %for.body.1340, label %for.end.1351

for.body.1340:                                    ; preds = %for.cond.1337
  %701 = load i32, i32* %i, align 4
  %idxprom1341 = sext i32 %701 to i64
  %702 = load i32, i32* %i, align 4
  %idxprom1342 = sext i32 %702 to i64
  %703 = load double**, double*** %n_distmp, align 8
  %arrayidx1343 = getelementptr inbounds double*, double** %703, i64 %idxprom1342
  %704 = load double*, double** %arrayidx1343, align 8
  %arrayidx1344 = getelementptr inbounds double, double* %704, i64 %idxprom1341
  %705 = load double, double* %arrayidx1344, align 8
  %706 = load i32, i32* %i, align 4
  %idxprom1345 = sext i32 %706 to i64
  %707 = load double*, double** %freq1, align 8
  %arrayidx1346 = getelementptr inbounds double, double* %707, i64 %idxprom1345
  %708 = load double, double* %arrayidx1346, align 8
  %mul1347 = fmul double %705, %708
  %709 = load double, double* %average1178, align 8
  %add1348 = fadd double %709, %mul1347
  store double %add1348, double* %average1178, align 8
  br label %for.inc.1349

for.inc.1349:                                     ; preds = %for.body.1340
  %710 = load i32, i32* %i, align 4
  %inc1350 = add nsw i32 %710, 1
  store i32 %inc1350, i32* %i, align 4
  br label %for.cond.1337

for.end.1351:                                     ; preds = %for.cond.1337
  store i32 0, i32* %i, align 4
  br label %for.cond.1352

for.cond.1352:                                    ; preds = %for.inc.1369, %for.end.1351
  %711 = load i32, i32* %i, align 4
  %cmp1353 = icmp slt i32 %711, 20
  br i1 %cmp1353, label %for.body.1355, label %for.end.1371

for.body.1355:                                    ; preds = %for.cond.1352
  store i32 0, i32* %j, align 4
  br label %for.cond.1356

for.cond.1356:                                    ; preds = %for.inc.1366, %for.body.1355
  %712 = load i32, i32* %j, align 4
  %cmp1357 = icmp slt i32 %712, 20
  br i1 %cmp1357, label %for.body.1359, label %for.end.1368

for.body.1359:                                    ; preds = %for.cond.1356
  %713 = load double, double* %average1178, align 8
  %div1360 = fdiv double 6.000000e+02, %713
  %714 = load i32, i32* %j, align 4
  %idxprom1361 = sext i32 %714 to i64
  %715 = load i32, i32* %i, align 4
  %idxprom1362 = sext i32 %715 to i64
  %716 = load double**, double*** %n_distmp, align 8
  %arrayidx1363 = getelementptr inbounds double*, double** %716, i64 %idxprom1362
  %717 = load double*, double** %arrayidx1363, align 8
  %arrayidx1364 = getelementptr inbounds double, double* %717, i64 %idxprom1361
  %718 = load double, double* %arrayidx1364, align 8
  %mul1365 = fmul double %718, %div1360
  store double %mul1365, double* %arrayidx1364, align 8
  br label %for.inc.1366

for.inc.1366:                                     ; preds = %for.body.1359
  %719 = load i32, i32* %j, align 4
  %inc1367 = add nsw i32 %719, 1
  store i32 %inc1367, i32* %j, align 4
  br label %for.cond.1356

for.end.1368:                                     ; preds = %for.cond.1356
  br label %for.inc.1369

for.inc.1369:                                     ; preds = %for.end.1368
  %720 = load i32, i32* %i, align 4
  %inc1370 = add nsw i32 %720, 1
  store i32 %inc1370, i32* %i, align 4
  br label %for.cond.1352

for.end.1371:                                     ; preds = %for.cond.1352
  store i32 0, i32* %i, align 4
  br label %for.cond.1372

for.cond.1372:                                    ; preds = %for.inc.1389, %for.end.1371
  %721 = load i32, i32* %i, align 4
  %cmp1373 = icmp slt i32 %721, 20
  br i1 %cmp1373, label %for.body.1375, label %for.end.1391

for.body.1375:                                    ; preds = %for.cond.1372
  store i32 0, i32* %j, align 4
  br label %for.cond.1376

for.cond.1376:                                    ; preds = %for.inc.1386, %for.body.1375
  %722 = load i32, i32* %j, align 4
  %cmp1377 = icmp slt i32 %722, 20
  br i1 %cmp1377, label %for.body.1379, label %for.end.1388

for.body.1379:                                    ; preds = %for.cond.1376
  %723 = load i32, i32* @offset, align 4
  %conv1380 = sitofp i32 %723 to double
  %724 = load i32, i32* %j, align 4
  %idxprom1381 = sext i32 %724 to i64
  %725 = load i32, i32* %i, align 4
  %idxprom1382 = sext i32 %725 to i64
  %726 = load double**, double*** %n_distmp, align 8
  %arrayidx1383 = getelementptr inbounds double*, double** %726, i64 %idxprom1382
  %727 = load double*, double** %arrayidx1383, align 8
  %arrayidx1384 = getelementptr inbounds double, double* %727, i64 %idxprom1381
  %728 = load double, double* %arrayidx1384, align 8
  %sub1385 = fsub double %728, %conv1380
  store double %sub1385, double* %arrayidx1384, align 8
  br label %for.inc.1386

for.inc.1386:                                     ; preds = %for.body.1379
  %729 = load i32, i32* %j, align 4
  %inc1387 = add nsw i32 %729, 1
  store i32 %inc1387, i32* %j, align 4
  br label %for.cond.1376

for.end.1388:                                     ; preds = %for.cond.1376
  br label %for.inc.1389

for.inc.1389:                                     ; preds = %for.end.1388
  %730 = load i32, i32* %i, align 4
  %inc1390 = add nsw i32 %730, 1
  store i32 %inc1390, i32* %i, align 4
  br label %for.cond.1372

for.end.1391:                                     ; preds = %for.cond.1372
  store i32 0, i32* %i, align 4
  br label %for.cond.1392

for.cond.1392:                                    ; preds = %for.inc.1413, %for.end.1391
  %731 = load i32, i32* %i, align 4
  %cmp1393 = icmp slt i32 %731, 20
  br i1 %cmp1393, label %for.body.1395, label %for.end.1415

for.body.1395:                                    ; preds = %for.cond.1392
  store i32 0, i32* %j, align 4
  br label %for.cond.1396

for.cond.1396:                                    ; preds = %for.inc.1410, %for.body.1395
  %732 = load i32, i32* %j, align 4
  %cmp1397 = icmp slt i32 %732, 20
  br i1 %cmp1397, label %for.body.1399, label %for.end.1412

for.body.1399:                                    ; preds = %for.cond.1396
  %733 = load i32, i32* %j, align 4
  %idxprom1400 = sext i32 %733 to i64
  %734 = load i32, i32* %i, align 4
  %idxprom1401 = sext i32 %734 to i64
  %735 = load double**, double*** %n_distmp, align 8
  %arrayidx1402 = getelementptr inbounds double*, double** %735, i64 %idxprom1401
  %736 = load double*, double** %arrayidx1402, align 8
  %arrayidx1403 = getelementptr inbounds double, double* %736, i64 %idxprom1400
  %737 = load double, double* %arrayidx1403, align 8
  %call1404 = call i32 @shishagonyuu(double %737)
  %conv1405 = sitofp i32 %call1404 to double
  %738 = load i32, i32* %j, align 4
  %idxprom1406 = sext i32 %738 to i64
  %739 = load i32, i32* %i, align 4
  %idxprom1407 = sext i32 %739 to i64
  %740 = load double**, double*** %n_distmp, align 8
  %arrayidx1408 = getelementptr inbounds double*, double** %740, i64 %idxprom1407
  %741 = load double*, double** %arrayidx1408, align 8
  %arrayidx1409 = getelementptr inbounds double, double* %741, i64 %idxprom1406
  store double %conv1405, double* %arrayidx1409, align 8
  br label %for.inc.1410

for.inc.1410:                                     ; preds = %for.body.1399
  %742 = load i32, i32* %j, align 4
  %inc1411 = add nsw i32 %742, 1
  store i32 %inc1411, i32* %j, align 4
  br label %for.cond.1396

for.end.1412:                                     ; preds = %for.cond.1396
  br label %for.inc.1413

for.inc.1413:                                     ; preds = %for.end.1412
  %743 = load i32, i32* %i, align 4
  %inc1414 = add nsw i32 %743, 1
  store i32 %inc1414, i32* %i, align 4
  br label %for.cond.1392

for.end.1415:                                     ; preds = %for.cond.1392
  %744 = load i32, i32* @disp, align 4
  %tobool1416 = icmp ne i32 %744, 0
  br i1 %tobool1416, label %if.then.1417, label %if.end.1498

if.then.1417:                                     ; preds = %for.end.1415
  %745 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1418 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %745, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.1419

for.cond.1419:                                    ; preds = %for.inc.1440, %if.then.1417
  %746 = load i32, i32* %i, align 4
  %cmp1420 = icmp slt i32 %746, 20
  br i1 %cmp1420, label %for.body.1422, label %for.end.1442

for.body.1422:                                    ; preds = %for.cond.1419
  %747 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %748 = load i32, i32* %i, align 4
  %idxprom1423 = sext i32 %748 to i64
  %arrayidx1424 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom1423
  %749 = load i8, i8* %arrayidx1424, align 1
  %conv1425 = sext i8 %749 to i32
  %call1426 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %747, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 %conv1425)
  store i32 0, i32* %j, align 4
  br label %for.cond.1427

for.cond.1427:                                    ; preds = %for.inc.1436, %for.body.1422
  %750 = load i32, i32* %j, align 4
  %cmp1428 = icmp slt i32 %750, 20
  br i1 %cmp1428, label %for.body.1430, label %for.end.1438

for.body.1430:                                    ; preds = %for.cond.1427
  %751 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %752 = load i32, i32* %j, align 4
  %idxprom1431 = sext i32 %752 to i64
  %753 = load i32, i32* %i, align 4
  %idxprom1432 = sext i32 %753 to i64
  %754 = load double**, double*** %n_distmp, align 8
  %arrayidx1433 = getelementptr inbounds double*, double** %754, i64 %idxprom1432
  %755 = load double*, double** %arrayidx1433, align 8
  %arrayidx1434 = getelementptr inbounds double, double* %755, i64 %idxprom1431
  %756 = load double, double* %arrayidx1434, align 8
  %call1435 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %751, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), double %756)
  br label %for.inc.1436

for.inc.1436:                                     ; preds = %for.body.1430
  %757 = load i32, i32* %j, align 4
  %inc1437 = add nsw i32 %757, 1
  store i32 %inc1437, i32* %j, align 4
  br label %for.cond.1427

for.end.1438:                                     ; preds = %for.cond.1427
  %758 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1439 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %758, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.1440

for.inc.1440:                                     ; preds = %for.end.1438
  %759 = load i32, i32* %i, align 4
  %inc1441 = add nsw i32 %759, 1
  store i32 %inc1441, i32* %i, align 4
  br label %for.cond.1419

for.end.1442:                                     ; preds = %for.cond.1419
  %760 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1443 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %760, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.1444

for.cond.1444:                                    ; preds = %for.inc.1452, %for.end.1442
  %761 = load i32, i32* %i, align 4
  %cmp1445 = icmp slt i32 %761, 20
  br i1 %cmp1445, label %for.body.1447, label %for.end.1454

for.body.1447:                                    ; preds = %for.cond.1444
  %762 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %763 = load i32, i32* %i, align 4
  %idxprom1448 = sext i32 %763 to i64
  %arrayidx1449 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom1448
  %764 = load i8, i8* %arrayidx1449, align 1
  %conv1450 = sext i8 %764 to i32
  %call1451 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %762, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 %conv1450)
  br label %for.inc.1452

for.inc.1452:                                     ; preds = %for.body.1447
  %765 = load i32, i32* %i, align 4
  %inc1453 = add nsw i32 %765, 1
  store i32 %inc1453, i32* %i, align 4
  br label %for.cond.1444

for.end.1454:                                     ; preds = %for.cond.1444
  store double 0.000000e+00, double* %average1178, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1455

for.cond.1455:                                    ; preds = %for.inc.1477, %for.end.1454
  %766 = load i32, i32* %i, align 4
  %cmp1456 = icmp slt i32 %766, 20
  br i1 %cmp1456, label %for.body.1458, label %for.end.1479

for.body.1458:                                    ; preds = %for.cond.1455
  store i32 0, i32* %j, align 4
  br label %for.cond.1459

for.cond.1459:                                    ; preds = %for.inc.1474, %for.body.1458
  %767 = load i32, i32* %j, align 4
  %cmp1460 = icmp slt i32 %767, 20
  br i1 %cmp1460, label %for.body.1462, label %for.end.1476

for.body.1462:                                    ; preds = %for.cond.1459
  %768 = load i32, i32* %j, align 4
  %idxprom1463 = sext i32 %768 to i64
  %769 = load i32, i32* %i, align 4
  %idxprom1464 = sext i32 %769 to i64
  %770 = load double**, double*** %n_distmp, align 8
  %arrayidx1465 = getelementptr inbounds double*, double** %770, i64 %idxprom1464
  %771 = load double*, double** %arrayidx1465, align 8
  %arrayidx1466 = getelementptr inbounds double, double* %771, i64 %idxprom1463
  %772 = load double, double* %arrayidx1466, align 8
  %773 = load i32, i32* %i, align 4
  %idxprom1467 = sext i32 %773 to i64
  %774 = load double*, double** %freq1, align 8
  %arrayidx1468 = getelementptr inbounds double, double* %774, i64 %idxprom1467
  %775 = load double, double* %arrayidx1468, align 8
  %mul1469 = fmul double %772, %775
  %776 = load i32, i32* %j, align 4
  %idxprom1470 = sext i32 %776 to i64
  %777 = load double*, double** %freq1, align 8
  %arrayidx1471 = getelementptr inbounds double, double* %777, i64 %idxprom1470
  %778 = load double, double* %arrayidx1471, align 8
  %mul1472 = fmul double %mul1469, %778
  %779 = load double, double* %average1178, align 8
  %add1473 = fadd double %779, %mul1472
  store double %add1473, double* %average1178, align 8
  br label %for.inc.1474

for.inc.1474:                                     ; preds = %for.body.1462
  %780 = load i32, i32* %j, align 4
  %inc1475 = add nsw i32 %780, 1
  store i32 %inc1475, i32* %j, align 4
  br label %for.cond.1459

for.end.1476:                                     ; preds = %for.cond.1459
  br label %for.inc.1477

for.inc.1477:                                     ; preds = %for.end.1476
  %781 = load i32, i32* %i, align 4
  %inc1478 = add nsw i32 %781, 1
  store i32 %inc1478, i32* %i, align 4
  br label %for.cond.1455

for.end.1479:                                     ; preds = %for.cond.1455
  %782 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %783 = load double, double* %average1178, align 8
  %call1480 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %782, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), double %783)
  store double 0.000000e+00, double* %average1178, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1481

for.cond.1481:                                    ; preds = %for.inc.1493, %for.end.1479
  %784 = load i32, i32* %i, align 4
  %cmp1482 = icmp slt i32 %784, 20
  br i1 %cmp1482, label %for.body.1484, label %for.end.1495

for.body.1484:                                    ; preds = %for.cond.1481
  %785 = load i32, i32* %i, align 4
  %idxprom1485 = sext i32 %785 to i64
  %786 = load i32, i32* %i, align 4
  %idxprom1486 = sext i32 %786 to i64
  %787 = load double**, double*** %n_distmp, align 8
  %arrayidx1487 = getelementptr inbounds double*, double** %787, i64 %idxprom1486
  %788 = load double*, double** %arrayidx1487, align 8
  %arrayidx1488 = getelementptr inbounds double, double* %788, i64 %idxprom1485
  %789 = load double, double* %arrayidx1488, align 8
  %790 = load i32, i32* %i, align 4
  %idxprom1489 = sext i32 %790 to i64
  %791 = load double*, double** %freq1, align 8
  %arrayidx1490 = getelementptr inbounds double, double* %791, i64 %idxprom1489
  %792 = load double, double* %arrayidx1490, align 8
  %mul1491 = fmul double %789, %792
  %793 = load double, double* %average1178, align 8
  %add1492 = fadd double %793, %mul1491
  store double %add1492, double* %average1178, align 8
  br label %for.inc.1493

for.inc.1493:                                     ; preds = %for.body.1484
  %794 = load i32, i32* %i, align 4
  %inc1494 = add nsw i32 %794, 1
  store i32 %inc1494, i32* %i, align 4
  br label %for.cond.1481

for.end.1495:                                     ; preds = %for.cond.1481
  %795 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %796 = load double, double* %average1178, align 8
  %call1496 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %795, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), double %796)
  %797 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %798 = load i32, i32* @penalty, align 4
  %799 = load i32, i32* @penalty_ex, align 4
  %800 = load i32, i32* @offset, align 4
  %call1497 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %797, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i32 %798, i32 %799, i32 %800)
  call void @exit(i32 1) #6
  unreachable

if.end.1498:                                      ; preds = %for.end.1415
  store i32 0, i32* %i, align 4
  br label %for.cond.1499

for.cond.1499:                                    ; preds = %for.inc.1514, %if.end.1498
  %801 = load i32, i32* %i, align 4
  %cmp1500 = icmp slt i32 %801, 26
  br i1 %cmp1500, label %for.body.1502, label %for.end.1516

for.body.1502:                                    ; preds = %for.cond.1499
  store i32 0, i32* %j, align 4
  br label %for.cond.1503

for.cond.1503:                                    ; preds = %for.inc.1511, %for.body.1502
  %802 = load i32, i32* %j, align 4
  %cmp1504 = icmp slt i32 %802, 26
  br i1 %cmp1504, label %for.body.1506, label %for.end.1513

for.body.1506:                                    ; preds = %for.cond.1503
  %803 = load i32, i32* %j, align 4
  %idxprom1507 = sext i32 %803 to i64
  %804 = load i32, i32* %i, align 4
  %idxprom1508 = sext i32 %804 to i64
  %arrayidx1509 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom1508
  %arrayidx1510 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx1509, i32 0, i64 %idxprom1507
  store i32 0, i32* %arrayidx1510, align 4
  br label %for.inc.1511

for.inc.1511:                                     ; preds = %for.body.1506
  %805 = load i32, i32* %j, align 4
  %inc1512 = add nsw i32 %805, 1
  store i32 %inc1512, i32* %j, align 4
  br label %for.cond.1503

for.end.1513:                                     ; preds = %for.cond.1503
  br label %for.inc.1514

for.inc.1514:                                     ; preds = %for.end.1513
  %806 = load i32, i32* %i, align 4
  %inc1515 = add nsw i32 %806, 1
  store i32 %inc1515, i32* %i, align 4
  br label %for.cond.1499

for.end.1516:                                     ; preds = %for.cond.1499
  store i32 0, i32* %i, align 4
  br label %for.cond.1517

for.cond.1517:                                    ; preds = %for.inc.1537, %for.end.1516
  %807 = load i32, i32* %i, align 4
  %cmp1518 = icmp slt i32 %807, 20
  br i1 %cmp1518, label %for.body.1520, label %for.end.1539

for.body.1520:                                    ; preds = %for.cond.1517
  store i32 0, i32* %j, align 4
  br label %for.cond.1521

for.cond.1521:                                    ; preds = %for.inc.1534, %for.body.1520
  %808 = load i32, i32* %j, align 4
  %cmp1522 = icmp slt i32 %808, 20
  br i1 %cmp1522, label %for.body.1524, label %for.end.1536

for.body.1524:                                    ; preds = %for.cond.1521
  %809 = load i32, i32* %j, align 4
  %idxprom1525 = sext i32 %809 to i64
  %810 = load i32, i32* %i, align 4
  %idxprom1526 = sext i32 %810 to i64
  %811 = load double**, double*** %n_distmp, align 8
  %arrayidx1527 = getelementptr inbounds double*, double** %811, i64 %idxprom1526
  %812 = load double*, double** %arrayidx1527, align 8
  %arrayidx1528 = getelementptr inbounds double, double* %812, i64 %idxprom1525
  %813 = load double, double* %arrayidx1528, align 8
  %conv1529 = fptosi double %813 to i32
  %814 = load i32, i32* %j, align 4
  %idxprom1530 = sext i32 %814 to i64
  %815 = load i32, i32* %i, align 4
  %idxprom1531 = sext i32 %815 to i64
  %arrayidx1532 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom1531
  %arrayidx1533 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx1532, i32 0, i64 %idxprom1530
  store i32 %conv1529, i32* %arrayidx1533, align 4
  br label %for.inc.1534

for.inc.1534:                                     ; preds = %for.body.1524
  %816 = load i32, i32* %j, align 4
  %inc1535 = add nsw i32 %816, 1
  store i32 %inc1535, i32* %j, align 4
  br label %for.cond.1521

for.end.1536:                                     ; preds = %for.cond.1521
  br label %for.inc.1537

for.inc.1537:                                     ; preds = %for.end.1536
  %817 = load i32, i32* %i, align 4
  %inc1538 = add nsw i32 %817, 1
  store i32 %inc1538, i32* %i, align 4
  br label %for.cond.1517

for.end.1539:                                     ; preds = %for.cond.1517
  %818 = load double**, double*** %n_distmp, align 8
  call void @FreeDoubleMtx(double** %818)
  %819 = load double*, double** %datafreq, align 8
  call void @FreeDoubleVec(double* %819)
  %820 = load double*, double** %freq1177, align 8
  call void @FreeDoubleVec(double* %820)
  %821 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1540 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %821, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.2068

if.else.1541:                                     ; preds = %land.lhs.true, %if.else.1171
  %822 = load i32, i32* @dorp, align 4
  %cmp1542 = icmp eq i32 %822, 112
  br i1 %cmp1542, label %land.lhs.true.1544, label %if.else.1549

land.lhs.true.1544:                               ; preds = %if.else.1541
  %823 = load i32, i32* @scoremtx, align 4
  %cmp1545 = icmp eq i32 %823, 2
  br i1 %cmp1545, label %if.then.1547, label %if.else.1549

if.then.1547:                                     ; preds = %land.lhs.true.1544
  %824 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1548 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %824, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.else.1549:                                     ; preds = %land.lhs.true.1544, %if.else.1541
  %call1557 = call double** @AllocateDoubleMtx(i32 20, i32 20)
  store double** %call1557, double*** %rsr, align 8
  %call1558 = call double** @AllocateDoubleMtx(i32 20, i32 20)
  store double** %call1558, double*** %pam11550, align 8
  %call1559 = call double** @AllocateDoubleMtx(i32 20, i32 20)
  store double** %call1559, double*** %pamx1551, align 8
  %call1560 = call double* @AllocateDoubleVec(i32 20)
  store double* %call1560, double** %freq1552, align 8
  %call1561 = call double* @AllocateDoubleVec(i32 20)
  store double* %call1561, double** %mutab, align 8
  %call1562 = call double* @AllocateDoubleVec(i32 20)
  store double* %call1562, double** %datafreq1554, align 8
  %825 = load i32, i32* @ppenalty, align 4
  %cmp1563 = icmp eq i32 %825, 100009
  br i1 %cmp1563, label %if.then.1565, label %if.end.1566

if.then.1565:                                     ; preds = %if.else.1549
  store i32 -1530, i32* @ppenalty, align 4
  br label %if.end.1566

if.end.1566:                                      ; preds = %if.then.1565, %if.else.1549
  %826 = load i32, i32* @ppenalty_OP, align 4
  %cmp1567 = icmp eq i32 %826, 100009
  br i1 %cmp1567, label %if.then.1569, label %if.end.1570

if.then.1569:                                     ; preds = %if.end.1566
  store i32 -1530, i32* @ppenalty_OP, align 4
  br label %if.end.1570

if.end.1570:                                      ; preds = %if.then.1569, %if.end.1566
  %827 = load i32, i32* @ppenalty_ex, align 4
  %cmp1571 = icmp eq i32 %827, 100009
  br i1 %cmp1571, label %if.then.1573, label %if.end.1574

if.then.1573:                                     ; preds = %if.end.1570
  store i32 0, i32* @ppenalty_ex, align 4
  br label %if.end.1574

if.end.1574:                                      ; preds = %if.then.1573, %if.end.1570
  %828 = load i32, i32* @ppenalty_EX, align 4
  %cmp1575 = icmp eq i32 %828, 100009
  br i1 %cmp1575, label %if.then.1577, label %if.end.1578

if.then.1577:                                     ; preds = %if.end.1574
  store i32 0, i32* @ppenalty_EX, align 4
  br label %if.end.1578

if.end.1578:                                      ; preds = %if.then.1577, %if.end.1574
  %829 = load i32, i32* @poffset, align 4
  %cmp1579 = icmp eq i32 %829, 100009
  br i1 %cmp1579, label %if.then.1581, label %if.end.1582

if.then.1581:                                     ; preds = %if.end.1578
  store i32 -123, i32* @poffset, align 4
  br label %if.end.1582

if.end.1582:                                      ; preds = %if.then.1581, %if.end.1578
  %830 = load i32, i32* @pamN, align 4
  %cmp1583 = icmp eq i32 %830, 100009
  br i1 %cmp1583, label %if.then.1585, label %if.end.1586

if.then.1585:                                     ; preds = %if.end.1582
  store i32 200, i32* @pamN, align 4
  br label %if.end.1586

if.end.1586:                                      ; preds = %if.then.1585, %if.end.1582
  %831 = load i32, i32* @kimuraR, align 4
  %cmp1587 = icmp eq i32 %831, 100009
  br i1 %cmp1587, label %if.then.1589, label %if.end.1590

if.then.1589:                                     ; preds = %if.end.1586
  store i32 1, i32* @kimuraR, align 4
  br label %if.end.1590

if.end.1590:                                      ; preds = %if.then.1589, %if.end.1586
  %832 = load i32, i32* @ppenalty, align 4
  %conv1591 = sitofp i32 %832 to double
  %mul1592 = fmul double 6.000000e-01, %conv1591
  %add1593 = fadd double %mul1592, 5.000000e-01
  %conv1594 = fptosi double %add1593 to i32
  store i32 %conv1594, i32* @penalty, align 4
  %833 = load i32, i32* @ppenalty_OP, align 4
  %conv1595 = sitofp i32 %833 to double
  %mul1596 = fmul double 6.000000e-01, %conv1595
  %add1597 = fadd double %mul1596, 5.000000e-01
  %conv1598 = fptosi double %add1597 to i32
  store i32 %conv1598, i32* @penalty_OP, align 4
  %834 = load i32, i32* @ppenalty_ex, align 4
  %conv1599 = sitofp i32 %834 to double
  %mul1600 = fmul double 6.000000e-01, %conv1599
  %add1601 = fadd double %mul1600, 5.000000e-01
  %conv1602 = fptosi double %add1601 to i32
  store i32 %conv1602, i32* @penalty_ex, align 4
  %835 = load i32, i32* @ppenalty_EX, align 4
  %conv1603 = sitofp i32 %835 to double
  %mul1604 = fmul double 6.000000e-01, %conv1603
  %add1605 = fadd double %mul1604, 5.000000e-01
  %conv1606 = fptosi double %add1605 to i32
  store i32 %conv1606, i32* @penalty_EX, align 4
  %836 = load i32, i32* @poffset, align 4
  %conv1607 = sitofp i32 %836 to double
  %mul1608 = fmul double 6.000000e-01, %conv1607
  %add1609 = fadd double %mul1608, 5.000000e-01
  %conv1610 = fptosi double %add1609 to i32
  store i32 %conv1610, i32* @offset, align 4
  store i32 0, i32* @offsetFFT, align 4
  store i32 60, i32* @offsetLN, align 4
  store i32 -1199, i32* @penaltyLN, align 4
  store i32 -59, i32* @penalty_exLN, align 4
  %837 = load i32, i32* @TMorJTT, align 4
  %cmp1611 = icmp eq i32 %837, 202
  %cond1613 = select i1 %cmp1611, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0)
  %838 = load i32, i32* @pamN, align 4
  %839 = load i32, i32* @ppenalty, align 4
  %conv1614 = sitofp i32 %839 to double
  %sub1615 = fsub double -0.000000e+00, %conv1614
  %div1616 = fdiv double %sub1615, 1.000000e+03
  %840 = load i32, i32* @poffset, align 4
  %conv1617 = sitofp i32 %840 to double
  %sub1618 = fsub double -0.000000e+00, %conv1617
  %div1619 = fdiv double %sub1618, 1.000000e+03
  %call1620 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @modelname, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0), i8* %cond1613, i32 %838, double %div1616, double %div1619) #1
  %841 = load double**, double*** %rsr, align 8
  %842 = load double*, double** %freq1552, align 8
  %843 = load i32, i32* @TMorJTT, align 4
  %cmp1621 = icmp eq i32 %843, 202
  %conv1622 = zext i1 %cmp1621 to i32
  call void @JTTmtx(double** %841, double* %842, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @amino, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @amino_grp, i32 0, i32 0), i32 %conv1622)
  store i32 0, i32* %i, align 4
  br label %for.cond.1623

for.cond.1623:                                    ; preds = %for.inc.1629, %if.end.1590
  %844 = load i32, i32* %i, align 4
  %cmp1624 = icmp slt i32 %844, 128
  br i1 %cmp1624, label %for.body.1626, label %for.end.1631

for.body.1626:                                    ; preds = %for.cond.1623
  %845 = load i32, i32* %i, align 4
  %idxprom1627 = sext i32 %845 to i64
  %arrayidx1628 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom1627
  store i32 -1, i32* %arrayidx1628, align 4
  br label %for.inc.1629

for.inc.1629:                                     ; preds = %for.body.1626
  %846 = load i32, i32* %i, align 4
  %inc1630 = add nsw i32 %846, 1
  store i32 %inc1630, i32* %i, align 4
  br label %for.cond.1623

for.end.1631:                                     ; preds = %for.cond.1623
  store i32 0, i32* %i, align 4
  br label %for.cond.1632

for.cond.1632:                                    ; preds = %for.inc.1641, %for.end.1631
  %847 = load i32, i32* %i, align 4
  %cmp1633 = icmp slt i32 %847, 26
  br i1 %cmp1633, label %for.body.1635, label %for.end.1643

for.body.1635:                                    ; preds = %for.cond.1632
  %848 = load i32, i32* %i, align 4
  %849 = load i32, i32* %i, align 4
  %idxprom1636 = sext i32 %849 to i64
  %arrayidx1637 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom1636
  %850 = load i8, i8* %arrayidx1637, align 1
  %conv1638 = sext i8 %850 to i32
  %idxprom1639 = sext i32 %conv1638 to i64
  %arrayidx1640 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom1639
  store i32 %848, i32* %arrayidx1640, align 4
  br label %for.inc.1641

for.inc.1641:                                     ; preds = %for.body.1635
  %851 = load i32, i32* %i, align 4
  %inc1642 = add nsw i32 %851, 1
  store i32 %inc1642, i32* %i, align 4
  br label %for.cond.1632

for.end.1643:                                     ; preds = %for.cond.1632
  %852 = load i32, i32* @fmodel, align 4
  %cmp1644 = icmp eq i32 %852, 1
  br i1 %cmp1644, label %if.then.1646, label %if.else.1647

if.then.1646:                                     ; preds = %for.end.1643
  %853 = load i32, i32* %nseq.addr, align 4
  %854 = load i8**, i8*** %seq.addr, align 8
  %855 = load double*, double** %datafreq1554, align 8
  call void @calcfreq(i32 %853, i8** %854, double* %855)
  %856 = load double*, double** %datafreq1554, align 8
  store double* %856, double** %freq11553, align 8
  br label %if.end.1648

if.else.1647:                                     ; preds = %for.end.1643
  %857 = load double*, double** %freq1552, align 8
  store double* %857, double** %freq11553, align 8
  br label %if.end.1648

if.end.1648:                                      ; preds = %if.else.1647, %if.then.1646
  %858 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %859 = load i32, i32* @pamN, align 4
  %860 = load i32, i32* @TMorJTT, align 4
  %cmp1649 = icmp eq i32 %860, 202
  %cond1651 = select i1 %cmp1649, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0)
  %call1652 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %858, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i32 0, i32 0), i32 %859, i8* %cond1651)
  store double 0.000000e+00, double* %tmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1653

for.cond.1653:                                    ; preds = %for.inc.1682, %if.end.1648
  %861 = load i32, i32* %i, align 4
  %cmp1654 = icmp slt i32 %861, 20
  br i1 %cmp1654, label %for.body.1656, label %for.end.1684

for.body.1656:                                    ; preds = %for.cond.1653
  %862 = load i32, i32* %i, align 4
  %idxprom1657 = sext i32 %862 to i64
  %863 = load double*, double** %mutab, align 8
  %arrayidx1658 = getelementptr inbounds double, double* %863, i64 %idxprom1657
  store double 0.000000e+00, double* %arrayidx1658, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1659

for.cond.1659:                                    ; preds = %for.inc.1673, %for.body.1656
  %864 = load i32, i32* %j, align 4
  %cmp1660 = icmp slt i32 %864, 20
  br i1 %cmp1660, label %for.body.1662, label %for.end.1675

for.body.1662:                                    ; preds = %for.cond.1659
  %865 = load i32, i32* %j, align 4
  %idxprom1663 = sext i32 %865 to i64
  %866 = load i32, i32* %i, align 4
  %idxprom1664 = sext i32 %866 to i64
  %867 = load double**, double*** %rsr, align 8
  %arrayidx1665 = getelementptr inbounds double*, double** %867, i64 %idxprom1664
  %868 = load double*, double** %arrayidx1665, align 8
  %arrayidx1666 = getelementptr inbounds double, double* %868, i64 %idxprom1663
  %869 = load double, double* %arrayidx1666, align 8
  %870 = load i32, i32* %j, align 4
  %idxprom1667 = sext i32 %870 to i64
  %871 = load double*, double** %freq1552, align 8
  %arrayidx1668 = getelementptr inbounds double, double* %871, i64 %idxprom1667
  %872 = load double, double* %arrayidx1668, align 8
  %mul1669 = fmul double %869, %872
  %873 = load i32, i32* %i, align 4
  %idxprom1670 = sext i32 %873 to i64
  %874 = load double*, double** %mutab, align 8
  %arrayidx1671 = getelementptr inbounds double, double* %874, i64 %idxprom1670
  %875 = load double, double* %arrayidx1671, align 8
  %add1672 = fadd double %875, %mul1669
  store double %add1672, double* %arrayidx1671, align 8
  br label %for.inc.1673

for.inc.1673:                                     ; preds = %for.body.1662
  %876 = load i32, i32* %j, align 4
  %inc1674 = add nsw i32 %876, 1
  store i32 %inc1674, i32* %j, align 4
  br label %for.cond.1659

for.end.1675:                                     ; preds = %for.cond.1659
  %877 = load i32, i32* %i, align 4
  %idxprom1676 = sext i32 %877 to i64
  %878 = load double*, double** %mutab, align 8
  %arrayidx1677 = getelementptr inbounds double, double* %878, i64 %idxprom1676
  %879 = load double, double* %arrayidx1677, align 8
  %880 = load i32, i32* %i, align 4
  %idxprom1678 = sext i32 %880 to i64
  %881 = load double*, double** %freq1552, align 8
  %arrayidx1679 = getelementptr inbounds double, double* %881, i64 %idxprom1678
  %882 = load double, double* %arrayidx1679, align 8
  %mul1680 = fmul double %879, %882
  %883 = load double, double* %tmp, align 8
  %add1681 = fadd double %883, %mul1680
  store double %add1681, double* %tmp, align 8
  br label %for.inc.1682

for.inc.1682:                                     ; preds = %for.end.1675
  %884 = load i32, i32* %i, align 4
  %inc1683 = add nsw i32 %884, 1
  store i32 %inc1683, i32* %i, align 4
  br label %for.cond.1653

for.end.1684:                                     ; preds = %for.cond.1653
  %885 = load double, double* %tmp, align 8
  %div1685 = fdiv double 1.000000e-02, %885
  store double %div1685, double* %delta, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1686

for.cond.1686:                                    ; preds = %for.inc.1722, %for.end.1684
  %886 = load i32, i32* %i, align 4
  %cmp1687 = icmp slt i32 %886, 20
  br i1 %cmp1687, label %for.body.1689, label %for.end.1724

for.body.1689:                                    ; preds = %for.cond.1686
  store i32 0, i32* %j, align 4
  br label %for.cond.1690

for.cond.1690:                                    ; preds = %for.inc.1719, %for.body.1689
  %887 = load i32, i32* %j, align 4
  %cmp1691 = icmp slt i32 %887, 20
  br i1 %cmp1691, label %for.body.1693, label %for.end.1721

for.body.1693:                                    ; preds = %for.cond.1690
  %888 = load i32, i32* %i, align 4
  %889 = load i32, i32* %j, align 4
  %cmp1694 = icmp ne i32 %888, %889
  br i1 %cmp1694, label %if.then.1696, label %if.else.1709

if.then.1696:                                     ; preds = %for.body.1693
  %890 = load double, double* %delta, align 8
  %891 = load i32, i32* %j, align 4
  %idxprom1697 = sext i32 %891 to i64
  %892 = load i32, i32* %i, align 4
  %idxprom1698 = sext i32 %892 to i64
  %893 = load double**, double*** %rsr, align 8
  %arrayidx1699 = getelementptr inbounds double*, double** %893, i64 %idxprom1698
  %894 = load double*, double** %arrayidx1699, align 8
  %arrayidx1700 = getelementptr inbounds double, double* %894, i64 %idxprom1697
  %895 = load double, double* %arrayidx1700, align 8
  %mul1701 = fmul double %890, %895
  %896 = load i32, i32* %i, align 4
  %idxprom1702 = sext i32 %896 to i64
  %897 = load double*, double** %freq1552, align 8
  %arrayidx1703 = getelementptr inbounds double, double* %897, i64 %idxprom1702
  %898 = load double, double* %arrayidx1703, align 8
  %mul1704 = fmul double %mul1701, %898
  %899 = load i32, i32* %j, align 4
  %idxprom1705 = sext i32 %899 to i64
  %900 = load i32, i32* %i, align 4
  %idxprom1706 = sext i32 %900 to i64
  %901 = load double**, double*** %pam11550, align 8
  %arrayidx1707 = getelementptr inbounds double*, double** %901, i64 %idxprom1706
  %902 = load double*, double** %arrayidx1707, align 8
  %arrayidx1708 = getelementptr inbounds double, double* %902, i64 %idxprom1705
  store double %mul1704, double* %arrayidx1708, align 8
  br label %if.end.1718

if.else.1709:                                     ; preds = %for.body.1693
  %903 = load double, double* %delta, align 8
  %904 = load i32, i32* %i, align 4
  %idxprom1710 = sext i32 %904 to i64
  %905 = load double*, double** %mutab, align 8
  %arrayidx1711 = getelementptr inbounds double, double* %905, i64 %idxprom1710
  %906 = load double, double* %arrayidx1711, align 8
  %mul1712 = fmul double %903, %906
  %sub1713 = fsub double 1.000000e+00, %mul1712
  %907 = load i32, i32* %j, align 4
  %idxprom1714 = sext i32 %907 to i64
  %908 = load i32, i32* %i, align 4
  %idxprom1715 = sext i32 %908 to i64
  %909 = load double**, double*** %pam11550, align 8
  %arrayidx1716 = getelementptr inbounds double*, double** %909, i64 %idxprom1715
  %910 = load double*, double** %arrayidx1716, align 8
  %arrayidx1717 = getelementptr inbounds double, double* %910, i64 %idxprom1714
  store double %sub1713, double* %arrayidx1717, align 8
  br label %if.end.1718

if.end.1718:                                      ; preds = %if.else.1709, %if.then.1696
  br label %for.inc.1719

for.inc.1719:                                     ; preds = %if.end.1718
  %911 = load i32, i32* %j, align 4
  %inc1720 = add nsw i32 %911, 1
  store i32 %inc1720, i32* %j, align 4
  br label %for.cond.1690

for.end.1721:                                     ; preds = %for.cond.1690
  br label %for.inc.1722

for.inc.1722:                                     ; preds = %for.end.1721
  %912 = load i32, i32* %i, align 4
  %inc1723 = add nsw i32 %912, 1
  store i32 %inc1723, i32* %i, align 4
  br label %for.cond.1686

for.end.1724:                                     ; preds = %for.cond.1686
  %913 = load i32, i32* @disp, align 4
  %tobool1725 = icmp ne i32 %913, 0
  br i1 %tobool1725, label %if.then.1726, label %if.end.1748

if.then.1726:                                     ; preds = %for.end.1724
  %914 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1727 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %914, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.1728

for.cond.1728:                                    ; preds = %for.inc.1745, %if.then.1726
  %915 = load i32, i32* %i, align 4
  %cmp1729 = icmp slt i32 %915, 20
  br i1 %cmp1729, label %for.body.1731, label %for.end.1747

for.body.1731:                                    ; preds = %for.cond.1728
  store i32 0, i32* %j, align 4
  br label %for.cond.1732

for.cond.1732:                                    ; preds = %for.inc.1741, %for.body.1731
  %916 = load i32, i32* %j, align 4
  %cmp1733 = icmp slt i32 %916, 20
  br i1 %cmp1733, label %for.body.1735, label %for.end.1743

for.body.1735:                                    ; preds = %for.cond.1732
  %917 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %918 = load i32, i32* %j, align 4
  %idxprom1736 = sext i32 %918 to i64
  %919 = load i32, i32* %i, align 4
  %idxprom1737 = sext i32 %919 to i64
  %920 = load double**, double*** %pam11550, align 8
  %arrayidx1738 = getelementptr inbounds double*, double** %920, i64 %idxprom1737
  %921 = load double*, double** %arrayidx1738, align 8
  %arrayidx1739 = getelementptr inbounds double, double* %921, i64 %idxprom1736
  %922 = load double, double* %arrayidx1739, align 8
  %call1740 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %917, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), double %922)
  br label %for.inc.1741

for.inc.1741:                                     ; preds = %for.body.1735
  %923 = load i32, i32* %j, align 4
  %inc1742 = add nsw i32 %923, 1
  store i32 %inc1742, i32* %j, align 4
  br label %for.cond.1732

for.end.1743:                                     ; preds = %for.cond.1732
  %924 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1744 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %924, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.1745

for.inc.1745:                                     ; preds = %for.end.1743
  %925 = load i32, i32* %i, align 4
  %inc1746 = add nsw i32 %925, 1
  store i32 %inc1746, i32* %i, align 4
  br label %for.cond.1728

for.end.1747:                                     ; preds = %for.cond.1728
  br label %if.end.1748

if.end.1748:                                      ; preds = %for.end.1747, %for.end.1724
  %926 = load double**, double*** %pamx1551, align 8
  call void @MtxuntDouble(double** %926, i32 20)
  store i32 0, i32* %x, align 4
  br label %for.cond.1749

for.cond.1749:                                    ; preds = %for.inc.1753, %if.end.1748
  %927 = load i32, i32* %x, align 4
  %928 = load i32, i32* @pamN, align 4
  %cmp1750 = icmp slt i32 %927, %928
  br i1 %cmp1750, label %for.body.1752, label %for.end.1755

for.body.1752:                                    ; preds = %for.cond.1749
  %929 = load double**, double*** %pamx1551, align 8
  %930 = load double**, double*** %pam11550, align 8
  call void @MtxmltDouble(double** %929, double** %930, i32 20)
  br label %for.inc.1753

for.inc.1753:                                     ; preds = %for.body.1752
  %931 = load i32, i32* %x, align 4
  %inc1754 = add nsw i32 %931, 1
  store i32 %inc1754, i32* %x, align 4
  br label %for.cond.1749

for.end.1755:                                     ; preds = %for.cond.1749
  store i32 0, i32* %i, align 4
  br label %for.cond.1756

for.cond.1756:                                    ; preds = %for.inc.1774, %for.end.1755
  %932 = load i32, i32* %i, align 4
  %cmp1757 = icmp slt i32 %932, 20
  br i1 %cmp1757, label %for.body.1759, label %for.end.1776

for.body.1759:                                    ; preds = %for.cond.1756
  store i32 0, i32* %j, align 4
  br label %for.cond.1760

for.cond.1760:                                    ; preds = %for.inc.1771, %for.body.1759
  %933 = load i32, i32* %j, align 4
  %cmp1761 = icmp slt i32 %933, 20
  br i1 %cmp1761, label %for.body.1763, label %for.end.1773

for.body.1763:                                    ; preds = %for.cond.1760
  %934 = load i32, i32* %j, align 4
  %idxprom1764 = sext i32 %934 to i64
  %935 = load double*, double** %freq1552, align 8
  %arrayidx1765 = getelementptr inbounds double, double* %935, i64 %idxprom1764
  %936 = load double, double* %arrayidx1765, align 8
  %937 = load i32, i32* %j, align 4
  %idxprom1766 = sext i32 %937 to i64
  %938 = load i32, i32* %i, align 4
  %idxprom1767 = sext i32 %938 to i64
  %939 = load double**, double*** %pamx1551, align 8
  %arrayidx1768 = getelementptr inbounds double*, double** %939, i64 %idxprom1767
  %940 = load double*, double** %arrayidx1768, align 8
  %arrayidx1769 = getelementptr inbounds double, double* %940, i64 %idxprom1766
  %941 = load double, double* %arrayidx1769, align 8
  %div1770 = fdiv double %941, %936
  store double %div1770, double* %arrayidx1769, align 8
  br label %for.inc.1771

for.inc.1771:                                     ; preds = %for.body.1763
  %942 = load i32, i32* %j, align 4
  %inc1772 = add nsw i32 %942, 1
  store i32 %inc1772, i32* %j, align 4
  br label %for.cond.1760

for.end.1773:                                     ; preds = %for.cond.1760
  br label %for.inc.1774

for.inc.1774:                                     ; preds = %for.end.1773
  %943 = load i32, i32* %i, align 4
  %inc1775 = add nsw i32 %943, 1
  store i32 %inc1775, i32* %i, align 4
  br label %for.cond.1756

for.end.1776:                                     ; preds = %for.cond.1756
  store i32 0, i32* %i, align 4
  br label %for.cond.1777

for.cond.1777:                                    ; preds = %for.inc.1811, %for.end.1776
  %944 = load i32, i32* %i, align 4
  %cmp1778 = icmp slt i32 %944, 20
  br i1 %cmp1778, label %for.body.1780, label %for.end.1813

for.body.1780:                                    ; preds = %for.cond.1777
  store i32 0, i32* %j, align 4
  br label %for.cond.1781

for.cond.1781:                                    ; preds = %for.inc.1808, %for.body.1780
  %945 = load i32, i32* %j, align 4
  %cmp1782 = icmp slt i32 %945, 20
  br i1 %cmp1782, label %for.body.1784, label %for.end.1810

for.body.1784:                                    ; preds = %for.cond.1781
  %946 = load i32, i32* %j, align 4
  %idxprom1785 = sext i32 %946 to i64
  %947 = load i32, i32* %i, align 4
  %idxprom1786 = sext i32 %947 to i64
  %948 = load double**, double*** %pamx1551, align 8
  %arrayidx1787 = getelementptr inbounds double*, double** %948, i64 %idxprom1786
  %949 = load double*, double** %arrayidx1787, align 8
  %arrayidx1788 = getelementptr inbounds double, double* %949, i64 %idxprom1785
  %950 = load double, double* %arrayidx1788, align 8
  %cmp1789 = fcmp oeq double %950, 0.000000e+00
  br i1 %cmp1789, label %if.then.1791, label %if.end.1797

if.then.1791:                                     ; preds = %for.body.1784
  %951 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %952 = load i32, i32* %i, align 4
  %953 = load i32, i32* %j, align 4
  %call1792 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %951, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0), i32 %952, i32 %953)
  %954 = load i32, i32* %j, align 4
  %idxprom1793 = sext i32 %954 to i64
  %955 = load i32, i32* %i, align 4
  %idxprom1794 = sext i32 %955 to i64
  %956 = load double**, double*** %pamx1551, align 8
  %arrayidx1795 = getelementptr inbounds double*, double** %956, i64 %idxprom1794
  %957 = load double*, double** %arrayidx1795, align 8
  %arrayidx1796 = getelementptr inbounds double, double* %957, i64 %idxprom1793
  store double 1.000000e-05, double* %arrayidx1796, align 8
  br label %if.end.1797

if.end.1797:                                      ; preds = %if.then.1791, %for.body.1784
  %958 = load i32, i32* %j, align 4
  %idxprom1798 = sext i32 %958 to i64
  %959 = load i32, i32* %i, align 4
  %idxprom1799 = sext i32 %959 to i64
  %960 = load double**, double*** %pamx1551, align 8
  %arrayidx1800 = getelementptr inbounds double*, double** %960, i64 %idxprom1799
  %961 = load double*, double** %arrayidx1800, align 8
  %arrayidx1801 = getelementptr inbounds double, double* %961, i64 %idxprom1798
  %962 = load double, double* %arrayidx1801, align 8
  %call1802 = call double @log10(double %962) #1
  %mul1803 = fmul double %call1802, 1.000000e+03
  %963 = load i32, i32* %j, align 4
  %idxprom1804 = sext i32 %963 to i64
  %964 = load i32, i32* %i, align 4
  %idxprom1805 = sext i32 %964 to i64
  %965 = load double**, double*** %pamx1551, align 8
  %arrayidx1806 = getelementptr inbounds double*, double** %965, i64 %idxprom1805
  %966 = load double*, double** %arrayidx1806, align 8
  %arrayidx1807 = getelementptr inbounds double, double* %966, i64 %idxprom1804
  store double %mul1803, double* %arrayidx1807, align 8
  br label %for.inc.1808

for.inc.1808:                                     ; preds = %if.end.1797
  %967 = load i32, i32* %j, align 4
  %inc1809 = add nsw i32 %967, 1
  store i32 %inc1809, i32* %j, align 4
  br label %for.cond.1781

for.end.1810:                                     ; preds = %for.cond.1781
  br label %for.inc.1811

for.inc.1811:                                     ; preds = %for.end.1810
  %968 = load i32, i32* %i, align 4
  %inc1812 = add nsw i32 %968, 1
  store i32 %inc1812, i32* %i, align 4
  br label %for.cond.1777

for.end.1813:                                     ; preds = %for.cond.1777
  %969 = load i32, i32* @fmodel, align 4
  %cmp1814 = icmp eq i32 %969, -1
  br i1 %cmp1814, label %if.then.1816, label %if.else.1817

if.then.1816:                                     ; preds = %for.end.1813
  store double 0.000000e+00, double* %average1555, align 8
  br label %if.end.1843

if.else.1817:                                     ; preds = %for.end.1813
  store double 0.000000e+00, double* %average1555, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1818

for.cond.1818:                                    ; preds = %for.inc.1840, %if.else.1817
  %970 = load i32, i32* %i, align 4
  %cmp1819 = icmp slt i32 %970, 20
  br i1 %cmp1819, label %for.body.1821, label %for.end.1842

for.body.1821:                                    ; preds = %for.cond.1818
  store i32 0, i32* %j, align 4
  br label %for.cond.1822

for.cond.1822:                                    ; preds = %for.inc.1837, %for.body.1821
  %971 = load i32, i32* %j, align 4
  %cmp1823 = icmp slt i32 %971, 20
  br i1 %cmp1823, label %for.body.1825, label %for.end.1839

for.body.1825:                                    ; preds = %for.cond.1822
  %972 = load i32, i32* %j, align 4
  %idxprom1826 = sext i32 %972 to i64
  %973 = load i32, i32* %i, align 4
  %idxprom1827 = sext i32 %973 to i64
  %974 = load double**, double*** %pamx1551, align 8
  %arrayidx1828 = getelementptr inbounds double*, double** %974, i64 %idxprom1827
  %975 = load double*, double** %arrayidx1828, align 8
  %arrayidx1829 = getelementptr inbounds double, double* %975, i64 %idxprom1826
  %976 = load double, double* %arrayidx1829, align 8
  %977 = load i32, i32* %i, align 4
  %idxprom1830 = sext i32 %977 to i64
  %978 = load double*, double** %freq11553, align 8
  %arrayidx1831 = getelementptr inbounds double, double* %978, i64 %idxprom1830
  %979 = load double, double* %arrayidx1831, align 8
  %mul1832 = fmul double %976, %979
  %980 = load i32, i32* %j, align 4
  %idxprom1833 = sext i32 %980 to i64
  %981 = load double*, double** %freq11553, align 8
  %arrayidx1834 = getelementptr inbounds double, double* %981, i64 %idxprom1833
  %982 = load double, double* %arrayidx1834, align 8
  %mul1835 = fmul double %mul1832, %982
  %983 = load double, double* %average1555, align 8
  %add1836 = fadd double %983, %mul1835
  store double %add1836, double* %average1555, align 8
  br label %for.inc.1837

for.inc.1837:                                     ; preds = %for.body.1825
  %984 = load i32, i32* %j, align 4
  %inc1838 = add nsw i32 %984, 1
  store i32 %inc1838, i32* %j, align 4
  br label %for.cond.1822

for.end.1839:                                     ; preds = %for.cond.1822
  br label %for.inc.1840

for.inc.1840:                                     ; preds = %for.end.1839
  %985 = load i32, i32* %i, align 4
  %inc1841 = add nsw i32 %985, 1
  store i32 %inc1841, i32* %i, align 4
  br label %for.cond.1818

for.end.1842:                                     ; preds = %for.cond.1818
  br label %if.end.1843

if.end.1843:                                      ; preds = %for.end.1842, %if.then.1816
  store i32 0, i32* %i, align 4
  br label %for.cond.1844

for.cond.1844:                                    ; preds = %for.inc.1860, %if.end.1843
  %986 = load i32, i32* %i, align 4
  %cmp1845 = icmp slt i32 %986, 20
  br i1 %cmp1845, label %for.body.1847, label %for.end.1862

for.body.1847:                                    ; preds = %for.cond.1844
  store i32 0, i32* %j, align 4
  br label %for.cond.1848

for.cond.1848:                                    ; preds = %for.inc.1857, %for.body.1847
  %987 = load i32, i32* %j, align 4
  %cmp1849 = icmp slt i32 %987, 20
  br i1 %cmp1849, label %for.body.1851, label %for.end.1859

for.body.1851:                                    ; preds = %for.cond.1848
  %988 = load double, double* %average1555, align 8
  %989 = load i32, i32* %j, align 4
  %idxprom1852 = sext i32 %989 to i64
  %990 = load i32, i32* %i, align 4
  %idxprom1853 = sext i32 %990 to i64
  %991 = load double**, double*** %pamx1551, align 8
  %arrayidx1854 = getelementptr inbounds double*, double** %991, i64 %idxprom1853
  %992 = load double*, double** %arrayidx1854, align 8
  %arrayidx1855 = getelementptr inbounds double, double* %992, i64 %idxprom1852
  %993 = load double, double* %arrayidx1855, align 8
  %sub1856 = fsub double %993, %988
  store double %sub1856, double* %arrayidx1855, align 8
  br label %for.inc.1857

for.inc.1857:                                     ; preds = %for.body.1851
  %994 = load i32, i32* %j, align 4
  %inc1858 = add nsw i32 %994, 1
  store i32 %inc1858, i32* %j, align 4
  br label %for.cond.1848

for.end.1859:                                     ; preds = %for.cond.1848
  br label %for.inc.1860

for.inc.1860:                                     ; preds = %for.end.1859
  %995 = load i32, i32* %i, align 4
  %inc1861 = add nsw i32 %995, 1
  store i32 %inc1861, i32* %i, align 4
  br label %for.cond.1844

for.end.1862:                                     ; preds = %for.cond.1844
  store double 0.000000e+00, double* %average1555, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1863

for.cond.1863:                                    ; preds = %for.inc.1875, %for.end.1862
  %996 = load i32, i32* %i, align 4
  %cmp1864 = icmp slt i32 %996, 20
  br i1 %cmp1864, label %for.body.1866, label %for.end.1877

for.body.1866:                                    ; preds = %for.cond.1863
  %997 = load i32, i32* %i, align 4
  %idxprom1867 = sext i32 %997 to i64
  %998 = load i32, i32* %i, align 4
  %idxprom1868 = sext i32 %998 to i64
  %999 = load double**, double*** %pamx1551, align 8
  %arrayidx1869 = getelementptr inbounds double*, double** %999, i64 %idxprom1868
  %1000 = load double*, double** %arrayidx1869, align 8
  %arrayidx1870 = getelementptr inbounds double, double* %1000, i64 %idxprom1867
  %1001 = load double, double* %arrayidx1870, align 8
  %1002 = load i32, i32* %i, align 4
  %idxprom1871 = sext i32 %1002 to i64
  %1003 = load double*, double** %freq11553, align 8
  %arrayidx1872 = getelementptr inbounds double, double* %1003, i64 %idxprom1871
  %1004 = load double, double* %arrayidx1872, align 8
  %mul1873 = fmul double %1001, %1004
  %1005 = load double, double* %average1555, align 8
  %add1874 = fadd double %1005, %mul1873
  store double %add1874, double* %average1555, align 8
  br label %for.inc.1875

for.inc.1875:                                     ; preds = %for.body.1866
  %1006 = load i32, i32* %i, align 4
  %inc1876 = add nsw i32 %1006, 1
  store i32 %inc1876, i32* %i, align 4
  br label %for.cond.1863

for.end.1877:                                     ; preds = %for.cond.1863
  store i32 0, i32* %i, align 4
  br label %for.cond.1878

for.cond.1878:                                    ; preds = %for.inc.1895, %for.end.1877
  %1007 = load i32, i32* %i, align 4
  %cmp1879 = icmp slt i32 %1007, 20
  br i1 %cmp1879, label %for.body.1881, label %for.end.1897

for.body.1881:                                    ; preds = %for.cond.1878
  store i32 0, i32* %j, align 4
  br label %for.cond.1882

for.cond.1882:                                    ; preds = %for.inc.1892, %for.body.1881
  %1008 = load i32, i32* %j, align 4
  %cmp1883 = icmp slt i32 %1008, 20
  br i1 %cmp1883, label %for.body.1885, label %for.end.1894

for.body.1885:                                    ; preds = %for.cond.1882
  %1009 = load double, double* %average1555, align 8
  %div1886 = fdiv double 6.000000e+02, %1009
  %1010 = load i32, i32* %j, align 4
  %idxprom1887 = sext i32 %1010 to i64
  %1011 = load i32, i32* %i, align 4
  %idxprom1888 = sext i32 %1011 to i64
  %1012 = load double**, double*** %pamx1551, align 8
  %arrayidx1889 = getelementptr inbounds double*, double** %1012, i64 %idxprom1888
  %1013 = load double*, double** %arrayidx1889, align 8
  %arrayidx1890 = getelementptr inbounds double, double* %1013, i64 %idxprom1887
  %1014 = load double, double* %arrayidx1890, align 8
  %mul1891 = fmul double %1014, %div1886
  store double %mul1891, double* %arrayidx1890, align 8
  br label %for.inc.1892

for.inc.1892:                                     ; preds = %for.body.1885
  %1015 = load i32, i32* %j, align 4
  %inc1893 = add nsw i32 %1015, 1
  store i32 %inc1893, i32* %j, align 4
  br label %for.cond.1882

for.end.1894:                                     ; preds = %for.cond.1882
  br label %for.inc.1895

for.inc.1895:                                     ; preds = %for.end.1894
  %1016 = load i32, i32* %i, align 4
  %inc1896 = add nsw i32 %1016, 1
  store i32 %inc1896, i32* %i, align 4
  br label %for.cond.1878

for.end.1897:                                     ; preds = %for.cond.1878
  store i32 0, i32* %i, align 4
  br label %for.cond.1898

for.cond.1898:                                    ; preds = %for.inc.1915, %for.end.1897
  %1017 = load i32, i32* %i, align 4
  %cmp1899 = icmp slt i32 %1017, 20
  br i1 %cmp1899, label %for.body.1901, label %for.end.1917

for.body.1901:                                    ; preds = %for.cond.1898
  store i32 0, i32* %j, align 4
  br label %for.cond.1902

for.cond.1902:                                    ; preds = %for.inc.1912, %for.body.1901
  %1018 = load i32, i32* %j, align 4
  %cmp1903 = icmp slt i32 %1018, 20
  br i1 %cmp1903, label %for.body.1905, label %for.end.1914

for.body.1905:                                    ; preds = %for.cond.1902
  %1019 = load i32, i32* @offset, align 4
  %conv1906 = sitofp i32 %1019 to double
  %1020 = load i32, i32* %j, align 4
  %idxprom1907 = sext i32 %1020 to i64
  %1021 = load i32, i32* %i, align 4
  %idxprom1908 = sext i32 %1021 to i64
  %1022 = load double**, double*** %pamx1551, align 8
  %arrayidx1909 = getelementptr inbounds double*, double** %1022, i64 %idxprom1908
  %1023 = load double*, double** %arrayidx1909, align 8
  %arrayidx1910 = getelementptr inbounds double, double* %1023, i64 %idxprom1907
  %1024 = load double, double* %arrayidx1910, align 8
  %sub1911 = fsub double %1024, %conv1906
  store double %sub1911, double* %arrayidx1910, align 8
  br label %for.inc.1912

for.inc.1912:                                     ; preds = %for.body.1905
  %1025 = load i32, i32* %j, align 4
  %inc1913 = add nsw i32 %1025, 1
  store i32 %inc1913, i32* %j, align 4
  br label %for.cond.1902

for.end.1914:                                     ; preds = %for.cond.1902
  br label %for.inc.1915

for.inc.1915:                                     ; preds = %for.end.1914
  %1026 = load i32, i32* %i, align 4
  %inc1916 = add nsw i32 %1026, 1
  store i32 %inc1916, i32* %i, align 4
  br label %for.cond.1898

for.end.1917:                                     ; preds = %for.cond.1898
  store i32 0, i32* %i, align 4
  br label %for.cond.1918

for.cond.1918:                                    ; preds = %for.inc.1939, %for.end.1917
  %1027 = load i32, i32* %i, align 4
  %cmp1919 = icmp slt i32 %1027, 20
  br i1 %cmp1919, label %for.body.1921, label %for.end.1941

for.body.1921:                                    ; preds = %for.cond.1918
  store i32 0, i32* %j, align 4
  br label %for.cond.1922

for.cond.1922:                                    ; preds = %for.inc.1936, %for.body.1921
  %1028 = load i32, i32* %j, align 4
  %cmp1923 = icmp slt i32 %1028, 20
  br i1 %cmp1923, label %for.body.1925, label %for.end.1938

for.body.1925:                                    ; preds = %for.cond.1922
  %1029 = load i32, i32* %j, align 4
  %idxprom1926 = sext i32 %1029 to i64
  %1030 = load i32, i32* %i, align 4
  %idxprom1927 = sext i32 %1030 to i64
  %1031 = load double**, double*** %pamx1551, align 8
  %arrayidx1928 = getelementptr inbounds double*, double** %1031, i64 %idxprom1927
  %1032 = load double*, double** %arrayidx1928, align 8
  %arrayidx1929 = getelementptr inbounds double, double* %1032, i64 %idxprom1926
  %1033 = load double, double* %arrayidx1929, align 8
  %call1930 = call i32 @shishagonyuu(double %1033)
  %conv1931 = sitofp i32 %call1930 to double
  %1034 = load i32, i32* %j, align 4
  %idxprom1932 = sext i32 %1034 to i64
  %1035 = load i32, i32* %i, align 4
  %idxprom1933 = sext i32 %1035 to i64
  %1036 = load double**, double*** %pamx1551, align 8
  %arrayidx1934 = getelementptr inbounds double*, double** %1036, i64 %idxprom1933
  %1037 = load double*, double** %arrayidx1934, align 8
  %arrayidx1935 = getelementptr inbounds double, double* %1037, i64 %idxprom1932
  store double %conv1931, double* %arrayidx1935, align 8
  br label %for.inc.1936

for.inc.1936:                                     ; preds = %for.body.1925
  %1038 = load i32, i32* %j, align 4
  %inc1937 = add nsw i32 %1038, 1
  store i32 %inc1937, i32* %j, align 4
  br label %for.cond.1922

for.end.1938:                                     ; preds = %for.cond.1922
  br label %for.inc.1939

for.inc.1939:                                     ; preds = %for.end.1938
  %1039 = load i32, i32* %i, align 4
  %inc1940 = add nsw i32 %1039, 1
  store i32 %inc1940, i32* %i, align 4
  br label %for.cond.1918

for.end.1941:                                     ; preds = %for.cond.1918
  %1040 = load i32, i32* @disp, align 4
  %tobool1942 = icmp ne i32 %1040, 0
  br i1 %tobool1942, label %if.then.1943, label %if.end.2024

if.then.1943:                                     ; preds = %for.end.1941
  %1041 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1944 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1041, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.1945

for.cond.1945:                                    ; preds = %for.inc.1966, %if.then.1943
  %1042 = load i32, i32* %i, align 4
  %cmp1946 = icmp slt i32 %1042, 20
  br i1 %cmp1946, label %for.body.1948, label %for.end.1968

for.body.1948:                                    ; preds = %for.cond.1945
  %1043 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1044 = load i32, i32* %i, align 4
  %idxprom1949 = sext i32 %1044 to i64
  %arrayidx1950 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom1949
  %1045 = load i8, i8* %arrayidx1950, align 1
  %conv1951 = sext i8 %1045 to i32
  %call1952 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1043, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 %conv1951)
  store i32 0, i32* %j, align 4
  br label %for.cond.1953

for.cond.1953:                                    ; preds = %for.inc.1962, %for.body.1948
  %1046 = load i32, i32* %j, align 4
  %cmp1954 = icmp slt i32 %1046, 20
  br i1 %cmp1954, label %for.body.1956, label %for.end.1964

for.body.1956:                                    ; preds = %for.cond.1953
  %1047 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1048 = load i32, i32* %j, align 4
  %idxprom1957 = sext i32 %1048 to i64
  %1049 = load i32, i32* %i, align 4
  %idxprom1958 = sext i32 %1049 to i64
  %1050 = load double**, double*** %pamx1551, align 8
  %arrayidx1959 = getelementptr inbounds double*, double** %1050, i64 %idxprom1958
  %1051 = load double*, double** %arrayidx1959, align 8
  %arrayidx1960 = getelementptr inbounds double, double* %1051, i64 %idxprom1957
  %1052 = load double, double* %arrayidx1960, align 8
  %call1961 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1047, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), double %1052)
  br label %for.inc.1962

for.inc.1962:                                     ; preds = %for.body.1956
  %1053 = load i32, i32* %j, align 4
  %inc1963 = add nsw i32 %1053, 1
  store i32 %inc1963, i32* %j, align 4
  br label %for.cond.1953

for.end.1964:                                     ; preds = %for.cond.1953
  %1054 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1965 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1054, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.1966

for.inc.1966:                                     ; preds = %for.end.1964
  %1055 = load i32, i32* %i, align 4
  %inc1967 = add nsw i32 %1055, 1
  store i32 %inc1967, i32* %i, align 4
  br label %for.cond.1945

for.end.1968:                                     ; preds = %for.cond.1945
  %1056 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1969 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1056, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.1970

for.cond.1970:                                    ; preds = %for.inc.1978, %for.end.1968
  %1057 = load i32, i32* %i, align 4
  %cmp1971 = icmp slt i32 %1057, 20
  br i1 %cmp1971, label %for.body.1973, label %for.end.1980

for.body.1973:                                    ; preds = %for.cond.1970
  %1058 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1059 = load i32, i32* %i, align 4
  %idxprom1974 = sext i32 %1059 to i64
  %arrayidx1975 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom1974
  %1060 = load i8, i8* %arrayidx1975, align 1
  %conv1976 = sext i8 %1060 to i32
  %call1977 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1058, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 %conv1976)
  br label %for.inc.1978

for.inc.1978:                                     ; preds = %for.body.1973
  %1061 = load i32, i32* %i, align 4
  %inc1979 = add nsw i32 %1061, 1
  store i32 %inc1979, i32* %i, align 4
  br label %for.cond.1970

for.end.1980:                                     ; preds = %for.cond.1970
  store double 0.000000e+00, double* %average1555, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1981

for.cond.1981:                                    ; preds = %for.inc.2003, %for.end.1980
  %1062 = load i32, i32* %i, align 4
  %cmp1982 = icmp slt i32 %1062, 20
  br i1 %cmp1982, label %for.body.1984, label %for.end.2005

for.body.1984:                                    ; preds = %for.cond.1981
  store i32 0, i32* %j, align 4
  br label %for.cond.1985

for.cond.1985:                                    ; preds = %for.inc.2000, %for.body.1984
  %1063 = load i32, i32* %j, align 4
  %cmp1986 = icmp slt i32 %1063, 20
  br i1 %cmp1986, label %for.body.1988, label %for.end.2002

for.body.1988:                                    ; preds = %for.cond.1985
  %1064 = load i32, i32* %j, align 4
  %idxprom1989 = sext i32 %1064 to i64
  %1065 = load i32, i32* %i, align 4
  %idxprom1990 = sext i32 %1065 to i64
  %1066 = load double**, double*** %pamx1551, align 8
  %arrayidx1991 = getelementptr inbounds double*, double** %1066, i64 %idxprom1990
  %1067 = load double*, double** %arrayidx1991, align 8
  %arrayidx1992 = getelementptr inbounds double, double* %1067, i64 %idxprom1989
  %1068 = load double, double* %arrayidx1992, align 8
  %1069 = load i32, i32* %i, align 4
  %idxprom1993 = sext i32 %1069 to i64
  %1070 = load double*, double** %freq11553, align 8
  %arrayidx1994 = getelementptr inbounds double, double* %1070, i64 %idxprom1993
  %1071 = load double, double* %arrayidx1994, align 8
  %mul1995 = fmul double %1068, %1071
  %1072 = load i32, i32* %j, align 4
  %idxprom1996 = sext i32 %1072 to i64
  %1073 = load double*, double** %freq11553, align 8
  %arrayidx1997 = getelementptr inbounds double, double* %1073, i64 %idxprom1996
  %1074 = load double, double* %arrayidx1997, align 8
  %mul1998 = fmul double %mul1995, %1074
  %1075 = load double, double* %average1555, align 8
  %add1999 = fadd double %1075, %mul1998
  store double %add1999, double* %average1555, align 8
  br label %for.inc.2000

for.inc.2000:                                     ; preds = %for.body.1988
  %1076 = load i32, i32* %j, align 4
  %inc2001 = add nsw i32 %1076, 1
  store i32 %inc2001, i32* %j, align 4
  br label %for.cond.1985

for.end.2002:                                     ; preds = %for.cond.1985
  br label %for.inc.2003

for.inc.2003:                                     ; preds = %for.end.2002
  %1077 = load i32, i32* %i, align 4
  %inc2004 = add nsw i32 %1077, 1
  store i32 %inc2004, i32* %i, align 4
  br label %for.cond.1981

for.end.2005:                                     ; preds = %for.cond.1981
  %1078 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1079 = load double, double* %average1555, align 8
  %call2006 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1078, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), double %1079)
  store double 0.000000e+00, double* %average1555, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2007

for.cond.2007:                                    ; preds = %for.inc.2019, %for.end.2005
  %1080 = load i32, i32* %i, align 4
  %cmp2008 = icmp slt i32 %1080, 20
  br i1 %cmp2008, label %for.body.2010, label %for.end.2021

for.body.2010:                                    ; preds = %for.cond.2007
  %1081 = load i32, i32* %i, align 4
  %idxprom2011 = sext i32 %1081 to i64
  %1082 = load i32, i32* %i, align 4
  %idxprom2012 = sext i32 %1082 to i64
  %1083 = load double**, double*** %pamx1551, align 8
  %arrayidx2013 = getelementptr inbounds double*, double** %1083, i64 %idxprom2012
  %1084 = load double*, double** %arrayidx2013, align 8
  %arrayidx2014 = getelementptr inbounds double, double* %1084, i64 %idxprom2011
  %1085 = load double, double* %arrayidx2014, align 8
  %1086 = load i32, i32* %i, align 4
  %idxprom2015 = sext i32 %1086 to i64
  %1087 = load double*, double** %freq11553, align 8
  %arrayidx2016 = getelementptr inbounds double, double* %1087, i64 %idxprom2015
  %1088 = load double, double* %arrayidx2016, align 8
  %mul2017 = fmul double %1085, %1088
  %1089 = load double, double* %average1555, align 8
  %add2018 = fadd double %1089, %mul2017
  store double %add2018, double* %average1555, align 8
  br label %for.inc.2019

for.inc.2019:                                     ; preds = %for.body.2010
  %1090 = load i32, i32* %i, align 4
  %inc2020 = add nsw i32 %1090, 1
  store i32 %inc2020, i32* %i, align 4
  br label %for.cond.2007

for.end.2021:                                     ; preds = %for.cond.2007
  %1091 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1092 = load double, double* %average1555, align 8
  %call2022 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1091, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), double %1092)
  %1093 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1094 = load i32, i32* @penalty, align 4
  %1095 = load i32, i32* @penalty_ex, align 4
  %1096 = load i32, i32* @offset, align 4
  %call2023 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1093, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i32 %1094, i32 %1095, i32 %1096)
  call void @exit(i32 1) #6
  unreachable

if.end.2024:                                      ; preds = %for.end.1941
  store i32 0, i32* %i, align 4
  br label %for.cond.2025

for.cond.2025:                                    ; preds = %for.inc.2040, %if.end.2024
  %1097 = load i32, i32* %i, align 4
  %cmp2026 = icmp slt i32 %1097, 26
  br i1 %cmp2026, label %for.body.2028, label %for.end.2042

for.body.2028:                                    ; preds = %for.cond.2025
  store i32 0, i32* %j, align 4
  br label %for.cond.2029

for.cond.2029:                                    ; preds = %for.inc.2037, %for.body.2028
  %1098 = load i32, i32* %j, align 4
  %cmp2030 = icmp slt i32 %1098, 26
  br i1 %cmp2030, label %for.body.2032, label %for.end.2039

for.body.2032:                                    ; preds = %for.cond.2029
  %1099 = load i32, i32* %j, align 4
  %idxprom2033 = sext i32 %1099 to i64
  %1100 = load i32, i32* %i, align 4
  %idxprom2034 = sext i32 %1100 to i64
  %arrayidx2035 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom2034
  %arrayidx2036 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2035, i32 0, i64 %idxprom2033
  store i32 0, i32* %arrayidx2036, align 4
  br label %for.inc.2037

for.inc.2037:                                     ; preds = %for.body.2032
  %1101 = load i32, i32* %j, align 4
  %inc2038 = add nsw i32 %1101, 1
  store i32 %inc2038, i32* %j, align 4
  br label %for.cond.2029

for.end.2039:                                     ; preds = %for.cond.2029
  br label %for.inc.2040

for.inc.2040:                                     ; preds = %for.end.2039
  %1102 = load i32, i32* %i, align 4
  %inc2041 = add nsw i32 %1102, 1
  store i32 %inc2041, i32* %i, align 4
  br label %for.cond.2025

for.end.2042:                                     ; preds = %for.cond.2025
  store i32 0, i32* %i, align 4
  br label %for.cond.2043

for.cond.2043:                                    ; preds = %for.inc.2063, %for.end.2042
  %1103 = load i32, i32* %i, align 4
  %cmp2044 = icmp slt i32 %1103, 20
  br i1 %cmp2044, label %for.body.2046, label %for.end.2065

for.body.2046:                                    ; preds = %for.cond.2043
  store i32 0, i32* %j, align 4
  br label %for.cond.2047

for.cond.2047:                                    ; preds = %for.inc.2060, %for.body.2046
  %1104 = load i32, i32* %j, align 4
  %cmp2048 = icmp slt i32 %1104, 20
  br i1 %cmp2048, label %for.body.2050, label %for.end.2062

for.body.2050:                                    ; preds = %for.cond.2047
  %1105 = load i32, i32* %j, align 4
  %idxprom2051 = sext i32 %1105 to i64
  %1106 = load i32, i32* %i, align 4
  %idxprom2052 = sext i32 %1106 to i64
  %1107 = load double**, double*** %pamx1551, align 8
  %arrayidx2053 = getelementptr inbounds double*, double** %1107, i64 %idxprom2052
  %1108 = load double*, double** %arrayidx2053, align 8
  %arrayidx2054 = getelementptr inbounds double, double* %1108, i64 %idxprom2051
  %1109 = load double, double* %arrayidx2054, align 8
  %conv2055 = fptosi double %1109 to i32
  %1110 = load i32, i32* %j, align 4
  %idxprom2056 = sext i32 %1110 to i64
  %1111 = load i32, i32* %i, align 4
  %idxprom2057 = sext i32 %1111 to i64
  %arrayidx2058 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom2057
  %arrayidx2059 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2058, i32 0, i64 %idxprom2056
  store i32 %conv2055, i32* %arrayidx2059, align 4
  br label %for.inc.2060

for.inc.2060:                                     ; preds = %for.body.2050
  %1112 = load i32, i32* %j, align 4
  %inc2061 = add nsw i32 %1112, 1
  store i32 %inc2061, i32* %j, align 4
  br label %for.cond.2047

for.end.2062:                                     ; preds = %for.cond.2047
  br label %for.inc.2063

for.inc.2063:                                     ; preds = %for.end.2062
  %1113 = load i32, i32* %i, align 4
  %inc2064 = add nsw i32 %1113, 1
  store i32 %inc2064, i32* %i, align 4
  br label %for.cond.2043

for.end.2065:                                     ; preds = %for.cond.2043
  %1114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2066 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0))
  %1115 = load double**, double*** %rsr, align 8
  call void @FreeDoubleMtx(double** %1115)
  %1116 = load double**, double*** %pam11550, align 8
  call void @FreeDoubleMtx(double** %1116)
  %1117 = load double**, double*** %pamx1551, align 8
  call void @FreeDoubleMtx(double** %1117)
  %1118 = load double*, double** %freq1552, align 8
  call void @FreeDoubleVec(double* %1118)
  %1119 = load double*, double** %mutab, align 8
  call void @FreeDoubleVec(double* %1119)
  %1120 = load double*, double** %datafreq1554, align 8
  call void @FreeDoubleVec(double* %1120)
  br label %if.end.2067

if.end.2067:                                      ; preds = %for.end.2065
  br label %if.end.2068

if.end.2068:                                      ; preds = %if.end.2067, %for.end.1539
  br label %if.end.2069

if.end.2069:                                      ; preds = %if.end.2068, %if.end.1169
  %1121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1122 = load i32, i32* @scoremtx, align 4
  %call2070 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i32 %1122)
  store i32 0, i32* %i, align 4
  br label %for.cond.2071

for.cond.2071:                                    ; preds = %for.inc.2077, %if.end.2069
  %1123 = load i32, i32* %i, align 4
  %cmp2072 = icmp slt i32 %1123, 128
  br i1 %cmp2072, label %for.body.2074, label %for.end.2079

for.body.2074:                                    ; preds = %for.cond.2071
  %1124 = load i32, i32* %i, align 4
  %idxprom2075 = sext i32 %1124 to i64
  %arrayidx2076 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom2075
  store i32 -1, i32* %arrayidx2076, align 4
  br label %for.inc.2077

for.inc.2077:                                     ; preds = %for.body.2074
  %1125 = load i32, i32* %i, align 4
  %inc2078 = add nsw i32 %1125, 1
  store i32 %inc2078, i32* %i, align 4
  br label %for.cond.2071

for.end.2079:                                     ; preds = %for.cond.2071
  store i32 0, i32* %i, align 4
  br label %for.cond.2080

for.cond.2080:                                    ; preds = %for.inc.2089, %for.end.2079
  %1126 = load i32, i32* %i, align 4
  %cmp2081 = icmp slt i32 %1126, 26
  br i1 %cmp2081, label %for.body.2083, label %for.end.2091

for.body.2083:                                    ; preds = %for.cond.2080
  %1127 = load i32, i32* %i, align 4
  %1128 = load i32, i32* %i, align 4
  %idxprom2084 = sext i32 %1128 to i64
  %arrayidx2085 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom2084
  %1129 = load i8, i8* %arrayidx2085, align 1
  %conv2086 = sext i8 %1129 to i32
  %idxprom2087 = sext i32 %conv2086 to i64
  %arrayidx2088 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom2087
  store i32 %1127, i32* %arrayidx2088, align 4
  br label %for.inc.2089

for.inc.2089:                                     ; preds = %for.body.2083
  %1130 = load i32, i32* %i, align 4
  %inc2090 = add nsw i32 %1130, 1
  store i32 %inc2090, i32* %i, align 4
  br label %for.cond.2080

for.end.2091:                                     ; preds = %for.cond.2080
  store i32 0, i32* %i, align 4
  br label %for.cond.2092

for.cond.2092:                                    ; preds = %for.inc.2107, %for.end.2091
  %1131 = load i32, i32* %i, align 4
  %cmp2093 = icmp slt i32 %1131, 128
  br i1 %cmp2093, label %for.body.2095, label %for.end.2109

for.body.2095:                                    ; preds = %for.cond.2092
  store i32 0, i32* %j, align 4
  br label %for.cond.2096

for.cond.2096:                                    ; preds = %for.inc.2104, %for.body.2095
  %1132 = load i32, i32* %j, align 4
  %cmp2097 = icmp slt i32 %1132, 128
  br i1 %cmp2097, label %for.body.2099, label %for.end.2106

for.body.2099:                                    ; preds = %for.cond.2096
  %1133 = load i32, i32* %j, align 4
  %idxprom2100 = sext i32 %1133 to i64
  %1134 = load i32, i32* %i, align 4
  %idxprom2101 = sext i32 %1134 to i64
  %arrayidx2102 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i32 0, i64 %idxprom2101
  %arrayidx2103 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx2102, i32 0, i64 %idxprom2100
  store i32 0, i32* %arrayidx2103, align 4
  br label %for.inc.2104

for.inc.2104:                                     ; preds = %for.body.2099
  %1135 = load i32, i32* %j, align 4
  %inc2105 = add nsw i32 %1135, 1
  store i32 %inc2105, i32* %j, align 4
  br label %for.cond.2096

for.end.2106:                                     ; preds = %for.cond.2096
  br label %for.inc.2107

for.inc.2107:                                     ; preds = %for.end.2106
  %1136 = load i32, i32* %i, align 4
  %inc2108 = add nsw i32 %1136, 1
  store i32 %inc2108, i32* %i, align 4
  br label %for.cond.2092

for.end.2109:                                     ; preds = %for.cond.2092
  store i32 0, i32* %i, align 4
  br label %for.cond.2110

for.cond.2110:                                    ; preds = %for.inc.2125, %for.end.2109
  %1137 = load i32, i32* %i, align 4
  %cmp2111 = icmp slt i32 %1137, 128
  br i1 %cmp2111, label %for.body.2113, label %for.end.2127

for.body.2113:                                    ; preds = %for.cond.2110
  store i32 0, i32* %j, align 4
  br label %for.cond.2114

for.cond.2114:                                    ; preds = %for.inc.2122, %for.body.2113
  %1138 = load i32, i32* %j, align 4
  %cmp2115 = icmp slt i32 %1138, 128
  br i1 %cmp2115, label %for.body.2117, label %for.end.2124

for.body.2117:                                    ; preds = %for.cond.2114
  %1139 = load i32, i32* %j, align 4
  %idxprom2118 = sext i32 %1139 to i64
  %1140 = load i32, i32* %i, align 4
  %idxprom2119 = sext i32 %1140 to i64
  %arrayidx2120 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_disLN, i32 0, i64 %idxprom2119
  %arrayidx2121 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx2120, i32 0, i64 %idxprom2118
  store i32 0, i32* %arrayidx2121, align 4
  br label %for.inc.2122

for.inc.2122:                                     ; preds = %for.body.2117
  %1141 = load i32, i32* %j, align 4
  %inc2123 = add nsw i32 %1141, 1
  store i32 %inc2123, i32* %j, align 4
  br label %for.cond.2114

for.end.2124:                                     ; preds = %for.cond.2114
  br label %for.inc.2125

for.inc.2125:                                     ; preds = %for.end.2124
  %1142 = load i32, i32* %i, align 4
  %inc2126 = add nsw i32 %1142, 1
  store i32 %inc2126, i32* %i, align 4
  br label %for.cond.2110

for.end.2127:                                     ; preds = %for.cond.2110
  store i32 0, i32* %i, align 4
  br label %for.cond.2128

for.cond.2128:                                    ; preds = %for.inc.2143, %for.end.2127
  %1143 = load i32, i32* %i, align 4
  %cmp2129 = icmp slt i32 %1143, 128
  br i1 %cmp2129, label %for.body.2131, label %for.end.2145

for.body.2131:                                    ; preds = %for.cond.2128
  store i32 0, i32* %j, align 4
  br label %for.cond.2132

for.cond.2132:                                    ; preds = %for.inc.2140, %for.body.2131
  %1144 = load i32, i32* %j, align 4
  %cmp2133 = icmp slt i32 %1144, 128
  br i1 %cmp2133, label %for.body.2135, label %for.end.2142

for.body.2135:                                    ; preds = %for.cond.2132
  %1145 = load i32, i32* %j, align 4
  %idxprom2136 = sext i32 %1145 to i64
  %1146 = load i32, i32* %i, align 4
  %idxprom2137 = sext i32 %1146 to i64
  %arrayidx2138 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* @amino_dis_consweight_multi, i32 0, i64 %idxprom2137
  %arrayidx2139 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx2138, i32 0, i64 %idxprom2136
  store double 0.000000e+00, double* %arrayidx2139, align 8
  br label %for.inc.2140

for.inc.2140:                                     ; preds = %for.body.2135
  %1147 = load i32, i32* %j, align 4
  %inc2141 = add nsw i32 %1147, 1
  store i32 %inc2141, i32* %j, align 4
  br label %for.cond.2132

for.end.2142:                                     ; preds = %for.cond.2132
  br label %for.inc.2143

for.inc.2143:                                     ; preds = %for.end.2142
  %1148 = load i32, i32* %i, align 4
  %inc2144 = add nsw i32 %1148, 1
  store i32 %inc2144, i32* %i, align 4
  br label %for.cond.2128

for.end.2145:                                     ; preds = %for.cond.2128
  store i32 0, i32* %i, align 4
  br label %for.cond.2146

for.cond.2146:                                    ; preds = %for.inc.2198, %for.end.2145
  %1149 = load i32, i32* %i, align 4
  %cmp2147 = icmp slt i32 %1149, 26
  br i1 %cmp2147, label %for.body.2149, label %for.end.2200

for.body.2149:                                    ; preds = %for.cond.2146
  store i32 0, i32* %j, align 4
  br label %for.cond.2150

for.cond.2150:                                    ; preds = %for.inc.2195, %for.body.2149
  %1150 = load i32, i32* %j, align 4
  %cmp2151 = icmp slt i32 %1150, 26
  br i1 %cmp2151, label %for.body.2153, label %for.end.2197

for.body.2153:                                    ; preds = %for.cond.2150
  %1151 = load i32, i32* %j, align 4
  %idxprom2154 = sext i32 %1151 to i64
  %1152 = load i32, i32* %i, align 4
  %idxprom2155 = sext i32 %1152 to i64
  %arrayidx2156 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom2155
  %arrayidx2157 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2156, i32 0, i64 %idxprom2154
  %1153 = load i32, i32* %arrayidx2157, align 4
  %1154 = load i32, i32* %j, align 4
  %idxprom2158 = sext i32 %1154 to i64
  %arrayidx2159 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom2158
  %1155 = load i8, i8* %arrayidx2159, align 1
  %conv2160 = sext i8 %1155 to i32
  %idxprom2161 = sext i32 %conv2160 to i64
  %1156 = load i32, i32* %i, align 4
  %idxprom2162 = sext i32 %1156 to i64
  %arrayidx2163 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom2162
  %1157 = load i8, i8* %arrayidx2163, align 1
  %conv2164 = sext i8 %1157 to i32
  %idxprom2165 = sext i32 %conv2164 to i64
  %arrayidx2166 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i32 0, i64 %idxprom2165
  %arrayidx2167 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx2166, i32 0, i64 %idxprom2161
  store i32 %1153, i32* %arrayidx2167, align 4
  %1158 = load i32, i32* %j, align 4
  %idxprom2168 = sext i32 %1158 to i64
  %1159 = load i32, i32* %i, align 4
  %idxprom2169 = sext i32 %1159 to i64
  %arrayidx2170 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom2169
  %arrayidx2171 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2170, i32 0, i64 %idxprom2168
  %1160 = load i32, i32* %arrayidx2171, align 4
  %conv2172 = sitofp i32 %1160 to float
  %1161 = load float, float* @consweight_multi, align 4
  %mul2173 = fmul float %conv2172, %1161
  %1162 = load i32, i32* %j, align 4
  %idxprom2174 = sext i32 %1162 to i64
  %1163 = load i32, i32* %i, align 4
  %idxprom2175 = sext i32 %1163 to i64
  %arrayidx2176 = getelementptr inbounds [26 x [26 x float]], [26 x [26 x float]]* @n_dis_consweight_multi, i32 0, i64 %idxprom2175
  %arrayidx2177 = getelementptr inbounds [26 x float], [26 x float]* %arrayidx2176, i32 0, i64 %idxprom2174
  store float %mul2173, float* %arrayidx2177, align 4
  %1164 = load i32, i32* %j, align 4
  %idxprom2178 = sext i32 %1164 to i64
  %1165 = load i32, i32* %i, align 4
  %idxprom2179 = sext i32 %1165 to i64
  %arrayidx2180 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom2179
  %arrayidx2181 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2180, i32 0, i64 %idxprom2178
  %1166 = load i32, i32* %arrayidx2181, align 4
  %conv2182 = sitofp i32 %1166 to double
  %1167 = load float, float* @consweight_multi, align 4
  %conv2183 = fpext float %1167 to double
  %mul2184 = fmul double %conv2182, %conv2183
  %1168 = load i32, i32* %j, align 4
  %idxprom2185 = sext i32 %1168 to i64
  %arrayidx2186 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom2185
  %1169 = load i8, i8* %arrayidx2186, align 1
  %conv2187 = sext i8 %1169 to i32
  %idxprom2188 = sext i32 %conv2187 to i64
  %1170 = load i32, i32* %i, align 4
  %idxprom2189 = sext i32 %1170 to i64
  %arrayidx2190 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom2189
  %1171 = load i8, i8* %arrayidx2190, align 1
  %conv2191 = sext i8 %1171 to i32
  %idxprom2192 = sext i32 %conv2191 to i64
  %arrayidx2193 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* @amino_dis_consweight_multi, i32 0, i64 %idxprom2192
  %arrayidx2194 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx2193, i32 0, i64 %idxprom2188
  store double %mul2184, double* %arrayidx2194, align 8
  br label %for.inc.2195

for.inc.2195:                                     ; preds = %for.body.2153
  %1172 = load i32, i32* %j, align 4
  %inc2196 = add nsw i32 %1172, 1
  store i32 %inc2196, i32* %j, align 4
  br label %for.cond.2150

for.end.2197:                                     ; preds = %for.cond.2150
  br label %for.inc.2198

for.inc.2198:                                     ; preds = %for.end.2197
  %1173 = load i32, i32* %i, align 4
  %inc2199 = add nsw i32 %1173, 1
  store i32 %inc2199, i32* %i, align 4
  br label %for.cond.2146

for.end.2200:                                     ; preds = %for.cond.2146
  %1174 = load i32, i32* @dorp, align 4
  %cmp2201 = icmp eq i32 %1174, 100
  br i1 %cmp2201, label %if.then.2203, label %if.else.2312

if.then.2203:                                     ; preds = %for.end.2200
  store i32 0, i32* %i, align 4
  br label %for.cond.2204

for.cond.2204:                                    ; preds = %for.inc.2231, %if.then.2203
  %1175 = load i32, i32* %i, align 4
  %cmp2205 = icmp slt i32 %1175, 5
  br i1 %cmp2205, label %for.body.2207, label %for.end.2233

for.body.2207:                                    ; preds = %for.cond.2204
  store i32 0, i32* %j, align 4
  br label %for.cond.2208

for.cond.2208:                                    ; preds = %for.inc.2228, %for.body.2207
  %1176 = load i32, i32* %j, align 4
  %cmp2209 = icmp slt i32 %1176, 5
  br i1 %cmp2209, label %for.body.2211, label %for.end.2230

for.body.2211:                                    ; preds = %for.cond.2208
  %1177 = load i32, i32* %j, align 4
  %idxprom2212 = sext i32 %1177 to i64
  %1178 = load i32, i32* %i, align 4
  %idxprom2213 = sext i32 %1178 to i64
  %arrayidx2214 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom2213
  %arrayidx2215 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2214, i32 0, i64 %idxprom2212
  %1179 = load i32, i32* %arrayidx2215, align 4
  %1180 = load i32, i32* @offset, align 4
  %add2216 = add nsw i32 %1179, %1180
  %1181 = load i32, i32* @offsetLN, align 4
  %sub2217 = sub nsw i32 %add2216, %1181
  %1182 = load i32, i32* %j, align 4
  %idxprom2218 = sext i32 %1182 to i64
  %arrayidx2219 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom2218
  %1183 = load i8, i8* %arrayidx2219, align 1
  %conv2220 = sext i8 %1183 to i32
  %idxprom2221 = sext i32 %conv2220 to i64
  %1184 = load i32, i32* %i, align 4
  %idxprom2222 = sext i32 %1184 to i64
  %arrayidx2223 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom2222
  %1185 = load i8, i8* %arrayidx2223, align 1
  %conv2224 = sext i8 %1185 to i32
  %idxprom2225 = sext i32 %conv2224 to i64
  %arrayidx2226 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_disLN, i32 0, i64 %idxprom2225
  %arrayidx2227 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx2226, i32 0, i64 %idxprom2221
  store i32 %sub2217, i32* %arrayidx2227, align 4
  br label %for.inc.2228

for.inc.2228:                                     ; preds = %for.body.2211
  %1186 = load i32, i32* %j, align 4
  %inc2229 = add nsw i32 %1186, 1
  store i32 %inc2229, i32* %j, align 4
  br label %for.cond.2208

for.end.2230:                                     ; preds = %for.cond.2208
  br label %for.inc.2231

for.inc.2231:                                     ; preds = %for.end.2230
  %1187 = load i32, i32* %i, align 4
  %inc2232 = add nsw i32 %1187, 1
  store i32 %inc2232, i32* %i, align 4
  br label %for.cond.2204

for.end.2233:                                     ; preds = %for.cond.2204
  store i32 5, i32* %i, align 4
  br label %for.cond.2234

for.cond.2234:                                    ; preds = %for.inc.2261, %for.end.2233
  %1188 = load i32, i32* %i, align 4
  %cmp2235 = icmp slt i32 %1188, 10
  br i1 %cmp2235, label %for.body.2237, label %for.end.2263

for.body.2237:                                    ; preds = %for.cond.2234
  store i32 5, i32* %j, align 4
  br label %for.cond.2238

for.cond.2238:                                    ; preds = %for.inc.2258, %for.body.2237
  %1189 = load i32, i32* %j, align 4
  %cmp2239 = icmp slt i32 %1189, 10
  br i1 %cmp2239, label %for.body.2241, label %for.end.2260

for.body.2241:                                    ; preds = %for.cond.2238
  %1190 = load i32, i32* %j, align 4
  %idxprom2242 = sext i32 %1190 to i64
  %1191 = load i32, i32* %i, align 4
  %idxprom2243 = sext i32 %1191 to i64
  %arrayidx2244 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom2243
  %arrayidx2245 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2244, i32 0, i64 %idxprom2242
  %1192 = load i32, i32* %arrayidx2245, align 4
  %1193 = load i32, i32* @offset, align 4
  %add2246 = add nsw i32 %1192, %1193
  %1194 = load i32, i32* @offsetLN, align 4
  %sub2247 = sub nsw i32 %add2246, %1194
  %1195 = load i32, i32* %j, align 4
  %idxprom2248 = sext i32 %1195 to i64
  %arrayidx2249 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom2248
  %1196 = load i8, i8* %arrayidx2249, align 1
  %conv2250 = sext i8 %1196 to i32
  %idxprom2251 = sext i32 %conv2250 to i64
  %1197 = load i32, i32* %i, align 4
  %idxprom2252 = sext i32 %1197 to i64
  %arrayidx2253 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom2252
  %1198 = load i8, i8* %arrayidx2253, align 1
  %conv2254 = sext i8 %1198 to i32
  %idxprom2255 = sext i32 %conv2254 to i64
  %arrayidx2256 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_disLN, i32 0, i64 %idxprom2255
  %arrayidx2257 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx2256, i32 0, i64 %idxprom2251
  store i32 %sub2247, i32* %arrayidx2257, align 4
  br label %for.inc.2258

for.inc.2258:                                     ; preds = %for.body.2241
  %1199 = load i32, i32* %j, align 4
  %inc2259 = add nsw i32 %1199, 1
  store i32 %inc2259, i32* %j, align 4
  br label %for.cond.2238

for.end.2260:                                     ; preds = %for.cond.2238
  br label %for.inc.2261

for.inc.2261:                                     ; preds = %for.end.2260
  %1200 = load i32, i32* %i, align 4
  %inc2262 = add nsw i32 %1200, 1
  store i32 %inc2262, i32* %i, align 4
  br label %for.cond.2234

for.end.2263:                                     ; preds = %for.cond.2234
  store i32 0, i32* %i, align 4
  br label %for.cond.2264

for.cond.2264:                                    ; preds = %for.inc.2285, %for.end.2263
  %1201 = load i32, i32* %i, align 4
  %cmp2265 = icmp slt i32 %1201, 5
  br i1 %cmp2265, label %for.body.2267, label %for.end.2287

for.body.2267:                                    ; preds = %for.cond.2264
  store i32 0, i32* %j, align 4
  br label %for.cond.2268

for.cond.2268:                                    ; preds = %for.inc.2282, %for.body.2267
  %1202 = load i32, i32* %j, align 4
  %cmp2269 = icmp slt i32 %1202, 5
  br i1 %cmp2269, label %for.body.2271, label %for.end.2284

for.body.2271:                                    ; preds = %for.cond.2268
  %1203 = load i32, i32* %j, align 4
  %idxprom2272 = sext i32 %1203 to i64
  %1204 = load i32, i32* %i, align 4
  %idxprom2273 = sext i32 %1204 to i64
  %arrayidx2274 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom2273
  %arrayidx2275 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2274, i32 0, i64 %idxprom2272
  %1205 = load i32, i32* %arrayidx2275, align 4
  %1206 = load i32, i32* @offset, align 4
  %add2276 = add nsw i32 %1205, %1206
  %1207 = load i32, i32* @offsetFFT, align 4
  %sub2277 = sub nsw i32 %add2276, %1207
  %1208 = load i32, i32* %j, align 4
  %idxprom2278 = sext i32 %1208 to i64
  %1209 = load i32, i32* %i, align 4
  %idxprom2279 = sext i32 %1209 to i64
  %arrayidx2280 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_disFFT, i32 0, i64 %idxprom2279
  %arrayidx2281 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2280, i32 0, i64 %idxprom2278
  store i32 %sub2277, i32* %arrayidx2281, align 4
  br label %for.inc.2282

for.inc.2282:                                     ; preds = %for.body.2271
  %1210 = load i32, i32* %j, align 4
  %inc2283 = add nsw i32 %1210, 1
  store i32 %inc2283, i32* %j, align 4
  br label %for.cond.2268

for.end.2284:                                     ; preds = %for.cond.2268
  br label %for.inc.2285

for.inc.2285:                                     ; preds = %for.end.2284
  %1211 = load i32, i32* %i, align 4
  %inc2286 = add nsw i32 %1211, 1
  store i32 %inc2286, i32* %i, align 4
  br label %for.cond.2264

for.end.2287:                                     ; preds = %for.cond.2264
  store i32 5, i32* %i, align 4
  br label %for.cond.2288

for.cond.2288:                                    ; preds = %for.inc.2309, %for.end.2287
  %1212 = load i32, i32* %i, align 4
  %cmp2289 = icmp slt i32 %1212, 10
  br i1 %cmp2289, label %for.body.2291, label %for.end.2311

for.body.2291:                                    ; preds = %for.cond.2288
  store i32 5, i32* %j, align 4
  br label %for.cond.2292

for.cond.2292:                                    ; preds = %for.inc.2306, %for.body.2291
  %1213 = load i32, i32* %j, align 4
  %cmp2293 = icmp slt i32 %1213, 10
  br i1 %cmp2293, label %for.body.2295, label %for.end.2308

for.body.2295:                                    ; preds = %for.cond.2292
  %1214 = load i32, i32* %j, align 4
  %idxprom2296 = sext i32 %1214 to i64
  %1215 = load i32, i32* %i, align 4
  %idxprom2297 = sext i32 %1215 to i64
  %arrayidx2298 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom2297
  %arrayidx2299 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2298, i32 0, i64 %idxprom2296
  %1216 = load i32, i32* %arrayidx2299, align 4
  %1217 = load i32, i32* @offset, align 4
  %add2300 = add nsw i32 %1216, %1217
  %1218 = load i32, i32* @offsetFFT, align 4
  %sub2301 = sub nsw i32 %add2300, %1218
  %1219 = load i32, i32* %j, align 4
  %idxprom2302 = sext i32 %1219 to i64
  %1220 = load i32, i32* %i, align 4
  %idxprom2303 = sext i32 %1220 to i64
  %arrayidx2304 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_disFFT, i32 0, i64 %idxprom2303
  %arrayidx2305 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2304, i32 0, i64 %idxprom2302
  store i32 %sub2301, i32* %arrayidx2305, align 4
  br label %for.inc.2306

for.inc.2306:                                     ; preds = %for.body.2295
  %1221 = load i32, i32* %j, align 4
  %inc2307 = add nsw i32 %1221, 1
  store i32 %inc2307, i32* %j, align 4
  br label %for.cond.2292

for.end.2308:                                     ; preds = %for.cond.2292
  br label %for.inc.2309

for.inc.2309:                                     ; preds = %for.end.2308
  %1222 = load i32, i32* %i, align 4
  %inc2310 = add nsw i32 %1222, 1
  store i32 %inc2310, i32* %i, align 4
  br label %for.cond.2288

for.end.2311:                                     ; preds = %for.cond.2288
  br label %if.end.2367

if.else.2312:                                     ; preds = %for.end.2200
  store i32 0, i32* %i, align 4
  br label %for.cond.2313

for.cond.2313:                                    ; preds = %for.inc.2340, %if.else.2312
  %1223 = load i32, i32* %i, align 4
  %cmp2314 = icmp slt i32 %1223, 20
  br i1 %cmp2314, label %for.body.2316, label %for.end.2342

for.body.2316:                                    ; preds = %for.cond.2313
  store i32 0, i32* %j, align 4
  br label %for.cond.2317

for.cond.2317:                                    ; preds = %for.inc.2337, %for.body.2316
  %1224 = load i32, i32* %j, align 4
  %cmp2318 = icmp slt i32 %1224, 20
  br i1 %cmp2318, label %for.body.2320, label %for.end.2339

for.body.2320:                                    ; preds = %for.cond.2317
  %1225 = load i32, i32* %j, align 4
  %idxprom2321 = sext i32 %1225 to i64
  %1226 = load i32, i32* %i, align 4
  %idxprom2322 = sext i32 %1226 to i64
  %arrayidx2323 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom2322
  %arrayidx2324 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2323, i32 0, i64 %idxprom2321
  %1227 = load i32, i32* %arrayidx2324, align 4
  %1228 = load i32, i32* @offset, align 4
  %add2325 = add nsw i32 %1227, %1228
  %1229 = load i32, i32* @offsetLN, align 4
  %sub2326 = sub nsw i32 %add2325, %1229
  %1230 = load i32, i32* %j, align 4
  %idxprom2327 = sext i32 %1230 to i64
  %arrayidx2328 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom2327
  %1231 = load i8, i8* %arrayidx2328, align 1
  %conv2329 = sext i8 %1231 to i32
  %idxprom2330 = sext i32 %conv2329 to i64
  %1232 = load i32, i32* %i, align 4
  %idxprom2331 = sext i32 %1232 to i64
  %arrayidx2332 = getelementptr inbounds [26 x i8], [26 x i8]* @amino, i32 0, i64 %idxprom2331
  %1233 = load i8, i8* %arrayidx2332, align 1
  %conv2333 = sext i8 %1233 to i32
  %idxprom2334 = sext i32 %conv2333 to i64
  %arrayidx2335 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_disLN, i32 0, i64 %idxprom2334
  %arrayidx2336 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx2335, i32 0, i64 %idxprom2330
  store i32 %sub2326, i32* %arrayidx2336, align 4
  br label %for.inc.2337

for.inc.2337:                                     ; preds = %for.body.2320
  %1234 = load i32, i32* %j, align 4
  %inc2338 = add nsw i32 %1234, 1
  store i32 %inc2338, i32* %j, align 4
  br label %for.cond.2317

for.end.2339:                                     ; preds = %for.cond.2317
  br label %for.inc.2340

for.inc.2340:                                     ; preds = %for.end.2339
  %1235 = load i32, i32* %i, align 4
  %inc2341 = add nsw i32 %1235, 1
  store i32 %inc2341, i32* %i, align 4
  br label %for.cond.2313

for.end.2342:                                     ; preds = %for.cond.2313
  store i32 0, i32* %i, align 4
  br label %for.cond.2343

for.cond.2343:                                    ; preds = %for.inc.2364, %for.end.2342
  %1236 = load i32, i32* %i, align 4
  %cmp2344 = icmp slt i32 %1236, 20
  br i1 %cmp2344, label %for.body.2346, label %for.end.2366

for.body.2346:                                    ; preds = %for.cond.2343
  store i32 0, i32* %j, align 4
  br label %for.cond.2347

for.cond.2347:                                    ; preds = %for.inc.2361, %for.body.2346
  %1237 = load i32, i32* %j, align 4
  %cmp2348 = icmp slt i32 %1237, 20
  br i1 %cmp2348, label %for.body.2350, label %for.end.2363

for.body.2350:                                    ; preds = %for.cond.2347
  %1238 = load i32, i32* %j, align 4
  %idxprom2351 = sext i32 %1238 to i64
  %1239 = load i32, i32* %i, align 4
  %idxprom2352 = sext i32 %1239 to i64
  %arrayidx2353 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom2352
  %arrayidx2354 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2353, i32 0, i64 %idxprom2351
  %1240 = load i32, i32* %arrayidx2354, align 4
  %1241 = load i32, i32* @offset, align 4
  %add2355 = add nsw i32 %1240, %1241
  %1242 = load i32, i32* @offsetFFT, align 4
  %sub2356 = sub nsw i32 %add2355, %1242
  %1243 = load i32, i32* %j, align 4
  %idxprom2357 = sext i32 %1243 to i64
  %1244 = load i32, i32* %i, align 4
  %idxprom2358 = sext i32 %1244 to i64
  %arrayidx2359 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_disFFT, i32 0, i64 %idxprom2358
  %arrayidx2360 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx2359, i32 0, i64 %idxprom2357
  store i32 %sub2356, i32* %arrayidx2360, align 4
  br label %for.inc.2361

for.inc.2361:                                     ; preds = %for.body.2350
  %1245 = load i32, i32* %j, align 4
  %inc2362 = add nsw i32 %1245, 1
  store i32 %inc2362, i32* %j, align 4
  br label %for.cond.2347

for.end.2363:                                     ; preds = %for.cond.2347
  br label %for.inc.2364

for.inc.2364:                                     ; preds = %for.end.2363
  %1246 = load i32, i32* %i, align 4
  %inc2365 = add nsw i32 %1246, 1
  store i32 %inc2365, i32* %i, align 4
  br label %for.cond.2343

for.end.2366:                                     ; preds = %for.cond.2343
  br label %if.end.2367

if.end.2367:                                      ; preds = %for.end.2366, %for.end.2311
  store i32 0, i32* @ppid, align 4
  %1247 = load i32, i32* @fftThreshold, align 4
  %cmp2368 = icmp eq i32 %1247, 100009
  br i1 %cmp2368, label %if.then.2370, label %if.end.2371

if.then.2370:                                     ; preds = %if.end.2367
  store i32 80, i32* @fftThreshold, align 4
  br label %if.end.2371

if.end.2371:                                      ; preds = %if.then.2370, %if.end.2367
  %1248 = load i32, i32* @fftWinSize, align 4
  %cmp2372 = icmp eq i32 %1248, 100009
  br i1 %cmp2372, label %if.then.2374, label %if.end.2380

if.then.2374:                                     ; preds = %if.end.2371
  %1249 = load i32, i32* @dorp, align 4
  %cmp2375 = icmp eq i32 %1249, 100
  br i1 %cmp2375, label %if.then.2377, label %if.else.2378

if.then.2377:                                     ; preds = %if.then.2374
  store i32 100, i32* @fftWinSize, align 4
  br label %if.end.2379

if.else.2378:                                     ; preds = %if.then.2374
  store i32 20, i32* @fftWinSize, align 4
  br label %if.end.2379

if.end.2379:                                      ; preds = %if.else.2378, %if.then.2377
  br label %if.end.2380

if.end.2380:                                      ; preds = %if.end.2379, %if.end.2371
  %1250 = load i32, i32* @fftscore, align 4
  %tobool2381 = icmp ne i32 %1250, 0
  br i1 %tobool2381, label %if.then.2382, label %if.end.2503

if.then.2382:                                     ; preds = %if.end.2380
  store i32 0, i32* %i, align 4
  br label %for.cond.2385

for.cond.2385:                                    ; preds = %for.inc.2393, %if.then.2382
  %1251 = load i32, i32* %i, align 4
  %cmp2386 = icmp slt i32 %1251, 20
  br i1 %cmp2386, label %for.body.2388, label %for.end.2395

for.body.2388:                                    ; preds = %for.cond.2385
  %1252 = load i32, i32* %i, align 4
  %idxprom2389 = sext i32 %1252 to i64
  %arrayidx2390 = getelementptr inbounds [20 x double], [20 x double]* @polarity_, i32 0, i64 %idxprom2389
  %1253 = load double, double* %arrayidx2390, align 8
  %1254 = load i32, i32* %i, align 4
  %idxprom2391 = sext i32 %1254 to i64
  %arrayidx2392 = getelementptr inbounds [20 x double], [20 x double]* @polarity, i32 0, i64 %idxprom2391
  store double %1253, double* %arrayidx2392, align 8
  br label %for.inc.2393

for.inc.2393:                                     ; preds = %for.body.2388
  %1255 = load i32, i32* %i, align 4
  %inc2394 = add nsw i32 %1255, 1
  store i32 %inc2394, i32* %i, align 4
  br label %for.cond.2385

for.end.2395:                                     ; preds = %for.cond.2385
  store double 0.000000e+00, double* %av, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2396

for.cond.2396:                                    ; preds = %for.inc.2403, %for.end.2395
  %1256 = load i32, i32* %i, align 4
  %cmp2397 = icmp slt i32 %1256, 20
  br i1 %cmp2397, label %for.body.2399, label %for.end.2405

for.body.2399:                                    ; preds = %for.cond.2396
  %1257 = load i32, i32* %i, align 4
  %idxprom2400 = sext i32 %1257 to i64
  %arrayidx2401 = getelementptr inbounds [20 x double], [20 x double]* @polarity, i32 0, i64 %idxprom2400
  %1258 = load double, double* %arrayidx2401, align 8
  %1259 = load double, double* %av, align 8
  %add2402 = fadd double %1259, %1258
  store double %add2402, double* %av, align 8
  br label %for.inc.2403

for.inc.2403:                                     ; preds = %for.body.2399
  %1260 = load i32, i32* %i, align 4
  %inc2404 = add nsw i32 %1260, 1
  store i32 %inc2404, i32* %i, align 4
  br label %for.cond.2396

for.end.2405:                                     ; preds = %for.cond.2396
  %1261 = load double, double* %av, align 8
  %div2406 = fdiv double %1261, 2.000000e+01
  store double %div2406, double* %av, align 8
  store double 0.000000e+00, double* %sd, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2407

for.cond.2407:                                    ; preds = %for.inc.2419, %for.end.2405
  %1262 = load i32, i32* %i, align 4
  %cmp2408 = icmp slt i32 %1262, 20
  br i1 %cmp2408, label %for.body.2410, label %for.end.2421

for.body.2410:                                    ; preds = %for.cond.2407
  %1263 = load i32, i32* %i, align 4
  %idxprom2411 = sext i32 %1263 to i64
  %arrayidx2412 = getelementptr inbounds [20 x double], [20 x double]* @polarity, i32 0, i64 %idxprom2411
  %1264 = load double, double* %arrayidx2412, align 8
  %1265 = load double, double* %av, align 8
  %sub2413 = fsub double %1264, %1265
  %1266 = load i32, i32* %i, align 4
  %idxprom2414 = sext i32 %1266 to i64
  %arrayidx2415 = getelementptr inbounds [20 x double], [20 x double]* @polarity, i32 0, i64 %idxprom2414
  %1267 = load double, double* %arrayidx2415, align 8
  %1268 = load double, double* %av, align 8
  %sub2416 = fsub double %1267, %1268
  %mul2417 = fmul double %sub2413, %sub2416
  %1269 = load double, double* %sd, align 8
  %add2418 = fadd double %1269, %mul2417
  store double %add2418, double* %sd, align 8
  br label %for.inc.2419

for.inc.2419:                                     ; preds = %for.body.2410
  %1270 = load i32, i32* %i, align 4
  %inc2420 = add nsw i32 %1270, 1
  store i32 %inc2420, i32* %i, align 4
  br label %for.cond.2407

for.end.2421:                                     ; preds = %for.cond.2407
  %1271 = load double, double* %sd, align 8
  %div2422 = fdiv double %1271, 2.000000e+01
  store double %div2422, double* %sd, align 8
  %1272 = load double, double* %sd, align 8
  %call2423 = call double @sqrt(double %1272) #1
  store double %call2423, double* %sd, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2424

for.cond.2424:                                    ; preds = %for.inc.2431, %for.end.2421
  %1273 = load i32, i32* %i, align 4
  %cmp2425 = icmp slt i32 %1273, 20
  br i1 %cmp2425, label %for.body.2427, label %for.end.2433

for.body.2427:                                    ; preds = %for.cond.2424
  %1274 = load double, double* %av, align 8
  %1275 = load i32, i32* %i, align 4
  %idxprom2428 = sext i32 %1275 to i64
  %arrayidx2429 = getelementptr inbounds [20 x double], [20 x double]* @polarity, i32 0, i64 %idxprom2428
  %1276 = load double, double* %arrayidx2429, align 8
  %sub2430 = fsub double %1276, %1274
  store double %sub2430, double* %arrayidx2429, align 8
  br label %for.inc.2431

for.inc.2431:                                     ; preds = %for.body.2427
  %1277 = load i32, i32* %i, align 4
  %inc2432 = add nsw i32 %1277, 1
  store i32 %inc2432, i32* %i, align 4
  br label %for.cond.2424

for.end.2433:                                     ; preds = %for.cond.2424
  store i32 0, i32* %i, align 4
  br label %for.cond.2434

for.cond.2434:                                    ; preds = %for.inc.2441, %for.end.2433
  %1278 = load i32, i32* %i, align 4
  %cmp2435 = icmp slt i32 %1278, 20
  br i1 %cmp2435, label %for.body.2437, label %for.end.2443

for.body.2437:                                    ; preds = %for.cond.2434
  %1279 = load double, double* %sd, align 8
  %1280 = load i32, i32* %i, align 4
  %idxprom2438 = sext i32 %1280 to i64
  %arrayidx2439 = getelementptr inbounds [20 x double], [20 x double]* @polarity, i32 0, i64 %idxprom2438
  %1281 = load double, double* %arrayidx2439, align 8
  %div2440 = fdiv double %1281, %1279
  store double %div2440, double* %arrayidx2439, align 8
  br label %for.inc.2441

for.inc.2441:                                     ; preds = %for.body.2437
  %1282 = load i32, i32* %i, align 4
  %inc2442 = add nsw i32 %1282, 1
  store i32 %inc2442, i32* %i, align 4
  br label %for.cond.2434

for.end.2443:                                     ; preds = %for.cond.2434
  store i32 0, i32* %i, align 4
  br label %for.cond.2444

for.cond.2444:                                    ; preds = %for.inc.2452, %for.end.2443
  %1283 = load i32, i32* %i, align 4
  %cmp2445 = icmp slt i32 %1283, 20
  br i1 %cmp2445, label %for.body.2447, label %for.end.2454

for.body.2447:                                    ; preds = %for.cond.2444
  %1284 = load i32, i32* %i, align 4
  %idxprom2448 = sext i32 %1284 to i64
  %arrayidx2449 = getelementptr inbounds [20 x double], [20 x double]* @volume_, i32 0, i64 %idxprom2448
  %1285 = load double, double* %arrayidx2449, align 8
  %1286 = load i32, i32* %i, align 4
  %idxprom2450 = sext i32 %1286 to i64
  %arrayidx2451 = getelementptr inbounds [20 x double], [20 x double]* @volume, i32 0, i64 %idxprom2450
  store double %1285, double* %arrayidx2451, align 8
  br label %for.inc.2452

for.inc.2452:                                     ; preds = %for.body.2447
  %1287 = load i32, i32* %i, align 4
  %inc2453 = add nsw i32 %1287, 1
  store i32 %inc2453, i32* %i, align 4
  br label %for.cond.2444

for.end.2454:                                     ; preds = %for.cond.2444
  store double 0.000000e+00, double* %av, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2455

for.cond.2455:                                    ; preds = %for.inc.2462, %for.end.2454
  %1288 = load i32, i32* %i, align 4
  %cmp2456 = icmp slt i32 %1288, 20
  br i1 %cmp2456, label %for.body.2458, label %for.end.2464

for.body.2458:                                    ; preds = %for.cond.2455
  %1289 = load i32, i32* %i, align 4
  %idxprom2459 = sext i32 %1289 to i64
  %arrayidx2460 = getelementptr inbounds [20 x double], [20 x double]* @volume, i32 0, i64 %idxprom2459
  %1290 = load double, double* %arrayidx2460, align 8
  %1291 = load double, double* %av, align 8
  %add2461 = fadd double %1291, %1290
  store double %add2461, double* %av, align 8
  br label %for.inc.2462

for.inc.2462:                                     ; preds = %for.body.2458
  %1292 = load i32, i32* %i, align 4
  %inc2463 = add nsw i32 %1292, 1
  store i32 %inc2463, i32* %i, align 4
  br label %for.cond.2455

for.end.2464:                                     ; preds = %for.cond.2455
  %1293 = load double, double* %av, align 8
  %div2465 = fdiv double %1293, 2.000000e+01
  store double %div2465, double* %av, align 8
  store double 0.000000e+00, double* %sd, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2466

for.cond.2466:                                    ; preds = %for.inc.2478, %for.end.2464
  %1294 = load i32, i32* %i, align 4
  %cmp2467 = icmp slt i32 %1294, 20
  br i1 %cmp2467, label %for.body.2469, label %for.end.2480

for.body.2469:                                    ; preds = %for.cond.2466
  %1295 = load i32, i32* %i, align 4
  %idxprom2470 = sext i32 %1295 to i64
  %arrayidx2471 = getelementptr inbounds [20 x double], [20 x double]* @volume, i32 0, i64 %idxprom2470
  %1296 = load double, double* %arrayidx2471, align 8
  %1297 = load double, double* %av, align 8
  %sub2472 = fsub double %1296, %1297
  %1298 = load i32, i32* %i, align 4
  %idxprom2473 = sext i32 %1298 to i64
  %arrayidx2474 = getelementptr inbounds [20 x double], [20 x double]* @volume, i32 0, i64 %idxprom2473
  %1299 = load double, double* %arrayidx2474, align 8
  %1300 = load double, double* %av, align 8
  %sub2475 = fsub double %1299, %1300
  %mul2476 = fmul double %sub2472, %sub2475
  %1301 = load double, double* %sd, align 8
  %add2477 = fadd double %1301, %mul2476
  store double %add2477, double* %sd, align 8
  br label %for.inc.2478

for.inc.2478:                                     ; preds = %for.body.2469
  %1302 = load i32, i32* %i, align 4
  %inc2479 = add nsw i32 %1302, 1
  store i32 %inc2479, i32* %i, align 4
  br label %for.cond.2466

for.end.2480:                                     ; preds = %for.cond.2466
  %1303 = load double, double* %sd, align 8
  %div2481 = fdiv double %1303, 2.000000e+01
  store double %div2481, double* %sd, align 8
  %1304 = load double, double* %sd, align 8
  %call2482 = call double @sqrt(double %1304) #1
  store double %call2482, double* %sd, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2483

for.cond.2483:                                    ; preds = %for.inc.2490, %for.end.2480
  %1305 = load i32, i32* %i, align 4
  %cmp2484 = icmp slt i32 %1305, 20
  br i1 %cmp2484, label %for.body.2486, label %for.end.2492

for.body.2486:                                    ; preds = %for.cond.2483
  %1306 = load double, double* %av, align 8
  %1307 = load i32, i32* %i, align 4
  %idxprom2487 = sext i32 %1307 to i64
  %arrayidx2488 = getelementptr inbounds [20 x double], [20 x double]* @volume, i32 0, i64 %idxprom2487
  %1308 = load double, double* %arrayidx2488, align 8
  %sub2489 = fsub double %1308, %1306
  store double %sub2489, double* %arrayidx2488, align 8
  br label %for.inc.2490

for.inc.2490:                                     ; preds = %for.body.2486
  %1309 = load i32, i32* %i, align 4
  %inc2491 = add nsw i32 %1309, 1
  store i32 %inc2491, i32* %i, align 4
  br label %for.cond.2483

for.end.2492:                                     ; preds = %for.cond.2483
  store i32 0, i32* %i, align 4
  br label %for.cond.2493

for.cond.2493:                                    ; preds = %for.inc.2500, %for.end.2492
  %1310 = load i32, i32* %i, align 4
  %cmp2494 = icmp slt i32 %1310, 20
  br i1 %cmp2494, label %for.body.2496, label %for.end.2502

for.body.2496:                                    ; preds = %for.cond.2493
  %1311 = load double, double* %sd, align 8
  %1312 = load i32, i32* %i, align 4
  %idxprom2497 = sext i32 %1312 to i64
  %arrayidx2498 = getelementptr inbounds [20 x double], [20 x double]* @volume, i32 0, i64 %idxprom2497
  %1313 = load double, double* %arrayidx2498, align 8
  %div2499 = fdiv double %1313, %1311
  store double %div2499, double* %arrayidx2498, align 8
  br label %for.inc.2500

for.inc.2500:                                     ; preds = %for.body.2496
  %1314 = load i32, i32* %i, align 4
  %inc2501 = add nsw i32 %1314, 1
  store i32 %inc2501, i32* %i, align 4
  br label %for.cond.2493

for.end.2502:                                     ; preds = %for.cond.2493
  br label %if.end.2503

if.end.2503:                                      ; preds = %for.end.2502, %if.end.2380
  ret void
}

declare double** @AllocateDoubleMtx(i32, i32) #2

declare double* @AllocateDoubleVec(i32) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare void @MtxuntDouble(double**, i32) #2

declare void @MtxmltDouble(double**, double**, i32) #2

; Function Attrs: nounwind
declare double @log10(double) #4

; Function Attrs: nounwind uwtable
define internal void @calcfreq_nuc(i32 %nseq, i8** %seq, double* %datafreq) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %seq.addr = alloca i8**, align 8
  %datafreq.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %aan = alloca i32, align 4
  %total = alloca double, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i8** %seq, i8*** %seq.addr, align 8
  store double* %datafreq, double** %datafreq.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load double*, double** %datafreq.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, double* %total, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.31, %for.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %nseq.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end.33

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i8**, i8*** %seq.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %7, i64 %idxprom4
  %8 = load i8*, i8** %arrayidx5, align 8
  %call = call i64 @strlen(i8* %8) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.28, %for.body.3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %l, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body.9, label %for.end.30

for.body.9:                                       ; preds = %for.cond.6
  %11 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i8**, i8*** %seq.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %13, i64 %idxprom11
  %14 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 %idxprom10
  %15 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %15 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  store i32 %16, i32* %aan, align 4
  %17 = load i32, i32* %aan, align 4
  %cmp17 = icmp eq i32 %17, 4
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.9
  store i32 3, i32* %aan, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.9
  %18 = load i32, i32* %aan, align 4
  %cmp19 = icmp sge i32 %18, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end
  %19 = load i32, i32* %aan, align 4
  %cmp21 = icmp slt i32 %19, 4
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %land.lhs.true
  %20 = load i32, i32* %aan, align 4
  %idxprom24 = sext i32 %20 to i64
  %21 = load double*, double** %datafreq.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %21, i64 %idxprom24
  %22 = load double, double* %arrayidx25, align 8
  %add = fadd double %22, 1.000000e+00
  store double %add, double* %arrayidx25, align 8
  %23 = load double, double* %total, align 8
  %add26 = fadd double %23, 1.000000e+00
  store double %add26, double* %total, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %land.lhs.true, %if.end
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %24 = load i32, i32* %j, align 4
  %inc29 = add nsw i32 %24, 1
  store i32 %inc29, i32* %j, align 4
  br label %for.cond.6

for.end.30:                                       ; preds = %for.cond.6
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end.30
  %25 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %25, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.1

for.end.33:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.46, %for.end.33
  %26 = load i32, i32* %i, align 4
  %cmp35 = icmp slt i32 %26, 4
  br i1 %cmp35, label %for.body.37, label %for.end.48

for.body.37:                                      ; preds = %for.cond.34
  %27 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %27 to i64
  %28 = load double*, double** %datafreq.addr, align 8
  %arrayidx39 = getelementptr inbounds double, double* %28, i64 %idxprom38
  %29 = load double, double* %arrayidx39, align 8
  %cmp40 = fcmp olt double %29, 1.000000e-04
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %for.body.37
  %30 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %30 to i64
  %31 = load double*, double** %datafreq.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %31, i64 %idxprom43
  store double 1.000000e-04, double* %arrayidx44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %for.body.37
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %32 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %32, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.34

for.end.48:                                       ; preds = %for.cond.34
  store double 0.000000e+00, double* %total, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.56, %for.end.48
  %33 = load i32, i32* %i, align 4
  %cmp50 = icmp slt i32 %33, 4
  br i1 %cmp50, label %for.body.52, label %for.end.58

for.body.52:                                      ; preds = %for.cond.49
  %34 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %34 to i64
  %35 = load double*, double** %datafreq.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %35, i64 %idxprom53
  %36 = load double, double* %arrayidx54, align 8
  %37 = load double, double* %total, align 8
  %add55 = fadd double %37, %36
  store double %add55, double* %total, align 8
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.52
  %38 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %38, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.49

for.end.58:                                       ; preds = %for.cond.49
  store i32 0, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.65, %for.end.58
  %39 = load i32, i32* %i, align 4
  %cmp60 = icmp slt i32 %39, 4
  br i1 %cmp60, label %for.body.62, label %for.end.67

for.body.62:                                      ; preds = %for.cond.59
  %40 = load double, double* %total, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %41 to i64
  %42 = load double*, double** %datafreq.addr, align 8
  %arrayidx64 = getelementptr inbounds double, double* %42, i64 %idxprom63
  %43 = load double, double* %arrayidx64, align 8
  %div = fdiv double %43, %40
  store double %div, double* %arrayidx64, align 8
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.62
  %44 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %44, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.59

for.end.67:                                       ; preds = %for.cond.59
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @shishagonyuu(double %in) #0 {
entry:
  %in.addr = alloca double, align 8
  %out = alloca i32, align 4
  store double %in, double* %in.addr, align 8
  %0 = load double, double* %in.addr, align 8
  %cmp = fcmp ogt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %in.addr, align 8
  %add = fadd double %1, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %out, align 4
  br label %if.end.11

if.else:                                          ; preds = %entry
  %2 = load double, double* %in.addr, align 8
  %cmp1 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp1, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 0, i32* %out, align 4
  br label %if.end.10

if.else.4:                                        ; preds = %if.else
  %3 = load double, double* %in.addr, align 8
  %cmp5 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp5, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else.4
  %4 = load double, double* %in.addr, align 8
  %sub = fsub double %4, 5.000000e-01
  %conv8 = fptosi double %sub to i32
  store i32 %conv8, i32* %out, align 4
  br label %if.end

if.else.9:                                        ; preds = %if.else.4
  store i32 0, i32* %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.3
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then
  %5 = load i32, i32* %out, align 4
  ret i32 %5
}

declare void @FreeDoubleMtx(double**) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @calcfreq(i32 %nseq, i8** %seq, double* %datafreq) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %seq.addr = alloca i8**, align 8
  %datafreq.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %aan = alloca i32, align 4
  %total = alloca double, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i8** %seq, i8*** %seq.addr, align 8
  store double* %datafreq, double** %datafreq.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load double*, double** %datafreq.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, double* %total, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.27, %for.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %nseq.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end.29

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i8**, i8*** %seq.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %7, i64 %idxprom4
  %8 = load i8*, i8** %arrayidx5, align 8
  %call = call i64 @strlen(i8* %8) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.24, %for.body.3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %l, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body.9, label %for.end.26

for.body.9:                                       ; preds = %for.cond.6
  %11 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i8**, i8*** %seq.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %13, i64 %idxprom11
  %14 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 %idxprom10
  %15 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %15 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  store i32 %16, i32* %aan, align 4
  %17 = load i32, i32* %aan, align 4
  %cmp17 = icmp sge i32 %17, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.9
  %18 = load i32, i32* %aan, align 4
  %cmp19 = icmp slt i32 %18, 20
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load i32, i32* %aan, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load double*, double** %datafreq.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %20, i64 %idxprom21
  %21 = load double, double* %arrayidx22, align 8
  %add = fadd double %21, 1.000000e+00
  store double %add, double* %arrayidx22, align 8
  %22 = load double, double* %total, align 8
  %add23 = fadd double %22, 1.000000e+00
  store double %add23, double* %total, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.9
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end
  %23 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %23, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond.6

for.end.26:                                       ; preds = %for.cond.6
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %24 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %24, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.1

for.end.29:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.42, %for.end.29
  %25 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %25, 20
  br i1 %cmp31, label %for.body.33, label %for.end.44

for.body.33:                                      ; preds = %for.cond.30
  %26 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %26 to i64
  %27 = load double*, double** %datafreq.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %27, i64 %idxprom34
  %28 = load double, double* %arrayidx35, align 8
  %cmp36 = fcmp olt double %28, 1.000000e-04
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %for.body.33
  %29 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %30 = load double*, double** %datafreq.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %30, i64 %idxprom39
  store double 1.000000e-04, double* %arrayidx40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %for.body.33
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %31 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %31, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond.30

for.end.44:                                       ; preds = %for.cond.30
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.53, %for.end.44
  %33 = load i32, i32* %i, align 4
  %cmp47 = icmp slt i32 %33, 20
  br i1 %cmp47, label %for.body.49, label %for.end.55

for.body.49:                                      ; preds = %for.cond.46
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %35 to i64
  %36 = load double*, double** %datafreq.addr, align 8
  %arrayidx51 = getelementptr inbounds double, double* %36, i64 %idxprom50
  %37 = load double, double* %arrayidx51, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), double %37)
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.49
  %38 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %38, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.46

for.end.55:                                       ; preds = %for.cond.46
  store double 0.000000e+00, double* %total, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.63, %for.end.55
  %39 = load i32, i32* %i, align 4
  %cmp57 = icmp slt i32 %39, 20
  br i1 %cmp57, label %for.body.59, label %for.end.65

for.body.59:                                      ; preds = %for.cond.56
  %40 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %40 to i64
  %41 = load double*, double** %datafreq.addr, align 8
  %arrayidx61 = getelementptr inbounds double, double* %41, i64 %idxprom60
  %42 = load double, double* %arrayidx61, align 8
  %43 = load double, double* %total, align 8
  %add62 = fadd double %43, %42
  store double %add62, double* %total, align 8
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.59
  %44 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %44, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.56

for.end.65:                                       ; preds = %for.cond.56
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load double, double* %total, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), double %46)
  store i32 0, i32* %i, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.73, %for.end.65
  %47 = load i32, i32* %i, align 4
  %cmp68 = icmp slt i32 %47, 20
  br i1 %cmp68, label %for.body.70, label %for.end.75

for.body.70:                                      ; preds = %for.cond.67
  %48 = load double, double* %total, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %49 to i64
  %50 = load double*, double** %datafreq.addr, align 8
  %arrayidx72 = getelementptr inbounds double, double* %50, i64 %idxprom71
  %51 = load double, double* %arrayidx72, align 8
  %div = fdiv double %51, %48
  store double %div, double* %arrayidx72, align 8
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.70
  %52 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %52, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.67

for.end.75:                                       ; preds = %for.cond.67
  ret void
}

declare void @FreeDoubleVec(double*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
