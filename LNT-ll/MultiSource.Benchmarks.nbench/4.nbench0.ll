; ModuleID = './MultiSource.Benchmarks.nbench/4.nbench0.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SortStruct = type { i32, i64, double, i16, i64 }
%struct.BitOpStruct = type { i32, i64, double, i64, i64 }
%struct.EmFloatStruct = type { i32, i64, i64, i64, double }
%struct.FourierStruct = type { i32, i64, i64, double }
%struct.AssignStruct = type { i32, i64, i64, double }
%struct.IDEAStruct = type { i32, i64, i64, i64, double }
%struct.HuffStruct = type { i32, i64, i64, i64, double }
%struct.NNetStruct = type { i32, i64, i64, double }
%struct.LUStruct = type { i32, i64, i64, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [51 x i8] c"You can enter your system description in nbench0.h\00", align 1
@sysname = global i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"It then will be printed here after you recompile\00", align 1
@compilername = global i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Have a nice day\00", align 1
@compilerversion = global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"NUMERIC SORT    \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"STRING SORT     \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"BITFIELD        \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"FP EMULATION    \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"FOURIER         \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ASSIGNMENT      \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"IDEA            \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"HUFFMAN         \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"NEURAL NET      \00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"LU DECOMPOSITION\00", align 1
@ftestnames = global [10 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0)], align 16
@bindex = global [10 x double] [double 3.899300e+01, double 2.238000e+00, double 5.829704e+06, double 2.084000e+00, double 8.792780e+02, double 2.628000e-01, double 6.538200e+01, double 3.606200e+01, double 6.225000e-01, double 1.930310e+01], align 16
@lx_bindex = global [10 x double] [double 1.187300e+02, double 1.445900e+01, double 2.791000e+07, double 9.031400e+00, double 1.565500e+03, double 1.013200e+00, double 2.202100e+02, double 1.129300e+02, double 1.479900e+00, double 2.673200e+01], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"GLOBALMINTICKS\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"MINSECONDS\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"ALLSTATS\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"OUTFILE\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"CUSTOMRUN\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"DONUMSORT\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"NUMNUMARRAYS\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"NUMARRAYSIZE\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"NUMMINSECONDS\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"DOSTRINGSORT\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"STRARRAYSIZE\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"NUMSTRARRAYS\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"STRMINSECONDS\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"DOBITFIELD\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"NUMBITOPS\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"BITFIELDSIZE\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"BITMINSECONDS\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"DOEMF\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"EMFARRAYSIZE\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"EMFLOOPS\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"EMFMINSECONDS\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"DOFOUR\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"FOURSIZE\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"FOURMINSECONDS\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"DOASSIGN\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"ASSIGNARRAYS\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"ASSIGNMINSECONDS\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"DOIDEA\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"IDEARRAYSIZE\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"IDEALOOPS\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"IDEAMINSECONDS\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"DOHUFF\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"HUFARRAYSIZE\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"HUFFLOOPS\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"HUFFMINSECONDS\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"DONNET\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"NNETLOOPS\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"NNETMINSECONDS\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"DOLU\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"LUNUMARRAYS\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"LUMINSECONDS\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"ALIGN\00", align 1
@paramnames = global [42 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0)], align 16
@global_numsortstruct = common global %struct.SortStruct zeroinitializer, align 8
@global_strsortstruct = common global %struct.SortStruct zeroinitializer, align 8
@global_bitopstruct = common global %struct.BitOpStruct zeroinitializer, align 8
@global_emfloatstruct = common global %struct.EmFloatStruct zeroinitializer, align 8
@global_fourierstruct = common global %struct.FourierStruct zeroinitializer, align 8
@global_assignstruct = common global %struct.AssignStruct zeroinitializer, align 8
@global_ideastruct = common global %struct.IDEAStruct zeroinitializer, align 8
@global_huffstruct = common global %struct.HuffStruct zeroinitializer, align 8
@global_nnetstruct = common global %struct.NNetStruct zeroinitializer, align 8
@global_lustruct = common global %struct.LUStruct zeroinitializer, align 8
@global_fstruct = global [10 x i8*] [i8* bitcast (%struct.SortStruct* @global_numsortstruct to i8*), i8* bitcast (%struct.SortStruct* @global_strsortstruct to i8*), i8* bitcast (%struct.BitOpStruct* @global_bitopstruct to i8*), i8* bitcast (%struct.EmFloatStruct* @global_emfloatstruct to i8*), i8* bitcast (%struct.FourierStruct* @global_fourierstruct to i8*), i8* bitcast (%struct.AssignStruct* @global_assignstruct to i8*), i8* bitcast (%struct.IDEAStruct* @global_ideastruct to i8*), i8* bitcast (%struct.HuffStruct* @global_huffstruct to i8*), i8* bitcast (%struct.NNetStruct* @global_nnetstruct to i8*), i8* bitcast (%struct.LUStruct* @global_lustruct to i8*)], align 16
@funcpointer = global [10 x void ()*] [void ()* @DoNumSort, void ()* @DoStringSort, void ()* @DoBitops, void ()* @DoEmFloat, void ()* @DoFourier, void ()* @DoAssign, void ()* @DoIDEA, void ()* @DoHuffman, void ()* @DoNNET, void ()* @DoLU], align 16
@global_min_ticks = common global i64 0, align 8
@global_min_seconds = common global i64 0, align 8
@global_allstats = common global i32 0, align 4
@global_custrun = common global i32 0, align 4
@global_align = common global i32 0, align 4
@write_to_file = common global i32 0, align 4
@mem_array_ents = common global i32 0, align 4
@tests_to_do = common global [10 x i32] zeroinitializer, align 16
@.str.55 = private unnamed_addr constant [36 x i8] c"BBBBBB   YYY   Y  TTTTTTT  EEEEEEE\0A\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"BBB   B  YYY   Y    TTT    EEE\0A\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"BBBBBB    YYY Y     TTT    EEEEEEE\0A\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"BBB   B    YYY      TTT    EEE\0A\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"BBBBBB     YYY      TTT    EEEEEEE\0A\0A\00", align 1
@.str.60 = private unnamed_addr constant [53 x i8] c"\0ABYTEmark (tm) Native Mode Benchmark ver. 2 (10/95)\0A\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.62 = private unnamed_addr constant [79 x i8] c"============================== ALL STATISTICS ===============================\0A\00", align 1
@buffer = common global [1024 x i8] zeroinitializer, align 16
@.str.63 = private unnamed_addr constant [37 x i8] c"**Date and time of benchmark run: %s\00", align 1
@.str.64 = private unnamed_addr constant [72 x i8] c"**Sizeof: char:%u short:%u int:%u long:%u u8:%u u16:%u u32:%u int32:%u\0A\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"**%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [79 x i8] c"=============================================================================\0A\00", align 1
@.str.67 = private unnamed_addr constant [68 x i8] c"\0ANOTE!!! Iteration display disabled to prevent diffs from failing!\0A\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"%s    :\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"  Iterations/sec.: %13.2f  Index: %6.2f\0A\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"  Absolute standard deviation: %g\0A\00", align 1
@.str.71 = private unnamed_addr constant [38 x i8] c"  Relative standard deviation: %g %%\0A\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"  Number of runs: %lu\0A\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"Done with %s\0A\0A\00", align 1
@.str.74 = private unnamed_addr constant [79 x i8] c"==========================ORIGINAL BYTEMARK RESULTS==========================\0A\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"INTEGER INDEX       : %.3f\0A\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"FLOATING-POINT INDEX: %.3f\0A\00", align 1
@.str.77 = private unnamed_addr constant [75 x i8] c"Baseline (MSDOS*)   : Pentium* 90, 256 KB L2-cache, Watcom* compiler 10.0\0A\00", align 1
@.str.78 = private unnamed_addr constant [55 x i8] c"* Trademarks are property of their respective holder.\0A\00", align 1
@global_ofile_name = common global [1024 x i8] zeroinitializer, align 16
@global_ofile = common global %struct._IO_FILE* null, align 8
@mem_array = common global [2 x [20 x i64]] zeroinitializer, align 16
@.str.79 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"**Error opening file: %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"**COMMAND FILE ERROR at LINE:\0A %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c"**COMMAND FILE ERROR -- UNKNOWN PARAM: %s\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.84 = private unnamed_addr constant [33 x i8] c"**Error opening output file: %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"Usage: %s [-v] [-c<FILE>]\0A\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c" -v = verbose\0A\00", align 1
@.str.87 = private unnamed_addr constant [49 x i8] c" -c = input parameters thru command file <FILE>\0A\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"  Number of arrays: %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"  Array size: %ld\0A\00", align 1
@.str.91 = private unnamed_addr constant [30 x i8] c"  Operations array size: %ld\0A\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"  Bitfield array size: %ld\0A\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"  Number of loops: %lu\0A\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"  Array size: %lu\0A\00", align 1
@.str.95 = private unnamed_addr constant [31 x i8] c"  Number of coefficients: %lu\0A\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"  Number of arrays: %lu\0A\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c" Number of loops: %lu\0A\00", align 1

declare void @DoNumSort() #0

declare void @DoStringSort() #0

declare void @DoBitops() #0

declare void @DoEmFloat() #0

declare void @DoFourier() #0

declare void @DoAssign() #0

declare void @DoIDEA() #0

declare void @DoHuffman() #0

declare void @DoNNET() #0

declare void @DoLU() #0

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #1 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %iter = alloca i32, align 4
  %time_and_date = alloca i64, align 8
  %loctime = alloca %struct.tm*, align 8
  %bmean = alloca double, align 8
  %bstdev = alloca double, align 8
  %lx_memindex = alloca double, align 8
  %lx_intindex = alloca double, align 8
  %lx_fpindex = alloca double, align 8
  %intindex = alloca double, align 8
  %fpindex = alloca double, align 8
  %bnumrun = alloca i64, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 60, i64* @global_min_ticks, align 8
  store i64 5, i64* @global_min_seconds, align 8
  store i32 0, i32* @global_allstats, align 4
  store i32 0, i32* @global_custrun, align 4
  store i32 8, i32* @global_align, align 4
  store i32 0, i32* @write_to_file, align 4
  store double 1.000000e+00, double* %lx_memindex, align 8
  store double 1.000000e+00, double* %lx_intindex, align 8
  store double 1.000000e+00, double* %lx_fpindex, align 8
  store double 1.000000e+00, double* %intindex, align 8
  store double 1.000000e+00, double* %fpindex, align 8
  store i32 0, i32* @mem_array_ents, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @set_request_secs()
  store i32 0, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 0), align 4
  store i64 8111, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 0), align 4
  store i64 8111, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 0), align 4
  store i64 32768, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 0), align 4
  store i64 3000, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 0), align 4
  store i64 4000, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 0), align 4
  store i64 5000, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i32 0, i32 0), align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 1
  br i1 %cmp1, label %if.then, label %if.end.13

if.then:                                          ; preds = %for.end
  store i32 1, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.10, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %argc.addr, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body.4, label %for.end.12

for.body.4:                                       ; preds = %for.cond.2
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %7, i64 %idxprom5
  %8 = load i8*, i8** %arrayidx6, align 8
  %call = call i32 @parse_arg(i8* %8)
  %cmp7 = icmp eq i32 %call, -1
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body.4
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx9, align 8
  call void @display_help(i8* %10)
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %for.body.4
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.2

for.end.12:                                       ; preds = %for.cond.2
  br label %if.end.13

if.end.13:                                        ; preds = %for.end.12, %for.end
  call void @output_string(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0))
  call void @output_string(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i32 0, i32 0))
  call void @output_string(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i32 0, i32 0))
  call void @output_string(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i32 0, i32 0))
  call void @output_string(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i32 0, i32 0))
  call void @output_string(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i32 0, i32 0))
  call void @output_string(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.59, i32 0, i32 0))
  call void @output_string(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.60, i32 0, i32 0))
  %12 = load i32, i32* @global_allstats, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %if.end.13
  call void @output_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i32 0, i32 0))
  call void @output_string(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.62, i32 0, i32 0))
  %call15 = call i64 @time(i64* %time_and_date) #6
  %call16 = call %struct.tm* @localtime(i64* %time_and_date) #6
  store %struct.tm* %call16, %struct.tm** %loctime, align 8
  %13 = load %struct.tm*, %struct.tm** %loctime, align 8
  %call17 = call i8* @asctime(%struct.tm* %13) #6
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63, i32 0, i32 0), i8* %call17) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.64, i32 0, i32 0), i32 1, i32 2, i32 4, i32 8, i32 1, i32 2, i32 4, i32 4) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  %14 = load i8*, i8** @sysname, align 8
  %call20 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* %14) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  %15 = load i8*, i8** @compilername, align 8
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* %15) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  %16 = load i8*, i8** @compilerversion, align 8
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* %16) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  call void @output_string(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.14, %if.end.13
  call void @output_string(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.67, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.92, %if.end.23
  %17 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %17, 10
  br i1 %cmp25, label %for.body.26, label %for.end.94

for.body.26:                                      ; preds = %for.cond.24
  %18 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 %idxprom27
  %19 = load i32, i32* %arrayidx28, align 4
  %tobool29 = icmp ne i32 %19, 0
  br i1 %tobool29, label %if.then.30, label %if.end.91

if.then.30:                                       ; preds = %for.body.26
  %20 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %20 to i64
  %arrayidx32 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ftestnames, i32 0, i64 %idxprom31
  %21 = load i8*, i8** %arrayidx32, align 8
  %call33 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* %21) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  store i32 0, i32* %iter, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.39, %if.then.30
  %22 = load i32, i32* %iter, align 4
  %cmp35 = icmp slt i32 %22, 1
  br i1 %cmp35, label %for.body.36, label %for.end.41

for.body.36:                                      ; preds = %for.cond.34
  %23 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %23 to i64
  %arrayidx38 = getelementptr inbounds [10 x void ()*], [10 x void ()*]* @funcpointer, i32 0, i64 %idxprom37
  %24 = load void ()*, void ()** %arrayidx38, align 8
  call void %24()
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.36
  %25 = load i32, i32* %iter, align 4
  %inc40 = add nsw i32 %25, 1
  store i32 %inc40, i32* %iter, align 4
  br label %for.cond.34

for.end.41:                                       ; preds = %for.cond.34
  %call42 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.69, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  %26 = load i32, i32* %i, align 4
  %cmp43 = icmp eq i32 %26, 4
  br i1 %cmp43, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.41
  %27 = load i32, i32* %i, align 4
  %cmp44 = icmp eq i32 %27, 8
  br i1 %cmp44, label %if.then.47, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false
  %28 = load i32, i32* %i, align 4
  %cmp46 = icmp eq i32 %28, 9
  br i1 %cmp46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %lor.lhs.false.45, %lor.lhs.false, %for.end.41
  %29 = load double, double* %fpindex, align 8
  %30 = load double, double* %bmean, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [10 x double], [10 x double]* @bindex, i32 0, i64 %idxprom48
  %32 = load double, double* %arrayidx49, align 8
  %div = fdiv double %30, %32
  %mul = fmul double %29, %div
  store double %mul, double* %fpindex, align 8
  %33 = load double, double* %lx_fpindex, align 8
  %34 = load double, double* %bmean, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %35 to i64
  %arrayidx51 = getelementptr inbounds [10 x double], [10 x double]* @lx_bindex, i32 0, i64 %idxprom50
  %36 = load double, double* %arrayidx51, align 8
  %div52 = fdiv double %34, %36
  %mul53 = fmul double %33, %div52
  store double %mul53, double* %lx_fpindex, align 8
  br label %if.end.76

if.else:                                          ; preds = %lor.lhs.false.45
  %37 = load double, double* %intindex, align 8
  %38 = load double, double* %bmean, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %39 to i64
  %arrayidx55 = getelementptr inbounds [10 x double], [10 x double]* @bindex, i32 0, i64 %idxprom54
  %40 = load double, double* %arrayidx55, align 8
  %div56 = fdiv double %38, %40
  %mul57 = fmul double %37, %div56
  store double %mul57, double* %intindex, align 8
  %41 = load i32, i32* %i, align 4
  %cmp58 = icmp eq i32 %41, 0
  br i1 %cmp58, label %if.then.65, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.else
  %42 = load i32, i32* %i, align 4
  %cmp60 = icmp eq i32 %42, 3
  br i1 %cmp60, label %if.then.65, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.59
  %43 = load i32, i32* %i, align 4
  %cmp62 = icmp eq i32 %43, 6
  br i1 %cmp62, label %if.then.65, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.61
  %44 = load i32, i32* %i, align 4
  %cmp64 = icmp eq i32 %44, 7
  br i1 %cmp64, label %if.then.65, label %if.else.70

if.then.65:                                       ; preds = %lor.lhs.false.63, %lor.lhs.false.61, %lor.lhs.false.59, %if.else
  %45 = load double, double* %lx_intindex, align 8
  %46 = load double, double* %bmean, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %47 to i64
  %arrayidx67 = getelementptr inbounds [10 x double], [10 x double]* @lx_bindex, i32 0, i64 %idxprom66
  %48 = load double, double* %arrayidx67, align 8
  %div68 = fdiv double %46, %48
  %mul69 = fmul double %45, %div68
  store double %mul69, double* %lx_intindex, align 8
  br label %if.end.75

if.else.70:                                       ; preds = %lor.lhs.false.63
  %49 = load double, double* %lx_memindex, align 8
  %50 = load double, double* %bmean, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %51 to i64
  %arrayidx72 = getelementptr inbounds [10 x double], [10 x double]* @lx_bindex, i32 0, i64 %idxprom71
  %52 = load double, double* %arrayidx72, align 8
  %div73 = fdiv double %50, %52
  %mul74 = fmul double %49, %div73
  store double %mul74, double* %lx_memindex, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.70, %if.then.65
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.47
  %53 = load i32, i32* @global_allstats, align 4
  %tobool77 = icmp ne i32 %53, 0
  br i1 %tobool77, label %if.then.78, label %if.end.90

if.then.78:                                       ; preds = %if.end.76
  %54 = load double, double* %bstdev, align 8
  %call79 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i32 0, i32 0), double %54) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  %55 = load double, double* %bmean, align 8
  %cmp80 = fcmp ogt double %55, 1.000000e-100
  br i1 %cmp80, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %if.then.78
  %56 = load double, double* %bstdev, align 8
  %mul82 = fmul double 1.000000e+02, %56
  %57 = load double, double* %bmean, align 8
  %div83 = fdiv double %mul82, %57
  %call84 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.71, i32 0, i32 0), double %div83) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %if.then.78
  %58 = load i64, i64* %bnumrun, align 8
  %call86 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i32 0, i32 0), i64 %58) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  %59 = load i32, i32* %i, align 4
  call void @show_stats(i32 %59)
  %60 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %60 to i64
  %arrayidx88 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ftestnames, i32 0, i64 %idxprom87
  %61 = load i8*, i8** %arrayidx88, align 8
  %call89 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i32 0, i32 0), i8* %61) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.85, %if.end.76
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %for.body.26
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %62 = load i32, i32* %i, align 4
  %inc93 = add nsw i32 %62, 1
  store i32 %inc93, i32* %i, align 4
  br label %for.cond.24

for.end.94:                                       ; preds = %for.cond.24
  %63 = load i32, i32* @global_custrun, align 4
  %cmp95 = icmp eq i32 %63, 0
  br i1 %cmp95, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %for.end.94
  call void @output_string(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.74, i32 0, i32 0))
  %call97 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i32 0, i32 0), double 0.000000e+00) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  %call98 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i32 0, i32 0), double 0.000000e+00) #6
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i32 0, i32 0))
  call void @output_string(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.77, i32 0, i32 0))
  call void @output_string(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.78, i32 0, i32 0))
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %for.end.94
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal void @set_request_secs() #1 {
entry:
  %0 = load i64, i64* @global_min_seconds, align 8
  store i64 %0, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 1), align 8
  %1 = load i64, i64* @global_min_seconds, align 8
  store i64 %1, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 1), align 8
  %2 = load i64, i64* @global_min_seconds, align 8
  store i64 %2, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 1), align 8
  %3 = load i64, i64* @global_min_seconds, align 8
  store i64 %3, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 1), align 8
  %4 = load i64, i64* @global_min_seconds, align 8
  store i64 %4, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 1), align 8
  %5 = load i64, i64* @global_min_seconds, align 8
  store i64 %5, i64* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i32 0, i32 1), align 8
  %6 = load i64, i64* @global_min_seconds, align 8
  store i64 %6, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 1), align 8
  %7 = load i64, i64* @global_min_seconds, align 8
  store i64 %7, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 1), align 8
  %8 = load i64, i64* @global_min_seconds, align 8
  store i64 %8, i64* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i32 0, i32 1), align 8
  %9 = load i64, i64* @global_min_seconds, align 8
  store i64 %9, i64* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i32 0, i32 1), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_arg(i8* %argptr) #1 {
entry:
  %retval = alloca i32, align 4
  %argptr.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %cfile = alloca %struct._IO_FILE*, align 8
  store i8* %argptr, i8** %argptr.addr, align 8
  %0 = load i8*, i8** %argptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %argptr.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %conv2 = sext i32 %2 to i64
  %3 = load i8*, i8** %argptr.addr, align 8
  %call = call i64 @strlen(i8* %3) #7
  %cmp3 = icmp ult i64 %conv2, %call
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %argptr.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %6 to i32
  %call6 = call i32 @toupper(i32 %conv5) #6
  %conv7 = trunc i32 %call6 to i8
  %7 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %7 to i64
  %8 = load i8*, i8** %argptr.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8*, i8** %argptr.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr10, i8** %argptr.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv11 = sext i8 %11 to i32
  switch i32 %conv11, label %sw.default [
    i32 63, label %sw.bb
    i32 86, label %sw.bb.12
    i32 67, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %for.end
  store i32 1, i32* @global_allstats, align 4
  store i32 0, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %for.end
  %12 = load i8*, i8** %argptr.addr, align 8
  %call14 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0))
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %cfile, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %cfile, align 8
  %cmp15 = icmp eq %struct._IO_FILE* %13, null
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %sw.bb.13
  %14 = load i8*, i8** %argptr.addr, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i32 0, i32 0), i8* %14)
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %sw.bb.13
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %cfile, align 8
  call void @read_comfile(%struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %cfile, align 8
  %call20 = call i32 @fclose(%struct._IO_FILE* %16)
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.17, %sw.bb.12, %sw.bb, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @display_help(i8* %progname) #1 {
entry:
  %progname.addr = alloca i8*, align 8
  store i8* %progname, i8** %progname.addr, align 8
  %0 = load i8*, i8** %progname.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i32 0, i32 0), i8* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.87, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define internal void @output_string(i8* %buffer) #1 {
entry:
  %buffer.addr = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %0)
  %1 = load i32, i32* @write_to_file, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @global_ofile, align 8
  %3 = load i8*, i8** %buffer.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm*) #3

; Function Attrs: nounwind uwtable
define internal void @show_stats(i32 %bid) #1 {
entry:
  %bid.addr = alloca i32, align 4
  %buffer = alloca [80 x i8], align 16
  store i32 %bid, i32* %bid.addr, align 4
  %0 = load i32, i32* %bid.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.20
    i32 4, label %sw.bb.27
    i32 5, label %sw.bb.31
    i32 6, label %sw.bb.35
    i32 7, label %sw.bb.42
    i32 8, label %sw.bb.49
    i32 9, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %entry
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %1 = load i16, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 3), align 2
  %conv = zext i16 %1 to i32
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i32 0, i32 0), i32 %conv) #6
  %arraydecay1 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %2 = load i64, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 4), align 8
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i32 0, i32 0), i64 %2) #6
  %arraydecay4 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay4)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %arraydecay6 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %3 = load i16, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 3), align 2
  %conv7 = zext i16 %3 to i32
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i32 0, i32 0), i32 %conv7) #6
  %arraydecay9 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay9)
  %arraydecay10 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %4 = load i64, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 4), align 8
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i32 0, i32 0), i64 %4) #6
  %arraydecay12 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay12)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %arraydecay14 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %5 = load i64, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 3), align 8
  %call15 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i32 0, i32 0), i64 %5) #6
  %arraydecay16 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay16)
  %arraydecay17 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %6 = load i64, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 4), align 8
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i32 0, i32 0), i64 %6) #6
  %arraydecay19 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay19)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %arraydecay21 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %7 = load i64, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 3), align 8
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i32 0, i32 0), i64 %7) #6
  %arraydecay23 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay23)
  %arraydecay24 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %8 = load i64, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 2), align 8
  %call25 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i32 0, i32 0), i64 %8) #6
  %arraydecay26 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay26)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %arraydecay28 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %9 = load i64, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 2), align 8
  %call29 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.95, i32 0, i32 0), i64 %9) #6
  %arraydecay30 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay30)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  %arraydecay32 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %10 = load i64, i64* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i32 0, i32 2), align 8
  %call33 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i32 0, i32 0), i64 %10) #6
  %arraydecay34 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay34)
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %arraydecay36 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %11 = load i64, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 2), align 8
  %call37 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i32 0, i32 0), i64 %11) #6
  %arraydecay38 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay38)
  %arraydecay39 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %12 = load i64, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 3), align 8
  %call40 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i32 0, i32 0), i64 %12) #6
  %arraydecay41 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay41)
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  %arraydecay43 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %13 = load i64, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 2), align 8
  %call44 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i32 0, i32 0), i64 %13) #6
  %arraydecay45 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay45)
  %arraydecay46 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %14 = load i64, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 3), align 8
  %call47 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i32 0, i32 0), i64 %14) #6
  %arraydecay48 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay48)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %entry
  %arraydecay50 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %15 = load i64, i64* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i32 0, i32 2), align 8
  %call51 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i32 0, i32 0), i64 %15) #6
  %arraydecay52 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay52)
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry
  %arraydecay54 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  %16 = load i64, i64* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i32 0, i32 2), align 8
  %call55 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i32 0, i32 0), i64 %16) #6
  %arraydecay56 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i32 0, i32 0
  call void @output_string(i8* %arraydecay56)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.53, %sw.bb.49, %sw.bb.42, %sw.bb.35, %sw.bb.31, %sw.bb.27, %sw.bb.20, %sw.bb.13, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @toupper(i32) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #0

declare i32 @printf(i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal void @read_comfile(%struct._IO_FILE* %cfile) #1 {
entry:
  %cfile.addr = alloca %struct._IO_FILE*, align 8
  %inbuf = alloca [40 x i8], align 16
  %eptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %cfile, %struct._IO_FILE** %cfile.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %skipswitch, %entry
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %inbuf, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %cfile.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 39, %struct._IO_FILE* %0)
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [40 x i8], [40 x i8]* %inbuf, i32 0, i32 0
  %call2 = call i64 @strlen(i8* %arraydecay1) #7
  %cmp3 = icmp ugt i64 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %arraydecay4 = getelementptr inbounds [40 x i8], [40 x i8]* %inbuf, i32 0, i32 0
  %call5 = call i64 @strlen(i8* %arraydecay4) #7
  %sub = sub i64 %call5, 1
  %arrayidx = getelementptr inbounds [40 x i8], [40 x i8]* %inbuf, i32 0, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %arraydecay6 = getelementptr inbounds [40 x i8], [40 x i8]* %inbuf, i32 0, i32 0
  %call7 = call i8* @strchr(i8* %arraydecay6, i32 61) #7
  store i8* %call7, i8** %eptr, align 8
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %arraydecay10 = getelementptr inbounds [40 x i8], [40 x i8]* %inbuf, i32 0, i32 0
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i32 0, i32 0), i8* %arraydecay10)
  br label %skipswitch

if.end.12:                                        ; preds = %if.end
  %1 = load i8*, i8** %eptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %eptr, align 8
  store i8 0, i8* %1, align 1
  %arrayidx13 = getelementptr inbounds [40 x i8], [40 x i8]* %inbuf, i32 0, i64 0
  call void @strtoupper(i8* %arrayidx13)
  store i32 41, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.12
  %arraydecay14 = getelementptr inbounds [40 x i8], [40 x i8]* %inbuf, i32 0, i32 0
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx15 = getelementptr inbounds [42 x i8*], [42 x i8*]* @paramnames, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 @strcmp(i8* %arraydecay14, i8* %3) #7
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.body
  br label %do.end

if.end.19:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  %4 = load i32, i32* %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %i, align 4
  %cmp20 = icmp sge i32 %dec, 0
  br i1 %cmp20, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.18
  %5 = load i32, i32* %i, align 4
  %cmp21 = icmp slt i32 %5, 0
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %do.end
  %arraydecay23 = getelementptr inbounds [40 x i8], [40 x i8]* %inbuf, i32 0, i32 0
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.82, i32 0, i32 0), i8* %arraydecay23)
  br label %skipswitch

if.end.25:                                        ; preds = %do.end
  %6 = load i32, i32* %i, align 4
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.27
    i32 2, label %sw.bb.29
    i32 3, label %sw.bb.31
    i32 4, label %sw.bb.38
    i32 5, label %sw.bb.44
    i32 6, label %sw.bb.46
    i32 7, label %sw.bb.48
    i32 8, label %sw.bb.50
    i32 9, label %sw.bb.52
    i32 10, label %sw.bb.54
    i32 11, label %sw.bb.56
    i32 12, label %sw.bb.59
    i32 13, label %sw.bb.61
    i32 14, label %sw.bb.63
    i32 15, label %sw.bb.65
    i32 16, label %sw.bb.67
    i32 17, label %sw.bb.69
    i32 18, label %sw.bb.71
    i32 19, label %sw.bb.73
    i32 20, label %sw.bb.75
    i32 21, label %sw.bb.77
    i32 22, label %sw.bb.79
    i32 23, label %sw.bb.81
    i32 24, label %sw.bb.83
    i32 25, label %sw.bb.85
    i32 26, label %sw.bb.87
    i32 27, label %sw.bb.89
    i32 28, label %sw.bb.91
    i32 29, label %sw.bb.93
    i32 30, label %sw.bb.95
    i32 31, label %sw.bb.97
    i32 32, label %sw.bb.99
    i32 33, label %sw.bb.101
    i32 34, label %sw.bb.103
    i32 35, label %sw.bb.105
    i32 36, label %sw.bb.107
    i32 37, label %sw.bb.109
    i32 38, label %sw.bb.111
    i32 39, label %sw.bb.113
    i32 40, label %sw.bb.115
    i32 41, label %sw.bb.117
  ]

sw.bb:                                            ; preds = %if.end.25
  %7 = load i8*, i8** %eptr, align 8
  %call26 = call i64 @atol(i8* %7) #7
  store i64 %call26, i64* @global_min_ticks, align 8
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.25
  %8 = load i8*, i8** %eptr, align 8
  %call28 = call i64 @atol(i8* %8) #7
  store i64 %call28, i64* @global_min_seconds, align 8
  call void @set_request_secs()
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.25
  %9 = load i8*, i8** %eptr, align 8
  %call30 = call i32 @getflag(i8* %9)
  store i32 %call30, i32* @global_allstats, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end.25
  %10 = load i8*, i8** %eptr, align 8
  %call32 = call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @global_ofile_name, i32 0, i32 0), i8* %10) #6
  %call33 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @global_ofile_name, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0))
  store %struct._IO_FILE* %call33, %struct._IO_FILE** @global_ofile, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @global_ofile, align 8
  %cmp34 = icmp eq %struct._IO_FILE* %11, null
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %sw.bb.31
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @global_ofile_name, i32 0, i32 0))
  call void @ErrorExit()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %sw.bb.31
  store i32 -1, i32* @write_to_file, align 4
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.25
  %12 = load i8*, i8** %eptr, align 8
  %call39 = call i32 @getflag(i8* %12)
  store i32 %call39, i32* @global_custrun, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.38
  %13 = load i32, i32* %i, align 4
  %cmp40 = icmp slt i32 %13, 10
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* @global_custrun, align 4
  %sub41 = sub nsw i32 1, %14
  %15 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %15 to i64
  %arrayidx43 = getelementptr inbounds [10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 %idxprom42
  store i32 %sub41, i32* %arrayidx43, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.25
  %17 = load i8*, i8** %eptr, align 8
  %call45 = call i32 @getflag(i8* %17)
  store i32 %call45, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 0), align 4
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.25
  %18 = load i8*, i8** %eptr, align 8
  %call47 = call i32 @atoi(i8* %18) #7
  %conv = trunc i32 %call47 to i16
  store i16 %conv, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 3), align 2
  store i32 1, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.25
  %19 = load i8*, i8** %eptr, align 8
  %call49 = call i64 @atol(i8* %19) #7
  store i64 %call49, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 4), align 8
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.25
  %20 = load i8*, i8** %eptr, align 8
  %call51 = call i64 @atol(i8* %20) #7
  store i64 %call51, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 1), align 8
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end.25
  %21 = load i8*, i8** %eptr, align 8
  %call53 = call i32 @getflag(i8* %21)
  store i32 %call53, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 1), align 4
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.end.25
  %22 = load i8*, i8** %eptr, align 8
  %call55 = call i64 @atol(i8* %22) #7
  store i64 %call55, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 4), align 8
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.end.25
  %23 = load i8*, i8** %eptr, align 8
  %call57 = call i32 @atoi(i8* %23) #7
  %conv58 = trunc i32 %call57 to i16
  store i16 %conv58, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 3), align 2
  store i32 1, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.end.25
  %24 = load i8*, i8** %eptr, align 8
  %call60 = call i64 @atol(i8* %24) #7
  store i64 %call60, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 1), align 8
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.25
  %25 = load i8*, i8** %eptr, align 8
  %call62 = call i32 @getflag(i8* %25)
  store i32 %call62, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 2), align 4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.25
  %26 = load i8*, i8** %eptr, align 8
  %call64 = call i64 @atol(i8* %26) #7
  store i64 %call64, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end.25
  %27 = load i8*, i8** %eptr, align 8
  %call66 = call i64 @atol(i8* %27) #7
  store i64 %call66, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 4), align 8
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.end.25
  %28 = load i8*, i8** %eptr, align 8
  %call68 = call i64 @atol(i8* %28) #7
  store i64 %call68, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 1), align 8
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.end.25
  %29 = load i8*, i8** %eptr, align 8
  %call70 = call i32 @getflag(i8* %29)
  store i32 %call70, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 3), align 4
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.25
  %30 = load i8*, i8** %eptr, align 8
  %call72 = call i64 @atol(i8* %30) #7
  store i64 %call72, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 2), align 8
  br label %sw.epilog

sw.bb.73:                                         ; preds = %if.end.25
  %31 = load i8*, i8** %eptr, align 8
  %call74 = call i64 @atol(i8* %31) #7
  store i64 %call74, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 3), align 8
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.end.25
  %32 = load i8*, i8** %eptr, align 8
  %call76 = call i64 @atol(i8* %32) #7
  store i64 %call76, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 1), align 8
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.end.25
  %33 = load i8*, i8** %eptr, align 8
  %call78 = call i32 @getflag(i8* %33)
  store i32 %call78, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 4), align 4
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.end.25
  %34 = load i8*, i8** %eptr, align 8
  %call80 = call i64 @atol(i8* %34) #7
  store i64 %call80, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.end.25
  %35 = load i8*, i8** %eptr, align 8
  %call82 = call i64 @atol(i8* %35) #7
  store i64 %call82, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 1), align 8
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.end.25
  %36 = load i8*, i8** %eptr, align 8
  %call84 = call i32 @getflag(i8* %36)
  store i32 %call84, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 5), align 4
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.end.25
  %37 = load i8*, i8** %eptr, align 8
  %call86 = call i64 @atol(i8* %37) #7
  store i64 %call86, i64* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i32 0, i32 2), align 8
  br label %sw.epilog

sw.bb.87:                                         ; preds = %if.end.25
  %38 = load i8*, i8** %eptr, align 8
  %call88 = call i64 @atol(i8* %38) #7
  store i64 %call88, i64* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i32 0, i32 1), align 8
  br label %sw.epilog

sw.bb.89:                                         ; preds = %if.end.25
  %39 = load i8*, i8** %eptr, align 8
  %call90 = call i32 @getflag(i8* %39)
  store i32 %call90, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 6), align 4
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.end.25
  %40 = load i8*, i8** %eptr, align 8
  %call92 = call i64 @atol(i8* %40) #7
  store i64 %call92, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 2), align 8
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.end.25
  %41 = load i8*, i8** %eptr, align 8
  %call94 = call i64 @atol(i8* %41) #7
  store i64 %call94, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 3), align 8
  br label %sw.epilog

sw.bb.95:                                         ; preds = %if.end.25
  %42 = load i8*, i8** %eptr, align 8
  %call96 = call i64 @atol(i8* %42) #7
  store i64 %call96, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 1), align 8
  br label %sw.epilog

sw.bb.97:                                         ; preds = %if.end.25
  %43 = load i8*, i8** %eptr, align 8
  %call98 = call i32 @getflag(i8* %43)
  store i32 %call98, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 7), align 4
  br label %sw.epilog

sw.bb.99:                                         ; preds = %if.end.25
  %44 = load i8*, i8** %eptr, align 8
  %call100 = call i64 @atol(i8* %44) #7
  store i64 %call100, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 2), align 8
  br label %sw.epilog

sw.bb.101:                                        ; preds = %if.end.25
  %45 = load i8*, i8** %eptr, align 8
  %call102 = call i64 @atol(i8* %45) #7
  store i64 %call102, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb.103:                                        ; preds = %if.end.25
  %46 = load i8*, i8** %eptr, align 8
  %call104 = call i64 @atol(i8* %46) #7
  store i64 %call104, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 1), align 8
  br label %sw.epilog

sw.bb.105:                                        ; preds = %if.end.25
  %47 = load i8*, i8** %eptr, align 8
  %call106 = call i32 @getflag(i8* %47)
  store i32 %call106, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 8), align 4
  br label %sw.epilog

sw.bb.107:                                        ; preds = %if.end.25
  %48 = load i8*, i8** %eptr, align 8
  %call108 = call i64 @atol(i8* %48) #7
  store i64 %call108, i64* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb.109:                                        ; preds = %if.end.25
  %49 = load i8*, i8** %eptr, align 8
  %call110 = call i64 @atol(i8* %49) #7
  store i64 %call110, i64* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i32 0, i32 1), align 8
  br label %sw.epilog

sw.bb.111:                                        ; preds = %if.end.25
  %50 = load i8*, i8** %eptr, align 8
  %call112 = call i32 @getflag(i8* %50)
  store i32 %call112, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i32 0, i64 9), align 4
  br label %sw.epilog

sw.bb.113:                                        ; preds = %if.end.25
  %51 = load i8*, i8** %eptr, align 8
  %call114 = call i64 @atol(i8* %51) #7
  store i64 %call114, i64* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb.115:                                        ; preds = %if.end.25
  %52 = load i8*, i8** %eptr, align 8
  %call116 = call i64 @atol(i8* %52) #7
  store i64 %call116, i64* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i32 0, i32 1), align 8
  br label %sw.epilog

sw.bb.117:                                        ; preds = %if.end.25
  %53 = load i8*, i8** %eptr, align 8
  %call118 = call i32 @atoi(i8* %53) #7
  store i32 %call118, i32* @global_align, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.25, %sw.bb.117, %sw.bb.115, %sw.bb.113, %sw.bb.111, %sw.bb.109, %sw.bb.107, %sw.bb.105, %sw.bb.103, %sw.bb.101, %sw.bb.99, %sw.bb.97, %sw.bb.95, %sw.bb.93, %sw.bb.91, %sw.bb.89, %sw.bb.87, %sw.bb.85, %sw.bb.83, %sw.bb.81, %sw.bb.79, %sw.bb.77, %sw.bb.75, %sw.bb.73, %sw.bb.71, %sw.bb.69, %sw.bb.67, %sw.bb.65, %sw.bb.63, %sw.bb.61, %sw.bb.59, %sw.bb.56, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb.48, %sw.bb.46, %sw.bb.44, %for.end, %if.end.37, %sw.bb.29, %sw.bb.27, %sw.bb
  br label %skipswitch

skipswitch:                                       ; preds = %sw.epilog, %if.then.22, %if.then.9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #0

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #0

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal void @strtoupper(i8* %s) #1 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 @toupper(i32 %conv) #6
  %conv1 = trunc i32 %call to i8
  %2 = load i8*, i8** %s.addr, align 8
  store i8 %conv1, i8* %2, align 1
  %3 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv2, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @getflag(i8* %cptr) #1 {
entry:
  %retval = alloca i32, align 4
  %cptr.addr = alloca i8*, align 8
  store i8* %cptr, i8** %cptr.addr, align 8
  %0 = load i8*, i8** %cptr.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 @toupper(i32 %conv) #6
  %cmp = icmp eq i32 %call, 84
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare void @ErrorExit() #0

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
