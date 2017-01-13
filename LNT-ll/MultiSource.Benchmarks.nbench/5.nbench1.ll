; ModuleID = './MultiSource.Benchmarks.nbench/5.nbench1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SortStruct = type { i32, i64, double, i16, i64 }
%struct.BitOpStruct = type { i32, i64, double, i64, i64 }
%struct.EmFloatStruct = type { i32, i64, i64, i64, double }
%struct.FourierStruct = type { i32, i64, i64, double }
%struct.AssignStruct = type { i32, i64, i64, double }
%struct.IDEAStruct = type { i32, i64, i64, i64, double }
%struct.HuffStruct = type { i32, i64, i64, i64, double }
%struct.huff_node = type { i8, float, i32, i32, i32 }
%struct.NNetStruct = type { i32, i64, i64, double }
%struct.LUStruct = type { i32, i64, i64, double }
%struct.InternalFPF = type { i8, i8, i16, [4 x i16] }
%struct.longptr = type { %union.anon.0 }
%union.anon.0 = type { i64* }
%struct.LUdblptr = type { %union.anon }
%union.anon = type { double* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"NNET.DAT\00", align 1
@inpath = global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"He\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Him\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"the\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"that\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"though\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"rough\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"cough\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"obviously\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"But\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"but\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"bye\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"beginning\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"beginnings\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"our\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"ourselves\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"yourselves\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"together\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"togetherness\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"either\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"However\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"example\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"yet\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"quickly\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"were\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"includes\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"returns\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"Entered\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"shown\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"you\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"know\00", align 1
@wordcatarray = global [50 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0)], align 16
@global_numsortstruct = external global %struct.SortStruct, align 8
@.str.50 = private unnamed_addr constant [17 x i8] c"CPU:Numeric Sort\00", align 1
@global_min_ticks = external global i64, align 8
@.str.51 = private unnamed_addr constant [32 x i8] c"CPU:NSORT -- NUMNUMARRAYS hit.\0A\00", align 1
@global_strsortstruct = external global %struct.SortStruct, align 8
@.str.52 = private unnamed_addr constant [16 x i8] c"CPU:String Sort\00", align 1
@global_bitopstruct = external global %struct.BitOpStruct, align 8
@.str.53 = private unnamed_addr constant [14 x i8] c"CPU:Bitfields\00", align 1
@global_emfloatstruct = external global %struct.EmFloatStruct, align 8
@.str.54 = private unnamed_addr constant [23 x i8] c"CPU:Floating Emulation\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"CPU:EMFPU -- CMPUEMFLOATLOOPMAX limit hit\0A\00", align 1
@global_fourierstruct = external global %struct.FourierStruct, align 8
@.str.56 = private unnamed_addr constant [19 x i8] c"FPU:Transcendental\00", align 1
@global_assignstruct = external global %struct.AssignStruct, align 8
@.str.57 = private unnamed_addr constant [15 x i8] c"CPU:Assignment\00", align 1
@global_ideastruct = external global %struct.IDEAStruct, align 8
@.str.58 = private unnamed_addr constant [9 x i8] c"CPU:IDEA\00", align 1
@global_huffstruct = external global %struct.HuffStruct, align 8
@.str.59 = private unnamed_addr constant [12 x i8] c"CPU:Huffman\00", align 1
@hufftree = internal global %struct.huff_node* null, align 8
@plaintextlen = internal global i64 0, align 8
@global_nnetstruct = external global %struct.NNetStruct, align 8
@.str.60 = private unnamed_addr constant [9 x i8] c"CPU:NNET\00", align 1
@global_lustruct = external global %struct.LUStruct, align 8
@.str.61 = private unnamed_addr constant [7 x i8] c"FPU:LU\00", align 1
@LUtempvv = common global double* null, align 8
@.str.62 = private unnamed_addr constant [31 x i8] c"FPU:LU -- Array limit reached\0A\00", align 1
@mid_wts = common global [8 x [35 x double]] zeroinitializer, align 16
@out_wts = common global [8 x [8 x double]] zeroinitializer, align 16
@mid_out = common global [8 x double] zeroinitializer, align 16
@out_out = common global [8 x double] zeroinitializer, align 16
@mid_error = common global [8 x double] zeroinitializer, align 16
@out_error = common global [8 x double] zeroinitializer, align 16
@mid_wt_change = common global [8 x [35 x double]] zeroinitializer, align 16
@out_wt_change = common global [8 x [8 x double]] zeroinitializer, align 16
@in_pats = common global [10 x [35 x double]] zeroinitializer, align 16
@out_pats = common global [10 x [8 x double]] zeroinitializer, align 16
@tot_out_error = common global [10 x double] zeroinitializer, align 16
@out_wt_cum_change = common global [8 x [8 x double]] zeroinitializer, align 16
@mid_wt_cum_change = common global [8 x [35 x double]] zeroinitializer, align 16
@worst_error = common global double 0.000000e+00, align 8
@average_error = common global double 0.000000e+00, align 8
@avg_out_error = common global [10 x double] zeroinitializer, align 16
@iteration_count = common global i32 0, align 4
@numpats = common global i32 0, align 4
@numpasses = common global i32 0, align 4
@learned = common global i32 0, align 4
@.str.63 = private unnamed_addr constant [15 x i8] c"CPU:Stringsort\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"\0A CPU:NNET--error in opening file!\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"%d  %d  %d\00", align 1
@.str.67 = private unnamed_addr constant [59 x i8] c"\0A CPU:NNET -- Should read 3 items in line one; did read %d\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.69 = private unnamed_addr constant [56 x i8] c"\0A CPU:NNET -- Should read 1 item in line 2; did read %d\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"%d  %d  %d  %d  %d\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"\0A CPU:NNET -- failure in reading input!\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"%d  %d  %d  %d  %d  %d  %d  %d\00", align 1

; Function Attrs: nounwind uwtable
define void @DoNumSort() #0 {
entry:
  %numsortstruct = alloca %struct.SortStruct*, align 8
  %arraybase = alloca i64*, align 8
  %accumtime = alloca i64, align 8
  %iterations = alloca double, align 8
  %errorcontext = alloca i8*, align 8
  %systemerror = alloca i32, align 4
  store %struct.SortStruct* @global_numsortstruct, %struct.SortStruct** %numsortstruct, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i8** %errorcontext, align 8
  %0 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %adjust = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %0, i32 0, i32 0
  %1 = load i32, i32* %adjust, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %numarrays = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %2, i32 0, i32 3
  store i16 1, i16* %numarrays, align 2
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end.18
  %3 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %numarrays1 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %3, i32 0, i32 3
  %4 = load i16, i16* %numarrays1, align 2
  %conv = zext i16 %4 to i64
  %mul = mul i64 8, %conv
  %5 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %arraysize = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %5, i32 0, i32 4
  %6 = load i64, i64* %arraysize, align 8
  %mul2 = mul i64 %mul, %6
  %call = call i8* @AllocateMemory(i64 %mul2, i32* %systemerror)
  %7 = bitcast i8* %call to i64*
  store i64* %7, i64** %arraybase, align 8
  %8 = load i32, i32* %systemerror, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.body
  %9 = load i8*, i8** %errorcontext, align 8
  %10 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %9, i32 %10)
  %11 = load i64*, i64** %arraybase, align 8
  %12 = bitcast i64* %11 to i8*
  call void @FreeMemory(i8* %12, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end

if.end:                                           ; preds = %if.then.3, %while.body
  %13 = load i64*, i64** %arraybase, align 8
  %14 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %arraysize4 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %14, i32 0, i32 4
  %15 = load i64, i64* %arraysize4, align 8
  %16 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %numarrays5 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %16, i32 0, i32 3
  %17 = load i16, i16* %numarrays5, align 2
  %conv6 = zext i16 %17 to i32
  %call7 = call i64 @DoNumSortIteration(i64* %13, i64 %15, i32 %conv6)
  %18 = load i64, i64* @global_min_ticks, align 8
  %cmp8 = icmp ugt i64 %call7, %18
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  br label %while.end

if.end.11:                                        ; preds = %if.end
  %19 = load i64*, i64** %arraybase, align 8
  %20 = bitcast i64* %19 to i8*
  call void @FreeMemory(i8* %20, i32* %systemerror)
  %21 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %numarrays12 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %21, i32 0, i32 3
  %22 = load i16, i16* %numarrays12, align 2
  %inc = add i16 %22, 1
  store i16 %inc, i16* %numarrays12, align 2
  %conv13 = zext i16 %22 to i32
  %cmp14 = icmp sgt i32 %conv13, 10000
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.11
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i32 0, i32 0))
  call void (...) @ErrorExit()
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.11
  br label %while.body

while.end:                                        ; preds = %if.then.10
  br label %if.end.28

if.else:                                          ; preds = %entry
  %23 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %numarrays19 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %23, i32 0, i32 3
  %24 = load i16, i16* %numarrays19, align 2
  %conv20 = zext i16 %24 to i64
  %mul21 = mul i64 8, %conv20
  %25 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %arraysize22 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %25, i32 0, i32 4
  %26 = load i64, i64* %arraysize22, align 8
  %mul23 = mul i64 %mul21, %26
  %call24 = call i8* @AllocateMemory(i64 %mul23, i32* %systemerror)
  %27 = bitcast i8* %call24 to i64*
  store i64* %27, i64** %arraybase, align 8
  %28 = load i32, i32* %systemerror, align 4
  %tobool25 = icmp ne i32 %28, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else
  %29 = load i8*, i8** %errorcontext, align 8
  %30 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %29, i32 %30)
  %31 = load i64*, i64** %arraybase, align 8
  %32 = bitcast i64* %31 to i8*
  call void @FreeMemory(i8* %32, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %while.end
  store i64 0, i64* %accumtime, align 8
  store double 0.000000e+00, double* %iterations, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.28
  %33 = load i64*, i64** %arraybase, align 8
  %34 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %arraysize29 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %34, i32 0, i32 4
  %35 = load i64, i64* %arraysize29, align 8
  %36 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %numarrays30 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %36, i32 0, i32 3
  %37 = load i16, i16* %numarrays30, align 2
  %conv31 = zext i16 %37 to i32
  %call32 = call i64 @DoNumSortIteration(i64* %33, i64 %35, i32 %conv31)
  %38 = load i64, i64* %accumtime, align 8
  %add = add i64 %38, %call32
  store i64 %add, i64* %accumtime, align 8
  %39 = load double, double* %iterations, align 8
  %add33 = fadd double %39, 1.000000e+00
  store double %add33, double* %iterations, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %40 = load double, double* %iterations, align 8
  %cmp34 = fcmp olt double %40, 3.750000e+02
  br i1 %cmp34, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %41 = load i64*, i64** %arraybase, align 8
  %42 = bitcast i64* %41 to i8*
  call void @FreeMemory(i8* %42, i32* %systemerror)
  %43 = load double, double* %iterations, align 8
  %44 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %numarrays36 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %44, i32 0, i32 3
  %45 = load i16, i16* %numarrays36, align 2
  %conv37 = uitofp i16 %45 to double
  %mul38 = fmul double %43, %conv37
  %46 = load i64, i64* %accumtime, align 8
  %call39 = call double @TicksToFracSecs(i64 %46)
  %div = fdiv double %mul38, %call39
  %47 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %sortspersec = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %47, i32 0, i32 2
  store double %div, double* %sortspersec, align 8
  %48 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %adjust40 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %48, i32 0, i32 0
  %49 = load i32, i32* %adjust40, align 4
  %cmp41 = icmp eq i32 %49, 0
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %do.end
  %50 = load %struct.SortStruct*, %struct.SortStruct** %numsortstruct, align 8
  %adjust44 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %50, i32 0, i32 0
  store i32 1, i32* %adjust44, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %do.end
  ret void
}

declare i8* @AllocateMemory(i64, i32*) #1

declare void @ReportError(i8*, i32) #1

declare void @FreeMemory(i8*, i32*) #1

declare void @ErrorExit(...) #1

; Function Attrs: nounwind uwtable
define internal i64 @DoNumSortIteration(i64* %arraybase, i64 %arraysize, i32 %numarrays) #0 {
entry:
  %arraybase.addr = alloca i64*, align 8
  %arraysize.addr = alloca i64, align 8
  %numarrays.addr = alloca i32, align 4
  %elapsed = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %arraybase, i64** %arraybase.addr, align 8
  store i64 %arraysize, i64* %arraysize.addr, align 8
  store i32 %numarrays, i32* %numarrays.addr, align 4
  %0 = load i64*, i64** %arraybase.addr, align 8
  %1 = load i64, i64* %arraysize.addr, align 8
  %2 = load i32, i32* %numarrays.addr, align 4
  call void @LoadNumArrayWithRand(i64* %0, i64 %1, i32 %2)
  %call = call i64 (...) @StartStopwatch()
  store i64 %call, i64* %elapsed, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i32, i32* %numarrays.addr, align 4
  %conv = zext i32 %4 to i64
  %cmp = icmp ult i64 %3, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64*, i64** %arraybase.addr, align 8
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %arraysize.addr, align 8
  %mul = mul i64 %6, %7
  %add.ptr = getelementptr inbounds i64, i64* %5, i64 %mul
  %8 = load i64, i64* %arraysize.addr, align 8
  %sub = sub i64 %8, 1
  call void @NumHeapSort(i64* %add.ptr, i64 0, i64 %sub)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i64, i64* %elapsed, align 8
  %call2 = call i64 @StopStopwatch(i64 %10)
  store i64 %call2, i64* %elapsed, align 8
  %11 = load i64, i64* %elapsed, align 8
  ret i64 %11
}

declare i32 @printf(i8*, ...) #1

declare double @TicksToFracSecs(i64) #1

; Function Attrs: nounwind uwtable
define void @DoStringSort() #0 {
entry:
  %strsortstruct = alloca %struct.SortStruct*, align 8
  %arraybase = alloca i8*, align 8
  %accumtime = alloca i64, align 8
  %iterations = alloca double, align 8
  %errorcontext = alloca i8*, align 8
  %systemerror = alloca i32, align 4
  store %struct.SortStruct* @global_strsortstruct, %struct.SortStruct** %strsortstruct, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i8** %errorcontext, align 8
  %0 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %adjust = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %0, i32 0, i32 0
  %1 = load i32, i32* %adjust, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %numarrays = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %2, i32 0, i32 3
  store i16 1, i16* %numarrays, align 2
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end.10
  %3 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %arraysize = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %3, i32 0, i32 4
  %4 = load i64, i64* %arraysize, align 8
  %add = add i64 %4, 100
  %5 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %numarrays1 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %5, i32 0, i32 3
  %6 = load i16, i16* %numarrays1, align 2
  %conv = zext i16 %6 to i64
  %mul = mul i64 %add, %conv
  %call = call i8* @AllocateMemory(i64 %mul, i32* %systemerror)
  store i8* %call, i8** %arraybase, align 8
  %7 = load i32, i32* %systemerror, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %while.body
  %8 = load i8*, i8** %errorcontext, align 8
  %9 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %8, i32 %9)
  call void (...) @ErrorExit()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %while.body
  %10 = load i8*, i8** %arraybase, align 8
  %11 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %numarrays3 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %11, i32 0, i32 3
  %12 = load i16, i16* %numarrays3, align 2
  %conv4 = zext i16 %12 to i32
  %13 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %arraysize5 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %13, i32 0, i32 4
  %14 = load i64, i64* %arraysize5, align 8
  %call6 = call i64 @DoStringSortIteration(i8* %10, i32 %conv4, i64 %14)
  %15 = load i64, i64* @global_min_ticks, align 8
  %cmp7 = icmp ugt i64 %call6, %15
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  br label %while.end

if.end.10:                                        ; preds = %if.end
  %16 = load i8*, i8** %arraybase, align 8
  call void @FreeMemory(i8* %16, i32* %systemerror)
  %17 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %numarrays11 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %17, i32 0, i32 3
  %18 = load i16, i16* %numarrays11, align 2
  %conv12 = zext i16 %18 to i32
  %add13 = add nsw i32 %conv12, 1
  %conv14 = trunc i32 %add13 to i16
  store i16 %conv14, i16* %numarrays11, align 2
  br label %while.body

while.end:                                        ; preds = %if.then.9
  br label %if.end.24

if.else:                                          ; preds = %entry
  %19 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %arraysize15 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %19, i32 0, i32 4
  %20 = load i64, i64* %arraysize15, align 8
  %add16 = add i64 %20, 100
  %21 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %numarrays17 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %21, i32 0, i32 3
  %22 = load i16, i16* %numarrays17, align 2
  %conv18 = zext i16 %22 to i64
  %mul19 = mul i64 %add16, %conv18
  %call20 = call i8* @AllocateMemory(i64 %mul19, i32* %systemerror)
  store i8* %call20, i8** %arraybase, align 8
  %23 = load i32, i32* %systemerror, align 4
  %tobool21 = icmp ne i32 %23, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else
  %24 = load i8*, i8** %errorcontext, align 8
  %25 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %24, i32 %25)
  call void (...) @ErrorExit()
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %while.end
  store i64 0, i64* %accumtime, align 8
  store double 0.000000e+00, double* %iterations, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.24
  %26 = load i8*, i8** %arraybase, align 8
  %27 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %numarrays25 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %27, i32 0, i32 3
  %28 = load i16, i16* %numarrays25, align 2
  %conv26 = zext i16 %28 to i32
  %29 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %arraysize27 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %29, i32 0, i32 4
  %30 = load i64, i64* %arraysize27, align 8
  %call28 = call i64 @DoStringSortIteration(i8* %26, i32 %conv26, i64 %30)
  %31 = load i64, i64* %accumtime, align 8
  %add29 = add i64 %31, %call28
  store i64 %add29, i64* %accumtime, align 8
  %32 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %numarrays30 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %32, i32 0, i32 3
  %33 = load i16, i16* %numarrays30, align 2
  %conv31 = uitofp i16 %33 to double
  %34 = load double, double* %iterations, align 8
  %add32 = fadd double %34, %conv31
  store double %add32, double* %iterations, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %35 = load double, double* %iterations, align 8
  %cmp33 = fcmp olt double %35, 1.250000e+02
  br i1 %cmp33, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i8*, i8** %arraybase, align 8
  call void @FreeMemory(i8* %36, i32* %systemerror)
  %37 = load double, double* %iterations, align 8
  %38 = load i64, i64* %accumtime, align 8
  %call35 = call double @TicksToFracSecs(i64 %38)
  %div = fdiv double %37, %call35
  %39 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %sortspersec = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %39, i32 0, i32 2
  store double %div, double* %sortspersec, align 8
  %40 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %adjust36 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %40, i32 0, i32 0
  %41 = load i32, i32* %adjust36, align 4
  %cmp37 = icmp eq i32 %41, 0
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %do.end
  %42 = load %struct.SortStruct*, %struct.SortStruct** %strsortstruct, align 8
  %adjust40 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %42, i32 0, i32 0
  store i32 1, i32* %adjust40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @DoStringSortIteration(i8* %arraybase, i32 %numarrays, i64 %arraysize) #0 {
entry:
  %arraybase.addr = alloca i8*, align 8
  %numarrays.addr = alloca i32, align 4
  %arraysize.addr = alloca i64, align 8
  %optrarray = alloca i64*, align 8
  %elapsed = alloca i64, align 8
  %nstrings = alloca i64, align 8
  %syserror = alloca i32, align 4
  %i = alloca i32, align 4
  %tempobase = alloca i64*, align 8
  %tempsbase = alloca i8*, align 8
  store i8* %arraybase, i8** %arraybase.addr, align 8
  store i32 %numarrays, i32* %numarrays.addr, align 4
  store i64 %arraysize, i64* %arraysize.addr, align 8
  %0 = load i8*, i8** %arraybase.addr, align 8
  %1 = load i32, i32* %numarrays.addr, align 4
  %2 = load i64, i64* %arraysize.addr, align 8
  %call = call i64* @LoadStringArray(i8* %0, i32 %1, i64* %nstrings, i64 %2)
  store i64* %call, i64** %optrarray, align 8
  %3 = load i64*, i64** %optrarray, align 8
  store i64* %3, i64** %tempobase, align 8
  %4 = load i8*, i8** %arraybase.addr, align 8
  store i8* %4, i8** %tempsbase, align 8
  %call1 = call i64 (...) @StartStopwatch()
  store i64 %call1, i64* %elapsed, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %numarrays.addr, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64*, i64** %tempobase, align 8
  %8 = load i8*, i8** %tempsbase, align 8
  %9 = load i64, i64* %nstrings, align 8
  %10 = load i64, i64* %nstrings, align 8
  %sub = sub i64 %10, 1
  call void @StrHeapSort(i64* %7, i8* %8, i64 %9, i64 0, i64 %sub)
  %11 = load i64, i64* %nstrings, align 8
  %12 = load i64*, i64** %tempobase, align 8
  %add.ptr = getelementptr inbounds i64, i64* %12, i64 %11
  store i64* %add.ptr, i64** %tempobase, align 8
  %13 = load i64, i64* %arraysize.addr, align 8
  %add = add i64 %13, 100
  %14 = load i8*, i8** %tempsbase, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %14, i64 %add
  store i8* %add.ptr2, i8** %tempsbase, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %elapsed, align 8
  %call3 = call i64 @StopStopwatch(i64 %16)
  store i64 %call3, i64* %elapsed, align 8
  %17 = load i64*, i64** %optrarray, align 8
  %18 = bitcast i64* %17 to i8*
  call void @FreeMemory(i8* %18, i32* %syserror)
  %19 = load i64, i64* %elapsed, align 8
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define void @DoBitops() #0 {
entry:
  %locbitopstruct = alloca %struct.BitOpStruct*, align 8
  %bitarraybase = alloca i64*, align 8
  %bitoparraybase = alloca i64*, align 8
  %nbitops = alloca i64, align 8
  %accumtime = alloca i64, align 8
  %iterations = alloca double, align 8
  %errorcontext = alloca i8*, align 8
  %systemerror = alloca i32, align 4
  %ticks = alloca i32, align 4
  store %struct.BitOpStruct* @global_bitopstruct, %struct.BitOpStruct** %locbitopstruct, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i8** %errorcontext, align 8
  %0 = load %struct.BitOpStruct*, %struct.BitOpStruct** %locbitopstruct, align 8
  %adjust = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %0, i32 0, i32 0
  %1 = load i32, i32* %adjust, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.BitOpStruct*, %struct.BitOpStruct** %locbitopstruct, align 8
  %bitfieldarraysize = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %2, i32 0, i32 4
  %3 = load i64, i64* %bitfieldarraysize, align 8
  %mul = mul i64 %3, 8
  %call = call i8* @AllocateMemory(i64 %mul, i32* %systemerror)
  %4 = bitcast i8* %call to i64*
  store i64* %4, i64** %bitarraybase, align 8
  %5 = load i32, i32* %systemerror, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %6 = load i8*, i8** %errorcontext, align 8
  %7 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %6, i32 %7)
  call void (...) @ErrorExit()
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %8 = load %struct.BitOpStruct*, %struct.BitOpStruct** %locbitopstruct, align 8
  %bitoparraysize = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %8, i32 0, i32 3
  store i64 30, i64* %bitoparraysize, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.15
  %9 = load %struct.BitOpStruct*, %struct.BitOpStruct** %locbitopstruct, align 8
  %bitoparraysize2 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %9, i32 0, i32 3
  %10 = load i64, i64* %bitoparraysize2, align 8
  %mul3 = mul i64 %10, 2
  %mul4 = mul i64 %mul3, 8
  %call5 = call i8* @AllocateMemory(i64 %mul4, i32* %systemerror)
  %11 = bitcast i8* %call5 to i64*
  store i64* %11, i64** %bitoparraybase, align 8
  %12 = load i32, i32* %systemerror, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.body
  %13 = load i8*, i8** %errorcontext, align 8
  %14 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %13, i32 %14)
  %15 = load i64*, i64** %bitarraybase, align 8
  %16 = bitcast i64* %15 to i8*
  call void @FreeMemory(i8* %16, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %while.body
  %17 = load i64*, i64** %bitarraybase, align 8
  %18 = load i64*, i64** %bitoparraybase, align 8
  %19 = load %struct.BitOpStruct*, %struct.BitOpStruct** %locbitopstruct, align 8
  %bitoparraysize9 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %19, i32 0, i32 3
  %20 = load i64, i64* %bitoparraysize9, align 8
  %call10 = call i64 @DoBitfieldIteration(i64* %17, i64* %18, i64 %20, i64* %nbitops)
  %conv = trunc i64 %call10 to i32
  store i32 %conv, i32* %ticks, align 4
  %21 = load i32, i32* %ticks, align 4
  %conv11 = sext i32 %21 to i64
  %22 = load i64, i64* @global_min_ticks, align 8
  %cmp12 = icmp ugt i64 %conv11, %22
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.8
  br label %while.end

if.end.15:                                        ; preds = %if.end.8
  %23 = load i64*, i64** %bitoparraybase, align 8
  %24 = bitcast i64* %23 to i8*
  call void @FreeMemory(i8* %24, i32* %systemerror)
  %25 = load %struct.BitOpStruct*, %struct.BitOpStruct** %locbitopstruct, align 8
  %bitoparraysize16 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %25, i32 0, i32 3
  %26 = load i64, i64* %bitoparraysize16, align 8
  %add = add i64 %26, 100
  store i64 %add, i64* %bitoparraysize16, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.14
  br label %if.end.30

if.else:                                          ; preds = %entry
  %27 = load %struct.BitOpStruct*, %struct.BitOpStruct** %locbitopstruct, align 8
  %bitfieldarraysize17 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %27, i32 0, i32 4
  %28 = load i64, i64* %bitfieldarraysize17, align 8
  %mul18 = mul i64 %28, 8
  %call19 = call i8* @AllocateMemory(i64 %mul18, i32* %systemerror)
  %29 = bitcast i8* %call19 to i64*
  store i64* %29, i64** %bitarraybase, align 8
  %30 = load i32, i32* %systemerror, align 4
  %tobool20 = icmp ne i32 %30, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else
  %31 = load i8*, i8** %errorcontext, align 8
  %32 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %31, i32 %32)
  call void (...) @ErrorExit()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.else
  %33 = load %struct.BitOpStruct*, %struct.BitOpStruct** %locbitopstruct, align 8
  %bitoparraysize23 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %33, i32 0, i32 3
  %34 = load i64, i64* %bitoparraysize23, align 8
  %mul24 = mul i64 %34, 2
  %mul25 = mul i64 %mul24, 8
  %call26 = call i8* @AllocateMemory(i64 %mul25, i32* %systemerror)
  %35 = bitcast i8* %call26 to i64*
  store i64* %35, i64** %bitoparraybase, align 8
  %36 = load i32, i32* %systemerror, align 4
  %tobool27 = icmp ne i32 %36, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.22
  %37 = load i8*, i8** %errorcontext, align 8
  %38 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %37, i32 %38)
  %39 = load i64*, i64** %bitarraybase, align 8
  %40 = bitcast i64* %39 to i8*
  call void @FreeMemory(i8* %40, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.22
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %while.end
  store i64 0, i64* %accumtime, align 8
  store double 0.000000e+00, double* %iterations, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.30
  %41 = load i64*, i64** %bitarraybase, align 8
  %42 = load i64*, i64** %bitoparraybase, align 8
  %43 = load %struct.BitOpStruct*, %struct.BitOpStruct** %locbitopstruct, align 8
  %bitoparraysize31 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %43, i32 0, i32 3
  %44 = load i64, i64* %bitoparraysize31, align 8
  %call32 = call i64 @DoBitfieldIteration(i64* %41, i64* %42, i64 %44, i64* %nbitops)
  %45 = load i64, i64* %accumtime, align 8
  %add33 = add i64 %45, %call32
  store i64 %add33, i64* %accumtime, align 8
  %46 = load i64, i64* %nbitops, align 8
  %conv34 = uitofp i64 %46 to double
  %47 = load double, double* %iterations, align 8
  %add35 = fadd double %47, %conv34
  store double %add35, double* %iterations, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %48 = load double, double* %iterations, align 8
  %cmp36 = fcmp olt double %48, 1.250000e+06
  br i1 %cmp36, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load i64*, i64** %bitarraybase, align 8
  %50 = bitcast i64* %49 to i8*
  call void @FreeMemory(i8* %50, i32* %systemerror)
  %51 = load i64*, i64** %bitoparraybase, align 8
  %52 = bitcast i64* %51 to i8*
  call void @FreeMemory(i8* %52, i32* %systemerror)
  %53 = load double, double* %iterations, align 8
  %54 = load i64, i64* %accumtime, align 8
  %call38 = call double @TicksToFracSecs(i64 %54)
  %div = fdiv double %53, %call38
  %55 = load %struct.BitOpStruct*, %struct.BitOpStruct** %locbitopstruct, align 8
  %bitopspersec = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %55, i32 0, i32 2
  store double %div, double* %bitopspersec, align 8
  %56 = load %struct.BitOpStruct*, %struct.BitOpStruct** %locbitopstruct, align 8
  %adjust39 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %56, i32 0, i32 0
  %57 = load i32, i32* %adjust39, align 4
  %cmp40 = icmp eq i32 %57, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %do.end
  %58 = load %struct.BitOpStruct*, %struct.BitOpStruct** %locbitopstruct, align 8
  %adjust43 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %58, i32 0, i32 0
  store i32 1, i32* %adjust43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @DoBitfieldIteration(i64* %bitarraybase, i64* %bitoparraybase, i64 %bitoparraysize, i64* %nbitops) #0 {
entry:
  %bitarraybase.addr = alloca i64*, align 8
  %bitoparraybase.addr = alloca i64*, align 8
  %bitoparraysize.addr = alloca i64, align 8
  %nbitops.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %bitoffset = alloca i64, align 8
  %elapsed = alloca i64, align 8
  store i64* %bitarraybase, i64** %bitarraybase.addr, align 8
  store i64* %bitoparraybase, i64** %bitoparraybase.addr, align 8
  store i64 %bitoparraysize, i64* %bitoparraysize.addr, align 8
  store i64* %nbitops, i64** %nbitops.addr, align 8
  %0 = load i64*, i64** %nbitops.addr, align 8
  store i64 0, i64* %0, align 8
  %call = call i32 @randnum(i32 13)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 4), align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64*, i64** %bitarraybase.addr, align 8
  %4 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i64, i64* %3, i64 %4
  store i64 6148914691236517205, i64* %add.ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %inc = add nsw i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @randnum(i32 13)
  store i64 0, i64* %i, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.14, %for.end
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %bitoparraysize.addr, align 8
  %cmp3 = icmp slt i64 %6, %7
  br i1 %cmp3, label %for.body.4, label %for.end.16

for.body.4:                                       ; preds = %for.cond.2
  %call5 = call i32 @abs_randwc(i32 262140)
  %conv = zext i32 %call5 to i64
  store i64 %conv, i64* %bitoffset, align 8
  %8 = load i64*, i64** %bitoparraybase.addr, align 8
  %9 = load i64, i64* %i, align 8
  %add.ptr6 = getelementptr inbounds i64, i64* %8, i64 %9
  %10 = load i64, i64* %i, align 8
  %add.ptr7 = getelementptr inbounds i64, i64* %add.ptr6, i64 %10
  store i64 %conv, i64* %add.ptr7, align 8
  %11 = load i64, i64* %bitoffset, align 8
  %sub = sub i64 262140, %11
  %conv8 = trunc i64 %sub to i32
  %call9 = call i32 @abs_randwc(i32 %conv8)
  %conv10 = zext i32 %call9 to i64
  %12 = load i64*, i64** %bitoparraybase.addr, align 8
  %13 = load i64, i64* %i, align 8
  %add.ptr11 = getelementptr inbounds i64, i64* %12, i64 %13
  %14 = load i64, i64* %i, align 8
  %add.ptr12 = getelementptr inbounds i64, i64* %add.ptr11, i64 %14
  %add.ptr13 = getelementptr inbounds i64, i64* %add.ptr12, i64 1
  store i64 %conv10, i64* %add.ptr13, align 8
  %15 = load i64*, i64** %nbitops.addr, align 8
  %16 = load i64, i64* %15, align 8
  %add = add i64 %16, %conv10
  store i64 %add, i64* %15, align 8
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.4
  %17 = load i64, i64* %i, align 8
  %inc15 = add nsw i64 %17, 1
  store i64 %inc15, i64* %i, align 8
  br label %for.cond.2

for.end.16:                                       ; preds = %for.cond.2
  %call17 = call i64 (...) @StartStopwatch()
  store i64 %call17, i64* %elapsed, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.39, %for.end.16
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %bitoparraysize.addr, align 8
  %cmp19 = icmp slt i64 %18, %19
  br i1 %cmp19, label %for.body.21, label %for.end.41

for.body.21:                                      ; preds = %for.cond.18
  %20 = load i64, i64* %i, align 8
  %rem = srem i64 %20, 3
  switch i64 %rem, label %sw.epilog [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.27
    i64 2, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %for.body.21
  %21 = load i64*, i64** %bitarraybase.addr, align 8
  %22 = load i64*, i64** %bitoparraybase.addr, align 8
  %23 = load i64, i64* %i, align 8
  %add.ptr22 = getelementptr inbounds i64, i64* %22, i64 %23
  %24 = load i64, i64* %i, align 8
  %add.ptr23 = getelementptr inbounds i64, i64* %add.ptr22, i64 %24
  %25 = load i64, i64* %add.ptr23, align 8
  %26 = load i64*, i64** %bitoparraybase.addr, align 8
  %27 = load i64, i64* %i, align 8
  %add.ptr24 = getelementptr inbounds i64, i64* %26, i64 %27
  %28 = load i64, i64* %i, align 8
  %add.ptr25 = getelementptr inbounds i64, i64* %add.ptr24, i64 %28
  %add.ptr26 = getelementptr inbounds i64, i64* %add.ptr25, i64 1
  %29 = load i64, i64* %add.ptr26, align 8
  call void @ToggleBitRun(i64* %21, i64 %25, i64 %29, i32 1)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %for.body.21
  %30 = load i64*, i64** %bitarraybase.addr, align 8
  %31 = load i64*, i64** %bitoparraybase.addr, align 8
  %32 = load i64, i64* %i, align 8
  %add.ptr28 = getelementptr inbounds i64, i64* %31, i64 %32
  %33 = load i64, i64* %i, align 8
  %add.ptr29 = getelementptr inbounds i64, i64* %add.ptr28, i64 %33
  %34 = load i64, i64* %add.ptr29, align 8
  %35 = load i64*, i64** %bitoparraybase.addr, align 8
  %36 = load i64, i64* %i, align 8
  %add.ptr30 = getelementptr inbounds i64, i64* %35, i64 %36
  %37 = load i64, i64* %i, align 8
  %add.ptr31 = getelementptr inbounds i64, i64* %add.ptr30, i64 %37
  %add.ptr32 = getelementptr inbounds i64, i64* %add.ptr31, i64 1
  %38 = load i64, i64* %add.ptr32, align 8
  call void @ToggleBitRun(i64* %30, i64 %34, i64 %38, i32 0)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %for.body.21
  %39 = load i64*, i64** %bitarraybase.addr, align 8
  %40 = load i64*, i64** %bitoparraybase.addr, align 8
  %41 = load i64, i64* %i, align 8
  %add.ptr34 = getelementptr inbounds i64, i64* %40, i64 %41
  %42 = load i64, i64* %i, align 8
  %add.ptr35 = getelementptr inbounds i64, i64* %add.ptr34, i64 %42
  %43 = load i64, i64* %add.ptr35, align 8
  %44 = load i64*, i64** %bitoparraybase.addr, align 8
  %45 = load i64, i64* %i, align 8
  %add.ptr36 = getelementptr inbounds i64, i64* %44, i64 %45
  %46 = load i64, i64* %i, align 8
  %add.ptr37 = getelementptr inbounds i64, i64* %add.ptr36, i64 %46
  %add.ptr38 = getelementptr inbounds i64, i64* %add.ptr37, i64 1
  %47 = load i64, i64* %add.ptr38, align 8
  call void @FlipBitRun(i64* %39, i64 %43, i64 %47)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.21, %sw.bb.33, %sw.bb.27, %sw.bb
  br label %for.inc.39

for.inc.39:                                       ; preds = %sw.epilog
  %48 = load i64, i64* %i, align 8
  %inc40 = add nsw i64 %48, 1
  store i64 %inc40, i64* %i, align 8
  br label %for.cond.18

for.end.41:                                       ; preds = %for.cond.18
  %49 = load i64, i64* %elapsed, align 8
  %call42 = call i64 @StopStopwatch(i64 %49)
  ret i64 %call42
}

; Function Attrs: nounwind uwtable
define void @DoEmFloat() #0 {
entry:
  %locemfloatstruct = alloca %struct.EmFloatStruct*, align 8
  %abase = alloca %struct.InternalFPF*, align 8
  %bbase = alloca %struct.InternalFPF*, align 8
  %cbase = alloca %struct.InternalFPF*, align 8
  %accumtime = alloca i64, align 8
  %iterations = alloca double, align 8
  %tickcount = alloca i64, align 8
  %errorcontext = alloca i8*, align 8
  %systemerror = alloca i32, align 4
  %loops = alloca i64, align 8
  store %struct.EmFloatStruct* @global_emfloatstruct, %struct.EmFloatStruct** %locemfloatstruct, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i32 0, i32 0), i8** %errorcontext, align 8
  %0 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %arraysize = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %0, i32 0, i32 2
  %1 = load i64, i64* %arraysize, align 8
  %mul = mul i64 %1, 12
  %call = call i8* @AllocateMemory(i64 %mul, i32* %systemerror)
  %2 = bitcast i8* %call to %struct.InternalFPF*
  store %struct.InternalFPF* %2, %struct.InternalFPF** %abase, align 8
  %3 = load i32, i32* %systemerror, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %errorcontext, align 8
  %5 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %4, i32 %5)
  call void (...) @ErrorExit()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %arraysize1 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %6, i32 0, i32 2
  %7 = load i64, i64* %arraysize1, align 8
  %mul2 = mul i64 %7, 12
  %call3 = call i8* @AllocateMemory(i64 %mul2, i32* %systemerror)
  %8 = bitcast i8* %call3 to %struct.InternalFPF*
  store %struct.InternalFPF* %8, %struct.InternalFPF** %bbase, align 8
  %9 = load i32, i32* %systemerror, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %10 = load i8*, i8** %errorcontext, align 8
  %11 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %10, i32 %11)
  %12 = load %struct.InternalFPF*, %struct.InternalFPF** %abase, align 8
  %13 = bitcast %struct.InternalFPF* %12 to i8*
  call void @FreeMemory(i8* %13, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %14 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %arraysize7 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %14, i32 0, i32 2
  %15 = load i64, i64* %arraysize7, align 8
  %mul8 = mul i64 %15, 12
  %call9 = call i8* @AllocateMemory(i64 %mul8, i32* %systemerror)
  %16 = bitcast i8* %call9 to %struct.InternalFPF*
  store %struct.InternalFPF* %16, %struct.InternalFPF** %cbase, align 8
  %17 = load i32, i32* %systemerror, align 4
  %tobool10 = icmp ne i32 %17, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  %18 = load i8*, i8** %errorcontext, align 8
  %19 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %18, i32 %19)
  %20 = load %struct.InternalFPF*, %struct.InternalFPF** %abase, align 8
  %21 = bitcast %struct.InternalFPF* %20 to i8*
  call void @FreeMemory(i8* %21, i32* %systemerror)
  %22 = load %struct.InternalFPF*, %struct.InternalFPF** %bbase, align 8
  %23 = bitcast %struct.InternalFPF* %22 to i8*
  call void @FreeMemory(i8* %23, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.6
  %24 = load %struct.InternalFPF*, %struct.InternalFPF** %abase, align 8
  %25 = load %struct.InternalFPF*, %struct.InternalFPF** %bbase, align 8
  %26 = load %struct.InternalFPF*, %struct.InternalFPF** %cbase, align 8
  %27 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %arraysize13 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %27, i32 0, i32 2
  %28 = load i64, i64* %arraysize13, align 8
  call void @SetupCPUEmFloatArrays(%struct.InternalFPF* %24, %struct.InternalFPF* %25, %struct.InternalFPF* %26, i64 %28)
  %29 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %adjust = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %29, i32 0, i32 0
  %30 = load i32, i32* %adjust, align 4
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %if.end.12
  %31 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %loops15 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %31, i32 0, i32 3
  store i64 0, i64* %loops15, align 8
  store i64 1, i64* %loops, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %32 = load i64, i64* %loops, align 8
  %cmp16 = icmp ult i64 %32, 500000
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct.InternalFPF*, %struct.InternalFPF** %abase, align 8
  %34 = load %struct.InternalFPF*, %struct.InternalFPF** %bbase, align 8
  %35 = load %struct.InternalFPF*, %struct.InternalFPF** %cbase, align 8
  %36 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %arraysize17 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %36, i32 0, i32 2
  %37 = load i64, i64* %arraysize17, align 8
  %38 = load i64, i64* %loops, align 8
  %call18 = call i64 @DoEmFloatIteration(%struct.InternalFPF* %33, %struct.InternalFPF* %34, %struct.InternalFPF* %35, i64 %37, i64 %38)
  store i64 %call18, i64* %tickcount, align 8
  %39 = load i64, i64* %tickcount, align 8
  %40 = load i64, i64* @global_min_ticks, align 8
  %cmp19 = icmp ugt i64 %39, %40
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %for.body
  %41 = load i64, i64* %loops, align 8
  %42 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %loops21 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %42, i32 0, i32 3
  store i64 %41, i64* %loops21, align 8
  br label %for.end

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %43 = load i64, i64* %loops, align 8
  %44 = load i64, i64* %loops, align 8
  %add = add i64 %44, %43
  store i64 %add, i64* %loops, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.20, %for.cond
  br label %if.end.23

if.end.23:                                        ; preds = %for.end, %if.end.12
  %45 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %loops24 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %45, i32 0, i32 3
  %46 = load i64, i64* %loops24, align 8
  %cmp25 = icmp eq i64 %46, 0
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.23
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.55, i32 0, i32 0))
  %47 = load %struct.InternalFPF*, %struct.InternalFPF** %abase, align 8
  %48 = bitcast %struct.InternalFPF* %47 to i8*
  call void @FreeMemory(i8* %48, i32* %systemerror)
  %49 = load %struct.InternalFPF*, %struct.InternalFPF** %bbase, align 8
  %50 = bitcast %struct.InternalFPF* %49 to i8*
  call void @FreeMemory(i8* %50, i32* %systemerror)
  %51 = load %struct.InternalFPF*, %struct.InternalFPF** %cbase, align 8
  %52 = bitcast %struct.InternalFPF* %51 to i8*
  call void @FreeMemory(i8* %52, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.23
  store i64 0, i64* %accumtime, align 8
  store double 0.000000e+00, double* %iterations, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.28
  %53 = load %struct.InternalFPF*, %struct.InternalFPF** %abase, align 8
  %54 = load %struct.InternalFPF*, %struct.InternalFPF** %bbase, align 8
  %55 = load %struct.InternalFPF*, %struct.InternalFPF** %cbase, align 8
  %56 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %arraysize29 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %56, i32 0, i32 2
  %57 = load i64, i64* %arraysize29, align 8
  %58 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %loops30 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %58, i32 0, i32 3
  %59 = load i64, i64* %loops30, align 8
  %call31 = call i64 @DoEmFloatIteration(%struct.InternalFPF* %53, %struct.InternalFPF* %54, %struct.InternalFPF* %55, i64 %57, i64 %59)
  %60 = load i64, i64* %accumtime, align 8
  %add32 = add i64 %60, %call31
  store i64 %add32, i64* %accumtime, align 8
  %61 = load double, double* %iterations, align 8
  %add33 = fadd double %61, 1.000000e+00
  store double %add33, double* %iterations, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %62 = load double, double* %iterations, align 8
  %cmp34 = fcmp olt double %62, 7.500000e+01
  br i1 %cmp34, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %63 = load %struct.InternalFPF*, %struct.InternalFPF** %abase, align 8
  %64 = bitcast %struct.InternalFPF* %63 to i8*
  call void @FreeMemory(i8* %64, i32* %systemerror)
  %65 = load %struct.InternalFPF*, %struct.InternalFPF** %bbase, align 8
  %66 = bitcast %struct.InternalFPF* %65 to i8*
  call void @FreeMemory(i8* %66, i32* %systemerror)
  %67 = load %struct.InternalFPF*, %struct.InternalFPF** %cbase, align 8
  %68 = bitcast %struct.InternalFPF* %67 to i8*
  call void @FreeMemory(i8* %68, i32* %systemerror)
  %69 = load double, double* %iterations, align 8
  %70 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %loops35 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %70, i32 0, i32 3
  %71 = load i64, i64* %loops35, align 8
  %conv = uitofp i64 %71 to double
  %mul36 = fmul double %69, %conv
  %72 = load i64, i64* %accumtime, align 8
  %call37 = call double @TicksToFracSecs(i64 %72)
  %div = fdiv double %mul36, %call37
  %73 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %emflops = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %73, i32 0, i32 4
  store double %div, double* %emflops, align 8
  %74 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %adjust38 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %74, i32 0, i32 0
  %75 = load i32, i32* %adjust38, align 4
  %cmp39 = icmp eq i32 %75, 0
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %do.end
  %76 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %locemfloatstruct, align 8
  %adjust42 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %76, i32 0, i32 0
  store i32 1, i32* %adjust42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %do.end
  ret void
}

declare void @SetupCPUEmFloatArrays(%struct.InternalFPF*, %struct.InternalFPF*, %struct.InternalFPF*, i64) #1

declare i64 @DoEmFloatIteration(%struct.InternalFPF*, %struct.InternalFPF*, %struct.InternalFPF*, i64, i64) #1

; Function Attrs: nounwind uwtable
define void @DoFourier() #0 {
entry:
  %locfourierstruct = alloca %struct.FourierStruct*, align 8
  %abase = alloca double*, align 8
  %bbase = alloca double*, align 8
  %accumtime = alloca i64, align 8
  %iterations = alloca double, align 8
  %errorcontext = alloca i8*, align 8
  %systemerror = alloca i32, align 4
  store %struct.FourierStruct* @global_fourierstruct, %struct.FourierStruct** %locfourierstruct, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i32 0, i32 0), i8** %errorcontext, align 8
  %0 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %adjust = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %0, i32 0, i32 0
  %1 = load i32, i32* %adjust, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %arraysize = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %2, i32 0, i32 2
  store i64 100, i64* %arraysize, align 8
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end.13
  %3 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %arraysize1 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %3, i32 0, i32 2
  %4 = load i64, i64* %arraysize1, align 8
  %mul = mul i64 %4, 8
  %call = call i8* @AllocateMemory(i64 %mul, i32* %systemerror)
  %5 = bitcast i8* %call to double*
  store double* %5, double** %abase, align 8
  %6 = load i32, i32* %systemerror, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %while.body
  %7 = load i8*, i8** %errorcontext, align 8
  %8 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %7, i32 %8)
  call void (...) @ErrorExit()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %while.body
  %9 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %arraysize3 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %9, i32 0, i32 2
  %10 = load i64, i64* %arraysize3, align 8
  %mul4 = mul i64 %10, 8
  %call5 = call i8* @AllocateMemory(i64 %mul4, i32* %systemerror)
  %11 = bitcast i8* %call5 to double*
  store double* %11, double** %bbase, align 8
  %12 = load i32, i32* %systemerror, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %13 = load i8*, i8** %errorcontext, align 8
  %14 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %13, i32 %14)
  %15 = load double*, double** %abase, align 8
  %16 = bitcast double* %15 to i8*
  call void @FreeMemory(i8* %16, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %17 = load double*, double** %abase, align 8
  %18 = load double*, double** %bbase, align 8
  %19 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %arraysize9 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %19, i32 0, i32 2
  %20 = load i64, i64* %arraysize9, align 8
  %call10 = call i64 @DoFPUTransIteration(double* %17, double* %18, i64 %20)
  %21 = load i64, i64* @global_min_ticks, align 8
  %cmp11 = icmp ugt i64 %call10, %21
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  br label %while.end

if.end.13:                                        ; preds = %if.end.8
  %22 = load double*, double** %abase, align 8
  %23 = bitcast double* %22 to i8*
  call void @FreeMemory(i8* %23, i32* %systemerror)
  %24 = load double*, double** %bbase, align 8
  %25 = bitcast double* %24 to i8*
  call void @FreeMemory(i8* %25, i32* %systemerror)
  %26 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %arraysize14 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %26, i32 0, i32 2
  %27 = load i64, i64* %arraysize14, align 8
  %add = add i64 %27, 50
  store i64 %add, i64* %arraysize14, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.12
  br label %if.end.27

if.else:                                          ; preds = %entry
  %28 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %arraysize15 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %28, i32 0, i32 2
  %29 = load i64, i64* %arraysize15, align 8
  %mul16 = mul i64 %29, 8
  %call17 = call i8* @AllocateMemory(i64 %mul16, i32* %systemerror)
  %30 = bitcast i8* %call17 to double*
  store double* %30, double** %abase, align 8
  %31 = load i32, i32* %systemerror, align 4
  %tobool18 = icmp ne i32 %31, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  %32 = load i8*, i8** %errorcontext, align 8
  %33 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %32, i32 %33)
  call void (...) @ErrorExit()
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.else
  %34 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %arraysize21 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %34, i32 0, i32 2
  %35 = load i64, i64* %arraysize21, align 8
  %mul22 = mul i64 %35, 8
  %call23 = call i8* @AllocateMemory(i64 %mul22, i32* %systemerror)
  %36 = bitcast i8* %call23 to double*
  store double* %36, double** %bbase, align 8
  %37 = load i32, i32* %systemerror, align 4
  %tobool24 = icmp ne i32 %37, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  %38 = load i8*, i8** %errorcontext, align 8
  %39 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %38, i32 %39)
  %40 = load double*, double** %abase, align 8
  %41 = bitcast double* %40 to i8*
  call void @FreeMemory(i8* %41, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %while.end
  store i64 0, i64* %accumtime, align 8
  store double 0.000000e+00, double* %iterations, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.27
  %42 = load double*, double** %abase, align 8
  %43 = load double*, double** %bbase, align 8
  %44 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %arraysize28 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %44, i32 0, i32 2
  %45 = load i64, i64* %arraysize28, align 8
  %call29 = call i64 @DoFPUTransIteration(double* %42, double* %43, i64 %45)
  %46 = load i64, i64* %accumtime, align 8
  %add30 = add i64 %46, %call29
  store i64 %add30, i64* %accumtime, align 8
  %47 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %arraysize31 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %47, i32 0, i32 2
  %48 = load i64, i64* %arraysize31, align 8
  %conv = uitofp i64 %48 to double
  %mul32 = fmul double %conv, 2.000000e+00
  %sub = fsub double %mul32, 1.000000e+00
  %49 = load double, double* %iterations, align 8
  %add33 = fadd double %49, %sub
  store double %add33, double* %iterations, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %50 = load double, double* %iterations, align 8
  %cmp34 = fcmp olt double %50, 1.000000e+04
  br i1 %cmp34, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %51 = load double*, double** %abase, align 8
  %52 = bitcast double* %51 to i8*
  call void @FreeMemory(i8* %52, i32* %systemerror)
  %53 = load double*, double** %bbase, align 8
  %54 = bitcast double* %53 to i8*
  call void @FreeMemory(i8* %54, i32* %systemerror)
  %55 = load double, double* %iterations, align 8
  %56 = load i64, i64* %accumtime, align 8
  %call36 = call double @TicksToFracSecs(i64 %56)
  %div = fdiv double %55, %call36
  %57 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %fflops = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %57, i32 0, i32 3
  store double %div, double* %fflops, align 8
  %58 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %adjust37 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %58, i32 0, i32 0
  %59 = load i32, i32* %adjust37, align 4
  %cmp38 = icmp eq i32 %59, 0
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %do.end
  %60 = load %struct.FourierStruct*, %struct.FourierStruct** %locfourierstruct, align 8
  %adjust41 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %60, i32 0, i32 0
  store i32 1, i32* %adjust41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @DoFPUTransIteration(double* %abase, double* %bbase, i64 %arraysize) #0 {
entry:
  %abase.addr = alloca double*, align 8
  %bbase.addr = alloca double*, align 8
  %arraysize.addr = alloca i64, align 8
  %omega = alloca double, align 8
  %i = alloca i64, align 8
  %elapsed = alloca i64, align 8
  store double* %abase, double** %abase.addr, align 8
  store double* %bbase, double** %bbase.addr, align 8
  store i64 %arraysize, i64* %arraysize.addr, align 8
  %call = call i64 (...) @StartStopwatch()
  store i64 %call, i64* %elapsed, align 8
  %call1 = call double @TrapezoidIntegrate(double 0.000000e+00, double 2.000000e+00, i32 200, double 0.000000e+00, i32 0)
  %div = fdiv double %call1, 2.000000e+00
  %0 = load double*, double** %abase.addr, align 8
  store double %div, double* %0, align 8
  store double 0x400921FB54442D18, double* %omega, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %arraysize.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, double* %omega, align 8
  %4 = load i64, i64* %i, align 8
  %conv = uitofp i64 %4 to double
  %mul = fmul double %3, %conv
  %call2 = call double @TrapezoidIntegrate(double 0.000000e+00, double 2.000000e+00, i32 200, double %mul, i32 1)
  %5 = load double*, double** %abase.addr, align 8
  %6 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds double, double* %5, i64 %6
  store double %call2, double* %add.ptr, align 8
  %7 = load double, double* %omega, align 8
  %8 = load i64, i64* %i, align 8
  %conv3 = uitofp i64 %8 to double
  %mul4 = fmul double %7, %conv3
  %call5 = call double @TrapezoidIntegrate(double 0.000000e+00, double 2.000000e+00, i32 200, double %mul4, i32 2)
  %9 = load double*, double** %bbase.addr, align 8
  %10 = load i64, i64* %i, align 8
  %add.ptr6 = getelementptr inbounds double, double* %9, i64 %10
  store double %call5, double* %add.ptr6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* %elapsed, align 8
  %call7 = call i64 @StopStopwatch(i64 %12)
  ret i64 %call7
}

; Function Attrs: nounwind uwtable
define void @DoAssign() #0 {
entry:
  %locassignstruct = alloca %struct.AssignStruct*, align 8
  %arraybase = alloca i64*, align 8
  %errorcontext = alloca i8*, align 8
  %systemerror = alloca i32, align 4
  %accumtime = alloca i64, align 8
  %iterations = alloca double, align 8
  store %struct.AssignStruct* @global_assignstruct, %struct.AssignStruct** %locassignstruct, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i8** %errorcontext, align 8
  %0 = load %struct.AssignStruct*, %struct.AssignStruct** %locassignstruct, align 8
  %adjust = getelementptr inbounds %struct.AssignStruct, %struct.AssignStruct* %0, i32 0, i32 0
  %1 = load i32, i32* %adjust, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.AssignStruct*, %struct.AssignStruct** %locassignstruct, align 8
  %numarrays = getelementptr inbounds %struct.AssignStruct, %struct.AssignStruct* %2, i32 0, i32 2
  store i64 1, i64* %numarrays, align 8
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end.7
  %3 = load %struct.AssignStruct*, %struct.AssignStruct** %locassignstruct, align 8
  %numarrays1 = getelementptr inbounds %struct.AssignStruct, %struct.AssignStruct* %3, i32 0, i32 2
  %4 = load i64, i64* %numarrays1, align 8
  %mul = mul i64 81608, %4
  %call = call i8* @AllocateMemory(i64 %mul, i32* %systemerror)
  %5 = bitcast i8* %call to i64*
  store i64* %5, i64** %arraybase, align 8
  %6 = load i32, i32* %systemerror, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %while.body
  %7 = load i8*, i8** %errorcontext, align 8
  %8 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %7, i32 %8)
  %9 = load i64*, i64** %arraybase, align 8
  %10 = bitcast i64* %9 to i8*
  call void @FreeMemory(i8* %10, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %while.body
  %11 = load i64*, i64** %arraybase, align 8
  %12 = load %struct.AssignStruct*, %struct.AssignStruct** %locassignstruct, align 8
  %numarrays3 = getelementptr inbounds %struct.AssignStruct, %struct.AssignStruct* %12, i32 0, i32 2
  %13 = load i64, i64* %numarrays3, align 8
  %call4 = call i64 @DoAssignIteration(i64* %11, i64 %13)
  %14 = load i64, i64* @global_min_ticks, align 8
  %cmp5 = icmp ugt i64 %call4, %14
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %while.end

if.end.7:                                         ; preds = %if.end
  %15 = load i64*, i64** %arraybase, align 8
  %16 = bitcast i64* %15 to i8*
  call void @FreeMemory(i8* %16, i32* %systemerror)
  %17 = load %struct.AssignStruct*, %struct.AssignStruct** %locassignstruct, align 8
  %numarrays8 = getelementptr inbounds %struct.AssignStruct, %struct.AssignStruct* %17, i32 0, i32 2
  %18 = load i64, i64* %numarrays8, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %numarrays8, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.6
  br label %if.end.15

if.else:                                          ; preds = %entry
  %19 = load %struct.AssignStruct*, %struct.AssignStruct** %locassignstruct, align 8
  %numarrays9 = getelementptr inbounds %struct.AssignStruct, %struct.AssignStruct* %19, i32 0, i32 2
  %20 = load i64, i64* %numarrays9, align 8
  %mul10 = mul i64 81608, %20
  %call11 = call i8* @AllocateMemory(i64 %mul10, i32* %systemerror)
  %21 = bitcast i8* %call11 to i64*
  store i64* %21, i64** %arraybase, align 8
  %22 = load i32, i32* %systemerror, align 4
  %tobool12 = icmp ne i32 %22, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  %23 = load i8*, i8** %errorcontext, align 8
  %24 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %23, i32 %24)
  %25 = load i64*, i64** %arraybase, align 8
  %26 = bitcast i64* %25 to i8*
  call void @FreeMemory(i8* %26, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %while.end
  store i64 0, i64* %accumtime, align 8
  store double 0.000000e+00, double* %iterations, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.15
  %27 = load i64*, i64** %arraybase, align 8
  %28 = load %struct.AssignStruct*, %struct.AssignStruct** %locassignstruct, align 8
  %numarrays16 = getelementptr inbounds %struct.AssignStruct, %struct.AssignStruct* %28, i32 0, i32 2
  %29 = load i64, i64* %numarrays16, align 8
  %call17 = call i64 @DoAssignIteration(i64* %27, i64 %29)
  %30 = load i64, i64* %accumtime, align 8
  %add = add i64 %30, %call17
  store i64 %add, i64* %accumtime, align 8
  %31 = load double, double* %iterations, align 8
  %add18 = fadd double %31, 1.000000e+00
  store double %add18, double* %iterations, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %32 = load double, double* %iterations, align 8
  %cmp19 = fcmp olt double %32, 8.000000e+00
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load i64*, i64** %arraybase, align 8
  %34 = bitcast i64* %33 to i8*
  call void @FreeMemory(i8* %34, i32* %systemerror)
  %35 = load double, double* %iterations, align 8
  %36 = load %struct.AssignStruct*, %struct.AssignStruct** %locassignstruct, align 8
  %numarrays20 = getelementptr inbounds %struct.AssignStruct, %struct.AssignStruct* %36, i32 0, i32 2
  %37 = load i64, i64* %numarrays20, align 8
  %conv = uitofp i64 %37 to double
  %mul21 = fmul double %35, %conv
  %38 = load i64, i64* %accumtime, align 8
  %call22 = call double @TicksToFracSecs(i64 %38)
  %div = fdiv double %mul21, %call22
  %39 = load %struct.AssignStruct*, %struct.AssignStruct** %locassignstruct, align 8
  %iterspersec = getelementptr inbounds %struct.AssignStruct, %struct.AssignStruct* %39, i32 0, i32 3
  store double %div, double* %iterspersec, align 8
  %40 = load %struct.AssignStruct*, %struct.AssignStruct** %locassignstruct, align 8
  %adjust23 = getelementptr inbounds %struct.AssignStruct, %struct.AssignStruct* %40, i32 0, i32 0
  %41 = load i32, i32* %adjust23, align 4
  %cmp24 = icmp eq i32 %41, 0
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %do.end
  %42 = load %struct.AssignStruct*, %struct.AssignStruct** %locassignstruct, align 8
  %adjust27 = getelementptr inbounds %struct.AssignStruct, %struct.AssignStruct* %42, i32 0, i32 0
  store i32 1, i32* %adjust27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @DoAssignIteration(i64* %arraybase, i64 %numarrays) #0 {
entry:
  %arraybase.addr = alloca i64*, align 8
  %numarrays.addr = alloca i64, align 8
  %abase = alloca %struct.longptr, align 8
  %elapsed = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %arraybase, i64** %arraybase.addr, align 8
  store i64 %numarrays, i64* %numarrays.addr, align 8
  %0 = load i64*, i64** %arraybase.addr, align 8
  %ptrs = getelementptr inbounds %struct.longptr, %struct.longptr* %abase, i32 0, i32 0
  %p = bitcast %union.anon.0* %ptrs to i64**
  store i64* %0, i64** %p, align 8
  %1 = load i64*, i64** %arraybase.addr, align 8
  %2 = load i64, i64* %numarrays.addr, align 8
  call void @LoadAssignArrayWithRand(i64* %1, i64 %2)
  %call = call i64 (...) @StartStopwatch()
  store i64 %call, i64* %elapsed, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %numarrays.addr, align 8
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %ptrs1 = getelementptr inbounds %struct.longptr, %struct.longptr* %abase, i32 0, i32 0
  %ap = bitcast %union.anon.0* %ptrs1 to [101 x [101 x i64]]**
  %5 = load [101 x [101 x i64]]*, [101 x [101 x i64]]** %ap, align 8
  %arraydecay = getelementptr inbounds [101 x [101 x i64]], [101 x [101 x i64]]* %5, i32 0, i32 0
  call void @Assignment([101 x i64]* %arraydecay)
  %ptrs2 = getelementptr inbounds %struct.longptr, %struct.longptr* %abase, i32 0, i32 0
  %p3 = bitcast %union.anon.0* %ptrs2 to i64**
  %6 = load i64*, i64** %p3, align 8
  %add.ptr = getelementptr inbounds i64, i64* %6, i64 10201
  store i64* %add.ptr, i64** %p3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %elapsed, align 8
  %call4 = call i64 @StopStopwatch(i64 %8)
  ret i64 %call4
}

; Function Attrs: nounwind uwtable
define void @DoIDEA() #0 {
entry:
  %locideastruct = alloca %struct.IDEAStruct*, align 8
  %i = alloca i32, align 4
  %Z = alloca [52 x i16], align 16
  %DK = alloca [52 x i16], align 16
  %userkey = alloca [8 x i16], align 16
  %accumtime = alloca i64, align 8
  %iterations = alloca double, align 8
  %errorcontext = alloca i8*, align 8
  %systemerror = alloca i32, align 4
  %plain1 = alloca i8*, align 8
  %crypt1 = alloca i8*, align 8
  %plain2 = alloca i8*, align 8
  store %struct.IDEAStruct* @global_ideastruct, %struct.IDEAStruct** %locideastruct, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8** %errorcontext, align 8
  %call = call i32 @randnum(i32 3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @abs_randwc(i32 60000)
  %and = and i32 %call1, 65535
  %conv = trunc i32 %and to i16
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i16], [8 x i16]* %userkey, i32 0, i64 %idxprom
  store i16 %conv, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.8, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %3, 52
  br i1 %cmp3, label %for.body.5, label %for.end.10

for.body.5:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [52 x i16], [52 x i16]* %Z, i32 0, i64 %idxprom6
  store i16 0, i16* %arrayidx7, align 2
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.5
  %5 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %5, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.2

for.end.10:                                       ; preds = %for.cond.2
  %arraydecay = getelementptr inbounds [8 x i16], [8 x i16]* %userkey, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [52 x i16], [52 x i16]* %Z, i32 0, i32 0
  call void @en_key_idea(i16* %arraydecay, i16* %arraydecay11)
  %arraydecay12 = getelementptr inbounds [52 x i16], [52 x i16]* %Z, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [52 x i16], [52 x i16]* %DK, i32 0, i32 0
  call void @de_key_idea(i16* %arraydecay12, i16* %arraydecay13)
  %6 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %arraysize = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %6, i32 0, i32 2
  %7 = load i64, i64* %arraysize, align 8
  %call14 = call i8* @AllocateMemory(i64 %7, i32* %systemerror)
  store i8* %call14, i8** %plain1, align 8
  %8 = load i32, i32* %systemerror, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.10
  %9 = load i8*, i8** %errorcontext, align 8
  %10 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %9, i32 %10)
  call void (...) @ErrorExit()
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.10
  %11 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %arraysize15 = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %11, i32 0, i32 2
  %12 = load i64, i64* %arraysize15, align 8
  %call16 = call i8* @AllocateMemory(i64 %12, i32* %systemerror)
  store i8* %call16, i8** %crypt1, align 8
  %13 = load i32, i32* %systemerror, align 4
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  %14 = load i8*, i8** %errorcontext, align 8
  %15 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %14, i32 %15)
  %16 = load i8*, i8** %plain1, align 8
  call void @FreeMemory(i8* %16, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end
  %17 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %arraysize20 = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %17, i32 0, i32 2
  %18 = load i64, i64* %arraysize20, align 8
  %call21 = call i8* @AllocateMemory(i64 %18, i32* %systemerror)
  store i8* %call21, i8** %plain2, align 8
  %19 = load i32, i32* %systemerror, align 4
  %tobool22 = icmp ne i32 %19, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  %20 = load i8*, i8** %errorcontext, align 8
  %21 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %20, i32 %21)
  %22 = load i8*, i8** %plain1, align 8
  call void @FreeMemory(i8* %22, i32* %systemerror)
  %23 = load i8*, i8** %crypt1, align 8
  call void @FreeMemory(i8* %23, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.19
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.36, %if.end.24
  %24 = load i32, i32* %i, align 4
  %conv26 = sext i32 %24 to i64
  %25 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %arraysize27 = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %25, i32 0, i32 2
  %26 = load i64, i64* %arraysize27, align 8
  %cmp28 = icmp ult i64 %conv26, %26
  br i1 %cmp28, label %for.body.30, label %for.end.38

for.body.30:                                      ; preds = %for.cond.25
  %call31 = call i32 @abs_randwc(i32 255)
  %and32 = and i32 %call31, 255
  %conv33 = trunc i32 %and32 to i8
  %27 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %27 to i64
  %28 = load i8*, i8** %plain1, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %28, i64 %idxprom34
  store i8 %conv33, i8* %arrayidx35, align 1
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.30
  %29 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %29, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.25

for.end.38:                                       ; preds = %for.cond.25
  %30 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %adjust = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %30, i32 0, i32 0
  %31 = load i32, i32* %adjust, align 4
  %cmp39 = icmp eq i32 %31, 0
  br i1 %cmp39, label %if.then.41, label %if.end.59

if.then.41:                                       ; preds = %for.end.38
  %32 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %loops = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %32, i32 0, i32 3
  store i64 100, i64* %loops, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.56, %if.then.41
  %33 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %loops43 = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %33, i32 0, i32 3
  %34 = load i64, i64* %loops43, align 8
  %cmp44 = icmp ult i64 %34, 500000
  br i1 %cmp44, label %for.body.46, label %for.end.58

for.body.46:                                      ; preds = %for.cond.42
  %35 = load i8*, i8** %plain1, align 8
  %36 = load i8*, i8** %crypt1, align 8
  %37 = load i8*, i8** %plain2, align 8
  %38 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %arraysize47 = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %38, i32 0, i32 2
  %39 = load i64, i64* %arraysize47, align 8
  %40 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %loops48 = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %40, i32 0, i32 3
  %41 = load i64, i64* %loops48, align 8
  %arraydecay49 = getelementptr inbounds [52 x i16], [52 x i16]* %Z, i32 0, i32 0
  %arraydecay50 = getelementptr inbounds [52 x i16], [52 x i16]* %DK, i32 0, i32 0
  %call51 = call i64 @DoIDEAIteration(i8* %35, i8* %36, i8* %37, i64 %39, i64 %41, i16* %arraydecay49, i16* %arraydecay50)
  %42 = load i64, i64* @global_min_ticks, align 8
  %cmp52 = icmp ugt i64 %call51, %42
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.body.46
  br label %for.end.58

if.end.55:                                        ; preds = %for.body.46
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %43 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %loops57 = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %43, i32 0, i32 3
  %44 = load i64, i64* %loops57, align 8
  %add = add i64 %44, 10
  store i64 %add, i64* %loops57, align 8
  br label %for.cond.42

for.end.58:                                       ; preds = %if.then.54, %for.cond.42
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.58, %for.end.38
  store i64 0, i64* %accumtime, align 8
  store double 0.000000e+00, double* %iterations, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.59
  %45 = load i8*, i8** %plain1, align 8
  %46 = load i8*, i8** %crypt1, align 8
  %47 = load i8*, i8** %plain2, align 8
  %48 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %arraysize60 = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %48, i32 0, i32 2
  %49 = load i64, i64* %arraysize60, align 8
  %50 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %loops61 = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %50, i32 0, i32 3
  %51 = load i64, i64* %loops61, align 8
  %arraydecay62 = getelementptr inbounds [52 x i16], [52 x i16]* %Z, i32 0, i32 0
  %arraydecay63 = getelementptr inbounds [52 x i16], [52 x i16]* %DK, i32 0, i32 0
  %call64 = call i64 @DoIDEAIteration(i8* %45, i8* %46, i8* %47, i64 %49, i64 %51, i16* %arraydecay62, i16* %arraydecay63)
  %52 = load i64, i64* %accumtime, align 8
  %add65 = add i64 %52, %call64
  store i64 %add65, i64* %accumtime, align 8
  %53 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %loops66 = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %53, i32 0, i32 3
  %54 = load i64, i64* %loops66, align 8
  %conv67 = uitofp i64 %54 to double
  %55 = load double, double* %iterations, align 8
  %add68 = fadd double %55, %conv67
  store double %add68, double* %iterations, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %56 = load double, double* %iterations, align 8
  %cmp69 = fcmp olt double %56, 1.875000e+03
  br i1 %cmp69, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %57 = load i8*, i8** %plain1, align 8
  call void @FreeMemory(i8* %57, i32* %systemerror)
  %58 = load i8*, i8** %crypt1, align 8
  call void @FreeMemory(i8* %58, i32* %systemerror)
  %59 = load i8*, i8** %plain2, align 8
  call void @FreeMemory(i8* %59, i32* %systemerror)
  %60 = load double, double* %iterations, align 8
  %61 = load i64, i64* %accumtime, align 8
  %call71 = call double @TicksToFracSecs(i64 %61)
  %div = fdiv double %60, %call71
  %62 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %iterspersec = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %62, i32 0, i32 4
  store double %div, double* %iterspersec, align 8
  %63 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %adjust72 = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %63, i32 0, i32 0
  %64 = load i32, i32* %adjust72, align 4
  %cmp73 = icmp eq i32 %64, 0
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %do.end
  %65 = load %struct.IDEAStruct*, %struct.IDEAStruct** %locideastruct, align 8
  %adjust76 = getelementptr inbounds %struct.IDEAStruct, %struct.IDEAStruct* %65, i32 0, i32 0
  store i32 1, i32* %adjust76, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %do.end
  ret void
}

declare i32 @randnum(i32) #1

declare i32 @abs_randwc(i32) #1

; Function Attrs: nounwind uwtable
define internal void @en_key_idea(i16* %userkey, i16* %Z) #0 {
entry:
  %userkey.addr = alloca i16*, align 8
  %Z.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i16* %userkey, i16** %userkey.addr, align 8
  store i16* %Z, i16** %Z.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %userkey.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %1, i32 1
  store i16* %incdec.ptr, i16** %userkey.addr, align 8
  %2 = load i16, i16* %1, align 2
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16*, i16** %Z.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  store i16 %2, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.17, %for.end
  %6 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %6, 52
  br i1 %cmp2, label %for.body.3, label %for.end.19

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %and = and i32 %8, 7
  %idxprom5 = sext i32 %and to i64
  %9 = load i16*, i16** %Z.addr, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %9, i64 %idxprom5
  %10 = load i16, i16* %arrayidx6, align 2
  %conv = zext i16 %10 to i32
  %shl = shl i32 %conv, 9
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %and7 = and i32 %add, 7
  %idxprom8 = sext i32 %and7 to i64
  %12 = load i16*, i16** %Z.addr, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %12, i64 %idxprom8
  %13 = load i16, i16* %arrayidx9, align 2
  %conv10 = zext i16 %13 to i32
  %shr = ashr i32 %conv10, 7
  %or = or i32 %shl, %shr
  %conv11 = trunc i32 %or to i16
  %14 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %14, 7
  %idxprom13 = sext i32 %add12 to i64
  %15 = load i16*, i16** %Z.addr, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %15, i64 %idxprom13
  store i16 %conv11, i16* %arrayidx14, align 2
  %16 = load i32, i32* %i, align 4
  %and15 = and i32 %16, 8
  %17 = load i16*, i16** %Z.addr, align 8
  %idx.ext = sext i32 %and15 to i64
  %add.ptr = getelementptr inbounds i16, i16* %17, i64 %idx.ext
  store i16* %add.ptr, i16** %Z.addr, align 8
  %18 = load i32, i32* %i, align 4
  %and16 = and i32 %18, 7
  store i32 %and16, i32* %i, align 4
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.3
  %19 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %19, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond.1

for.end.19:                                       ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @de_key_idea(i16* %Z, i16* %DK) #0 {
entry:
  %Z.addr = alloca i16*, align 8
  %DK.addr = alloca i16*, align 8
  %TT = alloca [52 x i16], align 16
  %j = alloca i32, align 4
  %t1 = alloca i16, align 2
  %t2 = alloca i16, align 2
  %t3 = alloca i16, align 2
  %p = alloca i16*, align 8
  store i16* %Z, i16** %Z.addr, align 8
  store i16* %DK, i16** %DK.addr, align 8
  %arraydecay = getelementptr inbounds [52 x i16], [52 x i16]* %TT, i32 0, i32 0
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 52
  store i16* %add.ptr, i16** %p, align 8
  %0 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %0, i32 1
  store i16* %incdec.ptr, i16** %Z.addr, align 8
  %1 = load i16, i16* %0, align 2
  %call = call zeroext i16 @inv(i16 zeroext %1)
  store i16 %call, i16* %t1, align 2
  %2 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr1, i16** %Z.addr, align 8
  %3 = load i16, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %sub = sub nsw i32 0, %conv
  %conv2 = trunc i32 %sub to i16
  store i16 %conv2, i16* %t2, align 2
  %4 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr3, i16** %Z.addr, align 8
  %5 = load i16, i16* %4, align 2
  %conv4 = zext i16 %5 to i32
  %sub5 = sub nsw i32 0, %conv4
  %conv6 = trunc i32 %sub5 to i16
  store i16 %conv6, i16* %t3, align 2
  %6 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i16, i16* %6, i32 1
  store i16* %incdec.ptr7, i16** %Z.addr, align 8
  %7 = load i16, i16* %6, align 2
  %call8 = call zeroext i16 @inv(i16 zeroext %7)
  %8 = load i16*, i16** %p, align 8
  %incdec.ptr9 = getelementptr inbounds i16, i16* %8, i32 -1
  store i16* %incdec.ptr9, i16** %p, align 8
  store i16 %call8, i16* %incdec.ptr9, align 2
  %9 = load i16, i16* %t3, align 2
  %10 = load i16*, i16** %p, align 8
  %incdec.ptr10 = getelementptr inbounds i16, i16* %10, i32 -1
  store i16* %incdec.ptr10, i16** %p, align 8
  store i16 %9, i16* %incdec.ptr10, align 2
  %11 = load i16, i16* %t2, align 2
  %12 = load i16*, i16** %p, align 8
  %incdec.ptr11 = getelementptr inbounds i16, i16* %12, i32 -1
  store i16* %incdec.ptr11, i16** %p, align 8
  store i16 %11, i16* %incdec.ptr11, align 2
  %13 = load i16, i16* %t1, align 2
  %14 = load i16*, i16** %p, align 8
  %incdec.ptr12 = getelementptr inbounds i16, i16* %14, i32 -1
  store i16* %incdec.ptr12, i16** %p, align 8
  store i16 %13, i16* %incdec.ptr12, align 2
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %15, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr14, i16** %Z.addr, align 8
  %17 = load i16, i16* %16, align 2
  store i16 %17, i16* %t1, align 2
  %18 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr15, i16** %Z.addr, align 8
  %19 = load i16, i16* %18, align 2
  %20 = load i16*, i16** %p, align 8
  %incdec.ptr16 = getelementptr inbounds i16, i16* %20, i32 -1
  store i16* %incdec.ptr16, i16** %p, align 8
  store i16 %19, i16* %incdec.ptr16, align 2
  %21 = load i16, i16* %t1, align 2
  %22 = load i16*, i16** %p, align 8
  %incdec.ptr17 = getelementptr inbounds i16, i16* %22, i32 -1
  store i16* %incdec.ptr17, i16** %p, align 8
  store i16 %21, i16* %incdec.ptr17, align 2
  %23 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %incdec.ptr18, i16** %Z.addr, align 8
  %24 = load i16, i16* %23, align 2
  %call19 = call zeroext i16 @inv(i16 zeroext %24)
  store i16 %call19, i16* %t1, align 2
  %25 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %incdec.ptr20, i16** %Z.addr, align 8
  %26 = load i16, i16* %25, align 2
  %conv21 = zext i16 %26 to i32
  %sub22 = sub nsw i32 0, %conv21
  %conv23 = trunc i32 %sub22 to i16
  store i16 %conv23, i16* %t2, align 2
  %27 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i16, i16* %27, i32 1
  store i16* %incdec.ptr24, i16** %Z.addr, align 8
  %28 = load i16, i16* %27, align 2
  %conv25 = zext i16 %28 to i32
  %sub26 = sub nsw i32 0, %conv25
  %conv27 = trunc i32 %sub26 to i16
  store i16 %conv27, i16* %t3, align 2
  %29 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr28, i16** %Z.addr, align 8
  %30 = load i16, i16* %29, align 2
  %call29 = call zeroext i16 @inv(i16 zeroext %30)
  %31 = load i16*, i16** %p, align 8
  %incdec.ptr30 = getelementptr inbounds i16, i16* %31, i32 -1
  store i16* %incdec.ptr30, i16** %p, align 8
  store i16 %call29, i16* %incdec.ptr30, align 2
  %32 = load i16, i16* %t2, align 2
  %33 = load i16*, i16** %p, align 8
  %incdec.ptr31 = getelementptr inbounds i16, i16* %33, i32 -1
  store i16* %incdec.ptr31, i16** %p, align 8
  store i16 %32, i16* %incdec.ptr31, align 2
  %34 = load i16, i16* %t3, align 2
  %35 = load i16*, i16** %p, align 8
  %incdec.ptr32 = getelementptr inbounds i16, i16* %35, i32 -1
  store i16* %incdec.ptr32, i16** %p, align 8
  store i16 %34, i16* %incdec.ptr32, align 2
  %36 = load i16, i16* %t1, align 2
  %37 = load i16*, i16** %p, align 8
  %incdec.ptr33 = getelementptr inbounds i16, i16* %37, i32 -1
  store i16* %incdec.ptr33, i16** %p, align 8
  store i16 %36, i16* %incdec.ptr33, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i16, i16* %39, i32 1
  store i16* %incdec.ptr34, i16** %Z.addr, align 8
  %40 = load i16, i16* %39, align 2
  store i16 %40, i16* %t1, align 2
  %41 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr35, i16** %Z.addr, align 8
  %42 = load i16, i16* %41, align 2
  %43 = load i16*, i16** %p, align 8
  %incdec.ptr36 = getelementptr inbounds i16, i16* %43, i32 -1
  store i16* %incdec.ptr36, i16** %p, align 8
  store i16 %42, i16* %incdec.ptr36, align 2
  %44 = load i16, i16* %t1, align 2
  %45 = load i16*, i16** %p, align 8
  %incdec.ptr37 = getelementptr inbounds i16, i16* %45, i32 -1
  store i16* %incdec.ptr37, i16** %p, align 8
  store i16 %44, i16* %incdec.ptr37, align 2
  %46 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i16, i16* %46, i32 1
  store i16* %incdec.ptr38, i16** %Z.addr, align 8
  %47 = load i16, i16* %46, align 2
  %call39 = call zeroext i16 @inv(i16 zeroext %47)
  store i16 %call39, i16* %t1, align 2
  %48 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i16, i16* %48, i32 1
  store i16* %incdec.ptr40, i16** %Z.addr, align 8
  %49 = load i16, i16* %48, align 2
  %conv41 = zext i16 %49 to i32
  %sub42 = sub nsw i32 0, %conv41
  %conv43 = trunc i32 %sub42 to i16
  store i16 %conv43, i16* %t2, align 2
  %50 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i16, i16* %50, i32 1
  store i16* %incdec.ptr44, i16** %Z.addr, align 8
  %51 = load i16, i16* %50, align 2
  %conv45 = zext i16 %51 to i32
  %sub46 = sub nsw i32 0, %conv45
  %conv47 = trunc i32 %sub46 to i16
  store i16 %conv47, i16* %t3, align 2
  %52 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i16, i16* %52, i32 1
  store i16* %incdec.ptr48, i16** %Z.addr, align 8
  %53 = load i16, i16* %52, align 2
  %call49 = call zeroext i16 @inv(i16 zeroext %53)
  %54 = load i16*, i16** %p, align 8
  %incdec.ptr50 = getelementptr inbounds i16, i16* %54, i32 -1
  store i16* %incdec.ptr50, i16** %p, align 8
  store i16 %call49, i16* %incdec.ptr50, align 2
  %55 = load i16, i16* %t3, align 2
  %56 = load i16*, i16** %p, align 8
  %incdec.ptr51 = getelementptr inbounds i16, i16* %56, i32 -1
  store i16* %incdec.ptr51, i16** %p, align 8
  store i16 %55, i16* %incdec.ptr51, align 2
  %57 = load i16, i16* %t2, align 2
  %58 = load i16*, i16** %p, align 8
  %incdec.ptr52 = getelementptr inbounds i16, i16* %58, i32 -1
  store i16* %incdec.ptr52, i16** %p, align 8
  store i16 %57, i16* %incdec.ptr52, align 2
  %59 = load i16, i16* %t1, align 2
  %60 = load i16*, i16** %p, align 8
  %incdec.ptr53 = getelementptr inbounds i16, i16* %60, i32 -1
  store i16* %incdec.ptr53, i16** %p, align 8
  store i16 %59, i16* %incdec.ptr53, align 2
  store i32 0, i32* %j, align 4
  %arraydecay54 = getelementptr inbounds [52 x i16], [52 x i16]* %TT, i32 0, i32 0
  store i16* %arraydecay54, i16** %p, align 8
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.61, %for.end
  %61 = load i32, i32* %j, align 4
  %cmp56 = icmp slt i32 %61, 52
  br i1 %cmp56, label %for.body.58, label %for.end.63

for.body.58:                                      ; preds = %for.cond.55
  %62 = load i16*, i16** %p, align 8
  %63 = load i16, i16* %62, align 2
  %64 = load i16*, i16** %DK.addr, align 8
  %incdec.ptr59 = getelementptr inbounds i16, i16* %64, i32 1
  store i16* %incdec.ptr59, i16** %DK.addr, align 8
  store i16 %63, i16* %64, align 2
  %65 = load i16*, i16** %p, align 8
  %incdec.ptr60 = getelementptr inbounds i16, i16* %65, i32 1
  store i16* %incdec.ptr60, i16** %p, align 8
  store i16 0, i16* %65, align 2
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.58
  %66 = load i32, i32* %j, align 4
  %inc62 = add nsw i32 %66, 1
  store i32 %inc62, i32* %j, align 4
  br label %for.cond.55

for.end.63:                                       ; preds = %for.cond.55
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @DoIDEAIteration(i8* %plain1, i8* %crypt1, i8* %plain2, i64 %arraysize, i64 %nloops, i16* %Z, i16* %DK) #0 {
entry:
  %plain1.addr = alloca i8*, align 8
  %crypt1.addr = alloca i8*, align 8
  %plain2.addr = alloca i8*, align 8
  %arraysize.addr = alloca i64, align 8
  %nloops.addr = alloca i64, align 8
  %Z.addr = alloca i16*, align 8
  %DK.addr = alloca i16*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %elapsed = alloca i64, align 8
  store i8* %plain1, i8** %plain1.addr, align 8
  store i8* %crypt1, i8** %crypt1.addr, align 8
  store i8* %plain2, i8** %plain2.addr, align 8
  store i64 %arraysize, i64* %arraysize.addr, align 8
  store i64 %nloops, i64* %nloops.addr, align 8
  store i16* %Z, i16** %Z.addr, align 8
  store i16* %DK, i16** %DK.addr, align 8
  %call = call i64 (...) @StartStopwatch()
  store i64 %call, i64* %elapsed, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %nloops.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i64, i64* %j, align 8
  %3 = load i64, i64* %arraysize.addr, align 8
  %cmp2 = icmp ult i64 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i8*, i8** %plain1.addr, align 8
  %5 = load i64, i64* %j, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = bitcast i8* %add.ptr to i16*
  %7 = load i8*, i8** %crypt1.addr, align 8
  %8 = load i64, i64* %j, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = bitcast i8* %add.ptr4 to i16*
  %10 = load i16*, i16** %Z.addr, align 8
  call void @cipher_idea(i16* %6, i16* %9, i16* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %11 = load i64, i64* %j, align 8
  %add = add i64 %11, 8
  store i64 %add, i64* %j, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i64 0, i64* %j, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.10, %for.end
  %12 = load i64, i64* %j, align 8
  %13 = load i64, i64* %arraysize.addr, align 8
  %cmp6 = icmp ult i64 %12, %13
  br i1 %cmp6, label %for.body.7, label %for.end.12

for.body.7:                                       ; preds = %for.cond.5
  %14 = load i8*, i8** %crypt1.addr, align 8
  %15 = load i64, i64* %j, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 %15
  %16 = bitcast i8* %add.ptr8 to i16*
  %17 = load i8*, i8** %plain2.addr, align 8
  %18 = load i64, i64* %j, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = bitcast i8* %add.ptr9 to i16*
  %20 = load i16*, i16** %DK.addr, align 8
  call void @cipher_idea(i16* %16, i16* %19, i16* %20)
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.7
  %21 = load i64, i64* %j, align 8
  %add11 = add i64 %21, 8
  store i64 %add11, i64* %j, align 8
  br label %for.cond.5

for.end.12:                                       ; preds = %for.cond.5
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end.12
  %22 = load i64, i64* %i, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %23 = load i64, i64* %elapsed, align 8
  %call15 = call i64 @StopStopwatch(i64 %23)
  ret i64 %call15
}

; Function Attrs: nounwind uwtable
define void @DoHuffman() #0 {
entry:
  %lochuffstruct = alloca %struct.HuffStruct*, align 8
  %errorcontext = alloca i8*, align 8
  %systemerror = alloca i32, align 4
  %accumtime = alloca i64, align 8
  %iterations = alloca double, align 8
  %comparray = alloca i8*, align 8
  %decomparray = alloca i8*, align 8
  %plaintext = alloca i8*, align 8
  store %struct.HuffStruct* @global_huffstruct, %struct.HuffStruct** %lochuffstruct, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0), i8** %errorcontext, align 8
  %0 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %arraysize = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %0, i32 0, i32 2
  %1 = load i64, i64* %arraysize, align 8
  %call = call i8* @AllocateMemory(i64 %1, i32* %systemerror)
  store i8* %call, i8** %plaintext, align 8
  %2 = load i32, i32* %systemerror, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %errorcontext, align 8
  %4 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %3, i32 %4)
  call void (...) @ErrorExit()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %arraysize1 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %5, i32 0, i32 2
  %6 = load i64, i64* %arraysize1, align 8
  %call2 = call i8* @AllocateMemory(i64 %6, i32* %systemerror)
  store i8* %call2, i8** %comparray, align 8
  %7 = load i32, i32* %systemerror, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %8 = load i8*, i8** %errorcontext, align 8
  %9 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %8, i32 %9)
  %10 = load i8*, i8** %plaintext, align 8
  call void @FreeMemory(i8* %10, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %11 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %arraysize6 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %11, i32 0, i32 2
  %12 = load i64, i64* %arraysize6, align 8
  %call7 = call i8* @AllocateMemory(i64 %12, i32* %systemerror)
  store i8* %call7, i8** %decomparray, align 8
  %13 = load i32, i32* %systemerror, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  %14 = load i8*, i8** %errorcontext, align 8
  %15 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %14, i32 %15)
  %16 = load i8*, i8** %plaintext, align 8
  call void @FreeMemory(i8* %16, i32* %systemerror)
  %17 = load i8*, i8** %comparray, align 8
  call void @FreeMemory(i8* %17, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.5
  %call11 = call i8* @AllocateMemory(i64 10240, i32* %systemerror)
  %18 = bitcast i8* %call11 to %struct.huff_node*
  store %struct.huff_node* %18, %struct.huff_node** @hufftree, align 8
  %19 = load i32, i32* %systemerror, align 4
  %tobool12 = icmp ne i32 %19, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %20 = load i8*, i8** %errorcontext, align 8
  %21 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %20, i32 %21)
  %22 = load i8*, i8** %plaintext, align 8
  call void @FreeMemory(i8* %22, i32* %systemerror)
  %23 = load i8*, i8** %comparray, align 8
  call void @FreeMemory(i8* %23, i32* %systemerror)
  %24 = load i8*, i8** %decomparray, align 8
  call void @FreeMemory(i8* %24, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.10
  %call15 = call i32 @randnum(i32 13)
  %25 = load i8*, i8** %plaintext, align 8
  %26 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %arraysize16 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %26, i32 0, i32 2
  %27 = load i64, i64* %arraysize16, align 8
  %sub = sub i64 %27, 1
  call void @create_text_block(i8* %25, i64 %sub, i16 zeroext 500)
  %28 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %arraysize17 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %28, i32 0, i32 2
  %29 = load i64, i64* %arraysize17, align 8
  %sub18 = sub i64 %29, 1
  %30 = load i8*, i8** %plaintext, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 %sub18
  store i8 0, i8* %arrayidx, align 1
  %31 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %arraysize19 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %31, i32 0, i32 2
  %32 = load i64, i64* %arraysize19, align 8
  store i64 %32, i64* @plaintextlen, align 8
  %33 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %adjust = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %33, i32 0, i32 0
  %34 = load i32, i32* %adjust, align 4
  %cmp = icmp eq i32 %34, 0
  br i1 %cmp, label %if.then.20, label %if.end.30

if.then.20:                                       ; preds = %if.end.14
  %35 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %loops = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %35, i32 0, i32 3
  store i64 100, i64* %loops, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %36 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %loops21 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %36, i32 0, i32 3
  %37 = load i64, i64* %loops21, align 8
  %cmp22 = icmp ult i64 %37, 500000
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i8*, i8** %plaintext, align 8
  %39 = load i8*, i8** %comparray, align 8
  %40 = load i8*, i8** %decomparray, align 8
  %41 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %arraysize23 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %41, i32 0, i32 2
  %42 = load i64, i64* %arraysize23, align 8
  %43 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %loops24 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %43, i32 0, i32 3
  %44 = load i64, i64* %loops24, align 8
  %45 = load %struct.huff_node*, %struct.huff_node** @hufftree, align 8
  %call25 = call i64 @DoHuffIteration(i8* %38, i8* %39, i8* %40, i64 %42, i64 %44, %struct.huff_node* %45)
  %46 = load i64, i64* @global_min_ticks, align 8
  %cmp26 = icmp ugt i64 %call25, %46
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body
  br label %for.end

if.end.28:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %47 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %loops29 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %47, i32 0, i32 3
  %48 = load i64, i64* %loops29, align 8
  %add = add i64 %48, 10
  store i64 %add, i64* %loops29, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %for.cond
  br label %if.end.30

if.end.30:                                        ; preds = %for.end, %if.end.14
  store i64 0, i64* %accumtime, align 8
  store double 0.000000e+00, double* %iterations, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.30
  %49 = load i8*, i8** %plaintext, align 8
  %50 = load i8*, i8** %comparray, align 8
  %51 = load i8*, i8** %decomparray, align 8
  %52 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %arraysize31 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %52, i32 0, i32 2
  %53 = load i64, i64* %arraysize31, align 8
  %54 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %loops32 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %54, i32 0, i32 3
  %55 = load i64, i64* %loops32, align 8
  %56 = load %struct.huff_node*, %struct.huff_node** @hufftree, align 8
  %call33 = call i64 @DoHuffIteration(i8* %49, i8* %50, i8* %51, i64 %53, i64 %55, %struct.huff_node* %56)
  %57 = load i64, i64* %accumtime, align 8
  %add34 = add i64 %57, %call33
  store i64 %add34, i64* %accumtime, align 8
  %58 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %loops35 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %58, i32 0, i32 3
  %59 = load i64, i64* %loops35, align 8
  %conv = uitofp i64 %59 to double
  %60 = load double, double* %iterations, align 8
  %add36 = fadd double %60, %conv
  store double %add36, double* %iterations, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %61 = load double, double* %iterations, align 8
  %cmp37 = fcmp olt double %61, 5.000000e+02
  br i1 %cmp37, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %62 = load i8*, i8** %plaintext, align 8
  call void @FreeMemory(i8* %62, i32* %systemerror)
  %63 = load i8*, i8** %comparray, align 8
  call void @FreeMemory(i8* %63, i32* %systemerror)
  %64 = load i8*, i8** %decomparray, align 8
  call void @FreeMemory(i8* %64, i32* %systemerror)
  %65 = load %struct.huff_node*, %struct.huff_node** @hufftree, align 8
  %66 = bitcast %struct.huff_node* %65 to i8*
  call void @FreeMemory(i8* %66, i32* %systemerror)
  %67 = load double, double* %iterations, align 8
  %68 = load i64, i64* %accumtime, align 8
  %call39 = call double @TicksToFracSecs(i64 %68)
  %div = fdiv double %67, %call39
  %69 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %iterspersec = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %69, i32 0, i32 4
  store double %div, double* %iterspersec, align 8
  %70 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %adjust40 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %70, i32 0, i32 0
  %71 = load i32, i32* %adjust40, align 4
  %cmp41 = icmp eq i32 %71, 0
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %do.end
  %72 = load %struct.HuffStruct*, %struct.HuffStruct** %lochuffstruct, align 8
  %adjust44 = getelementptr inbounds %struct.HuffStruct, %struct.HuffStruct* %72, i32 0, i32 0
  store i32 1, i32* %adjust44, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_text_block(i8* %tb, i64 %tblen, i16 zeroext %maxlinlen) #0 {
entry:
  %tb.addr = alloca i8*, align 8
  %tblen.addr = alloca i64, align 8
  %maxlinlen.addr = alloca i16, align 2
  %bytessofar = alloca i64, align 8
  %linelen = alloca i64, align 8
  store i8* %tb, i8** %tb.addr, align 8
  store i64 %tblen, i64* %tblen.addr, align 8
  store i16 %maxlinlen, i16* %maxlinlen.addr, align 2
  store i64 0, i64* %bytessofar, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i16, i16* %maxlinlen.addr, align 2
  %conv = zext i16 %0 to i32
  %sub = sub nsw i32 %conv, 6
  %call = call i32 @abs_randwc(i32 %sub)
  %add = add i32 %call, 6
  %conv1 = zext i32 %add to i64
  store i64 %conv1, i64* %linelen, align 8
  %1 = load i64, i64* %linelen, align 8
  %2 = load i64, i64* %bytessofar, align 8
  %add2 = add i64 %1, %2
  %3 = load i64, i64* %tblen.addr, align 8
  %cmp = icmp ugt i64 %add2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i64, i64* %tblen.addr, align 8
  %5 = load i64, i64* %bytessofar, align 8
  %sub4 = sub i64 %4, %5
  store i64 %sub4, i64* %linelen, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %6 = load i64, i64* %linelen, align 8
  %cmp5 = icmp ugt i64 %6, 1
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %7 = load i8*, i8** %tb.addr, align 8
  %8 = load i64, i64* %linelen, align 8
  call void @create_text_line(i8* %7, i64 %8)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %9 = load i64, i64* %linelen, align 8
  %sub9 = sub i64 %9, 1
  %10 = load i8*, i8** %tb.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %sub9
  store i8* %add.ptr, i8** %tb.addr, align 8
  %11 = load i8*, i8** %tb.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %tb.addr, align 8
  store i8 10, i8* %11, align 1
  %12 = load i64, i64* %linelen, align 8
  %13 = load i64, i64* %bytessofar, align 8
  %add10 = add i64 %13, %12
  store i64 %add10, i64* %bytessofar, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  %14 = load i64, i64* %bytessofar, align 8
  %15 = load i64, i64* %tblen.addr, align 8
  %cmp11 = icmp ult i64 %14, %15
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @DoHuffIteration(i8* %plaintext, i8* %comparray, i8* %decomparray, i64 %arraysize, i64 %nloops, %struct.huff_node* %hufftree) #0 {
entry:
  %plaintext.addr = alloca i8*, align 8
  %comparray.addr = alloca i8*, align 8
  %decomparray.addr = alloca i8*, align 8
  %arraysize.addr = alloca i64, align 8
  %nloops.addr = alloca i64, align 8
  %hufftree.addr = alloca %struct.huff_node*, align 8
  %i = alloca i32, align 4
  %j = alloca i64, align 8
  %root = alloca i32, align 4
  %lowfreq1 = alloca float, align 4
  %lowfreq2 = alloca float, align 4
  %lowidx1 = alloca i32, align 4
  %lowidx2 = alloca i32, align 4
  %bitoffset = alloca i64, align 8
  %textoffset = alloca i64, align 8
  %maxbitoffset = alloca i64, align 8
  %bitstringlen = alloca i64, align 8
  %c = alloca i32, align 4
  %bitstring = alloca [30 x i8], align 16
  %elapsed = alloca i64, align 8
  store i8* %plaintext, i8** %plaintext.addr, align 8
  store i8* %comparray, i8** %comparray.addr, align 8
  store i8* %decomparray, i8** %decomparray.addr, align 8
  store i64 %arraysize, i64* %arraysize.addr, align 8
  store i64 %nloops, i64* %nloops.addr, align 8
  store %struct.huff_node* %hufftree, %struct.huff_node** %hufftree.addr, align 8
  %call = call i64 (...) @StartStopwatch()
  store i64 %call, i64* %elapsed, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i64, i64* %nloops.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %nloops.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end.209

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx = getelementptr inbounds %struct.huff_node, %struct.huff_node* %3, i64 %idxprom
  %freq = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx, i32 0, i32 1
  store float 0.000000e+00, float* %freq, align 4
  %4 = load i32, i32* %i, align 4
  %conv = trunc i32 %4 to i8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %6, i64 %idxprom1
  %c3 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx2, i32 0, i32 0
  store i8 %conv, i8* %c3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.13, %for.end
  %8 = load i64, i64* %j, align 8
  %9 = load i64, i64* %arraysize.addr, align 8
  %cmp5 = icmp ult i64 %8, %9
  br i1 %cmp5, label %for.body.7, label %for.end.15

for.body.7:                                       ; preds = %for.cond.4
  %10 = load i64, i64* %j, align 8
  %11 = load i8*, i8** %plaintext.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 %10
  %12 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %12 to i32
  %idxprom10 = sext i32 %conv9 to i64
  %13 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %13, i64 %idxprom10
  %freq12 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx11, i32 0, i32 1
  %14 = load float, float* %freq12, align 4
  %add = fadd float %14, 1.000000e+00
  store float %add, float* %freq12, align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.7
  %15 = load i64, i64* %j, align 8
  %inc14 = add nsw i64 %15, 1
  store i64 %inc14, i64* %j, align 8
  br label %for.cond.4

for.end.15:                                       ; preds = %for.cond.4
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.29, %for.end.15
  %16 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %16, 256
  br i1 %cmp17, label %for.body.19, label %for.end.31

for.body.19:                                      ; preds = %for.cond.16
  %17 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %17 to i64
  %18 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %18, i64 %idxprom20
  %freq22 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx21, i32 0, i32 1
  %19 = load float, float* %freq22, align 4
  %cmp23 = fcmp une float %19, 0.000000e+00
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.19
  %20 = load i64, i64* %arraysize.addr, align 8
  %conv25 = uitofp i64 %20 to float
  %21 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %21 to i64
  %22 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %22, i64 %idxprom26
  %freq28 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx27, i32 0, i32 1
  %23 = load float, float* %freq28, align 4
  %div = fdiv float %23, %conv25
  store float %div, float* %freq28, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.19
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.16

for.end.31:                                       ; preds = %for.cond.16
  %25 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %25, i64 256
  %26 = bitcast %struct.huff_node* %arrayidx32 to i8*
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 5120, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.53, %for.end.31
  %27 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %27, 512
  br i1 %cmp34, label %for.body.36, label %for.end.55

for.body.36:                                      ; preds = %for.cond.33
  %28 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %28 to i64
  %29 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %29, i64 %idxprom37
  %freq39 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx38, i32 0, i32 1
  %30 = load float, float* %freq39, align 4
  %cmp40 = fcmp oeq float %30, 0.000000e+00
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %for.body.36
  %31 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %31 to i64
  %32 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %32, i64 %idxprom43
  %parent = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx44, i32 0, i32 2
  store i32 32000, i32* %parent, align 4
  br label %if.end.52

if.else:                                          ; preds = %for.body.36
  %33 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %33 to i64
  %34 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %34, i64 %idxprom45
  %right = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx46, i32 0, i32 4
  store i32 -1, i32* %right, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %35 to i64
  %36 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %36, i64 %idxprom47
  %left = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx48, i32 0, i32 3
  store i32 -1, i32* %left, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %37 to i64
  %38 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %38, i64 %idxprom49
  %parent51 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx50, i32 0, i32 2
  store i32 -1, i32* %parent51, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.42
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %39 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %39, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.33

for.end.55:                                       ; preds = %for.cond.33
  store i32 255, i32* %root, align 4
  br label %while.body.57

while.body.57:                                    ; preds = %for.end.55, %if.end.115
  store float 2.000000e+00, float* %lowfreq1, align 4
  store float 2.000000e+00, float* %lowfreq2, align 4
  store i32 -1, i32* %lowidx1, align 4
  store i32 -1, i32* %lowidx2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.79, %while.body.57
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %root, align 4
  %cmp59 = icmp sle i32 %40, %41
  br i1 %cmp59, label %for.body.61, label %for.end.81

for.body.61:                                      ; preds = %for.cond.58
  %42 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %42 to i64
  %43 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %43, i64 %idxprom62
  %parent64 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx63, i32 0, i32 2
  %44 = load i32, i32* %parent64, align 4
  %cmp65 = icmp slt i32 %44, 0
  br i1 %cmp65, label %if.then.67, label %if.end.78

if.then.67:                                       ; preds = %for.body.61
  %45 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %45 to i64
  %46 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %46, i64 %idxprom68
  %freq70 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx69, i32 0, i32 1
  %47 = load float, float* %freq70, align 4
  %48 = load float, float* %lowfreq1, align 4
  %cmp71 = fcmp olt float %47, %48
  br i1 %cmp71, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %if.then.67
  %49 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %49 to i64
  %50 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %50, i64 %idxprom74
  %freq76 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx75, i32 0, i32 1
  %51 = load float, float* %freq76, align 4
  store float %51, float* %lowfreq1, align 4
  %52 = load i32, i32* %i, align 4
  store i32 %52, i32* %lowidx1, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %if.then.67
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %for.body.61
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %53 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %53, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.58

for.end.81:                                       ; preds = %for.cond.58
  %54 = load i32, i32* %lowidx1, align 4
  %cmp82 = icmp eq i32 %54, -1
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %for.end.81
  br label %while.end

if.end.85:                                        ; preds = %for.end.81
  store i32 0, i32* %i, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.109, %if.end.85
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %root, align 4
  %cmp87 = icmp sle i32 %55, %56
  br i1 %cmp87, label %for.body.89, label %for.end.111

for.body.89:                                      ; preds = %for.cond.86
  %57 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %57 to i64
  %58 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %58, i64 %idxprom90
  %parent92 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx91, i32 0, i32 2
  %59 = load i32, i32* %parent92, align 4
  %cmp93 = icmp slt i32 %59, 0
  br i1 %cmp93, label %land.lhs.true, label %if.end.108

land.lhs.true:                                    ; preds = %for.body.89
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %lowidx1, align 4
  %cmp95 = icmp ne i32 %60, %61
  br i1 %cmp95, label %if.then.97, label %if.end.108

if.then.97:                                       ; preds = %land.lhs.true
  %62 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %62 to i64
  %63 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx99 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %63, i64 %idxprom98
  %freq100 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx99, i32 0, i32 1
  %64 = load float, float* %freq100, align 4
  %65 = load float, float* %lowfreq2, align 4
  %cmp101 = fcmp olt float %64, %65
  br i1 %cmp101, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %if.then.97
  %66 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %66 to i64
  %67 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx105 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %67, i64 %idxprom104
  %freq106 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx105, i32 0, i32 1
  %68 = load float, float* %freq106, align 4
  store float %68, float* %lowfreq2, align 4
  %69 = load i32, i32* %i, align 4
  store i32 %69, i32* %lowidx2, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.103, %if.then.97
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %land.lhs.true, %for.body.89
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %70 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %70, 1
  store i32 %inc110, i32* %i, align 4
  br label %for.cond.86

for.end.111:                                      ; preds = %for.cond.86
  %71 = load i32, i32* %lowidx2, align 4
  %cmp112 = icmp eq i32 %71, -1
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %for.end.111
  br label %while.end

if.end.115:                                       ; preds = %for.end.111
  %72 = load i32, i32* %root, align 4
  %inc116 = add nsw i32 %72, 1
  store i32 %inc116, i32* %root, align 4
  %73 = load i32, i32* %root, align 4
  %74 = load i32, i32* %lowidx1, align 4
  %idxprom117 = sext i32 %74 to i64
  %75 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx118 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %75, i64 %idxprom117
  %parent119 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx118, i32 0, i32 2
  store i32 %73, i32* %parent119, align 4
  %76 = load i32, i32* %root, align 4
  %77 = load i32, i32* %lowidx2, align 4
  %idxprom120 = sext i32 %77 to i64
  %78 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx121 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %78, i64 %idxprom120
  %parent122 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx121, i32 0, i32 2
  store i32 %76, i32* %parent122, align 4
  %79 = load float, float* %lowfreq1, align 4
  %80 = load float, float* %lowfreq2, align 4
  %add123 = fadd float %79, %80
  %81 = load i32, i32* %root, align 4
  %idxprom124 = sext i32 %81 to i64
  %82 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx125 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %82, i64 %idxprom124
  %freq126 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx125, i32 0, i32 1
  store float %add123, float* %freq126, align 4
  %83 = load i32, i32* %lowidx1, align 4
  %84 = load i32, i32* %root, align 4
  %idxprom127 = sext i32 %84 to i64
  %85 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx128 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %85, i64 %idxprom127
  %left129 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx128, i32 0, i32 3
  store i32 %83, i32* %left129, align 4
  %86 = load i32, i32* %lowidx2, align 4
  %87 = load i32, i32* %root, align 4
  %idxprom130 = sext i32 %87 to i64
  %88 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx131 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %88, i64 %idxprom130
  %right132 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx131, i32 0, i32 4
  store i32 %86, i32* %right132, align 4
  %89 = load i32, i32* %root, align 4
  %idxprom133 = sext i32 %89 to i64
  %90 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx134 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %90, i64 %idxprom133
  %parent135 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx134, i32 0, i32 2
  store i32 -2, i32* %parent135, align 4
  br label %while.body.57

while.end:                                        ; preds = %if.then.114, %if.then.84
  store i64 0, i64* %bitoffset, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.177, %while.end
  %91 = load i32, i32* %i, align 4
  %conv137 = sext i32 %91 to i64
  %92 = load i64, i64* %arraysize.addr, align 8
  %cmp138 = icmp ult i64 %conv137, %92
  br i1 %cmp138, label %for.body.140, label %for.end.179

for.body.140:                                     ; preds = %for.cond.136
  %93 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %93 to i64
  %94 = load i8*, i8** %plaintext.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %94, i64 %idxprom141
  %95 = load i8, i8* %arrayidx142, align 1
  %conv143 = sext i8 %95 to i32
  store i32 %conv143, i32* %c, align 4
  store i64 0, i64* %bitstringlen, align 8
  br label %while.cond.144

while.cond.144:                                   ; preds = %if.end.163, %for.body.140
  %96 = load i32, i32* %c, align 4
  %idxprom145 = sext i32 %96 to i64
  %97 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx146 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %97, i64 %idxprom145
  %parent147 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx146, i32 0, i32 2
  %98 = load i32, i32* %parent147, align 4
  %cmp148 = icmp ne i32 %98, -2
  br i1 %cmp148, label %while.body.150, label %while.end.168

while.body.150:                                   ; preds = %while.cond.144
  %99 = load i32, i32* %c, align 4
  %idxprom151 = sext i32 %99 to i64
  %100 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx152 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %100, i64 %idxprom151
  %parent153 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx152, i32 0, i32 2
  %101 = load i32, i32* %parent153, align 4
  %idxprom154 = sext i32 %101 to i64
  %102 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx155 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %102, i64 %idxprom154
  %left156 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx155, i32 0, i32 3
  %103 = load i32, i32* %left156, align 4
  %104 = load i32, i32* %c, align 4
  %cmp157 = icmp eq i32 %103, %104
  br i1 %cmp157, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %while.body.150
  %105 = load i64, i64* %bitstringlen, align 8
  %arrayidx160 = getelementptr inbounds [30 x i8], [30 x i8]* %bitstring, i32 0, i64 %105
  store i8 48, i8* %arrayidx160, align 1
  br label %if.end.163

if.else.161:                                      ; preds = %while.body.150
  %106 = load i64, i64* %bitstringlen, align 8
  %arrayidx162 = getelementptr inbounds [30 x i8], [30 x i8]* %bitstring, i32 0, i64 %106
  store i8 49, i8* %arrayidx162, align 1
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.161, %if.then.159
  %107 = load i32, i32* %c, align 4
  %idxprom164 = sext i32 %107 to i64
  %108 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx165 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %108, i64 %idxprom164
  %parent166 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx165, i32 0, i32 2
  %109 = load i32, i32* %parent166, align 4
  store i32 %109, i32* %c, align 4
  %110 = load i64, i64* %bitstringlen, align 8
  %inc167 = add nsw i64 %110, 1
  store i64 %inc167, i64* %bitstringlen, align 8
  br label %while.cond.144

while.end.168:                                    ; preds = %while.cond.144
  br label %while.cond.169

while.cond.169:                                   ; preds = %while.body.172, %while.end.168
  %111 = load i64, i64* %bitstringlen, align 8
  %dec170 = add nsw i64 %111, -1
  store i64 %dec170, i64* %bitstringlen, align 8
  %tobool171 = icmp ne i64 %111, 0
  br i1 %tobool171, label %while.body.172, label %while.end.176

while.body.172:                                   ; preds = %while.cond.169
  %112 = load i8*, i8** %comparray.addr, align 8
  %113 = load i64, i64* %bitoffset, align 8
  %conv173 = trunc i64 %113 to i32
  %114 = load i64, i64* %bitstringlen, align 8
  %arrayidx174 = getelementptr inbounds [30 x i8], [30 x i8]* %bitstring, i32 0, i64 %114
  %115 = load i8, i8* %arrayidx174, align 1
  call void @SetCompBit(i8* %112, i32 %conv173, i8 signext %115)
  %116 = load i64, i64* %bitoffset, align 8
  %inc175 = add nsw i64 %116, 1
  store i64 %inc175, i64* %bitoffset, align 8
  br label %while.cond.169

while.end.176:                                    ; preds = %while.cond.169
  br label %for.inc.177

for.inc.177:                                      ; preds = %while.end.176
  %117 = load i32, i32* %i, align 4
  %inc178 = add nsw i32 %117, 1
  store i32 %inc178, i32* %i, align 4
  br label %for.cond.136

for.end.179:                                      ; preds = %for.cond.136
  %118 = load i64, i64* %bitoffset, align 8
  store i64 %118, i64* %maxbitoffset, align 8
  store i64 0, i64* %bitoffset, align 8
  store i64 0, i64* %textoffset, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.179
  %119 = load i32, i32* %root, align 4
  store i32 %119, i32* %i, align 4
  br label %while.cond.180

while.cond.180:                                   ; preds = %if.end.199, %do.body
  %120 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %120 to i64
  %121 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx182 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %121, i64 %idxprom181
  %left183 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx182, i32 0, i32 3
  %122 = load i32, i32* %left183, align 4
  %cmp184 = icmp ne i32 %122, -1
  br i1 %cmp184, label %while.body.186, label %while.end.201

while.body.186:                                   ; preds = %while.cond.180
  %123 = load i8*, i8** %comparray.addr, align 8
  %124 = load i64, i64* %bitoffset, align 8
  %conv187 = trunc i64 %124 to i32
  %call188 = call i32 @GetCompBit(i8* %123, i32 %conv187)
  %cmp189 = icmp eq i32 %call188, 0
  br i1 %cmp189, label %if.then.191, label %if.else.195

if.then.191:                                      ; preds = %while.body.186
  %125 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %125 to i64
  %126 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx193 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %126, i64 %idxprom192
  %left194 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx193, i32 0, i32 3
  %127 = load i32, i32* %left194, align 4
  store i32 %127, i32* %i, align 4
  br label %if.end.199

if.else.195:                                      ; preds = %while.body.186
  %128 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %128 to i64
  %129 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx197 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %129, i64 %idxprom196
  %right198 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx197, i32 0, i32 4
  %130 = load i32, i32* %right198, align 4
  store i32 %130, i32* %i, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.195, %if.then.191
  %131 = load i64, i64* %bitoffset, align 8
  %inc200 = add nsw i64 %131, 1
  store i64 %inc200, i64* %bitoffset, align 8
  br label %while.cond.180

while.end.201:                                    ; preds = %while.cond.180
  %132 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %132 to i64
  %133 = load %struct.huff_node*, %struct.huff_node** %hufftree.addr, align 8
  %arrayidx203 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %133, i64 %idxprom202
  %c204 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %arrayidx203, i32 0, i32 0
  %134 = load i8, i8* %c204, align 1
  %135 = load i64, i64* %textoffset, align 8
  %136 = load i8*, i8** %decomparray.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %136, i64 %135
  store i8 %134, i8* %arrayidx205, align 1
  %137 = load i64, i64* %textoffset, align 8
  %inc206 = add nsw i64 %137, 1
  store i64 %inc206, i64* %textoffset, align 8
  br label %do.cond

do.cond:                                          ; preds = %while.end.201
  %138 = load i64, i64* %bitoffset, align 8
  %139 = load i64, i64* %maxbitoffset, align 8
  %cmp207 = icmp slt i64 %138, %139
  br i1 %cmp207, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.end.209:                                    ; preds = %while.cond
  %140 = load i64, i64* %elapsed, align 8
  %call210 = call i64 @StopStopwatch(i64 %140)
  ret i64 %call210
}

; Function Attrs: nounwind uwtable
define void @DoNNET() #0 {
entry:
  %locnnetstruct = alloca %struct.NNetStruct*, align 8
  %errorcontext = alloca i8*, align 8
  %accumtime = alloca i64, align 8
  %iterations = alloca double, align 8
  store %struct.NNetStruct* @global_nnetstruct, %struct.NNetStruct** %locnnetstruct, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8** %errorcontext, align 8
  %call = call i32 @randnum(i32 3)
  %call1 = call i32 @read_data_file()
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (...) @ErrorExit()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load %struct.NNetStruct*, %struct.NNetStruct** %locnnetstruct, align 8
  %adjust = getelementptr inbounds %struct.NNetStruct, %struct.NNetStruct* %0, i32 0, i32 0
  %1 = load i32, i32* %adjust, align 4
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.end
  %2 = load %struct.NNetStruct*, %struct.NNetStruct** %locnnetstruct, align 8
  %loops = getelementptr inbounds %struct.NNetStruct, %struct.NNetStruct* %2, i32 0, i32 2
  store i64 1, i64* %loops, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %3 = load %struct.NNetStruct*, %struct.NNetStruct** %locnnetstruct, align 8
  %loops4 = getelementptr inbounds %struct.NNetStruct, %struct.NNetStruct* %3, i32 0, i32 2
  %4 = load i64, i64* %loops4, align 8
  %cmp5 = icmp ult i64 %4, 500000
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call6 = call i32 @randnum(i32 3)
  %5 = load %struct.NNetStruct*, %struct.NNetStruct** %locnnetstruct, align 8
  %loops7 = getelementptr inbounds %struct.NNetStruct, %struct.NNetStruct* %5, i32 0, i32 2
  %6 = load i64, i64* %loops7, align 8
  %call8 = call i64 @DoNNetIteration(i64 %6)
  %7 = load i64, i64* @global_min_ticks, align 8
  %cmp9 = icmp ugt i64 %call8, %7
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  br label %for.end

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %8 = load %struct.NNetStruct*, %struct.NNetStruct** %locnnetstruct, align 8
  %loops12 = getelementptr inbounds %struct.NNetStruct, %struct.NNetStruct* %8, i32 0, i32 2
  %9 = load i64, i64* %loops12, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %loops12, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %if.end
  store i64 0, i64* %accumtime, align 8
  store double 0.000000e+00, double* %iterations, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.13
  %call14 = call i32 @randnum(i32 3)
  %10 = load %struct.NNetStruct*, %struct.NNetStruct** %locnnetstruct, align 8
  %loops15 = getelementptr inbounds %struct.NNetStruct, %struct.NNetStruct* %10, i32 0, i32 2
  %11 = load i64, i64* %loops15, align 8
  %call16 = call i64 @DoNNetIteration(i64 %11)
  %12 = load i64, i64* %accumtime, align 8
  %add = add i64 %12, %call16
  store i64 %add, i64* %accumtime, align 8
  %13 = load %struct.NNetStruct*, %struct.NNetStruct** %locnnetstruct, align 8
  %loops17 = getelementptr inbounds %struct.NNetStruct, %struct.NNetStruct* %13, i32 0, i32 2
  %14 = load i64, i64* %loops17, align 8
  %conv = uitofp i64 %14 to double
  %15 = load double, double* %iterations, align 8
  %add18 = fadd double %15, %conv
  store double %add18, double* %iterations, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load double, double* %iterations, align 8
  %cmp19 = fcmp olt double %16, 1.200000e+01
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load double, double* %iterations, align 8
  %18 = load i64, i64* %accumtime, align 8
  %call21 = call double @TicksToFracSecs(i64 %18)
  %div = fdiv double %17, %call21
  %19 = load %struct.NNetStruct*, %struct.NNetStruct** %locnnetstruct, align 8
  %iterspersec = getelementptr inbounds %struct.NNetStruct, %struct.NNetStruct* %19, i32 0, i32 3
  store double %div, double* %iterspersec, align 8
  %20 = load %struct.NNetStruct*, %struct.NNetStruct** %locnnetstruct, align 8
  %adjust22 = getelementptr inbounds %struct.NNetStruct, %struct.NNetStruct* %20, i32 0, i32 0
  %21 = load i32, i32* %adjust22, align 4
  %cmp23 = icmp eq i32 %21, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end
  %22 = load %struct.NNetStruct*, %struct.NNetStruct** %locnnetstruct, align 8
  %adjust26 = getelementptr inbounds %struct.NNetStruct, %struct.NNetStruct* %22, i32 0, i32 0
  store i32 1, i32* %adjust26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @DoNNetIteration(i64 %nloops) #0 {
entry:
  %nloops.addr = alloca i64, align 8
  %elapsed = alloca i64, align 8
  %patt = alloca i32, align 4
  store i64 %nloops, i64* %nloops.addr, align 8
  %call = call i64 (...) @StartStopwatch()
  store i64 %call, i64* %elapsed, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %0 = load i64, i64* %nloops.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %nloops.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end.7

while.body:                                       ; preds = %while.cond
  call void @randomize_wts()
  call void @zero_changes()
  store i32 1, i32* @iteration_count, align 4
  store i32 0, i32* @learned, align 4
  store i32 0, i32* @numpasses, align 4
  br label %while.cond.1

while.cond.1:                                     ; preds = %for.end, %while.body
  %1 = load i32, i32* @learned, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %while.body.2, label %while.end

while.body.2:                                     ; preds = %while.cond.1
  store i32 0, i32* %patt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body.2
  %2 = load i32, i32* %patt, align 4
  %3 = load i32, i32* @numpats, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* @worst_error, align 8
  call void @move_wt_changes()
  %4 = load i32, i32* %patt, align 4
  call void @do_forward_pass(i32 %4)
  %5 = load i32, i32* %patt, align 4
  call void @do_back_pass(i32 %5)
  %6 = load i32, i32* @iteration_count, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @iteration_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %patt, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, i32* %patt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* @numpasses, align 4
  %inc5 = add nsw i32 %8, 1
  store i32 %inc5, i32* @numpasses, align 4
  %call6 = call i32 @check_out_error()
  store i32 %call6, i32* @learned, align 4
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  br label %while.cond

while.end.7:                                      ; preds = %while.cond
  %9 = load i64, i64* %elapsed, align 8
  %call8 = call i64 @StopStopwatch(i64 %9)
  ret i64 %call8
}

; Function Attrs: nounwind uwtable
define void @DoLU() #0 {
entry:
  %loclustruct = alloca %struct.LUStruct*, align 8
  %errorcontext = alloca i8*, align 8
  %systemerror = alloca i32, align 4
  %a = alloca double*, align 8
  %b = alloca double*, align 8
  %abase = alloca double*, align 8
  %bbase = alloca double*, align 8
  %ptra = alloca %struct.LUdblptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %accumtime = alloca i64, align 8
  %iterations = alloca double, align 8
  store %struct.LUStruct* @global_lustruct, %struct.LUStruct** %loclustruct, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i8** %errorcontext, align 8
  %call = call i8* @AllocateMemory(i64 81608, i32* %systemerror)
  %0 = bitcast i8* %call to double*
  store double* %0, double** %a, align 8
  %call1 = call i8* @AllocateMemory(i64 808, i32* %systemerror)
  %1 = bitcast i8* %call1 to double*
  store double* %1, double** %b, align 8
  store i32 101, i32* %n, align 4
  %call2 = call i8* @AllocateMemory(i64 808, i32* %systemerror)
  %2 = bitcast i8* %call2 to double*
  store double* %2, double** @LUtempvv, align 8
  %3 = load double*, double** %a, align 8
  %ptrs = getelementptr inbounds %struct.LUdblptr, %struct.LUdblptr* %ptra, i32 0, i32 0
  %p = bitcast %union.anon* %ptrs to double**
  store double* %3, double** %p, align 8
  %ptrs3 = getelementptr inbounds %struct.LUdblptr, %struct.LUdblptr* %ptra, i32 0, i32 0
  %ap = bitcast %union.anon* %ptrs3 to [0 x [101 x double]]**
  %4 = load [0 x [101 x double]]*, [0 x [101 x double]]** %ap, align 8
  %arraydecay = getelementptr inbounds [0 x [101 x double]], [0 x [101 x double]]* %4, i32 0, i32 0
  %5 = load i32, i32* %n, align 4
  %6 = load double*, double** %b, align 8
  call void @build_problem([101 x double]* %arraydecay, i32 %5, double* %6)
  %7 = load %struct.LUStruct*, %struct.LUStruct** %loclustruct, align 8
  %adjust = getelementptr inbounds %struct.LUStruct, %struct.LUStruct* %7, i32 0, i32 0
  %8 = load i32, i32* %adjust, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.LUStruct*, %struct.LUStruct** %loclustruct, align 8
  %numarrays = getelementptr inbounds %struct.LUStruct, %struct.LUStruct* %9, i32 0, i32 2
  store i64 0, i64* %numarrays, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %cmp4 = icmp sle i32 %10, 10000
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 81608, %conv
  %call5 = call i8* @AllocateMemory(i64 %mul, i32* %systemerror)
  %12 = bitcast i8* %call5 to double*
  store double* %12, double** %abase, align 8
  %13 = load i32, i32* %systemerror, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %14 = load i8*, i8** %errorcontext, align 8
  %15 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %14, i32 %15)
  %16 = load double*, double** %a, align 8
  %17 = load double*, double** %b, align 8
  call void @LUFreeMem(double* %16, double* %17, double* null, double* null)
  call void (...) @ErrorExit()
  br label %if.end

if.end:                                           ; preds = %if.then.6, %for.body
  %18 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %18, 1
  %conv8 = sext i32 %add7 to i64
  %mul9 = mul i64 808, %conv8
  %call10 = call i8* @AllocateMemory(i64 %mul9, i32* %systemerror)
  %19 = bitcast i8* %call10 to double*
  store double* %19, double** %bbase, align 8
  %20 = load i32, i32* %systemerror, align 4
  %tobool11 = icmp ne i32 %20, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %21 = load i8*, i8** %errorcontext, align 8
  %22 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %21, i32 %22)
  %23 = load double*, double** %a, align 8
  %24 = load double*, double** %b, align 8
  %25 = load double*, double** %abase, align 8
  call void @LUFreeMem(double* %23, double* %24, double* %25, double* null)
  call void (...) @ErrorExit()
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  %26 = load double*, double** %a, align 8
  %27 = load double*, double** %b, align 8
  %28 = load double*, double** %abase, align 8
  %29 = load double*, double** %bbase, align 8
  %30 = load i32, i32* %i, align 4
  %conv14 = sext i32 %30 to i64
  %call15 = call i64 @DoLUIteration(double* %26, double* %27, double* %28, double* %29, i64 %conv14)
  %31 = load i64, i64* @global_min_ticks, align 8
  %cmp16 = icmp ugt i64 %call15, %31
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.13
  %32 = load i32, i32* %i, align 4
  %conv19 = sext i32 %32 to i64
  %33 = load %struct.LUStruct*, %struct.LUStruct** %loclustruct, align 8
  %numarrays20 = getelementptr inbounds %struct.LUStruct, %struct.LUStruct* %33, i32 0, i32 2
  store i64 %conv19, i64* %numarrays20, align 8
  br label %for.end

if.end.21:                                        ; preds = %if.end.13
  %34 = load double*, double** %abase, align 8
  %35 = bitcast double* %34 to i8*
  call void @FreeMemory(i8* %35, i32* %systemerror)
  %36 = load double*, double** %bbase, align 8
  %37 = bitcast double* %36 to i8*
  call void @FreeMemory(i8* %37, i32* %systemerror)
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.18, %for.cond
  %39 = load %struct.LUStruct*, %struct.LUStruct** %loclustruct, align 8
  %numarrays22 = getelementptr inbounds %struct.LUStruct, %struct.LUStruct* %39, i32 0, i32 2
  %40 = load i64, i64* %numarrays22, align 8
  %cmp23 = icmp eq i64 %40, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %for.end
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i32 0, i32 0))
  %41 = load double*, double** %a, align 8
  %42 = load double*, double** %b, align 8
  %43 = load double*, double** %abase, align 8
  %44 = load double*, double** %bbase, align 8
  call void @LUFreeMem(double* %41, double* %42, double* %43, double* %44)
  call void (...) @ErrorExit()
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %for.end
  br label %if.end.40

if.else:                                          ; preds = %entry
  %45 = load %struct.LUStruct*, %struct.LUStruct** %loclustruct, align 8
  %numarrays28 = getelementptr inbounds %struct.LUStruct, %struct.LUStruct* %45, i32 0, i32 2
  %46 = load i64, i64* %numarrays28, align 8
  %mul29 = mul i64 81608, %46
  %call30 = call i8* @AllocateMemory(i64 %mul29, i32* %systemerror)
  %47 = bitcast i8* %call30 to double*
  store double* %47, double** %abase, align 8
  %48 = load i32, i32* %systemerror, align 4
  %tobool31 = icmp ne i32 %48, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else
  %49 = load i8*, i8** %errorcontext, align 8
  %50 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %49, i32 %50)
  %51 = load double*, double** %a, align 8
  %52 = load double*, double** %b, align 8
  call void @LUFreeMem(double* %51, double* %52, double* null, double* null)
  call void (...) @ErrorExit()
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.else
  %53 = load %struct.LUStruct*, %struct.LUStruct** %loclustruct, align 8
  %numarrays34 = getelementptr inbounds %struct.LUStruct, %struct.LUStruct* %53, i32 0, i32 2
  %54 = load i64, i64* %numarrays34, align 8
  %mul35 = mul i64 808, %54
  %call36 = call i8* @AllocateMemory(i64 %mul35, i32* %systemerror)
  %55 = bitcast i8* %call36 to double*
  store double* %55, double** %bbase, align 8
  %56 = load i32, i32* %systemerror, align 4
  %tobool37 = icmp ne i32 %56, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.33
  %57 = load i8*, i8** %errorcontext, align 8
  %58 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* %57, i32 %58)
  %59 = load double*, double** %a, align 8
  %60 = load double*, double** %b, align 8
  %61 = load double*, double** %abase, align 8
  call void @LUFreeMem(double* %59, double* %60, double* %61, double* null)
  call void (...) @ErrorExit()
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.33
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.27
  store i64 0, i64* %accumtime, align 8
  store double 0.000000e+00, double* %iterations, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.40
  %62 = load double*, double** %a, align 8
  %63 = load double*, double** %b, align 8
  %64 = load double*, double** %abase, align 8
  %65 = load double*, double** %bbase, align 8
  %66 = load %struct.LUStruct*, %struct.LUStruct** %loclustruct, align 8
  %numarrays41 = getelementptr inbounds %struct.LUStruct, %struct.LUStruct* %66, i32 0, i32 2
  %67 = load i64, i64* %numarrays41, align 8
  %call42 = call i64 @DoLUIteration(double* %62, double* %63, double* %64, double* %65, i64 %67)
  %68 = load i64, i64* %accumtime, align 8
  %add43 = add i64 %68, %call42
  store i64 %add43, i64* %accumtime, align 8
  %69 = load %struct.LUStruct*, %struct.LUStruct** %loclustruct, align 8
  %numarrays44 = getelementptr inbounds %struct.LUStruct, %struct.LUStruct* %69, i32 0, i32 2
  %70 = load i64, i64* %numarrays44, align 8
  %conv45 = uitofp i64 %70 to double
  %71 = load double, double* %iterations, align 8
  %add46 = fadd double %71, %conv45
  store double %add46, double* %iterations, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %72 = load double, double* %iterations, align 8
  %cmp47 = fcmp olt double %72, 5.000000e+02
  br i1 %cmp47, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %73 = load double, double* %iterations, align 8
  %74 = load i64, i64* %accumtime, align 8
  %call49 = call double @TicksToFracSecs(i64 %74)
  %div = fdiv double %73, %call49
  %75 = load %struct.LUStruct*, %struct.LUStruct** %loclustruct, align 8
  %iterspersec = getelementptr inbounds %struct.LUStruct, %struct.LUStruct* %75, i32 0, i32 3
  store double %div, double* %iterspersec, align 8
  %76 = load %struct.LUStruct*, %struct.LUStruct** %loclustruct, align 8
  %adjust50 = getelementptr inbounds %struct.LUStruct, %struct.LUStruct* %76, i32 0, i32 0
  %77 = load i32, i32* %adjust50, align 4
  %cmp51 = icmp eq i32 %77, 0
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %do.end
  %78 = load %struct.LUStruct*, %struct.LUStruct** %loclustruct, align 8
  %adjust54 = getelementptr inbounds %struct.LUStruct, %struct.LUStruct* %78, i32 0, i32 0
  store i32 1, i32* %adjust54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %do.end
  %79 = load double*, double** %a, align 8
  %80 = load double*, double** %b, align 8
  %81 = load double*, double** %abase, align 8
  %82 = load double*, double** %bbase, align 8
  call void @LUFreeMem(double* %79, double* %80, double* %81, double* %82)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_problem([101 x double]* %a, i32 %n, double* %b) #0 {
entry:
  %a.addr = alloca [101 x double]*, align 8
  %n.addr = alloca i32, align 4
  %b.addr = alloca double*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %k1 = alloca i64, align 8
  %rcon = alloca double, align 8
  store [101 x double]* %a, [101 x double]** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %b, double** %b.addr, align 8
  %call = call i32 @randnum(i32 13)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp slt i64 %0, %conv
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @abs_randwc(i32 100)
  %add = add i32 %call2, 1
  %conv3 = uitofp i32 %add to double
  %2 = load i64, i64* %i, align 8
  %3 = load double*, double** %b.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %2
  store double %conv3, double* %arrayidx, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %4 = load i64, i64* %j, align 8
  %5 = load i32, i32* %n.addr, align 4
  %conv5 = sext i32 %5 to i64
  %cmp6 = icmp slt i64 %4, %conv5
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.4
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %j, align 8
  %cmp9 = icmp eq i64 %6, %7
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.8
  %call11 = call i32 @abs_randwc(i32 1000)
  %add12 = add i32 %call11, 1
  %conv13 = uitofp i32 %add12 to double
  %8 = load i64, i64* %j, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds [101 x double], [101 x double]* %10, i64 %9
  %arrayidx15 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx14, i32 0, i64 %8
  store double %conv13, double* %arrayidx15, align 8
  br label %if.end

if.else:                                          ; preds = %for.body.8
  %11 = load i64, i64* %j, align 8
  %12 = load i64, i64* %i, align 8
  %13 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds [101 x double], [101 x double]* %13, i64 %12
  %arrayidx17 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx16, i32 0, i64 %11
  store double 0.000000e+00, double* %arrayidx17, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i64, i64* %j, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %15 = load i64, i64* %i, align 8
  %inc19 = add nsw i64 %15, 1
  store i64 %inc19, i64* %i, align 8
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.57, %for.end.20
  %16 = load i64, i64* %i, align 8
  %17 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 8, %17
  %conv22 = sext i32 %mul to i64
  %cmp23 = icmp slt i64 %16, %conv22
  br i1 %cmp23, label %for.body.25, label %for.end.59

for.body.25:                                      ; preds = %for.cond.21
  %18 = load i32, i32* %n.addr, align 4
  %call26 = call i32 @abs_randwc(i32 %18)
  %conv27 = zext i32 %call26 to i64
  store i64 %conv27, i64* %k, align 8
  %19 = load i32, i32* %n.addr, align 4
  %call28 = call i32 @abs_randwc(i32 %19)
  %conv29 = zext i32 %call28 to i64
  store i64 %conv29, i64* %k1, align 8
  %20 = load i64, i64* %k, align 8
  %21 = load i64, i64* %k1, align 8
  %cmp30 = icmp ne i64 %20, %21
  br i1 %cmp30, label %if.then.32, label %if.end.56

if.then.32:                                       ; preds = %for.body.25
  %22 = load i64, i64* %k, align 8
  %23 = load i64, i64* %k1, align 8
  %cmp33 = icmp slt i64 %22, %23
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.then.32
  store double 1.000000e+00, double* %rcon, align 8
  br label %if.end.37

if.else.36:                                       ; preds = %if.then.32
  store double -1.000000e+00, double* %rcon, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.35
  store i64 0, i64* %j, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.49, %if.end.37
  %24 = load i64, i64* %j, align 8
  %25 = load i32, i32* %n.addr, align 4
  %conv39 = sext i32 %25 to i64
  %cmp40 = icmp slt i64 %24, %conv39
  br i1 %cmp40, label %for.body.42, label %for.end.51

for.body.42:                                      ; preds = %for.cond.38
  %26 = load i64, i64* %j, align 8
  %27 = load i64, i64* %k1, align 8
  %28 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx43 = getelementptr inbounds [101 x double], [101 x double]* %28, i64 %27
  %arrayidx44 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx43, i32 0, i64 %26
  %29 = load double, double* %arrayidx44, align 8
  %30 = load double, double* %rcon, align 8
  %mul45 = fmul double %29, %30
  %31 = load i64, i64* %j, align 8
  %32 = load i64, i64* %k, align 8
  %33 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx46 = getelementptr inbounds [101 x double], [101 x double]* %33, i64 %32
  %arrayidx47 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx46, i32 0, i64 %31
  %34 = load double, double* %arrayidx47, align 8
  %add48 = fadd double %34, %mul45
  store double %add48, double* %arrayidx47, align 8
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.42
  %35 = load i64, i64* %j, align 8
  %inc50 = add nsw i64 %35, 1
  store i64 %inc50, i64* %j, align 8
  br label %for.cond.38

for.end.51:                                       ; preds = %for.cond.38
  %36 = load i64, i64* %k1, align 8
  %37 = load double*, double** %b.addr, align 8
  %arrayidx52 = getelementptr inbounds double, double* %37, i64 %36
  %38 = load double, double* %arrayidx52, align 8
  %39 = load double, double* %rcon, align 8
  %mul53 = fmul double %38, %39
  %40 = load i64, i64* %k, align 8
  %41 = load double*, double** %b.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %41, i64 %40
  %42 = load double, double* %arrayidx54, align 8
  %add55 = fadd double %42, %mul53
  store double %add55, double* %arrayidx54, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %for.end.51, %for.body.25
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %43 = load i64, i64* %i, align 8
  %inc58 = add nsw i64 %43, 1
  store i64 %inc58, i64* %i, align 8
  br label %for.cond.21

for.end.59:                                       ; preds = %for.cond.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LUFreeMem(double* %a, double* %b, double* %abase, double* %bbase) #0 {
entry:
  %a.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %abase.addr = alloca double*, align 8
  %bbase.addr = alloca double*, align 8
  %systemerror = alloca i32, align 4
  store double* %a, double** %a.addr, align 8
  store double* %b, double** %b.addr, align 8
  store double* %abase, double** %abase.addr, align 8
  store double* %bbase, double** %bbase.addr, align 8
  %0 = load double*, double** %a.addr, align 8
  %1 = bitcast double* %0 to i8*
  call void @FreeMemory(i8* %1, i32* %systemerror)
  %2 = load double*, double** %b.addr, align 8
  %3 = bitcast double* %2 to i8*
  call void @FreeMemory(i8* %3, i32* %systemerror)
  %4 = load double*, double** @LUtempvv, align 8
  %5 = bitcast double* %4 to i8*
  call void @FreeMemory(i8* %5, i32* %systemerror)
  %6 = load double*, double** %abase.addr, align 8
  %cmp = icmp ne double* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load double*, double** %abase.addr, align 8
  %8 = bitcast double* %7 to i8*
  call void @FreeMemory(i8* %8, i32* %systemerror)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load double*, double** %bbase.addr, align 8
  %cmp1 = icmp ne double* %9, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %10 = load double*, double** %bbase.addr, align 8
  %11 = bitcast double* %10 to i8*
  call void @FreeMemory(i8* %11, i32* %systemerror)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @DoLUIteration(double* %a, double* %b, double* %abase, double* %bbase, i64 %numarrays) #0 {
entry:
  %a.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %abase.addr = alloca double*, align 8
  %bbase.addr = alloca double*, align 8
  %numarrays.addr = alloca i64, align 8
  %locabase = alloca double*, align 8
  %locbbase = alloca double*, align 8
  %ptra = alloca %struct.LUdblptr, align 8
  %elapsed = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  store double* %a, double** %a.addr, align 8
  store double* %b, double** %b.addr, align 8
  store double* %abase, double** %abase.addr, align 8
  store double* %bbase, double** %bbase.addr, align 8
  store i64 %numarrays, i64* %numarrays.addr, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %0 = load i64, i64* %j, align 8
  %1 = load i64, i64* %numarrays.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** %abase.addr, align 8
  %3 = load i64, i64* %j, align 8
  %mul = mul i64 %3, 101
  %mul1 = mul i64 %mul, 101
  %add.ptr = getelementptr inbounds double, double* %2, i64 %mul1
  store double* %add.ptr, double** %locabase, align 8
  %4 = load double*, double** %bbase.addr, align 8
  %5 = load i64, i64* %j, align 8
  %mul2 = mul i64 %5, 101
  %add.ptr3 = getelementptr inbounds double, double* %4, i64 %mul2
  store double* %add.ptr3, double** %locbbase, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load i64, i64* %i, align 8
  %cmp5 = icmp ult i64 %6, 10201
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %7 = load double*, double** %a.addr, align 8
  %8 = load i64, i64* %i, align 8
  %add.ptr7 = getelementptr inbounds double, double* %7, i64 %8
  %9 = load double, double* %add.ptr7, align 8
  %10 = load double*, double** %locabase, align 8
  %11 = load i64, i64* %i, align 8
  %add.ptr8 = getelementptr inbounds double, double* %10, i64 %11
  store double %9, double* %add.ptr8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %12 = load i64, i64* %i, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  store i64 0, i64* %i, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.14, %for.end
  %13 = load i64, i64* %i, align 8
  %cmp10 = icmp ult i64 %13, 101
  br i1 %cmp10, label %for.body.11, label %for.end.16

for.body.11:                                      ; preds = %for.cond.9
  %14 = load double*, double** %b.addr, align 8
  %15 = load i64, i64* %i, align 8
  %add.ptr12 = getelementptr inbounds double, double* %14, i64 %15
  %16 = load double, double* %add.ptr12, align 8
  %17 = load double*, double** %locbbase, align 8
  %18 = load i64, i64* %i, align 8
  %add.ptr13 = getelementptr inbounds double, double* %17, i64 %18
  store double %16, double* %add.ptr13, align 8
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.11
  %19 = load i64, i64* %i, align 8
  %inc15 = add i64 %19, 1
  store i64 %inc15, i64* %i, align 8
  br label %for.cond.9

for.end.16:                                       ; preds = %for.cond.9
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end.16
  %20 = load i64, i64* %j, align 8
  %inc18 = add i64 %20, 1
  store i64 %inc18, i64* %j, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %call = call i64 (...) @StartStopwatch()
  store i64 %call, i64* %elapsed, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.30, %for.end.19
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %numarrays.addr, align 8
  %cmp21 = icmp ult i64 %21, %22
  br i1 %cmp21, label %for.body.22, label %for.end.32

for.body.22:                                      ; preds = %for.cond.20
  %23 = load double*, double** %abase.addr, align 8
  %24 = load i64, i64* %i, align 8
  %mul23 = mul i64 %24, 101
  %mul24 = mul i64 %mul23, 101
  %add.ptr25 = getelementptr inbounds double, double* %23, i64 %mul24
  store double* %add.ptr25, double** %locabase, align 8
  %25 = load double*, double** %bbase.addr, align 8
  %26 = load i64, i64* %i, align 8
  %mul26 = mul i64 %26, 101
  %add.ptr27 = getelementptr inbounds double, double* %25, i64 %mul26
  store double* %add.ptr27, double** %locbbase, align 8
  %27 = load double*, double** %locabase, align 8
  %ptrs = getelementptr inbounds %struct.LUdblptr, %struct.LUdblptr* %ptra, i32 0, i32 0
  %p = bitcast %union.anon* %ptrs to double**
  store double* %27, double** %p, align 8
  %ptrs28 = getelementptr inbounds %struct.LUdblptr, %struct.LUdblptr* %ptra, i32 0, i32 0
  %ap = bitcast %union.anon* %ptrs28 to [0 x [101 x double]]**
  %28 = load [0 x [101 x double]]*, [0 x [101 x double]]** %ap, align 8
  %arraydecay = getelementptr inbounds [0 x [101 x double]], [0 x [101 x double]]* %28, i32 0, i32 0
  %29 = load double*, double** %locbbase, align 8
  %call29 = call i32 @lusolve([101 x double]* %arraydecay, i32 101, double* %29)
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.22
  %30 = load i64, i64* %i, align 8
  %inc31 = add i64 %30, 1
  store i64 %inc31, i64* %i, align 8
  br label %for.cond.20

for.end.32:                                       ; preds = %for.cond.20
  %31 = load i64, i64* %elapsed, align 8
  %call33 = call i64 @StopStopwatch(i64 %31)
  ret i64 %call33
}

; Function Attrs: nounwind uwtable
define internal void @LoadNumArrayWithRand(i64* %array, i64 %arraysize, i32 %numarrays) #0 {
entry:
  %array.addr = alloca i64*, align 8
  %arraysize.addr = alloca i64, align 8
  %numarrays.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %darray = alloca i64*, align 8
  store i64* %array, i64** %array.addr, align 8
  store i64 %arraysize, i64* %arraysize.addr, align 8
  store i32 %numarrays, i32* %numarrays.addr, align 4
  %call = call i32 @randnum(i32 13)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %arraysize.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @randnum(i32 0)
  %conv = sext i32 %call1 to i64
  %2 = load i64, i64* %i, align 8
  %3 = load i64*, i64** %array.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %2
  store i64 %conv, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %i, align 8
  %inc = add nsw i64 %4, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i64*, i64** %array.addr, align 8
  store i64* %5, i64** %darray, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.10, %for.end
  %6 = load i32, i32* %numarrays.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %numarrays.addr, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, i64* %arraysize.addr, align 8
  %8 = load i64*, i64** %darray, align 8
  %add.ptr = getelementptr inbounds i64, i64* %8, i64 %7
  store i64* %add.ptr, i64** %darray, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.8, %while.body
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %arraysize.addr, align 8
  %cmp3 = icmp ult i64 %9, %10
  br i1 %cmp3, label %for.body.5, label %for.end.10

for.body.5:                                       ; preds = %for.cond.2
  %11 = load i64, i64* %i, align 8
  %12 = load i64*, i64** %array.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %12, i64 %11
  %13 = load i64, i64* %arrayidx6, align 8
  %14 = load i64, i64* %i, align 8
  %15 = load i64*, i64** %darray, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %15, i64 %14
  store i64 %13, i64* %arrayidx7, align 8
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.5
  %16 = load i64, i64* %i, align 8
  %inc9 = add nsw i64 %16, 1
  store i64 %inc9, i64* %i, align 8
  br label %for.cond.2

for.end.10:                                       ; preds = %for.cond.2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i64 @StartStopwatch(...) #1

; Function Attrs: nounwind uwtable
define internal void @NumHeapSort(i64* %array, i64 %bottom, i64 %top) #0 {
entry:
  %array.addr = alloca i64*, align 8
  %bottom.addr = alloca i64, align 8
  %top.addr = alloca i64, align 8
  %temp = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %array, i64** %array.addr, align 8
  store i64 %bottom, i64* %bottom.addr, align 8
  store i64 %top, i64* %top.addr, align 8
  %0 = load i64, i64* %top.addr, align 8
  %div = udiv i64 %0, 2
  store i64 %div, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64*, i64** %array.addr, align 8
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %top.addr, align 8
  call void @NumSift(i64* %2, i64 %3, i64 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %top.addr, align 8
  store i64 %6, i64* %i, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.5, %for.end
  %7 = load i64, i64* %i, align 8
  %cmp2 = icmp ugt i64 %7, 0
  br i1 %cmp2, label %for.body.3, label %for.end.7

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i64*, i64** %array.addr, align 8
  %9 = load i64, i64* %bottom.addr, align 8
  %10 = load i64, i64* %i, align 8
  call void @NumSift(i64* %8, i64 %9, i64 %10)
  %11 = load i64*, i64** %array.addr, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %temp, align 8
  %13 = load i64*, i64** %array.addr, align 8
  %14 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i64, i64* %13, i64 %14
  %15 = load i64, i64* %add.ptr, align 8
  %16 = load i64*, i64** %array.addr, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* %temp, align 8
  %18 = load i64*, i64** %array.addr, align 8
  %19 = load i64, i64* %i, align 8
  %add.ptr4 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 %17, i64* %add.ptr4, align 8
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.body.3
  %20 = load i64, i64* %i, align 8
  %dec6 = add i64 %20, -1
  store i64 %dec6, i64* %i, align 8
  br label %for.cond.1

for.end.7:                                        ; preds = %for.cond.1
  ret void
}

declare i64 @StopStopwatch(i64) #1

; Function Attrs: nounwind uwtable
define internal void @NumSift(i64* %array, i64 %i, i64 %j) #0 {
entry:
  %array.addr = alloca i64*, align 8
  %i.addr = alloca i64, align 8
  %j.addr = alloca i64, align 8
  %k = alloca i64, align 8
  %temp = alloca i64, align 8
  store i64* %array, i64** %array.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store i64 %j, i64* %j.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %entry
  %0 = load i64, i64* %i.addr, align 8
  %1 = load i64, i64* %i.addr, align 8
  %add = add i64 %0, %1
  %2 = load i64, i64* %j.addr, align 8
  %cmp = icmp ule i64 %add, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %i.addr, align 8
  %4 = load i64, i64* %i.addr, align 8
  %add1 = add i64 %3, %4
  store i64 %add1, i64* %k, align 8
  %5 = load i64, i64* %k, align 8
  %6 = load i64, i64* %j.addr, align 8
  %cmp2 = icmp ult i64 %5, %6
  br i1 %cmp2, label %if.then, label %if.end.7

if.then:                                          ; preds = %while.body
  %7 = load i64, i64* %k, align 8
  %8 = load i64*, i64** %array.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx, align 8
  %10 = load i64, i64* %k, align 8
  %add3 = add i64 %10, 1
  %11 = load i64*, i64** %array.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %11, i64 %add3
  %12 = load i64, i64* %arrayidx4, align 8
  %cmp5 = icmp slt i64 %9, %12
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %13 = load i64, i64* %k, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %k, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %while.body
  %14 = load i64, i64* %i.addr, align 8
  %15 = load i64*, i64** %array.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %15, i64 %14
  %16 = load i64, i64* %arrayidx8, align 8
  %17 = load i64, i64* %k, align 8
  %18 = load i64*, i64** %array.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %18, i64 %17
  %19 = load i64, i64* %arrayidx9, align 8
  %cmp10 = icmp slt i64 %16, %19
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.7
  %20 = load i64, i64* %k, align 8
  %21 = load i64*, i64** %array.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %21, i64 %20
  %22 = load i64, i64* %arrayidx12, align 8
  store i64 %22, i64* %temp, align 8
  %23 = load i64, i64* %i.addr, align 8
  %24 = load i64*, i64** %array.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %24, i64 %23
  %25 = load i64, i64* %arrayidx13, align 8
  %26 = load i64, i64* %k, align 8
  %27 = load i64*, i64** %array.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %27, i64 %26
  store i64 %25, i64* %arrayidx14, align 8
  %28 = load i64, i64* %temp, align 8
  %29 = load i64, i64* %i.addr, align 8
  %30 = load i64*, i64** %array.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %30, i64 %29
  store i64 %28, i64* %arrayidx15, align 8
  %31 = load i64, i64* %k, align 8
  store i64 %31, i64* %i.addr, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.end.7
  %32 = load i64, i64* %j.addr, align 8
  %add16 = add i64 %32, 1
  store i64 %add16, i64* %i.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64* @LoadStringArray(i8* %strarray, i32 %numarrays, i64* %nstrings, i64 %arraysize) #0 {
entry:
  %strarray.addr = alloca i8*, align 8
  %numarrays.addr = alloca i32, align 4
  %nstrings.addr = alloca i64*, align 8
  %arraysize.addr = alloca i64, align 8
  %tempsbase = alloca i8*, align 8
  %optrarray = alloca i64*, align 8
  %tempobase = alloca i64*, align 8
  %curroffset = alloca i64, align 8
  %fullflag = alloca i32, align 4
  %stringlength = alloca i8, align 1
  %i = alloca i8, align 1
  %j = alloca i64, align 8
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %systemerror = alloca i32, align 4
  store i8* %strarray, i8** %strarray.addr, align 8
  store i32 %numarrays, i32* %numarrays.addr, align 4
  store i64* %nstrings, i64** %nstrings.addr, align 8
  store i64 %arraysize, i64* %arraysize.addr, align 8
  %call = call i32 @randnum(i32 13)
  %0 = load i64*, i64** %nstrings.addr, align 8
  store i64 0, i64* %0, align 8
  store i64 0, i64* %curroffset, align 8
  store i32 0, i32* %fullflag, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call1 = call i32 @abs_randwc(i32 76)
  %add = add i32 1, %call1
  %conv = zext i32 %add to i64
  %and = and i64 %conv, 255
  %conv2 = trunc i64 %and to i8
  store i8 %conv2, i8* %stringlength, align 1
  %1 = load i8, i8* %stringlength, align 1
  %conv3 = zext i8 %1 to i64
  %2 = load i64, i64* %curroffset, align 8
  %add4 = add i64 %conv3, %2
  %add5 = add i64 %add4, 1
  %3 = load i64, i64* %arraysize.addr, align 8
  %cmp = icmp uge i64 %add5, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i64, i64* %arraysize.addr, align 8
  %5 = load i64, i64* %curroffset, align 8
  %sub = sub i64 %4, %5
  %sub7 = sub i64 %sub, 1
  %and8 = and i64 %sub7, 255
  %conv9 = trunc i64 %and8 to i8
  store i8 %conv9, i8* %stringlength, align 1
  store i32 1, i32* %fullflag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %6 = load i8, i8* %stringlength, align 1
  %7 = load i8*, i8** %strarray.addr, align 8
  %8 = load i64, i64* %curroffset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8
  store i8 %6, i8* %add.ptr, align 1
  %9 = load i64, i64* %curroffset, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %curroffset, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i8, i8* %i, align 1
  %conv10 = zext i8 %10 to i32
  %11 = load i8, i8* %stringlength, align 1
  %conv11 = zext i8 %11 to i32
  %cmp12 = icmp slt i32 %conv10, %conv11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call14 = call i32 @abs_randwc(i32 254)
  %conv15 = trunc i32 %call14 to i8
  %12 = load i8*, i8** %strarray.addr, align 8
  %13 = load i64, i64* %curroffset, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8 %conv15, i8* %add.ptr16, align 1
  %14 = load i64, i64* %curroffset, align 8
  %inc17 = add i64 %14, 1
  store i64 %inc17, i64* %curroffset, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i8, i8* %i, align 1
  %inc18 = add i8 %15, 1
  store i8 %inc18, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i64*, i64** %nstrings.addr, align 8
  %17 = load i64, i64* %16, align 8
  %add19 = add i64 %17, 1
  store i64 %add19, i64* %16, align 8
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %18 = load i32, i32* %fullflag, align 4
  %cmp20 = icmp eq i32 %18, 0
  br i1 %cmp20, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %k, align 4
  %19 = load i8*, i8** %strarray.addr, align 8
  store i8* %19, i8** %tempsbase, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.35, %do.end
  %20 = load i32, i32* %k, align 4
  %21 = load i32, i32* %numarrays.addr, align 4
  %cmp22 = icmp ult i32 %20, %21
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i64, i64* %arraysize.addr, align 8
  %add24 = add i64 %22, 100
  %23 = load i8*, i8** %tempsbase, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %23, i64 %add24
  store i8* %add.ptr25, i8** %tempsbase, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.33, %while.body
  %24 = load i32, i32* %l, align 4
  %conv27 = zext i32 %24 to i64
  %25 = load i64, i64* %arraysize.addr, align 8
  %cmp28 = icmp ult i64 %conv27, %25
  br i1 %cmp28, label %for.body.30, label %for.end.35

for.body.30:                                      ; preds = %for.cond.26
  %26 = load i32, i32* %l, align 4
  %idxprom = zext i32 %26 to i64
  %27 = load i8*, i8** %strarray.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 %idxprom
  %28 = load i8, i8* %arrayidx, align 1
  %29 = load i32, i32* %l, align 4
  %idxprom31 = zext i32 %29 to i64
  %30 = load i8*, i8** %tempsbase, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %30, i64 %idxprom31
  store i8 %28, i8* %arrayidx32, align 1
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.30
  %31 = load i32, i32* %l, align 4
  %inc34 = add i32 %31, 1
  store i32 %inc34, i32* %l, align 4
  br label %for.cond.26

for.end.35:                                       ; preds = %for.cond.26
  %32 = load i32, i32* %k, align 4
  %inc36 = add i32 %32, 1
  store i32 %inc36, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i64*, i64** %nstrings.addr, align 8
  %34 = load i64, i64* %33, align 8
  %mul = mul i64 %34, 8
  %35 = load i32, i32* %numarrays.addr, align 4
  %conv37 = zext i32 %35 to i64
  %mul38 = mul i64 %mul, %conv37
  %call39 = call i8* @AllocateMemory(i64 %mul38, i32* %systemerror)
  %36 = bitcast i8* %call39 to i64*
  store i64* %36, i64** %optrarray, align 8
  %37 = load i32, i32* %systemerror, align 4
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %while.end
  %38 = load i32, i32* %systemerror, align 4
  call void @ReportError(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), i32 %38)
  %39 = load i8*, i8** %strarray.addr, align 8
  call void @FreeMemory(i8* %39, i32* %systemerror)
  call void (...) @ErrorExit()
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %while.end
  store i64 0, i64* %curroffset, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.51, %if.end.41
  %40 = load i64, i64* %j, align 8
  %41 = load i64*, i64** %nstrings.addr, align 8
  %42 = load i64, i64* %41, align 8
  %cmp43 = icmp ult i64 %40, %42
  br i1 %cmp43, label %for.body.45, label %for.end.53

for.body.45:                                      ; preds = %for.cond.42
  %43 = load i64, i64* %curroffset, align 8
  %44 = load i64*, i64** %optrarray, align 8
  %45 = load i64, i64* %j, align 8
  %add.ptr46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %add.ptr46, align 8
  %46 = load i8*, i8** %strarray.addr, align 8
  %47 = load i64, i64* %curroffset, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %46, i64 %47
  %48 = load i8, i8* %add.ptr47, align 1
  %conv48 = zext i8 %48 to i64
  %add49 = add i64 %conv48, 1
  %49 = load i64, i64* %curroffset, align 8
  %add50 = add i64 %49, %add49
  store i64 %add50, i64* %curroffset, align 8
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.45
  %50 = load i64, i64* %j, align 8
  %inc52 = add i64 %50, 1
  store i64 %inc52, i64* %j, align 8
  br label %for.cond.42

for.end.53:                                       ; preds = %for.cond.42
  store i32 1, i32* %k, align 4
  %51 = load i64*, i64** %optrarray, align 8
  store i64* %51, i64** %tempobase, align 8
  br label %while.cond.54

while.cond.54:                                    ; preds = %for.end.70, %for.end.53
  %52 = load i32, i32* %k, align 4
  %53 = load i32, i32* %numarrays.addr, align 4
  %cmp55 = icmp ult i32 %52, %53
  br i1 %cmp55, label %while.body.57, label %while.end.72

while.body.57:                                    ; preds = %while.cond.54
  %54 = load i64*, i64** %nstrings.addr, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %tempobase, align 8
  %add.ptr58 = getelementptr inbounds i64, i64* %56, i64 %55
  store i64* %add.ptr58, i64** %tempobase, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.68, %while.body.57
  %57 = load i32, i32* %l, align 4
  %conv60 = zext i32 %57 to i64
  %58 = load i64*, i64** %nstrings.addr, align 8
  %59 = load i64, i64* %58, align 8
  %cmp61 = icmp ult i64 %conv60, %59
  br i1 %cmp61, label %for.body.63, label %for.end.70

for.body.63:                                      ; preds = %for.cond.59
  %60 = load i32, i32* %l, align 4
  %idxprom64 = zext i32 %60 to i64
  %61 = load i64*, i64** %optrarray, align 8
  %arrayidx65 = getelementptr inbounds i64, i64* %61, i64 %idxprom64
  %62 = load i64, i64* %arrayidx65, align 8
  %63 = load i32, i32* %l, align 4
  %idxprom66 = zext i32 %63 to i64
  %64 = load i64*, i64** %tempobase, align 8
  %arrayidx67 = getelementptr inbounds i64, i64* %64, i64 %idxprom66
  store i64 %62, i64* %arrayidx67, align 8
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.63
  %65 = load i32, i32* %l, align 4
  %inc69 = add i32 %65, 1
  store i32 %inc69, i32* %l, align 4
  br label %for.cond.59

for.end.70:                                       ; preds = %for.cond.59
  %66 = load i32, i32* %k, align 4
  %inc71 = add i32 %66, 1
  store i32 %inc71, i32* %k, align 4
  br label %while.cond.54

while.end.72:                                     ; preds = %while.cond.54
  %67 = load i64*, i64** %optrarray, align 8
  ret i64* %67
}

; Function Attrs: nounwind uwtable
define internal void @StrHeapSort(i64* %optrarray, i8* %strarray, i64 %numstrings, i64 %bottom, i64 %top) #0 {
entry:
  %optrarray.addr = alloca i64*, align 8
  %strarray.addr = alloca i8*, align 8
  %numstrings.addr = alloca i64, align 8
  %bottom.addr = alloca i64, align 8
  %top.addr = alloca i64, align 8
  %temp = alloca [80 x i8], align 16
  %tlen = alloca i8, align 1
  %i = alloca i64, align 8
  store i64* %optrarray, i64** %optrarray.addr, align 8
  store i8* %strarray, i8** %strarray.addr, align 8
  store i64 %numstrings, i64* %numstrings.addr, align 8
  store i64 %bottom, i64* %bottom.addr, align 8
  store i64 %top, i64* %top.addr, align 8
  %0 = load i64, i64* %top.addr, align 8
  %div = udiv i64 %0, 2
  store i64 %div, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64*, i64** %optrarray.addr, align 8
  %3 = load i8*, i8** %strarray.addr, align 8
  %4 = load i64, i64* %numstrings.addr, align 8
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %top.addr, align 8
  call void @strsift(i64* %2, i8* %3, i64 %4, i64 %5, i64 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %top.addr, align 8
  store i64 %8, i64* %i, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.18, %for.end
  %9 = load i64, i64* %i, align 8
  %cmp2 = icmp ugt i64 %9, 0
  br i1 %cmp2, label %for.body.3, label %for.end.20

for.body.3:                                       ; preds = %for.cond.1
  %10 = load i64*, i64** %optrarray.addr, align 8
  %11 = load i8*, i8** %strarray.addr, align 8
  %12 = load i64, i64* %numstrings.addr, align 8
  %13 = load i64, i64* %i, align 8
  call void @strsift(i64* %10, i8* %11, i64 %12, i64 0, i64 %13)
  %14 = load i8*, i8** %strarray.addr, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %tlen, align 1
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %temp, i32 0, i64 0
  %16 = load i8*, i8** %strarray.addr, align 8
  %17 = load i8, i8* %tlen, align 1
  %conv = zext i8 %17 to i32
  %add = add nsw i32 %conv, 1
  %conv4 = sext i32 %add to i64
  call void @MoveMemory(i8* %arrayidx, i8* %16, i64 %conv4)
  %18 = load i8*, i8** %strarray.addr, align 8
  %19 = load i64*, i64** %optrarray.addr, align 8
  %20 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i64, i64* %19, i64 %20
  %21 = load i64, i64* %add.ptr, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %18, i64 %21
  %22 = load i8, i8* %add.ptr5, align 1
  store i8 %22, i8* %tlen, align 1
  %23 = load i64*, i64** %optrarray.addr, align 8
  %24 = load i8*, i8** %strarray.addr, align 8
  %25 = load i64, i64* %numstrings.addr, align 8
  %26 = load i8, i8* %tlen, align 1
  call void @stradjust(i64* %23, i8* %24, i64 %25, i64 0, i8 zeroext %26)
  %27 = load i8*, i8** %strarray.addr, align 8
  %28 = load i8*, i8** %strarray.addr, align 8
  %29 = load i64*, i64** %optrarray.addr, align 8
  %30 = load i64, i64* %i, align 8
  %add.ptr6 = getelementptr inbounds i64, i64* %29, i64 %30
  %31 = load i64, i64* %add.ptr6, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %28, i64 %31
  %32 = load i8, i8* %tlen, align 1
  %conv8 = zext i8 %32 to i32
  %add9 = add nsw i32 %conv8, 1
  %conv10 = sext i32 %add9 to i64
  call void @MoveMemory(i8* %27, i8* %add.ptr7, i64 %conv10)
  %arrayidx11 = getelementptr inbounds [80 x i8], [80 x i8]* %temp, i32 0, i64 0
  %33 = load i8, i8* %arrayidx11, align 1
  store i8 %33, i8* %tlen, align 1
  %34 = load i64*, i64** %optrarray.addr, align 8
  %35 = load i8*, i8** %strarray.addr, align 8
  %36 = load i64, i64* %numstrings.addr, align 8
  %37 = load i64, i64* %i, align 8
  %38 = load i8, i8* %tlen, align 1
  call void @stradjust(i64* %34, i8* %35, i64 %36, i64 %37, i8 zeroext %38)
  %39 = load i8*, i8** %strarray.addr, align 8
  %40 = load i64*, i64** %optrarray.addr, align 8
  %41 = load i64, i64* %i, align 8
  %add.ptr12 = getelementptr inbounds i64, i64* %40, i64 %41
  %42 = load i64, i64* %add.ptr12, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %39, i64 %42
  %arrayidx14 = getelementptr inbounds [80 x i8], [80 x i8]* %temp, i32 0, i64 0
  %43 = load i8, i8* %tlen, align 1
  %conv15 = zext i8 %43 to i32
  %add16 = add nsw i32 %conv15, 1
  %conv17 = sext i32 %add16 to i64
  call void @MoveMemory(i8* %add.ptr13, i8* %arrayidx14, i64 %conv17)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.3
  %44 = load i64, i64* %i, align 8
  %dec19 = add i64 %44, -1
  store i64 %dec19, i64* %i, align 8
  br label %for.cond.1

for.end.20:                                       ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @strsift(i64* %optrarray, i8* %strarray, i64 %numstrings, i64 %i, i64 %j) #0 {
entry:
  %optrarray.addr = alloca i64*, align 8
  %strarray.addr = alloca i8*, align 8
  %numstrings.addr = alloca i64, align 8
  %i.addr = alloca i64, align 8
  %j.addr = alloca i64, align 8
  %k = alloca i64, align 8
  %temp = alloca [80 x i8], align 16
  %tlen = alloca i8, align 1
  store i64* %optrarray, i64** %optrarray.addr, align 8
  store i8* %strarray, i8** %strarray.addr, align 8
  store i64 %numstrings, i64* %numstrings.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store i64 %j, i64* %j.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %entry
  %0 = load i64, i64* %i.addr, align 8
  %1 = load i64, i64* %i.addr, align 8
  %add = add i64 %0, %1
  %2 = load i64, i64* %j.addr, align 8
  %cmp = icmp ule i64 %add, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %i.addr, align 8
  %4 = load i64, i64* %i.addr, align 8
  %add1 = add i64 %3, %4
  store i64 %add1, i64* %k, align 8
  %5 = load i64, i64* %k, align 8
  %6 = load i64, i64* %j.addr, align 8
  %cmp2 = icmp ult i64 %5, %6
  br i1 %cmp2, label %if.then, label %if.end.5

if.then:                                          ; preds = %while.body
  %7 = load i64*, i64** %optrarray.addr, align 8
  %8 = load i8*, i8** %strarray.addr, align 8
  %9 = load i64, i64* %numstrings.addr, align 8
  %10 = load i64, i64* %k, align 8
  %11 = load i64, i64* %k, align 8
  %add3 = add i64 %11, 1
  %call = call i32 @str_is_less(i64* %7, i8* %8, i64 %9, i64 %10, i64 %add3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %12 = load i64, i64* %k, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %k, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %while.body
  %13 = load i64*, i64** %optrarray.addr, align 8
  %14 = load i8*, i8** %strarray.addr, align 8
  %15 = load i64, i64* %numstrings.addr, align 8
  %16 = load i64, i64* %i.addr, align 8
  %17 = load i64, i64* %k, align 8
  %call6 = call i32 @str_is_less(i64* %13, i8* %14, i64 %15, i64 %16, i64 %17)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %18 = load i8*, i8** %strarray.addr, align 8
  %19 = load i64*, i64** %optrarray.addr, align 8
  %20 = load i64, i64* %k, align 8
  %add.ptr = getelementptr inbounds i64, i64* %19, i64 %20
  %21 = load i64, i64* %add.ptr, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %18, i64 %21
  %22 = load i8, i8* %add.ptr9, align 1
  store i8 %22, i8* %tlen, align 1
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %temp, i32 0, i64 0
  %23 = load i8*, i8** %strarray.addr, align 8
  %24 = load i64*, i64** %optrarray.addr, align 8
  %25 = load i64, i64* %k, align 8
  %add.ptr10 = getelementptr inbounds i64, i64* %24, i64 %25
  %26 = load i64, i64* %add.ptr10, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %23, i64 %26
  %27 = load i8, i8* %tlen, align 1
  %conv = zext i8 %27 to i32
  %add12 = add nsw i32 %conv, 1
  %conv13 = sext i32 %add12 to i64
  call void @MoveMemory(i8* %arrayidx, i8* %add.ptr11, i64 %conv13)
  %28 = load i8*, i8** %strarray.addr, align 8
  %29 = load i64*, i64** %optrarray.addr, align 8
  %30 = load i64, i64* %i.addr, align 8
  %add.ptr14 = getelementptr inbounds i64, i64* %29, i64 %30
  %31 = load i64, i64* %add.ptr14, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %28, i64 %31
  %32 = load i8, i8* %add.ptr15, align 1
  store i8 %32, i8* %tlen, align 1
  %33 = load i64*, i64** %optrarray.addr, align 8
  %34 = load i8*, i8** %strarray.addr, align 8
  %35 = load i64, i64* %numstrings.addr, align 8
  %36 = load i64, i64* %k, align 8
  %37 = load i8, i8* %tlen, align 1
  call void @stradjust(i64* %33, i8* %34, i64 %35, i64 %36, i8 zeroext %37)
  %38 = load i8*, i8** %strarray.addr, align 8
  %39 = load i64*, i64** %optrarray.addr, align 8
  %40 = load i64, i64* %k, align 8
  %add.ptr16 = getelementptr inbounds i64, i64* %39, i64 %40
  %41 = load i64, i64* %add.ptr16, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %38, i64 %41
  %42 = load i8*, i8** %strarray.addr, align 8
  %43 = load i64*, i64** %optrarray.addr, align 8
  %44 = load i64, i64* %i.addr, align 8
  %add.ptr18 = getelementptr inbounds i64, i64* %43, i64 %44
  %45 = load i64, i64* %add.ptr18, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %42, i64 %45
  %46 = load i8, i8* %tlen, align 1
  %conv20 = zext i8 %46 to i32
  %add21 = add nsw i32 %conv20, 1
  %conv22 = sext i32 %add21 to i64
  call void @MoveMemory(i8* %add.ptr17, i8* %add.ptr19, i64 %conv22)
  %arrayidx23 = getelementptr inbounds [80 x i8], [80 x i8]* %temp, i32 0, i64 0
  %47 = load i8, i8* %arrayidx23, align 1
  store i8 %47, i8* %tlen, align 1
  %48 = load i64*, i64** %optrarray.addr, align 8
  %49 = load i8*, i8** %strarray.addr, align 8
  %50 = load i64, i64* %numstrings.addr, align 8
  %51 = load i64, i64* %i.addr, align 8
  %52 = load i8, i8* %tlen, align 1
  call void @stradjust(i64* %48, i8* %49, i64 %50, i64 %51, i8 zeroext %52)
  %53 = load i8*, i8** %strarray.addr, align 8
  %54 = load i64*, i64** %optrarray.addr, align 8
  %55 = load i64, i64* %i.addr, align 8
  %add.ptr24 = getelementptr inbounds i64, i64* %54, i64 %55
  %56 = load i64, i64* %add.ptr24, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %53, i64 %56
  %arrayidx26 = getelementptr inbounds [80 x i8], [80 x i8]* %temp, i32 0, i64 0
  %57 = load i8, i8* %tlen, align 1
  %conv27 = zext i8 %57 to i32
  %add28 = add nsw i32 %conv27, 1
  %conv29 = sext i32 %add28 to i64
  call void @MoveMemory(i8* %add.ptr25, i8* %arrayidx26, i64 %conv29)
  %58 = load i64, i64* %k, align 8
  store i64 %58, i64* %i.addr, align 8
  br label %if.end.31

if.else:                                          ; preds = %if.end.5
  %59 = load i64, i64* %j.addr, align 8
  %add30 = add i64 %59, 1
  store i64 %add30, i64* %i.addr, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @MoveMemory(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @stradjust(i64* %optrarray, i8* %strarray, i64 %nstrings, i64 %i, i8 zeroext %l) #0 {
entry:
  %optrarray.addr = alloca i64*, align 8
  %strarray.addr = alloca i8*, align 8
  %nstrings.addr = alloca i64, align 8
  %i.addr = alloca i64, align 8
  %l.addr = alloca i8, align 1
  %nbytes = alloca i64, align 8
  %j = alloca i64, align 8
  %direction = alloca i32, align 4
  %adjamount = alloca i8, align 1
  store i64* %optrarray, i64** %optrarray.addr, align 8
  store i8* %strarray, i8** %strarray.addr, align 8
  store i64 %nstrings, i64* %nstrings.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store i8 %l, i8* %l.addr, align 1
  %0 = load i8, i8* %l.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8*, i8** %strarray.addr, align 8
  %2 = load i64*, i64** %optrarray.addr, align 8
  %3 = load i64, i64* %i.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %2, i64 %3
  %4 = load i64, i64* %add.ptr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %1, i64 %4
  %5 = load i8, i8* %add.ptr1, align 1
  %conv2 = zext i8 %5 to i32
  %sub = sub nsw i32 %conv, %conv2
  store i32 %sub, i32* %direction, align 4
  %6 = load i32, i32* %direction, align 4
  %call = call i32 @abs(i32 %6) #6
  %conv3 = trunc i32 %call to i8
  store i8 %conv3, i8* %adjamount, align 1
  %7 = load i64, i64* %i.addr, align 8
  %8 = load i64, i64* %nstrings.addr, align 8
  %sub4 = sub i64 %8, 1
  %cmp = icmp eq i64 %7, %sub4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i8, i8* %l.addr, align 1
  %10 = load i8*, i8** %strarray.addr, align 8
  %11 = load i64*, i64** %optrarray.addr, align 8
  %12 = load i64, i64* %i.addr, align 8
  %add.ptr6 = getelementptr inbounds i64, i64* %11, i64 %12
  %13 = load i64, i64* %add.ptr6, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8 %9, i8* %add.ptr7, align 1
  br label %return

if.end:                                           ; preds = %entry
  %14 = load i64*, i64** %optrarray.addr, align 8
  %15 = load i64, i64* %nstrings.addr, align 8
  %add.ptr8 = getelementptr inbounds i64, i64* %14, i64 %15
  %add.ptr9 = getelementptr inbounds i64, i64* %add.ptr8, i64 -1
  %16 = load i64, i64* %add.ptr9, align 8
  %17 = load i8*, i8** %strarray.addr, align 8
  %18 = load i64*, i64** %optrarray.addr, align 8
  %19 = load i64, i64* %nstrings.addr, align 8
  %add.ptr10 = getelementptr inbounds i64, i64* %18, i64 %19
  %add.ptr11 = getelementptr inbounds i64, i64* %add.ptr10, i64 -1
  %20 = load i64, i64* %add.ptr11, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %17, i64 %20
  %21 = load i8, i8* %add.ptr12, align 1
  %conv13 = zext i8 %21 to i64
  %add = add i64 %16, %conv13
  %add14 = add i64 %add, 1
  %22 = load i64*, i64** %optrarray.addr, align 8
  %23 = load i64, i64* %i.addr, align 8
  %add.ptr15 = getelementptr inbounds i64, i64* %22, i64 %23
  %add.ptr16 = getelementptr inbounds i64, i64* %add.ptr15, i64 1
  %24 = load i64, i64* %add.ptr16, align 8
  %sub17 = sub i64 %add14, %24
  store i64 %sub17, i64* %nbytes, align 8
  %25 = load i8*, i8** %strarray.addr, align 8
  %26 = load i64*, i64** %optrarray.addr, align 8
  %27 = load i64, i64* %i.addr, align 8
  %add.ptr18 = getelementptr inbounds i64, i64* %26, i64 %27
  %28 = load i64, i64* %add.ptr18, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %25, i64 %28
  %29 = load i8, i8* %l.addr, align 1
  %conv20 = zext i8 %29 to i32
  %idx.ext = sext i32 %conv20 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr19, i64 %idx.ext
  %add.ptr22 = getelementptr inbounds i8, i8* %add.ptr21, i64 1
  %30 = load i8*, i8** %strarray.addr, align 8
  %31 = load i64*, i64** %optrarray.addr, align 8
  %32 = load i64, i64* %i.addr, align 8
  %add.ptr23 = getelementptr inbounds i64, i64* %31, i64 %32
  %add.ptr24 = getelementptr inbounds i64, i64* %add.ptr23, i64 1
  %33 = load i64, i64* %add.ptr24, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %30, i64 %33
  %34 = load i64, i64* %nbytes, align 8
  call void @MoveMemory(i8* %add.ptr22, i8* %add.ptr25, i64 %34)
  %35 = load i64, i64* %i.addr, align 8
  %add26 = add i64 %35, 1
  store i64 %add26, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %36 = load i64, i64* %j, align 8
  %37 = load i64, i64* %nstrings.addr, align 8
  %cmp27 = icmp ult i64 %36, %37
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %direction, align 4
  %cmp29 = icmp slt i32 %38, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %for.body
  %39 = load i64*, i64** %optrarray.addr, align 8
  %40 = load i64, i64* %j, align 8
  %add.ptr32 = getelementptr inbounds i64, i64* %39, i64 %40
  %41 = load i64, i64* %add.ptr32, align 8
  %42 = load i8, i8* %adjamount, align 1
  %conv33 = zext i8 %42 to i64
  %sub34 = sub i64 %41, %conv33
  %43 = load i64*, i64** %optrarray.addr, align 8
  %44 = load i64, i64* %j, align 8
  %add.ptr35 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %sub34, i64* %add.ptr35, align 8
  br label %if.end.40

if.else:                                          ; preds = %for.body
  %45 = load i64*, i64** %optrarray.addr, align 8
  %46 = load i64, i64* %j, align 8
  %add.ptr36 = getelementptr inbounds i64, i64* %45, i64 %46
  %47 = load i64, i64* %add.ptr36, align 8
  %48 = load i8, i8* %adjamount, align 1
  %conv37 = zext i8 %48 to i64
  %add38 = add i64 %47, %conv37
  %49 = load i64*, i64** %optrarray.addr, align 8
  %50 = load i64, i64* %j, align 8
  %add.ptr39 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 %add38, i64* %add.ptr39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.then.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %51 = load i64, i64* %j, align 8
  %inc = add i64 %51, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load i8, i8* %l.addr, align 1
  %53 = load i8*, i8** %strarray.addr, align 8
  %54 = load i64*, i64** %optrarray.addr, align 8
  %55 = load i64, i64* %i.addr, align 8
  %add.ptr41 = getelementptr inbounds i64, i64* %54, i64 %55
  %56 = load i64, i64* %add.ptr41, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 %52, i8* %add.ptr42, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @str_is_less(i64* %optrarray, i8* %strarray, i64 %numstrings, i64 %a, i64 %b) #0 {
entry:
  %retval = alloca i32, align 4
  %optrarray.addr = alloca i64*, align 8
  %strarray.addr = alloca i8*, align 8
  %numstrings.addr = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %slen = alloca i32, align 4
  store i64* %optrarray, i64** %optrarray.addr, align 8
  store i8* %strarray, i8** %strarray.addr, align 8
  store i64 %numstrings, i64* %numstrings.addr, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i8*, i8** %strarray.addr, align 8
  %1 = load i64*, i64** %optrarray.addr, align 8
  %2 = load i64, i64* %a.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %1, i64 %2
  %3 = load i64, i64* %add.ptr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %0, i64 %3
  %4 = load i8, i8* %add.ptr1, align 1
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %slen, align 4
  %5 = load i32, i32* %slen, align 4
  %6 = load i8*, i8** %strarray.addr, align 8
  %7 = load i64*, i64** %optrarray.addr, align 8
  %8 = load i64, i64* %b.addr, align 8
  %add.ptr2 = getelementptr inbounds i64, i64* %7, i64 %8
  %9 = load i64, i64* %add.ptr2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 %9
  %10 = load i8, i8* %add.ptr3, align 1
  %conv4 = zext i8 %10 to i32
  %cmp = icmp sgt i32 %5, %conv4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i8*, i8** %strarray.addr, align 8
  %12 = load i64*, i64** %optrarray.addr, align 8
  %13 = load i64, i64* %b.addr, align 8
  %add.ptr6 = getelementptr inbounds i64, i64* %12, i64 %13
  %14 = load i64, i64* %add.ptr6, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %11, i64 %14
  %15 = load i8, i8* %add.ptr7, align 1
  %conv8 = zext i8 %15 to i32
  store i32 %conv8, i32* %slen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i8*, i8** %strarray.addr, align 8
  %17 = load i64*, i64** %optrarray.addr, align 8
  %18 = load i64, i64* %a.addr, align 8
  %add.ptr9 = getelementptr inbounds i64, i64* %17, i64 %18
  %19 = load i64, i64* %add.ptr9, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i64 %19
  %20 = load i8*, i8** %strarray.addr, align 8
  %21 = load i64*, i64** %optrarray.addr, align 8
  %22 = load i64, i64* %b.addr, align 8
  %add.ptr11 = getelementptr inbounds i64, i64* %21, i64 %22
  %23 = load i64, i64* %add.ptr11, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %20, i64 %23
  %24 = load i32, i32* %slen, align 4
  %conv13 = sext i32 %24 to i64
  %call = call i32 @strncmp(i8* %add.ptr10, i8* %add.ptr12, i64 %conv13) #7
  store i32 %call, i32* %slen, align 4
  %25 = load i32, i32* %slen, align 4
  %cmp14 = icmp eq i32 %25, 0
  br i1 %cmp14, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %if.end
  %26 = load i8*, i8** %strarray.addr, align 8
  %27 = load i64*, i64** %optrarray.addr, align 8
  %28 = load i64, i64* %a.addr, align 8
  %add.ptr17 = getelementptr inbounds i64, i64* %27, i64 %28
  %29 = load i64, i64* %add.ptr17, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %26, i64 %29
  %30 = load i8, i8* %add.ptr18, align 1
  %conv19 = zext i8 %30 to i32
  %31 = load i8*, i8** %strarray.addr, align 8
  %32 = load i64*, i64** %optrarray.addr, align 8
  %33 = load i64, i64* %b.addr, align 8
  %add.ptr20 = getelementptr inbounds i64, i64* %32, i64 %33
  %34 = load i64, i64* %add.ptr20, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %31, i64 %34
  %35 = load i8, i8* %add.ptr21, align 1
  %conv22 = zext i8 %35 to i32
  %cmp23 = icmp sgt i32 %conv19, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.16
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.then.16
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end
  %36 = load i32, i32* %slen, align 4
  %cmp28 = icmp slt i32 %36, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.27
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.30, %if.end.26, %if.then.25
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: nounwind uwtable
define internal void @ToggleBitRun(i64* %bitmap, i64 %bit_addr, i64 %nbits, i32 %val) #0 {
entry:
  %bitmap.addr = alloca i64*, align 8
  %bit_addr.addr = alloca i64, align 8
  %nbits.addr = alloca i64, align 8
  %val.addr = alloca i32, align 4
  %bindex = alloca i64, align 8
  %bitnumb = alloca i64, align 8
  store i64* %bitmap, i64** %bitmap.addr, align 8
  store i64 %bit_addr, i64* %bit_addr.addr, align 8
  store i64 %nbits, i64* %nbits.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %nbits.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %nbits.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %bit_addr.addr, align 8
  %shr = lshr i64 %1, 6
  store i64 %shr, i64* %bindex, align 8
  %2 = load i64, i64* %bit_addr.addr, align 8
  %rem = urem i64 %2, 64
  store i64 %rem, i64* %bitnumb, align 8
  %3 = load i32, i32* %val.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i64, i64* %bitnumb, align 8
  %shl = shl i64 1, %4
  %5 = load i64, i64* %bindex, align 8
  %6 = load i64*, i64** %bitmap.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx, align 8
  %or = or i64 %7, %shl
  store i64 %or, i64* %arrayidx, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %8 = load i64, i64* %bitnumb, align 8
  %shl2 = shl i64 1, %8
  %neg = xor i64 %shl2, -1
  %9 = load i64, i64* %bindex, align 8
  %10 = load i64*, i64** %bitmap.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %10, i64 %9
  %11 = load i64, i64* %arrayidx3, align 8
  %and = and i64 %11, %neg
  store i64 %and, i64* %arrayidx3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i64, i64* %bit_addr.addr, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %bit_addr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FlipBitRun(i64* %bitmap, i64 %bit_addr, i64 %nbits) #0 {
entry:
  %bitmap.addr = alloca i64*, align 8
  %bit_addr.addr = alloca i64, align 8
  %nbits.addr = alloca i64, align 8
  %bindex = alloca i64, align 8
  %bitnumb = alloca i64, align 8
  store i64* %bitmap, i64** %bitmap.addr, align 8
  store i64 %bit_addr, i64* %bit_addr.addr, align 8
  store i64 %nbits, i64* %nbits.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %nbits.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %nbits.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %bit_addr.addr, align 8
  %shr = lshr i64 %1, 6
  store i64 %shr, i64* %bindex, align 8
  %2 = load i64, i64* %bit_addr.addr, align 8
  %rem = urem i64 %2, 64
  store i64 %rem, i64* %bitnumb, align 8
  %3 = load i64, i64* %bitnumb, align 8
  %shl = shl i64 1, %3
  %4 = load i64, i64* %bindex, align 8
  %5 = load i64*, i64** %bitmap.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %4
  %6 = load i64, i64* %arrayidx, align 8
  %xor = xor i64 %6, %shl
  store i64 %xor, i64* %arrayidx, align 8
  %7 = load i64, i64* %bit_addr.addr, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %bit_addr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @TrapezoidIntegrate(double %x0, double %x1, i32 %nsteps, double %omegan, i32 %select) #0 {
entry:
  %x0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %nsteps.addr = alloca i32, align 4
  %omegan.addr = alloca double, align 8
  %select.addr = alloca i32, align 4
  %x = alloca double, align 8
  %dx = alloca double, align 8
  %rvalue = alloca double, align 8
  store double %x0, double* %x0.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store i32 %nsteps, i32* %nsteps.addr, align 4
  store double %omegan, double* %omegan.addr, align 8
  store i32 %select, i32* %select.addr, align 4
  %0 = load double, double* %x0.addr, align 8
  store double %0, double* %x, align 8
  %1 = load double, double* %x1.addr, align 8
  %2 = load double, double* %x0.addr, align 8
  %sub = fsub double %1, %2
  %3 = load i32, i32* %nsteps.addr, align 4
  %conv = sitofp i32 %3 to double
  %div = fdiv double %sub, %conv
  store double %div, double* %dx, align 8
  %4 = load double, double* %x0.addr, align 8
  %5 = load double, double* %omegan.addr, align 8
  %6 = load i32, i32* %select.addr, align 4
  %call = call double @thefunction(double %4, double %5, i32 %6)
  %div1 = fdiv double %call, 2.000000e+00
  store double %div1, double* %rvalue, align 8
  %7 = load i32, i32* %nsteps.addr, align 4
  %cmp = icmp ne i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %nsteps.addr, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %nsteps.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load i32, i32* %nsteps.addr, align 4
  %dec3 = add nsw i32 %9, -1
  store i32 %dec3, i32* %nsteps.addr, align 4
  %tobool = icmp ne i32 %dec3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load double, double* %dx, align 8
  %11 = load double, double* %x, align 8
  %add = fadd double %11, %10
  store double %add, double* %x, align 8
  %12 = load double, double* %x, align 8
  %13 = load double, double* %omegan.addr, align 8
  %14 = load i32, i32* %select.addr, align 4
  %call4 = call double @thefunction(double %12, double %13, i32 %14)
  %15 = load double, double* %rvalue, align 8
  %add5 = fadd double %15, %call4
  store double %add5, double* %rvalue, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %16 = load double, double* %rvalue, align 8
  %17 = load double, double* %x1.addr, align 8
  %18 = load double, double* %omegan.addr, align 8
  %19 = load i32, i32* %select.addr, align 4
  %call6 = call double @thefunction(double %17, double %18, i32 %19)
  %div7 = fdiv double %call6, 2.000000e+00
  %add8 = fadd double %16, %div7
  %20 = load double, double* %dx, align 8
  %mul = fmul double %add8, %20
  store double %mul, double* %rvalue, align 8
  %21 = load double, double* %rvalue, align 8
  ret double %21
}

; Function Attrs: nounwind uwtable
define internal double @thefunction(double %x, double %omegan, i32 %select) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %omegan.addr = alloca double, align 8
  %select.addr = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store double %omegan, double* %omegan.addr, align 8
  store i32 %select, i32* %select.addr, align 4
  %0 = load i32, i32* %select.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %add = fadd double %1, 1.000000e+00
  %2 = load double, double* %x.addr, align 8
  %call = call double @pow(double %add, double %2) #5
  store double %call, double* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load double, double* %x.addr, align 8
  %add2 = fadd double %3, 1.000000e+00
  %4 = load double, double* %x.addr, align 8
  %call3 = call double @pow(double %add2, double %4) #5
  %5 = load double, double* %omegan.addr, align 8
  %6 = load double, double* %x.addr, align 8
  %mul = fmul double %5, %6
  %call4 = call double @cos(double %mul) #5
  %mul5 = fmul double %call3, %call4
  store double %mul5, double* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %7 = load double, double* %x.addr, align 8
  %add7 = fadd double %7, 1.000000e+00
  %8 = load double, double* %x.addr, align 8
  %call8 = call double @pow(double %add7, double %8) #5
  %9 = load double, double* %omegan.addr, align 8
  %10 = load double, double* %x.addr, align 8
  %mul9 = fmul double %9, %10
  %call10 = call double @sin(double %mul9) #5
  %mul11 = fmul double %call8, %call10
  store double %mul11, double* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.6, %sw.bb.1, %sw.bb
  %11 = load double, double* %retval
  ret double %11
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind uwtable
define internal void @LoadAssignArrayWithRand(i64* %arraybase, i64 %numarrays) #0 {
entry:
  %arraybase.addr = alloca i64*, align 8
  %numarrays.addr = alloca i64, align 8
  %abase = alloca %struct.longptr, align 8
  %abase1 = alloca %struct.longptr, align 8
  %i = alloca i64, align 8
  store i64* %arraybase, i64** %arraybase.addr, align 8
  store i64 %numarrays, i64* %numarrays.addr, align 8
  %0 = load i64*, i64** %arraybase.addr, align 8
  %ptrs = getelementptr inbounds %struct.longptr, %struct.longptr* %abase, i32 0, i32 0
  %p = bitcast %union.anon.0* %ptrs to i64**
  store i64* %0, i64** %p, align 8
  %1 = load i64*, i64** %arraybase.addr, align 8
  %ptrs1 = getelementptr inbounds %struct.longptr, %struct.longptr* %abase1, i32 0, i32 0
  %p2 = bitcast %union.anon.0* %ptrs1 to i64**
  store i64* %1, i64** %p2, align 8
  %ptrs3 = getelementptr inbounds %struct.longptr, %struct.longptr* %abase, i32 0, i32 0
  %ap = bitcast %union.anon.0* %ptrs3 to [101 x [101 x i64]]**
  %2 = load [101 x [101 x i64]]*, [101 x [101 x i64]]** %ap, align 8
  %arraydecay = getelementptr inbounds [101 x [101 x i64]], [101 x [101 x i64]]* %2, i32 0, i32 0
  call void @LoadAssign([101 x i64]* %arraydecay)
  %3 = load i64, i64* %numarrays.addr, align 8
  %cmp = icmp ugt i64 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %numarrays.addr, align 8
  %cmp4 = icmp ult i64 %4, %5
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %ptrs5 = getelementptr inbounds %struct.longptr, %struct.longptr* %abase1, i32 0, i32 0
  %p6 = bitcast %union.anon.0* %ptrs5 to i64**
  %6 = load i64*, i64** %p6, align 8
  %add.ptr = getelementptr inbounds i64, i64* %6, i64 10201
  store i64* %add.ptr, i64** %p6, align 8
  %ptrs7 = getelementptr inbounds %struct.longptr, %struct.longptr* %abase, i32 0, i32 0
  %ap8 = bitcast %union.anon.0* %ptrs7 to [101 x [101 x i64]]**
  %7 = load [101 x [101 x i64]]*, [101 x [101 x i64]]** %ap8, align 8
  %arraydecay9 = getelementptr inbounds [101 x [101 x i64]], [101 x [101 x i64]]* %7, i32 0, i32 0
  %ptrs10 = getelementptr inbounds %struct.longptr, %struct.longptr* %abase1, i32 0, i32 0
  %ap11 = bitcast %union.anon.0* %ptrs10 to [101 x [101 x i64]]**
  %8 = load [101 x [101 x i64]]*, [101 x [101 x i64]]** %ap11, align 8
  %arraydecay12 = getelementptr inbounds [101 x [101 x i64]], [101 x [101 x i64]]* %8, i32 0, i32 0
  call void @CopyToAssign([101 x i64]* %arraydecay9, [101 x i64]* %arraydecay12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Assignment([101 x i64]* %arraybase) #0 {
entry:
  %arraybase.addr = alloca [101 x i64]*, align 8
  %assignedtableau = alloca [101 x [101 x i16]], align 16
  store [101 x i64]* %arraybase, [101 x i64]** %arraybase.addr, align 8
  %0 = load [101 x i64]*, [101 x i64]** %arraybase.addr, align 8
  call void @calc_minimum_costs([101 x i64]* %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load [101 x i64]*, [101 x i64]** %arraybase.addr, align 8
  %arraydecay = getelementptr inbounds [101 x [101 x i16]], [101 x [101 x i16]]* %assignedtableau, i32 0, i32 0
  %call = call i32 @first_assignments([101 x i64]* %1, [101 x i16]* %arraydecay)
  %conv = sext i32 %call to i64
  %cmp = icmp ne i64 %conv, 101
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load [101 x i64]*, [101 x i64]** %arraybase.addr, align 8
  %arraydecay2 = getelementptr inbounds [101 x [101 x i16]], [101 x [101 x i16]]* %assignedtableau, i32 0, i32 0
  call void @second_assignments([101 x i64]* %2, [101 x i16]* %arraydecay2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LoadAssign([101 x i64]* %arraybase) #0 {
entry:
  %arraybase.addr = alloca [101 x i64]*, align 8
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  store [101 x i64]* %arraybase, [101 x i64]** %arraybase.addr, align 8
  %call = call i32 @randnum(i32 13)
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %0 = load i16, i16* %i, align 2
  %conv = zext i16 %0 to i64
  %cmp = icmp slt i64 %conv, 101
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %j, align 2
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %1 = load i16, i16* %j, align 2
  %conv3 = zext i16 %1 to i64
  %cmp4 = icmp slt i64 %conv3, 101
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %call7 = call i32 @abs_randwc(i32 5000000)
  %conv8 = zext i32 %call7 to i64
  %2 = load i16, i16* %j, align 2
  %idxprom = zext i16 %2 to i64
  %3 = load i16, i16* %i, align 2
  %idxprom9 = zext i16 %3 to i64
  %4 = load [101 x i64]*, [101 x i64]** %arraybase.addr, align 8
  %arrayidx = getelementptr inbounds [101 x i64], [101 x i64]* %4, i64 %idxprom9
  %arrayidx10 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx, i32 0, i64 %idxprom
  store i64 %conv8, i64* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %5 = load i16, i16* %j, align 2
  %inc = add i16 %5, 1
  store i16 %inc, i16* %j, align 2
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %6 = load i16, i16* %i, align 2
  %inc12 = add i16 %6, 1
  store i16 %inc12, i16* %i, align 2
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CopyToAssign([101 x i64]* %arrayfrom, [101 x i64]* %arrayto) #0 {
entry:
  %arrayfrom.addr = alloca [101 x i64]*, align 8
  %arrayto.addr = alloca [101 x i64]*, align 8
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  store [101 x i64]* %arrayfrom, [101 x i64]** %arrayfrom.addr, align 8
  store [101 x i64]* %arrayto, [101 x i64]** %arrayto.addr, align 8
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load i16, i16* %i, align 2
  %conv = zext i16 %0 to i64
  %cmp = icmp slt i64 %conv, 101
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %j, align 2
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %1 = load i16, i16* %j, align 2
  %conv3 = zext i16 %1 to i64
  %cmp4 = icmp slt i64 %conv3, 101
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %2 = load i16, i16* %j, align 2
  %idxprom = zext i16 %2 to i64
  %3 = load i16, i16* %i, align 2
  %idxprom7 = zext i16 %3 to i64
  %4 = load [101 x i64]*, [101 x i64]** %arrayfrom.addr, align 8
  %arrayidx = getelementptr inbounds [101 x i64], [101 x i64]* %4, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx8, align 8
  %6 = load i16, i16* %j, align 2
  %idxprom9 = zext i16 %6 to i64
  %7 = load i16, i16* %i, align 2
  %idxprom10 = zext i16 %7 to i64
  %8 = load [101 x i64]*, [101 x i64]** %arrayto.addr, align 8
  %arrayidx11 = getelementptr inbounds [101 x i64], [101 x i64]* %8, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx11, i32 0, i64 %idxprom9
  store i64 %5, i64* %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %9 = load i16, i16* %j, align 2
  %inc = add i16 %9, 1
  store i16 %inc, i16* %j, align 2
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %10 = load i16, i16* %i, align 2
  %inc14 = add i16 %10, 1
  store i16 %inc14, i16* %i, align 2
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calc_minimum_costs([101 x i64]* %tableau) #0 {
entry:
  %tableau.addr = alloca [101 x i64]*, align 8
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %currentmin = alloca i64, align 8
  store [101 x i64]* %tableau, [101 x i64]** %tableau.addr, align 8
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %0 = load i16, i16* %i, align 2
  %conv = zext i16 %0 to i64
  %cmp = icmp slt i64 %conv, 101
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i64 9223372036854775807, i64* %currentmin, align 8
  store i16 0, i16* %j, align 2
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %1 = load i16, i16* %j, align 2
  %conv3 = zext i16 %1 to i64
  %cmp4 = icmp slt i64 %conv3, 101
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %2 = load i16, i16* %j, align 2
  %idxprom = zext i16 %2 to i64
  %3 = load i16, i16* %i, align 2
  %idxprom7 = zext i16 %3 to i64
  %4 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx = getelementptr inbounds [101 x i64], [101 x i64]* %4, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx8, align 8
  %6 = load i64, i64* %currentmin, align 8
  %cmp9 = icmp slt i64 %5, %6
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %7 = load i16, i16* %j, align 2
  %idxprom11 = zext i16 %7 to i64
  %8 = load i16, i16* %i, align 2
  %idxprom12 = zext i16 %8 to i64
  %9 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx13 = getelementptr inbounds [101 x i64], [101 x i64]* %9, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx13, i32 0, i64 %idxprom11
  %10 = load i64, i64* %arrayidx14, align 8
  store i64 %10, i64* %currentmin, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i16, i16* %j, align 2
  %inc = add i16 %11, 1
  store i16 %inc, i16* %j, align 2
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  store i16 0, i16* %j, align 2
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.24, %for.end
  %12 = load i16, i16* %j, align 2
  %conv16 = zext i16 %12 to i64
  %cmp17 = icmp slt i64 %conv16, 101
  br i1 %cmp17, label %for.body.19, label %for.end.26

for.body.19:                                      ; preds = %for.cond.15
  %13 = load i64, i64* %currentmin, align 8
  %14 = load i16, i16* %j, align 2
  %idxprom20 = zext i16 %14 to i64
  %15 = load i16, i16* %i, align 2
  %idxprom21 = zext i16 %15 to i64
  %16 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx22 = getelementptr inbounds [101 x i64], [101 x i64]* %16, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx22, i32 0, i64 %idxprom20
  %17 = load i64, i64* %arrayidx23, align 8
  %sub = sub nsw i64 %17, %13
  store i64 %sub, i64* %arrayidx23, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.19
  %18 = load i16, i16* %j, align 2
  %inc25 = add i16 %18, 1
  store i16 %inc25, i16* %j, align 2
  br label %for.cond.15

for.end.26:                                       ; preds = %for.cond.15
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %19 = load i16, i16* %i, align 2
  %inc28 = add i16 %19, 1
  store i16 %inc28, i16* %i, align 2
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  store i16 0, i16* %j, align 2
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.72, %for.end.29
  %20 = load i16, i16* %j, align 2
  %conv31 = zext i16 %20 to i64
  %cmp32 = icmp slt i64 %conv31, 101
  br i1 %cmp32, label %for.body.34, label %for.end.74

for.body.34:                                      ; preds = %for.cond.30
  store i64 9223372036854775807, i64* %currentmin, align 8
  store i16 0, i16* %i, align 2
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.52, %for.body.34
  %21 = load i16, i16* %i, align 2
  %conv36 = zext i16 %21 to i64
  %cmp37 = icmp slt i64 %conv36, 101
  br i1 %cmp37, label %for.body.39, label %for.end.54

for.body.39:                                      ; preds = %for.cond.35
  %22 = load i16, i16* %j, align 2
  %idxprom40 = zext i16 %22 to i64
  %23 = load i16, i16* %i, align 2
  %idxprom41 = zext i16 %23 to i64
  %24 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx42 = getelementptr inbounds [101 x i64], [101 x i64]* %24, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx42, i32 0, i64 %idxprom40
  %25 = load i64, i64* %arrayidx43, align 8
  %26 = load i64, i64* %currentmin, align 8
  %cmp44 = icmp slt i64 %25, %26
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %for.body.39
  %27 = load i16, i16* %j, align 2
  %idxprom47 = zext i16 %27 to i64
  %28 = load i16, i16* %i, align 2
  %idxprom48 = zext i16 %28 to i64
  %29 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx49 = getelementptr inbounds [101 x i64], [101 x i64]* %29, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx49, i32 0, i64 %idxprom47
  %30 = load i64, i64* %arrayidx50, align 8
  store i64 %30, i64* %currentmin, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %for.body.39
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %31 = load i16, i16* %i, align 2
  %inc53 = add i16 %31, 1
  store i16 %inc53, i16* %i, align 2
  br label %for.cond.35

for.end.54:                                       ; preds = %for.cond.35
  %32 = load i64, i64* %currentmin, align 8
  %cmp55 = icmp ne i64 %32, 0
  br i1 %cmp55, label %if.then.57, label %if.end.71

if.then.57:                                       ; preds = %for.end.54
  store i16 0, i16* %i, align 2
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.68, %if.then.57
  %33 = load i16, i16* %i, align 2
  %conv59 = zext i16 %33 to i64
  %cmp60 = icmp slt i64 %conv59, 101
  br i1 %cmp60, label %for.body.62, label %for.end.70

for.body.62:                                      ; preds = %for.cond.58
  %34 = load i64, i64* %currentmin, align 8
  %35 = load i16, i16* %j, align 2
  %idxprom63 = zext i16 %35 to i64
  %36 = load i16, i16* %i, align 2
  %idxprom64 = zext i16 %36 to i64
  %37 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx65 = getelementptr inbounds [101 x i64], [101 x i64]* %37, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx65, i32 0, i64 %idxprom63
  %38 = load i64, i64* %arrayidx66, align 8
  %sub67 = sub nsw i64 %38, %34
  store i64 %sub67, i64* %arrayidx66, align 8
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.62
  %39 = load i16, i16* %i, align 2
  %inc69 = add i16 %39, 1
  store i16 %inc69, i16* %i, align 2
  br label %for.cond.58

for.end.70:                                       ; preds = %for.cond.58
  br label %if.end.71

if.end.71:                                        ; preds = %for.end.70, %for.end.54
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %40 = load i16, i16* %j, align 2
  %inc73 = add i16 %40, 1
  store i16 %inc73, i16* %j, align 2
  br label %for.cond.30

for.end.74:                                       ; preds = %for.cond.30
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @first_assignments([101 x i64]* %tableau, [101 x i16]* %assignedtableau) #0 {
entry:
  %retval = alloca i32, align 4
  %tableau.addr = alloca [101 x i64]*, align 8
  %assignedtableau.addr = alloca [101 x i16]*, align 8
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %k = alloca i16, align 2
  %numassigns = alloca i16, align 2
  %totnumassigns = alloca i16, align 2
  %numzeros = alloca i16, align 2
  %selected = alloca i32, align 4
  store [101 x i64]* %tableau, [101 x i64]** %tableau.addr, align 8
  store [101 x i16]* %assignedtableau, [101 x i16]** %assignedtableau.addr, align 8
  store i32 0, i32* %selected, align 4
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %0 = load i16, i16* %i, align 2
  %conv = zext i16 %0 to i64
  %cmp = icmp slt i64 %conv, 101
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %j, align 2
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %1 = load i16, i16* %j, align 2
  %conv3 = zext i16 %1 to i64
  %cmp4 = icmp slt i64 %conv3, 101
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %2 = load i16, i16* %j, align 2
  %idxprom = zext i16 %2 to i64
  %3 = load i16, i16* %i, align 2
  %idxprom7 = zext i16 %3 to i64
  %4 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx = getelementptr inbounds [101 x i16], [101 x i16]* %4, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx8, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %5 = load i16, i16* %j, align 2
  %inc = add i16 %5, 1
  store i16 %inc, i16* %j, align 2
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %6 = load i16, i16* %i, align 2
  %inc10 = add i16 %6, 1
  store i16 %inc10, i16* %i, align 2
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  store i16 0, i16* %totnumassigns, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.11
  store i16 0, i16* %numassigns, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.77, %do.body
  %7 = load i16, i16* %i, align 2
  %conv13 = zext i16 %7 to i64
  %cmp14 = icmp slt i64 %conv13, 101
  br i1 %cmp14, label %for.body.16, label %for.end.79

for.body.16:                                      ; preds = %for.cond.12
  store i16 0, i16* %numzeros, align 2
  store i16 0, i16* %j, align 2
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.39, %for.body.16
  %8 = load i16, i16* %j, align 2
  %conv18 = zext i16 %8 to i64
  %cmp19 = icmp slt i64 %conv18, 101
  br i1 %cmp19, label %for.body.21, label %for.end.41

for.body.21:                                      ; preds = %for.cond.17
  %9 = load i16, i16* %j, align 2
  %idxprom22 = zext i16 %9 to i64
  %10 = load i16, i16* %i, align 2
  %idxprom23 = zext i16 %10 to i64
  %11 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx24 = getelementptr inbounds [101 x i64], [101 x i64]* %11, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx24, i32 0, i64 %idxprom22
  %12 = load i64, i64* %arrayidx25, align 8
  %cmp26 = icmp eq i64 %12, 0
  br i1 %cmp26, label %if.then, label %if.end.38

if.then:                                          ; preds = %for.body.21
  %13 = load i16, i16* %j, align 2
  %idxprom28 = zext i16 %13 to i64
  %14 = load i16, i16* %i, align 2
  %idxprom29 = zext i16 %14 to i64
  %15 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx30 = getelementptr inbounds [101 x i16], [101 x i16]* %15, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx30, i32 0, i64 %idxprom28
  %16 = load i16, i16* %arrayidx31, align 2
  %conv32 = sext i16 %16 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %if.then
  %17 = load i16, i16* %numzeros, align 2
  %inc36 = add i16 %17, 1
  store i16 %inc36, i16* %numzeros, align 2
  %18 = load i16, i16* %j, align 2
  %conv37 = zext i16 %18 to i32
  store i32 %conv37, i32* %selected, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.35, %if.then
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %for.body.21
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %19 = load i16, i16* %j, align 2
  %inc40 = add i16 %19, 1
  store i16 %inc40, i16* %j, align 2
  br label %for.cond.17

for.end.41:                                       ; preds = %for.cond.17
  %20 = load i16, i16* %numzeros, align 2
  %conv42 = zext i16 %20 to i32
  %cmp43 = icmp eq i32 %conv42, 1
  br i1 %cmp43, label %if.then.45, label %if.end.76

if.then.45:                                       ; preds = %for.end.41
  %21 = load i16, i16* %numassigns, align 2
  %inc46 = add i16 %21, 1
  store i16 %inc46, i16* %numassigns, align 2
  %22 = load i16, i16* %totnumassigns, align 2
  %inc47 = add i16 %22, 1
  store i16 %inc47, i16* %totnumassigns, align 2
  %23 = load i32, i32* %selected, align 4
  %idxprom48 = sext i32 %23 to i64
  %24 = load i16, i16* %i, align 2
  %idxprom49 = zext i16 %24 to i64
  %25 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx50 = getelementptr inbounds [101 x i16], [101 x i16]* %25, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx50, i32 0, i64 %idxprom48
  store i16 1, i16* %arrayidx51, align 2
  store i16 0, i16* %k, align 2
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.73, %if.then.45
  %26 = load i16, i16* %k, align 2
  %conv53 = zext i16 %26 to i64
  %cmp54 = icmp slt i64 %conv53, 101
  br i1 %cmp54, label %for.body.56, label %for.end.75

for.body.56:                                      ; preds = %for.cond.52
  %27 = load i16, i16* %k, align 2
  %conv57 = zext i16 %27 to i32
  %28 = load i16, i16* %i, align 2
  %conv58 = zext i16 %28 to i32
  %cmp59 = icmp ne i32 %conv57, %conv58
  br i1 %cmp59, label %land.lhs.true, label %if.end.72

land.lhs.true:                                    ; preds = %for.body.56
  %29 = load i32, i32* %selected, align 4
  %idxprom61 = sext i32 %29 to i64
  %30 = load i16, i16* %k, align 2
  %idxprom62 = zext i16 %30 to i64
  %31 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx63 = getelementptr inbounds [101 x i64], [101 x i64]* %31, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx63, i32 0, i64 %idxprom61
  %32 = load i64, i64* %arrayidx64, align 8
  %cmp65 = icmp eq i64 %32, 0
  br i1 %cmp65, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %land.lhs.true
  %33 = load i32, i32* %selected, align 4
  %idxprom68 = sext i32 %33 to i64
  %34 = load i16, i16* %k, align 2
  %idxprom69 = zext i16 %34 to i64
  %35 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx70 = getelementptr inbounds [101 x i16], [101 x i16]* %35, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx70, i32 0, i64 %idxprom68
  store i16 2, i16* %arrayidx71, align 2
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.67, %land.lhs.true, %for.body.56
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %36 = load i16, i16* %k, align 2
  %inc74 = add i16 %36, 1
  store i16 %inc74, i16* %k, align 2
  br label %for.cond.52

for.end.75:                                       ; preds = %for.cond.52
  br label %if.end.76

if.end.76:                                        ; preds = %for.end.75, %for.end.41
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %37 = load i16, i16* %i, align 2
  %inc78 = add i16 %37, 1
  store i16 %inc78, i16* %i, align 2
  br label %for.cond.12

for.end.79:                                       ; preds = %for.cond.12
  store i16 0, i16* %j, align 2
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.148, %for.end.79
  %38 = load i16, i16* %j, align 2
  %conv81 = zext i16 %38 to i64
  %cmp82 = icmp slt i64 %conv81, 101
  br i1 %cmp82, label %for.body.84, label %for.end.150

for.body.84:                                      ; preds = %for.cond.80
  store i16 0, i16* %numzeros, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.109, %for.body.84
  %39 = load i16, i16* %i, align 2
  %conv86 = zext i16 %39 to i64
  %cmp87 = icmp slt i64 %conv86, 101
  br i1 %cmp87, label %for.body.89, label %for.end.111

for.body.89:                                      ; preds = %for.cond.85
  %40 = load i16, i16* %j, align 2
  %idxprom90 = zext i16 %40 to i64
  %41 = load i16, i16* %i, align 2
  %idxprom91 = zext i16 %41 to i64
  %42 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx92 = getelementptr inbounds [101 x i64], [101 x i64]* %42, i64 %idxprom91
  %arrayidx93 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx92, i32 0, i64 %idxprom90
  %43 = load i64, i64* %arrayidx93, align 8
  %cmp94 = icmp eq i64 %43, 0
  br i1 %cmp94, label %if.then.96, label %if.end.108

if.then.96:                                       ; preds = %for.body.89
  %44 = load i16, i16* %j, align 2
  %idxprom97 = zext i16 %44 to i64
  %45 = load i16, i16* %i, align 2
  %idxprom98 = zext i16 %45 to i64
  %46 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx99 = getelementptr inbounds [101 x i16], [101 x i16]* %46, i64 %idxprom98
  %arrayidx100 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx99, i32 0, i64 %idxprom97
  %47 = load i16, i16* %arrayidx100, align 2
  %conv101 = sext i16 %47 to i32
  %cmp102 = icmp eq i32 %conv101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %if.then.96
  %48 = load i16, i16* %numzeros, align 2
  %inc105 = add i16 %48, 1
  store i16 %inc105, i16* %numzeros, align 2
  %49 = load i16, i16* %i, align 2
  %conv106 = zext i16 %49 to i32
  store i32 %conv106, i32* %selected, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.104, %if.then.96
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %for.body.89
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %50 = load i16, i16* %i, align 2
  %inc110 = add i16 %50, 1
  store i16 %inc110, i16* %i, align 2
  br label %for.cond.85

for.end.111:                                      ; preds = %for.cond.85
  %51 = load i16, i16* %numzeros, align 2
  %conv112 = zext i16 %51 to i32
  %cmp113 = icmp eq i32 %conv112, 1
  br i1 %cmp113, label %if.then.115, label %if.end.147

if.then.115:                                      ; preds = %for.end.111
  %52 = load i16, i16* %numassigns, align 2
  %inc116 = add i16 %52, 1
  store i16 %inc116, i16* %numassigns, align 2
  %53 = load i16, i16* %totnumassigns, align 2
  %inc117 = add i16 %53, 1
  store i16 %inc117, i16* %totnumassigns, align 2
  %54 = load i16, i16* %j, align 2
  %idxprom118 = zext i16 %54 to i64
  %55 = load i32, i32* %selected, align 4
  %idxprom119 = sext i32 %55 to i64
  %56 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx120 = getelementptr inbounds [101 x i16], [101 x i16]* %56, i64 %idxprom119
  %arrayidx121 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx120, i32 0, i64 %idxprom118
  store i16 1, i16* %arrayidx121, align 2
  store i16 0, i16* %k, align 2
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.144, %if.then.115
  %57 = load i16, i16* %k, align 2
  %conv123 = zext i16 %57 to i64
  %cmp124 = icmp slt i64 %conv123, 101
  br i1 %cmp124, label %for.body.126, label %for.end.146

for.body.126:                                     ; preds = %for.cond.122
  %58 = load i16, i16* %k, align 2
  %conv127 = zext i16 %58 to i32
  %59 = load i16, i16* %j, align 2
  %conv128 = zext i16 %59 to i32
  %cmp129 = icmp ne i32 %conv127, %conv128
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.143

land.lhs.true.131:                                ; preds = %for.body.126
  %60 = load i16, i16* %k, align 2
  %idxprom132 = zext i16 %60 to i64
  %61 = load i32, i32* %selected, align 4
  %idxprom133 = sext i32 %61 to i64
  %62 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx134 = getelementptr inbounds [101 x i64], [101 x i64]* %62, i64 %idxprom133
  %arrayidx135 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx134, i32 0, i64 %idxprom132
  %63 = load i64, i64* %arrayidx135, align 8
  %cmp136 = icmp eq i64 %63, 0
  br i1 %cmp136, label %if.then.138, label %if.end.143

if.then.138:                                      ; preds = %land.lhs.true.131
  %64 = load i16, i16* %k, align 2
  %idxprom139 = zext i16 %64 to i64
  %65 = load i32, i32* %selected, align 4
  %idxprom140 = sext i32 %65 to i64
  %66 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx141 = getelementptr inbounds [101 x i16], [101 x i16]* %66, i64 %idxprom140
  %arrayidx142 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx141, i32 0, i64 %idxprom139
  store i16 2, i16* %arrayidx142, align 2
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.138, %land.lhs.true.131, %for.body.126
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.143
  %67 = load i16, i16* %k, align 2
  %inc145 = add i16 %67, 1
  store i16 %inc145, i16* %k, align 2
  br label %for.cond.122

for.end.146:                                      ; preds = %for.cond.122
  br label %if.end.147

if.end.147:                                       ; preds = %for.end.146, %for.end.111
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %68 = load i16, i16* %j, align 2
  %inc149 = add i16 %68, 1
  store i16 %inc149, i16* %j, align 2
  br label %for.cond.80

for.end.150:                                      ; preds = %for.cond.80
  br label %do.cond

do.cond:                                          ; preds = %for.end.150
  %69 = load i16, i16* %numassigns, align 2
  %conv151 = zext i16 %69 to i32
  %cmp152 = icmp ne i32 %conv151, 0
  br i1 %cmp152, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %70 = load i16, i16* %totnumassigns, align 2
  %conv154 = zext i16 %70 to i64
  %cmp155 = icmp eq i64 %conv154, 101
  br i1 %cmp155, label %if.then.157, label %if.end.159

if.then.157:                                      ; preds = %do.end
  %71 = load i16, i16* %totnumassigns, align 2
  %conv158 = zext i16 %71 to i32
  store i32 %conv158, i32* %retval
  br label %return

if.end.159:                                       ; preds = %do.end
  store i16 0, i16* %i, align 2
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.248, %if.end.159
  %72 = load i16, i16* %i, align 2
  %conv161 = zext i16 %72 to i64
  %cmp162 = icmp slt i64 %conv161, 101
  br i1 %cmp162, label %for.body.164, label %for.end.250

for.body.164:                                     ; preds = %for.cond.160
  store i32 -1, i32* %selected, align 4
  store i16 0, i16* %j, align 2
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.187, %for.body.164
  %73 = load i16, i16* %j, align 2
  %conv166 = zext i16 %73 to i64
  %cmp167 = icmp slt i64 %conv166, 101
  br i1 %cmp167, label %for.body.169, label %for.end.189

for.body.169:                                     ; preds = %for.cond.165
  %74 = load i16, i16* %j, align 2
  %idxprom170 = zext i16 %74 to i64
  %75 = load i16, i16* %i, align 2
  %idxprom171 = zext i16 %75 to i64
  %76 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx172 = getelementptr inbounds [101 x i64], [101 x i64]* %76, i64 %idxprom171
  %arrayidx173 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx172, i32 0, i64 %idxprom170
  %77 = load i64, i64* %arrayidx173, align 8
  %cmp174 = icmp eq i64 %77, 0
  br i1 %cmp174, label %land.lhs.true.176, label %if.end.186

land.lhs.true.176:                                ; preds = %for.body.169
  %78 = load i16, i16* %j, align 2
  %idxprom177 = zext i16 %78 to i64
  %79 = load i16, i16* %i, align 2
  %idxprom178 = zext i16 %79 to i64
  %80 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx179 = getelementptr inbounds [101 x i16], [101 x i16]* %80, i64 %idxprom178
  %arrayidx180 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx179, i32 0, i64 %idxprom177
  %81 = load i16, i16* %arrayidx180, align 2
  %conv181 = sext i16 %81 to i32
  %cmp182 = icmp eq i32 %conv181, 0
  br i1 %cmp182, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %land.lhs.true.176
  %82 = load i16, i16* %j, align 2
  %conv185 = zext i16 %82 to i32
  store i32 %conv185, i32* %selected, align 4
  br label %for.end.189

if.end.186:                                       ; preds = %land.lhs.true.176, %for.body.169
  br label %for.inc.187

for.inc.187:                                      ; preds = %if.end.186
  %83 = load i16, i16* %j, align 2
  %inc188 = add i16 %83, 1
  store i16 %inc188, i16* %j, align 2
  br label %for.cond.165

for.end.189:                                      ; preds = %if.then.184, %for.cond.165
  %84 = load i32, i32* %selected, align 4
  %cmp190 = icmp ne i32 %84, -1
  br i1 %cmp190, label %if.then.192, label %if.end.247

if.then.192:                                      ; preds = %for.end.189
  %85 = load i32, i32* %selected, align 4
  %idxprom193 = sext i32 %85 to i64
  %86 = load i16, i16* %i, align 2
  %idxprom194 = zext i16 %86 to i64
  %87 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx195 = getelementptr inbounds [101 x i16], [101 x i16]* %87, i64 %idxprom194
  %arrayidx196 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx195, i32 0, i64 %idxprom193
  store i16 1, i16* %arrayidx196, align 2
  %88 = load i16, i16* %totnumassigns, align 2
  %inc197 = add i16 %88, 1
  store i16 %inc197, i16* %totnumassigns, align 2
  store i16 0, i16* %k, align 2
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.219, %if.then.192
  %89 = load i16, i16* %k, align 2
  %conv199 = zext i16 %89 to i64
  %cmp200 = icmp slt i64 %conv199, 101
  br i1 %cmp200, label %for.body.202, label %for.end.221

for.body.202:                                     ; preds = %for.cond.198
  %90 = load i16, i16* %k, align 2
  %conv203 = zext i16 %90 to i32
  %91 = load i32, i32* %selected, align 4
  %cmp204 = icmp ne i32 %conv203, %91
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.218

land.lhs.true.206:                                ; preds = %for.body.202
  %92 = load i16, i16* %k, align 2
  %idxprom207 = zext i16 %92 to i64
  %93 = load i16, i16* %i, align 2
  %idxprom208 = zext i16 %93 to i64
  %94 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx209 = getelementptr inbounds [101 x i64], [101 x i64]* %94, i64 %idxprom208
  %arrayidx210 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx209, i32 0, i64 %idxprom207
  %95 = load i64, i64* %arrayidx210, align 8
  %cmp211 = icmp eq i64 %95, 0
  br i1 %cmp211, label %if.then.213, label %if.end.218

if.then.213:                                      ; preds = %land.lhs.true.206
  %96 = load i16, i16* %k, align 2
  %idxprom214 = zext i16 %96 to i64
  %97 = load i16, i16* %i, align 2
  %idxprom215 = zext i16 %97 to i64
  %98 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx216 = getelementptr inbounds [101 x i16], [101 x i16]* %98, i64 %idxprom215
  %arrayidx217 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx216, i32 0, i64 %idxprom214
  store i16 2, i16* %arrayidx217, align 2
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.213, %land.lhs.true.206, %for.body.202
  br label %for.inc.219

for.inc.219:                                      ; preds = %if.end.218
  %99 = load i16, i16* %k, align 2
  %inc220 = add i16 %99, 1
  store i16 %inc220, i16* %k, align 2
  br label %for.cond.198

for.end.221:                                      ; preds = %for.cond.198
  store i16 0, i16* %k, align 2
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.244, %for.end.221
  %100 = load i16, i16* %k, align 2
  %conv223 = zext i16 %100 to i64
  %cmp224 = icmp slt i64 %conv223, 101
  br i1 %cmp224, label %for.body.226, label %for.end.246

for.body.226:                                     ; preds = %for.cond.222
  %101 = load i16, i16* %k, align 2
  %conv227 = zext i16 %101 to i32
  %102 = load i16, i16* %i, align 2
  %conv228 = zext i16 %102 to i32
  %cmp229 = icmp ne i32 %conv227, %conv228
  br i1 %cmp229, label %land.lhs.true.231, label %if.end.243

land.lhs.true.231:                                ; preds = %for.body.226
  %103 = load i32, i32* %selected, align 4
  %idxprom232 = sext i32 %103 to i64
  %104 = load i16, i16* %k, align 2
  %idxprom233 = zext i16 %104 to i64
  %105 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx234 = getelementptr inbounds [101 x i64], [101 x i64]* %105, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx234, i32 0, i64 %idxprom232
  %106 = load i64, i64* %arrayidx235, align 8
  %cmp236 = icmp eq i64 %106, 0
  br i1 %cmp236, label %if.then.238, label %if.end.243

if.then.238:                                      ; preds = %land.lhs.true.231
  %107 = load i32, i32* %selected, align 4
  %idxprom239 = sext i32 %107 to i64
  %108 = load i16, i16* %k, align 2
  %idxprom240 = zext i16 %108 to i64
  %109 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx241 = getelementptr inbounds [101 x i16], [101 x i16]* %109, i64 %idxprom240
  %arrayidx242 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx241, i32 0, i64 %idxprom239
  store i16 2, i16* %arrayidx242, align 2
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.238, %land.lhs.true.231, %for.body.226
  br label %for.inc.244

for.inc.244:                                      ; preds = %if.end.243
  %110 = load i16, i16* %k, align 2
  %inc245 = add i16 %110, 1
  store i16 %inc245, i16* %k, align 2
  br label %for.cond.222

for.end.246:                                      ; preds = %for.cond.222
  br label %if.end.247

if.end.247:                                       ; preds = %for.end.246, %for.end.189
  br label %for.inc.248

for.inc.248:                                      ; preds = %if.end.247
  %111 = load i16, i16* %i, align 2
  %inc249 = add i16 %111, 1
  store i16 %inc249, i16* %i, align 2
  br label %for.cond.160

for.end.250:                                      ; preds = %for.cond.160
  %112 = load i16, i16* %totnumassigns, align 2
  %conv251 = zext i16 %112 to i32
  store i32 %conv251, i32* %retval
  br label %return

return:                                           ; preds = %for.end.250, %if.then.157
  %113 = load i32, i32* %retval
  ret i32 %113
}

; Function Attrs: nounwind uwtable
define internal void @second_assignments([101 x i64]* %tableau, [101 x i16]* %assignedtableau) #0 {
entry:
  %tableau.addr = alloca [101 x i64]*, align 8
  %assignedtableau.addr = alloca [101 x i16]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %linesrow = alloca [101 x i16], align 16
  %linescol = alloca [101 x i16], align 16
  %smallest = alloca i64, align 8
  %numassigns = alloca i16, align 2
  %newrows = alloca i16, align 2
  store [101 x i64]* %tableau, [101 x i64]** %tableau.addr, align 8
  store [101 x i16]* %assignedtableau, [101 x i16]** %assignedtableau.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp slt i64 %conv, 101
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [101 x i16], [101 x i16]* %linesrow, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.9, %for.end
  %3 = load i32, i32* %i, align 4
  %conv3 = sext i32 %3 to i64
  %cmp4 = icmp slt i64 %conv3, 101
  br i1 %cmp4, label %for.body.6, label %for.end.11

for.body.6:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [101 x i16], [101 x i16]* %linescol, i32 0, i64 %idxprom7
  store i16 0, i16* %arrayidx8, align 2
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.6
  %5 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %5, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond.2

for.end.11:                                       ; preds = %for.cond.2
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.40, %for.end.11
  %6 = load i32, i32* %i, align 4
  %conv13 = sext i32 %6 to i64
  %cmp14 = icmp slt i64 %conv13, 101
  br i1 %cmp14, label %for.body.16, label %for.end.42

for.body.16:                                      ; preds = %for.cond.12
  store i16 0, i16* %numassigns, align 2
  store i32 0, i32* %j, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.30, %for.body.16
  %7 = load i32, i32* %j, align 4
  %conv18 = sext i32 %7 to i64
  %cmp19 = icmp slt i64 %conv18, 101
  br i1 %cmp19, label %for.body.21, label %for.end.32

for.body.21:                                      ; preds = %for.cond.17
  %8 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %9 to i64
  %10 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx24 = getelementptr inbounds [101 x i16], [101 x i16]* %10, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx24, i32 0, i64 %idxprom22
  %11 = load i16, i16* %arrayidx25, align 2
  %conv26 = sext i16 %11 to i32
  %cmp27 = icmp eq i32 %conv26, 1
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.21
  %12 = load i16, i16* %numassigns, align 2
  %inc29 = add i16 %12, 1
  store i16 %inc29, i16* %numassigns, align 2
  br label %for.end.32

if.end:                                           ; preds = %for.body.21
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %13, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond.17

for.end.32:                                       ; preds = %if.then, %for.cond.17
  %14 = load i16, i16* %numassigns, align 2
  %conv33 = zext i16 %14 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %for.end.32
  %15 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %15 to i64
  %arrayidx38 = getelementptr inbounds [101 x i16], [101 x i16]* %linesrow, i32 0, i64 %idxprom37
  store i16 1, i16* %arrayidx38, align 2
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %for.end.32
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %16 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %16, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.12

for.end.42:                                       ; preds = %for.cond.12
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.42
  store i16 0, i16* %newrows, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.73, %do.body
  %17 = load i32, i32* %i, align 4
  %conv44 = sext i32 %17 to i64
  %cmp45 = icmp slt i64 %conv44, 101
  br i1 %cmp45, label %for.body.47, label %for.end.75

for.body.47:                                      ; preds = %for.cond.43
  %18 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %18 to i64
  %arrayidx49 = getelementptr inbounds [101 x i16], [101 x i16]* %linesrow, i32 0, i64 %idxprom48
  %19 = load i16, i16* %arrayidx49, align 2
  %conv50 = sext i16 %19 to i32
  %cmp51 = icmp eq i32 %conv50, 1
  br i1 %cmp51, label %if.then.53, label %if.end.72

if.then.53:                                       ; preds = %for.body.47
  store i32 0, i32* %j, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.69, %if.then.53
  %20 = load i32, i32* %j, align 4
  %conv55 = sext i32 %20 to i64
  %cmp56 = icmp slt i64 %conv55, 101
  br i1 %cmp56, label %for.body.58, label %for.end.71

for.body.58:                                      ; preds = %for.cond.54
  %21 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %22 to i64
  %23 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx61 = getelementptr inbounds [101 x i64], [101 x i64]* %23, i64 %idxprom60
  %arrayidx62 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx61, i32 0, i64 %idxprom59
  %24 = load i64, i64* %arrayidx62, align 8
  %cmp63 = icmp eq i64 %24, 0
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %for.body.58
  %25 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %25 to i64
  %arrayidx67 = getelementptr inbounds [101 x i16], [101 x i16]* %linescol, i32 0, i64 %idxprom66
  store i16 1, i16* %arrayidx67, align 2
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %for.body.58
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %26 = load i32, i32* %j, align 4
  %inc70 = add nsw i32 %26, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond.54

for.end.71:                                       ; preds = %for.cond.54
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.71, %for.body.47
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %27 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %27, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.43

for.end.75:                                       ; preds = %for.cond.43
  store i32 0, i32* %j, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.113, %for.end.75
  %28 = load i32, i32* %j, align 4
  %conv77 = sext i32 %28 to i64
  %cmp78 = icmp slt i64 %conv77, 101
  br i1 %cmp78, label %for.body.80, label %for.end.115

for.body.80:                                      ; preds = %for.cond.76
  %29 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %29 to i64
  %arrayidx82 = getelementptr inbounds [101 x i16], [101 x i16]* %linescol, i32 0, i64 %idxprom81
  %30 = load i16, i16* %arrayidx82, align 2
  %conv83 = sext i16 %30 to i32
  %cmp84 = icmp eq i32 %conv83, 1
  br i1 %cmp84, label %if.then.86, label %if.end.112

if.then.86:                                       ; preds = %for.body.80
  store i32 0, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.109, %if.then.86
  %31 = load i32, i32* %i, align 4
  %conv88 = sext i32 %31 to i64
  %cmp89 = icmp slt i64 %conv88, 101
  br i1 %cmp89, label %for.body.91, label %for.end.111

for.body.91:                                      ; preds = %for.cond.87
  %32 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %33 to i64
  %34 = load [101 x i16]*, [101 x i16]** %assignedtableau.addr, align 8
  %arrayidx94 = getelementptr inbounds [101 x i16], [101 x i16]* %34, i64 %idxprom93
  %arrayidx95 = getelementptr inbounds [101 x i16], [101 x i16]* %arrayidx94, i32 0, i64 %idxprom92
  %35 = load i16, i16* %arrayidx95, align 2
  %conv96 = sext i16 %35 to i32
  %cmp97 = icmp eq i32 %conv96, 1
  br i1 %cmp97, label %land.lhs.true, label %if.end.108

land.lhs.true:                                    ; preds = %for.body.91
  %36 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %36 to i64
  %arrayidx100 = getelementptr inbounds [101 x i16], [101 x i16]* %linesrow, i32 0, i64 %idxprom99
  %37 = load i16, i16* %arrayidx100, align 2
  %conv101 = sext i16 %37 to i32
  %cmp102 = icmp ne i32 %conv101, 1
  br i1 %cmp102, label %if.then.104, label %if.end.108

if.then.104:                                      ; preds = %land.lhs.true
  %38 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %38 to i64
  %arrayidx106 = getelementptr inbounds [101 x i16], [101 x i16]* %linesrow, i32 0, i64 %idxprom105
  store i16 1, i16* %arrayidx106, align 2
  %39 = load i16, i16* %newrows, align 2
  %inc107 = add i16 %39, 1
  store i16 %inc107, i16* %newrows, align 2
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.104, %land.lhs.true, %for.body.91
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %40 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %40, 1
  store i32 %inc110, i32* %i, align 4
  br label %for.cond.87

for.end.111:                                      ; preds = %for.cond.87
  br label %if.end.112

if.end.112:                                       ; preds = %for.end.111, %for.body.80
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %41 = load i32, i32* %j, align 4
  %inc114 = add nsw i32 %41, 1
  store i32 %inc114, i32* %j, align 4
  br label %for.cond.76

for.end.115:                                      ; preds = %for.cond.76
  br label %do.cond

do.cond:                                          ; preds = %for.end.115
  %42 = load i16, i16* %newrows, align 2
  %conv116 = zext i16 %42 to i32
  %cmp117 = icmp ne i32 %conv116, 0
  br i1 %cmp117, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i64 9223372036854775807, i64* %smallest, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.158, %do.end
  %43 = load i32, i32* %i, align 4
  %conv120 = sext i32 %43 to i64
  %cmp121 = icmp slt i64 %conv120, 101
  br i1 %cmp121, label %for.body.123, label %for.end.160

for.body.123:                                     ; preds = %for.cond.119
  %44 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %44 to i64
  %arrayidx125 = getelementptr inbounds [101 x i16], [101 x i16]* %linesrow, i32 0, i64 %idxprom124
  %45 = load i16, i16* %arrayidx125, align 2
  %conv126 = sext i16 %45 to i32
  %cmp127 = icmp ne i32 %conv126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.157

if.then.129:                                      ; preds = %for.body.123
  store i32 0, i32* %j, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.154, %if.then.129
  %46 = load i32, i32* %j, align 4
  %conv131 = sext i32 %46 to i64
  %cmp132 = icmp slt i64 %conv131, 101
  br i1 %cmp132, label %for.body.134, label %for.end.156

for.body.134:                                     ; preds = %for.cond.130
  %47 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %47 to i64
  %arrayidx136 = getelementptr inbounds [101 x i16], [101 x i16]* %linescol, i32 0, i64 %idxprom135
  %48 = load i16, i16* %arrayidx136, align 2
  %conv137 = sext i16 %48 to i32
  %cmp138 = icmp ne i32 %conv137, 1
  br i1 %cmp138, label %if.then.140, label %if.end.153

if.then.140:                                      ; preds = %for.body.134
  %49 = load i32, i32* %j, align 4
  %idxprom141 = sext i32 %49 to i64
  %50 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %50 to i64
  %51 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx143 = getelementptr inbounds [101 x i64], [101 x i64]* %51, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx143, i32 0, i64 %idxprom141
  %52 = load i64, i64* %arrayidx144, align 8
  %53 = load i64, i64* %smallest, align 8
  %cmp145 = icmp slt i64 %52, %53
  br i1 %cmp145, label %if.then.147, label %if.end.152

if.then.147:                                      ; preds = %if.then.140
  %54 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %54 to i64
  %55 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %55 to i64
  %56 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx150 = getelementptr inbounds [101 x i64], [101 x i64]* %56, i64 %idxprom149
  %arrayidx151 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx150, i32 0, i64 %idxprom148
  %57 = load i64, i64* %arrayidx151, align 8
  store i64 %57, i64* %smallest, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.147, %if.then.140
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %for.body.134
  br label %for.inc.154

for.inc.154:                                      ; preds = %if.end.153
  %58 = load i32, i32* %j, align 4
  %inc155 = add nsw i32 %58, 1
  store i32 %inc155, i32* %j, align 4
  br label %for.cond.130

for.end.156:                                      ; preds = %for.cond.130
  br label %if.end.157

if.end.157:                                       ; preds = %for.end.156, %for.body.123
  br label %for.inc.158

for.inc.158:                                      ; preds = %if.end.157
  %59 = load i32, i32* %i, align 4
  %inc159 = add nsw i32 %59, 1
  store i32 %inc159, i32* %i, align 4
  br label %for.cond.119

for.end.160:                                      ; preds = %for.cond.119
  store i32 0, i32* %i, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.192, %for.end.160
  %60 = load i32, i32* %i, align 4
  %conv162 = sext i32 %60 to i64
  %cmp163 = icmp slt i64 %conv162, 101
  br i1 %cmp163, label %for.body.165, label %for.end.194

for.body.165:                                     ; preds = %for.cond.161
  %61 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %61 to i64
  %arrayidx167 = getelementptr inbounds [101 x i16], [101 x i16]* %linesrow, i32 0, i64 %idxprom166
  %62 = load i16, i16* %arrayidx167, align 2
  %conv168 = sext i16 %62 to i32
  %cmp169 = icmp ne i32 %conv168, 0
  br i1 %cmp169, label %if.then.171, label %if.end.191

if.then.171:                                      ; preds = %for.body.165
  store i32 0, i32* %j, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.188, %if.then.171
  %63 = load i32, i32* %j, align 4
  %conv173 = sext i32 %63 to i64
  %cmp174 = icmp slt i64 %conv173, 101
  br i1 %cmp174, label %for.body.176, label %for.end.190

for.body.176:                                     ; preds = %for.cond.172
  %64 = load i32, i32* %j, align 4
  %idxprom177 = sext i32 %64 to i64
  %arrayidx178 = getelementptr inbounds [101 x i16], [101 x i16]* %linescol, i32 0, i64 %idxprom177
  %65 = load i16, i16* %arrayidx178, align 2
  %conv179 = sext i16 %65 to i32
  %cmp180 = icmp ne i32 %conv179, 1
  br i1 %cmp180, label %if.then.182, label %if.end.187

if.then.182:                                      ; preds = %for.body.176
  %66 = load i64, i64* %smallest, align 8
  %67 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %67 to i64
  %68 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %68 to i64
  %69 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx185 = getelementptr inbounds [101 x i64], [101 x i64]* %69, i64 %idxprom184
  %arrayidx186 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx185, i32 0, i64 %idxprom183
  %70 = load i64, i64* %arrayidx186, align 8
  %sub = sub nsw i64 %70, %66
  store i64 %sub, i64* %arrayidx186, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.182, %for.body.176
  br label %for.inc.188

for.inc.188:                                      ; preds = %if.end.187
  %71 = load i32, i32* %j, align 4
  %inc189 = add nsw i32 %71, 1
  store i32 %inc189, i32* %j, align 4
  br label %for.cond.172

for.end.190:                                      ; preds = %for.cond.172
  br label %if.end.191

if.end.191:                                       ; preds = %for.end.190, %for.body.165
  br label %for.inc.192

for.inc.192:                                      ; preds = %if.end.191
  %72 = load i32, i32* %i, align 4
  %inc193 = add nsw i32 %72, 1
  store i32 %inc193, i32* %i, align 4
  br label %for.cond.161

for.end.194:                                      ; preds = %for.cond.161
  store i32 0, i32* %i, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.226, %for.end.194
  %73 = load i32, i32* %i, align 4
  %conv196 = sext i32 %73 to i64
  %cmp197 = icmp slt i64 %conv196, 101
  br i1 %cmp197, label %for.body.199, label %for.end.228

for.body.199:                                     ; preds = %for.cond.195
  %74 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %74 to i64
  %arrayidx201 = getelementptr inbounds [101 x i16], [101 x i16]* %linesrow, i32 0, i64 %idxprom200
  %75 = load i16, i16* %arrayidx201, align 2
  %conv202 = sext i16 %75 to i32
  %cmp203 = icmp eq i32 %conv202, 0
  br i1 %cmp203, label %if.then.205, label %if.end.225

if.then.205:                                      ; preds = %for.body.199
  store i32 0, i32* %j, align 4
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.222, %if.then.205
  %76 = load i32, i32* %j, align 4
  %conv207 = sext i32 %76 to i64
  %cmp208 = icmp slt i64 %conv207, 101
  br i1 %cmp208, label %for.body.210, label %for.end.224

for.body.210:                                     ; preds = %for.cond.206
  %77 = load i32, i32* %j, align 4
  %idxprom211 = sext i32 %77 to i64
  %arrayidx212 = getelementptr inbounds [101 x i16], [101 x i16]* %linescol, i32 0, i64 %idxprom211
  %78 = load i16, i16* %arrayidx212, align 2
  %conv213 = sext i16 %78 to i32
  %cmp214 = icmp eq i32 %conv213, 1
  br i1 %cmp214, label %if.then.216, label %if.end.221

if.then.216:                                      ; preds = %for.body.210
  %79 = load i64, i64* %smallest, align 8
  %80 = load i32, i32* %j, align 4
  %idxprom217 = sext i32 %80 to i64
  %81 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %81 to i64
  %82 = load [101 x i64]*, [101 x i64]** %tableau.addr, align 8
  %arrayidx219 = getelementptr inbounds [101 x i64], [101 x i64]* %82, i64 %idxprom218
  %arrayidx220 = getelementptr inbounds [101 x i64], [101 x i64]* %arrayidx219, i32 0, i64 %idxprom217
  %83 = load i64, i64* %arrayidx220, align 8
  %add = add nsw i64 %83, %79
  store i64 %add, i64* %arrayidx220, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.216, %for.body.210
  br label %for.inc.222

for.inc.222:                                      ; preds = %if.end.221
  %84 = load i32, i32* %j, align 4
  %inc223 = add nsw i32 %84, 1
  store i32 %inc223, i32* %j, align 4
  br label %for.cond.206

for.end.224:                                      ; preds = %for.cond.206
  br label %if.end.225

if.end.225:                                       ; preds = %for.end.224, %for.body.199
  br label %for.inc.226

for.inc.226:                                      ; preds = %if.end.225
  %85 = load i32, i32* %i, align 4
  %inc227 = add nsw i32 %85, 1
  store i32 %inc227, i32* %i, align 4
  br label %for.cond.195

for.end.228:                                      ; preds = %for.cond.195
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cipher_idea(i16* %in, i16* %out, i16* %Z) #0 {
entry:
  %in.addr = alloca i16*, align 8
  %out.addr = alloca i16*, align 8
  %Z.addr = alloca i16*, align 8
  %x1 = alloca i16, align 2
  %x2 = alloca i16, align 2
  %x3 = alloca i16, align 2
  %x4 = alloca i16, align 2
  %t1 = alloca i16, align 2
  %t2 = alloca i16, align 2
  %r = alloca i32, align 4
  store i16* %in, i16** %in.addr, align 8
  store i16* %out, i16** %out.addr, align 8
  store i16* %Z, i16** %Z.addr, align 8
  store i32 8, i32* %r, align 4
  %0 = load i16*, i16** %in.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %0, i32 1
  store i16* %incdec.ptr, i16** %in.addr, align 8
  %1 = load i16, i16* %0, align 2
  store i16 %1, i16* %x1, align 2
  %2 = load i16*, i16** %in.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr1, i16** %in.addr, align 8
  %3 = load i16, i16* %2, align 2
  store i16 %3, i16* %x2, align 2
  %4 = load i16*, i16** %in.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr2, i16** %in.addr, align 8
  %5 = load i16, i16* %4, align 2
  store i16 %5, i16* %x3, align 2
  %6 = load i16*, i16** %in.addr, align 8
  %7 = load i16, i16* %6, align 2
  store i16 %7, i16* %x4, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %8 = load i16, i16* %x1, align 2
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 65535
  %conv3 = trunc i32 %and to i16
  %9 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr4, i16** %Z.addr, align 8
  %10 = load i16, i16* %9, align 2
  %call = call zeroext i16 @mul(i16 zeroext %conv3, i16 zeroext %10)
  store i16 %call, i16* %x1, align 2
  %11 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i16, i16* %11, i32 1
  store i16* %incdec.ptr5, i16** %Z.addr, align 8
  %12 = load i16, i16* %11, align 2
  %conv6 = zext i16 %12 to i32
  %13 = load i16, i16* %x2, align 2
  %conv7 = zext i16 %13 to i32
  %add = add nsw i32 %conv7, %conv6
  %conv8 = trunc i32 %add to i16
  store i16 %conv8, i16* %x2, align 2
  %14 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %incdec.ptr9, i16** %Z.addr, align 8
  %15 = load i16, i16* %14, align 2
  %conv10 = zext i16 %15 to i32
  %16 = load i16, i16* %x3, align 2
  %conv11 = zext i16 %16 to i32
  %add12 = add nsw i32 %conv11, %conv10
  %conv13 = trunc i32 %add12 to i16
  store i16 %conv13, i16* %x3, align 2
  %17 = load i16, i16* %x4, align 2
  %conv14 = zext i16 %17 to i32
  %and15 = and i32 %conv14, 65535
  %conv16 = trunc i32 %and15 to i16
  %18 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr17, i16** %Z.addr, align 8
  %19 = load i16, i16* %18, align 2
  %call18 = call zeroext i16 @mul(i16 zeroext %conv16, i16 zeroext %19)
  store i16 %call18, i16* %x4, align 2
  %20 = load i16, i16* %x1, align 2
  %conv19 = zext i16 %20 to i32
  %21 = load i16, i16* %x3, align 2
  %conv20 = zext i16 %21 to i32
  %xor = xor i32 %conv19, %conv20
  %conv21 = trunc i32 %xor to i16
  store i16 %conv21, i16* %t2, align 2
  %22 = load i16, i16* %t2, align 2
  %conv22 = zext i16 %22 to i32
  %and23 = and i32 %conv22, 65535
  %conv24 = trunc i32 %and23 to i16
  %23 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %incdec.ptr25, i16** %Z.addr, align 8
  %24 = load i16, i16* %23, align 2
  %call26 = call zeroext i16 @mul(i16 zeroext %conv24, i16 zeroext %24)
  store i16 %call26, i16* %t2, align 2
  %25 = load i16, i16* %t2, align 2
  %conv27 = zext i16 %25 to i32
  %26 = load i16, i16* %x2, align 2
  %conv28 = zext i16 %26 to i32
  %27 = load i16, i16* %x4, align 2
  %conv29 = zext i16 %27 to i32
  %xor30 = xor i32 %conv28, %conv29
  %add31 = add nsw i32 %conv27, %xor30
  %conv32 = trunc i32 %add31 to i16
  store i16 %conv32, i16* %t1, align 2
  %28 = load i16, i16* %t1, align 2
  %conv33 = zext i16 %28 to i32
  %and34 = and i32 %conv33, 65535
  %conv35 = trunc i32 %and34 to i16
  %29 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr36, i16** %Z.addr, align 8
  %30 = load i16, i16* %29, align 2
  %call37 = call zeroext i16 @mul(i16 zeroext %conv35, i16 zeroext %30)
  store i16 %call37, i16* %t1, align 2
  %31 = load i16, i16* %t1, align 2
  %conv38 = zext i16 %31 to i32
  %32 = load i16, i16* %t2, align 2
  %conv39 = zext i16 %32 to i32
  %add40 = add nsw i32 %conv38, %conv39
  %conv41 = trunc i32 %add40 to i16
  store i16 %conv41, i16* %t2, align 2
  %33 = load i16, i16* %t1, align 2
  %conv42 = zext i16 %33 to i32
  %34 = load i16, i16* %x1, align 2
  %conv43 = zext i16 %34 to i32
  %xor44 = xor i32 %conv43, %conv42
  %conv45 = trunc i32 %xor44 to i16
  store i16 %conv45, i16* %x1, align 2
  %35 = load i16, i16* %t2, align 2
  %conv46 = zext i16 %35 to i32
  %36 = load i16, i16* %x4, align 2
  %conv47 = zext i16 %36 to i32
  %xor48 = xor i32 %conv47, %conv46
  %conv49 = trunc i32 %xor48 to i16
  store i16 %conv49, i16* %x4, align 2
  %37 = load i16, i16* %x2, align 2
  %conv50 = zext i16 %37 to i32
  %38 = load i16, i16* %t2, align 2
  %conv51 = zext i16 %38 to i32
  %xor52 = xor i32 %conv51, %conv50
  %conv53 = trunc i32 %xor52 to i16
  store i16 %conv53, i16* %t2, align 2
  %39 = load i16, i16* %x3, align 2
  %conv54 = zext i16 %39 to i32
  %40 = load i16, i16* %t1, align 2
  %conv55 = zext i16 %40 to i32
  %xor56 = xor i32 %conv54, %conv55
  %conv57 = trunc i32 %xor56 to i16
  store i16 %conv57, i16* %x2, align 2
  %41 = load i16, i16* %t2, align 2
  store i16 %41, i16* %x3, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %42 = load i32, i32* %r, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %r, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %43 = load i16, i16* %x1, align 2
  %conv58 = zext i16 %43 to i32
  %and59 = and i32 %conv58, 65535
  %conv60 = trunc i32 %and59 to i16
  %44 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr61 = getelementptr inbounds i16, i16* %44, i32 1
  store i16* %incdec.ptr61, i16** %Z.addr, align 8
  %45 = load i16, i16* %44, align 2
  %call62 = call zeroext i16 @mul(i16 zeroext %conv60, i16 zeroext %45)
  store i16 %call62, i16* %x1, align 2
  %46 = load i16, i16* %x1, align 2
  %47 = load i16*, i16** %out.addr, align 8
  %incdec.ptr63 = getelementptr inbounds i16, i16* %47, i32 1
  store i16* %incdec.ptr63, i16** %out.addr, align 8
  store i16 %46, i16* %47, align 2
  %48 = load i16, i16* %x3, align 2
  %conv64 = zext i16 %48 to i32
  %49 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %incdec.ptr65, i16** %Z.addr, align 8
  %50 = load i16, i16* %49, align 2
  %conv66 = zext i16 %50 to i32
  %add67 = add nsw i32 %conv64, %conv66
  %conv68 = trunc i32 %add67 to i16
  %51 = load i16*, i16** %out.addr, align 8
  %incdec.ptr69 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %incdec.ptr69, i16** %out.addr, align 8
  store i16 %conv68, i16* %51, align 2
  %52 = load i16, i16* %x2, align 2
  %conv70 = zext i16 %52 to i32
  %53 = load i16*, i16** %Z.addr, align 8
  %incdec.ptr71 = getelementptr inbounds i16, i16* %53, i32 1
  store i16* %incdec.ptr71, i16** %Z.addr, align 8
  %54 = load i16, i16* %53, align 2
  %conv72 = zext i16 %54 to i32
  %add73 = add nsw i32 %conv70, %conv72
  %conv74 = trunc i32 %add73 to i16
  %55 = load i16*, i16** %out.addr, align 8
  %incdec.ptr75 = getelementptr inbounds i16, i16* %55, i32 1
  store i16* %incdec.ptr75, i16** %out.addr, align 8
  store i16 %conv74, i16* %55, align 2
  %56 = load i16, i16* %x4, align 2
  %conv76 = zext i16 %56 to i32
  %and77 = and i32 %conv76, 65535
  %conv78 = trunc i32 %and77 to i16
  %57 = load i16*, i16** %Z.addr, align 8
  %58 = load i16, i16* %57, align 2
  %call79 = call zeroext i16 @mul(i16 zeroext %conv78, i16 zeroext %58)
  store i16 %call79, i16* %x4, align 2
  %59 = load i16, i16* %x4, align 2
  %60 = load i16*, i16** %out.addr, align 8
  store i16 %59, i16* %60, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @mul(i16 zeroext %a, i16 zeroext %b) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %p = alloca i32, align 4
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.then, label %if.else.15

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %b.addr, align 2
  %tobool1 = icmp ne i16 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i16, i16* %a.addr, align 2
  %conv = zext i16 %2 to i32
  %3 = load i16, i16* %b.addr, align 2
  %conv3 = zext i16 %3 to i32
  %mul = mul nsw i32 %conv, %conv3
  store i32 %mul, i32* %p, align 4
  %4 = load i32, i32* %p, align 4
  %and = and i32 %4, 65535
  %conv4 = trunc i32 %and to i16
  store i16 %conv4, i16* %b.addr, align 2
  %5 = load i32, i32* %p, align 4
  %shr = lshr i32 %5, 16
  %conv5 = trunc i32 %shr to i16
  store i16 %conv5, i16* %a.addr, align 2
  %6 = load i16, i16* %b.addr, align 2
  %conv6 = zext i16 %6 to i32
  %7 = load i16, i16* %a.addr, align 2
  %conv7 = zext i16 %7 to i32
  %sub = sub nsw i32 %conv6, %conv7
  %8 = load i16, i16* %b.addr, align 2
  %conv8 = zext i16 %8 to i32
  %9 = load i16, i16* %a.addr, align 2
  %conv9 = zext i16 %9 to i32
  %cmp = icmp slt i32 %conv8, %conv9
  %conv10 = zext i1 %cmp to i32
  %add = add nsw i32 %sub, %conv10
  %conv11 = trunc i32 %add to i16
  store i16 %conv11, i16* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %10 = load i16, i16* %a.addr, align 2
  %conv12 = zext i16 %10 to i32
  %sub13 = sub nsw i32 1, %conv12
  %conv14 = trunc i32 %sub13 to i16
  store i16 %conv14, i16* %retval
  br label %return

if.else.15:                                       ; preds = %entry
  %11 = load i16, i16* %b.addr, align 2
  %conv16 = zext i16 %11 to i32
  %sub17 = sub nsw i32 1, %conv16
  %conv18 = trunc i32 %sub17 to i16
  store i16 %conv18, i16* %retval
  br label %return

return:                                           ; preds = %if.else.15, %if.else, %if.then.2
  %12 = load i16, i16* %retval
  ret i16 %12
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @inv(i16 zeroext %x) #0 {
entry:
  %retval = alloca i16, align 2
  %x.addr = alloca i16, align 2
  %t0 = alloca i16, align 2
  %t1 = alloca i16, align 2
  %q = alloca i16, align 2
  %y = alloca i16, align 2
  store i16 %x, i16* %x.addr, align 2
  %0 = load i16, i16* %x.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp sle i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %x.addr, align 2
  store i16 %1, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i16, i16* %x.addr, align 2
  %conv2 = zext i16 %2 to i32
  %div = sdiv i32 65537, %conv2
  %conv3 = trunc i32 %div to i16
  store i16 %conv3, i16* %t1, align 2
  %3 = load i16, i16* %x.addr, align 2
  %conv4 = zext i16 %3 to i32
  %rem = srem i32 65537, %conv4
  %conv5 = trunc i32 %rem to i16
  store i16 %conv5, i16* %y, align 2
  %4 = load i16, i16* %y, align 2
  %conv6 = zext i16 %4 to i32
  %cmp7 = icmp eq i32 %conv6, 1
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %5 = load i16, i16* %t1, align 2
  %conv10 = zext i16 %5 to i32
  %sub = sub nsw i32 1, %conv10
  %and = and i32 %sub, 65535
  %conv11 = trunc i32 %and to i16
  store i16 %conv11, i16* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  store i16 1, i16* %t0, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.12
  %6 = load i16, i16* %x.addr, align 2
  %conv13 = zext i16 %6 to i32
  %7 = load i16, i16* %y, align 2
  %conv14 = zext i16 %7 to i32
  %div15 = sdiv i32 %conv13, %conv14
  %conv16 = trunc i32 %div15 to i16
  store i16 %conv16, i16* %q, align 2
  %8 = load i16, i16* %x.addr, align 2
  %conv17 = zext i16 %8 to i32
  %9 = load i16, i16* %y, align 2
  %conv18 = zext i16 %9 to i32
  %rem19 = srem i32 %conv17, %conv18
  %conv20 = trunc i32 %rem19 to i16
  store i16 %conv20, i16* %x.addr, align 2
  %10 = load i16, i16* %q, align 2
  %conv21 = zext i16 %10 to i32
  %11 = load i16, i16* %t1, align 2
  %conv22 = zext i16 %11 to i32
  %mul = mul nsw i32 %conv21, %conv22
  %12 = load i16, i16* %t0, align 2
  %conv23 = zext i16 %12 to i32
  %add = add nsw i32 %conv23, %mul
  %conv24 = trunc i32 %add to i16
  store i16 %conv24, i16* %t0, align 2
  %13 = load i16, i16* %x.addr, align 2
  %conv25 = zext i16 %13 to i32
  %cmp26 = icmp eq i32 %conv25, 1
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.body
  %14 = load i16, i16* %t0, align 2
  store i16 %14, i16* %retval
  br label %return

if.end.29:                                        ; preds = %do.body
  %15 = load i16, i16* %y, align 2
  %conv30 = zext i16 %15 to i32
  %16 = load i16, i16* %x.addr, align 2
  %conv31 = zext i16 %16 to i32
  %div32 = sdiv i32 %conv30, %conv31
  %conv33 = trunc i32 %div32 to i16
  store i16 %conv33, i16* %q, align 2
  %17 = load i16, i16* %y, align 2
  %conv34 = zext i16 %17 to i32
  %18 = load i16, i16* %x.addr, align 2
  %conv35 = zext i16 %18 to i32
  %rem36 = srem i32 %conv34, %conv35
  %conv37 = trunc i32 %rem36 to i16
  store i16 %conv37, i16* %y, align 2
  %19 = load i16, i16* %q, align 2
  %conv38 = zext i16 %19 to i32
  %20 = load i16, i16* %t0, align 2
  %conv39 = zext i16 %20 to i32
  %mul40 = mul nsw i32 %conv38, %conv39
  %21 = load i16, i16* %t1, align 2
  %conv41 = zext i16 %21 to i32
  %add42 = add nsw i32 %conv41, %mul40
  %conv43 = trunc i32 %add42 to i16
  store i16 %conv43, i16* %t1, align 2
  br label %do.cond

do.cond:                                          ; preds = %if.end.29
  %22 = load i16, i16* %y, align 2
  %conv44 = zext i16 %22 to i32
  %cmp45 = icmp ne i32 %conv44, 1
  br i1 %cmp45, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load i16, i16* %t1, align 2
  %conv47 = zext i16 %23 to i32
  %sub48 = sub nsw i32 1, %conv47
  %and49 = and i32 %sub48, 65535
  %conv50 = trunc i32 %and49 to i16
  store i16 %conv50, i16* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.28, %if.then.9, %if.then
  %24 = load i16, i16* %retval
  ret i16 %24
}

; Function Attrs: nounwind uwtable
define internal void @create_text_line(i8* %dt, i64 %nchars) #0 {
entry:
  %dt.addr = alloca i8*, align 8
  %nchars.addr = alloca i64, align 8
  %charssofar = alloca i64, align 8
  %tomove = alloca i64, align 8
  %myword = alloca [40 x i8], align 16
  %wordptr = alloca i8*, align 8
  store i8* %dt, i8** %dt.addr, align 8
  store i64 %nchars, i64* %nchars.addr, align 8
  store i64 0, i64* %charssofar, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i32 @abs_randwc(i32 50)
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr inbounds [50 x i8*], [50 x i8*]* @wordcatarray, i32 0, i64 %idxprom
  %0 = load i8*, i8** %arrayidx, align 8
  store i8* %0, i8** %wordptr, align 8
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %myword, i32 0, i32 0
  %1 = load i8*, i8** %wordptr, align 8
  %2 = load i8*, i8** %wordptr, align 8
  %call1 = call i64 @strlen(i8* %2) #7
  %add = add i64 %call1, 1
  call void @MoveMemory(i8* %arraydecay, i8* %1, i64 %add)
  %arraydecay2 = getelementptr inbounds [40 x i8], [40 x i8]* %myword, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #7
  %add4 = add i64 %call3, 1
  store i64 %add4, i64* %tomove, align 8
  %3 = load i64, i64* %tomove, align 8
  %sub = sub nsw i64 %3, 1
  %arrayidx5 = getelementptr inbounds [40 x i8], [40 x i8]* %myword, i32 0, i64 %sub
  store i8 32, i8* %arrayidx5, align 1
  %4 = load i64, i64* %tomove, align 8
  %5 = load i64, i64* %charssofar, align 8
  %add6 = add nsw i64 %4, %5
  %6 = load i64, i64* %nchars.addr, align 8
  %cmp = icmp sgt i64 %add6, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load i64, i64* %nchars.addr, align 8
  %8 = load i64, i64* %charssofar, align 8
  %sub7 = sub nsw i64 %7, %8
  store i64 %sub7, i64* %tomove, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %9 = load i8*, i8** %dt.addr, align 8
  %arraydecay8 = getelementptr inbounds [40 x i8], [40 x i8]* %myword, i32 0, i32 0
  %10 = load i64, i64* %tomove, align 8
  call void @MoveMemory(i8* %9, i8* %arraydecay8, i64 %10)
  %11 = load i64, i64* %tomove, align 8
  %12 = load i64, i64* %charssofar, align 8
  %add9 = add nsw i64 %12, %11
  store i64 %add9, i64* %charssofar, align 8
  %13 = load i64, i64* %tomove, align 8
  %14 = load i8*, i8** %dt.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %13
  store i8* %add.ptr, i8** %dt.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %15 = load i64, i64* %charssofar, align 8
  %16 = load i64, i64* %nchars.addr, align 8
  %cmp10 = icmp slt i64 %15, %16
  br i1 %cmp10, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @SetCompBit(i8* %comparray, i32 %bitoffset, i8 signext %bitchar) #0 {
entry:
  %comparray.addr = alloca i8*, align 8
  %bitoffset.addr = alloca i32, align 4
  %bitchar.addr = alloca i8, align 1
  %byteoffset = alloca i32, align 4
  %bitnumb = alloca i32, align 4
  store i8* %comparray, i8** %comparray.addr, align 8
  store i32 %bitoffset, i32* %bitoffset.addr, align 4
  store i8 %bitchar, i8* %bitchar.addr, align 1
  %0 = load i32, i32* %bitoffset.addr, align 4
  %shr = lshr i32 %0, 3
  store i32 %shr, i32* %byteoffset, align 4
  %1 = load i32, i32* %bitoffset.addr, align 4
  %rem = urem i32 %1, 8
  store i32 %rem, i32* %bitnumb, align 4
  %2 = load i8, i8* %bitchar.addr, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 49
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %bitnumb, align 4
  %shl = shl i32 1, %3
  %4 = load i32, i32* %byteoffset, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i8*, i8** %comparray.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %6 to i32
  %or = or i32 %conv2, %shl
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %bitnumb, align 4
  %shl4 = shl i32 1, %7
  %neg = xor i32 %shl4, -1
  %8 = load i32, i32* %byteoffset, align 4
  %idxprom5 = zext i32 %8 to i64
  %9 = load i8*, i8** %comparray.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %idxprom5
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %and = and i32 %conv7, %neg
  %conv8 = trunc i32 %and to i8
  store i8 %conv8, i8* %arrayidx6, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @GetCompBit(i8* %comparray, i32 %bitoffset) #0 {
entry:
  %comparray.addr = alloca i8*, align 8
  %bitoffset.addr = alloca i32, align 4
  %byteoffset = alloca i32, align 4
  %bitnumb = alloca i32, align 4
  store i8* %comparray, i8** %comparray.addr, align 8
  store i32 %bitoffset, i32* %bitoffset.addr, align 4
  %0 = load i32, i32* %bitoffset.addr, align 4
  %shr = lshr i32 %0, 3
  store i32 %shr, i32* %byteoffset, align 4
  %1 = load i32, i32* %bitoffset.addr, align 4
  %rem = urem i32 %1, 8
  store i32 %rem, i32* %bitnumb, align 4
  %2 = load i32, i32* %bitnumb, align 4
  %shl = shl i32 1, %2
  %3 = load i32, i32* %byteoffset, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load i8*, i8** %comparray.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %shl, %conv
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal void @do_forward_pass(i32 %patt) #0 {
entry:
  %patt.addr = alloca i32, align 4
  store i32 %patt, i32* %patt.addr, align 4
  %0 = load i32, i32* %patt.addr, align 4
  call void @do_mid_forward(i32 %0)
  call void @do_out_forward()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_back_pass(i32 %patt) #0 {
entry:
  %patt.addr = alloca i32, align 4
  store i32 %patt, i32* %patt.addr, align 4
  %0 = load i32, i32* %patt.addr, align 4
  call void @do_out_error(i32 %0)
  call void @do_mid_error()
  call void @adjust_out_wts()
  %1 = load i32, i32* %patt.addr, align 4
  call void @adjust_mid_wts(i32 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @randomize_wts() #0 {
entry:
  %neurode = alloca i32, align 4
  %i = alloca i32, align 4
  %value = alloca double, align 8
  store i32 0, i32* %neurode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %0 = load i32, i32* %neurode, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 35
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %call = call i32 @abs_randwc(i32 100000)
  %conv = uitofp i32 %call to double
  store double %conv, double* %value, align 8
  %2 = load double, double* %value, align 8
  %div = fdiv double %2, 1.000000e+05
  %sub = fsub double %div, 5.000000e-01
  store double %sub, double* %value, align 8
  %3 = load double, double* %value, align 8
  %div4 = fdiv double %3, 2.000000e+00
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %neurode, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wts, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx, i32 0, i64 %idxprom
  store double %div4, double* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %7 = load i32, i32* %neurode, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, i32* %neurode, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  store i32 0, i32* %neurode, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.30, %for.end.9
  %8 = load i32, i32* %neurode, align 4
  %cmp11 = icmp slt i32 %8, 8
  br i1 %cmp11, label %for.body.13, label %for.end.32

for.body.13:                                      ; preds = %for.cond.10
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.27, %for.body.13
  %9 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %9, 8
  br i1 %cmp15, label %for.body.17, label %for.end.29

for.body.17:                                      ; preds = %for.cond.14
  %call18 = call i32 @abs_randwc(i32 100000)
  %conv19 = uitofp i32 %call18 to double
  store double %conv19, double* %value, align 8
  %10 = load double, double* %value, align 8
  %div20 = fdiv double %10, 1.000000e+04
  %sub21 = fsub double %div20, 5.000000e-01
  store double %sub21, double* %value, align 8
  %11 = load double, double* %value, align 8
  %div22 = fdiv double %11, 2.000000e+00
  %12 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %12 to i64
  %13 = load i32, i32* %neurode, align 4
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wts, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx25, i32 0, i64 %idxprom23
  store double %div22, double* %arrayidx26, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.17
  %14 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %14, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.14

for.end.29:                                       ; preds = %for.cond.14
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.29
  %15 = load i32, i32* %neurode, align 4
  %inc31 = add nsw i32 %15, 1
  store i32 %inc31, i32* %neurode, align 4
  br label %for.cond.10

for.end.32:                                       ; preds = %for.cond.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zero_changes() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 35
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_change, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx5, align 8
  %4 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_cum_change, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx8, i32 0, i64 %idxprom6
  store double 0.000000e+00, double* %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %7, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.30, %for.end.12
  %8 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %8, 8
  br i1 %cmp14, label %for.body.15, label %for.end.32

for.body.15:                                      ; preds = %for.cond.13
  store i32 0, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.27, %for.body.15
  %9 = load i32, i32* %j, align 4
  %cmp17 = icmp slt i32 %9, 8
  br i1 %cmp17, label %for.body.18, label %for.end.29

for.body.18:                                      ; preds = %for.cond.16
  %10 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %11 to i64
  %arrayidx21 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_change, i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx21, i32 0, i64 %idxprom19
  store double 0.000000e+00, double* %arrayidx22, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_cum_change, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx25, i32 0, i64 %idxprom23
  store double 0.000000e+00, double* %arrayidx26, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.18
  %14 = load i32, i32* %j, align 4
  %inc28 = add nsw i32 %14, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond.16

for.end.29:                                       ; preds = %for.cond.16
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.29
  %15 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %15, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.13

for.end.32:                                       ; preds = %for.cond.13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @move_wt_changes() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 35
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_cum_change, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx5, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_change, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx8, i32 0, i64 %idxprom6
  store double %4, double* %arrayidx9, align 8
  %7 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_cum_change, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx12, i32 0, i64 %idxprom10
  store double 0.000000e+00, double* %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.38, %for.end.16
  %11 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %11, 8
  br i1 %cmp18, label %for.body.19, label %for.end.40

for.body.19:                                      ; preds = %for.cond.17
  store i32 0, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.35, %for.body.19
  %12 = load i32, i32* %j, align 4
  %cmp21 = icmp slt i32 %12, 8
  br i1 %cmp21, label %for.body.22, label %for.end.37

for.body.22:                                      ; preds = %for.cond.20
  %13 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %13 to i64
  %14 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_cum_change, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx25, i32 0, i64 %idxprom23
  %15 = load double, double* %arrayidx26, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_change, i32 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx29, i32 0, i64 %idxprom27
  store double %15, double* %arrayidx30, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %19 to i64
  %arrayidx33 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_cum_change, i32 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx33, i32 0, i64 %idxprom31
  store double 0.000000e+00, double* %arrayidx34, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.22
  %20 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %20, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond.20

for.end.37:                                       ; preds = %for.cond.20
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %21 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %21, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.17

for.end.40:                                       ; preds = %for.cond.17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_mid_forward(i32 %patt) #0 {
entry:
  %patt.addr = alloca i32, align 4
  %sum = alloca double, align 8
  %neurode = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %patt, i32* %patt.addr, align 4
  store i32 0, i32* %neurode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load i32, i32* %neurode, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 35
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %neurode, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wts, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx5, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %6 = load i32, i32* %patt.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx8, i32 0, i64 %idxprom6
  %7 = load double, double* %arrayidx9, align 8
  %mul = fmul double %4, %7
  %8 = load double, double* %sum, align 8
  %add = fadd double %8, %mul
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %10 = load double, double* %sum, align 8
  %sub = fsub double -0.000000e+00, %10
  %call = call double @exp(double %sub) #5
  %add10 = fadd double 1.000000e+00, %call
  %div = fdiv double 1.000000e+00, %add10
  store double %div, double* %sum, align 8
  %11 = load double, double* %sum, align 8
  %12 = load i32, i32* %neurode, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [8 x double], [8 x double]* @mid_out, i32 0, i64 %idxprom11
  store double %11, double* %arrayidx12, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %13 = load i32, i32* %neurode, align 4
  %inc14 = add nsw i32 %13, 1
  store i32 %inc14, i32* %neurode, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind uwtable
define internal void @do_out_forward() #0 {
entry:
  %sum = alloca double, align 8
  %neurode = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %neurode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %0 = load i32, i32* %neurode, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %neurode, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wts, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx5, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [8 x double], [8 x double]* @mid_out, i32 0, i64 %idxprom6
  %6 = load double, double* %arrayidx7, align 8
  %mul = fmul double %4, %6
  %7 = load double, double* %sum, align 8
  %add = fadd double %7, %mul
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %9 = load double, double* %sum, align 8
  %sub = fsub double -0.000000e+00, %9
  %call = call double @exp(double %sub) #5
  %add8 = fadd double 1.000000e+00, %call
  %div = fdiv double 1.000000e+00, %add8
  store double %div, double* %sum, align 8
  %10 = load double, double* %sum, align 8
  %11 = load i32, i32* %neurode, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* @out_out, i32 0, i64 %idxprom9
  store double %10, double* %arrayidx10, align 8
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %12 = load i32, i32* %neurode, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %neurode, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_out_error(i32 %patt) #0 {
entry:
  %patt.addr = alloca i32, align 4
  %neurode = alloca i32, align 4
  %error = alloca double, align 8
  %tot_error = alloca double, align 8
  %sum = alloca double, align 8
  store i32 %patt, i32* %patt.addr, align 4
  store double 0.000000e+00, double* %tot_error, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %neurode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %neurode, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %neurode, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %patt.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i32 0, i64 %idxprom
  %3 = load double, double* %arrayidx2, align 8
  %4 = load i32, i32* %neurode, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [8 x double], [8 x double]* @out_out, i32 0, i64 %idxprom3
  %5 = load double, double* %arrayidx4, align 8
  %sub = fsub double %3, %5
  %6 = load i32, i32* %neurode, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* @out_error, i32 0, i64 %idxprom5
  store double %sub, double* %arrayidx6, align 8
  %7 = load i32, i32* %neurode, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [8 x double], [8 x double]* @out_error, i32 0, i64 %idxprom7
  %8 = load double, double* %arrayidx8, align 8
  store double %8, double* %error, align 8
  %9 = load double, double* %error, align 8
  %cmp9 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load double, double* %error, align 8
  %sub10 = fsub double -0.000000e+00, %10
  %11 = load double, double* %sum, align 8
  %add = fadd double %11, %sub10
  store double %add, double* %sum, align 8
  %12 = load double, double* %error, align 8
  %sub11 = fsub double -0.000000e+00, %12
  %13 = load double, double* %tot_error, align 8
  %cmp12 = fcmp ogt double %sub11, %13
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %14 = load double, double* %error, align 8
  %sub14 = fsub double -0.000000e+00, %14
  store double %sub14, double* %tot_error, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  br label %if.end.19

if.else:                                          ; preds = %for.body
  %15 = load double, double* %error, align 8
  %16 = load double, double* %sum, align 8
  %add15 = fadd double %16, %15
  store double %add15, double* %sum, align 8
  %17 = load double, double* %error, align 8
  %18 = load double, double* %tot_error, align 8
  %cmp16 = fcmp ogt double %17, %18
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  %19 = load double, double* %error, align 8
  store double %19, double* %tot_error, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %20 = load i32, i32* %neurode, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %neurode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load double, double* %sum, align 8
  %div = fdiv double %21, 8.000000e+00
  %22 = load i32, i32* %patt.addr, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [10 x double], [10 x double]* @avg_out_error, i32 0, i64 %idxprom20
  store double %div, double* %arrayidx21, align 8
  %23 = load double, double* %tot_error, align 8
  %24 = load i32, i32* %patt.addr, align 4
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds [10 x double], [10 x double]* @tot_out_error, i32 0, i64 %idxprom22
  store double %23, double* %arrayidx23, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @adjust_mid_wts(i32 %patt) #0 {
entry:
  %patt.addr = alloca i32, align 4
  %weight = alloca i32, align 4
  %neurode = alloca i32, align 4
  %learn = alloca double, align 8
  %alph = alloca double, align 8
  %delta = alloca double, align 8
  store i32 %patt, i32* %patt.addr, align 4
  store double 9.000000e-02, double* %learn, align 8
  store double 9.000000e-02, double* %alph, align 8
  store i32 0, i32* %neurode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %0 = load i32, i32* %neurode, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %weight, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %weight, align 4
  %cmp2 = icmp slt i32 %1, 35
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load double, double* %learn, align 8
  %3 = load i32, i32* %neurode, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* @mid_error, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %mul = fmul double %2, %4
  %5 = load i32, i32* %weight, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i32, i32* %patt.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx6, i32 0, i64 %idxprom4
  %7 = load double, double* %arrayidx7, align 8
  %mul8 = fmul double %mul, %7
  store double %mul8, double* %delta, align 8
  %8 = load double, double* %alph, align 8
  %9 = load i32, i32* %weight, align 4
  %idxprom9 = sext i32 %9 to i64
  %10 = load i32, i32* %neurode, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_change, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx11, i32 0, i64 %idxprom9
  %11 = load double, double* %arrayidx12, align 8
  %mul13 = fmul double %8, %11
  %12 = load double, double* %delta, align 8
  %add = fadd double %12, %mul13
  store double %add, double* %delta, align 8
  %13 = load double, double* %delta, align 8
  %14 = load i32, i32* %weight, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load i32, i32* %neurode, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wts, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx16, i32 0, i64 %idxprom14
  %16 = load double, double* %arrayidx17, align 8
  %add18 = fadd double %16, %13
  store double %add18, double* %arrayidx17, align 8
  %17 = load double, double* %delta, align 8
  %18 = load i32, i32* %weight, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load i32, i32* %neurode, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_cum_change, i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx21, i32 0, i64 %idxprom19
  %20 = load double, double* %arrayidx22, align 8
  %add23 = fadd double %20, %17
  store double %add23, double* %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %21 = load i32, i32* %weight, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %weight, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %22 = load i32, i32* %neurode, align 4
  %inc25 = add nsw i32 %22, 1
  store i32 %inc25, i32* %neurode, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_mid_error() #0 {
entry:
  %sum = alloca double, align 8
  %neurode = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %neurode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %0 = load i32, i32* %neurode, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %neurode, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wts, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx5, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [8 x double], [8 x double]* @out_error, i32 0, i64 %idxprom6
  %6 = load double, double* %arrayidx7, align 8
  %mul = fmul double %4, %6
  %7 = load double, double* %sum, align 8
  %add = fadd double %7, %mul
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %9 = load i32, i32* %neurode, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [8 x double], [8 x double]* @mid_out, i32 0, i64 %idxprom8
  %10 = load double, double* %arrayidx9, align 8
  %11 = load i32, i32* %neurode, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [8 x double], [8 x double]* @mid_out, i32 0, i64 %idxprom10
  %12 = load double, double* %arrayidx11, align 8
  %sub = fsub double 1.000000e+00, %12
  %mul12 = fmul double %10, %sub
  %13 = load double, double* %sum, align 8
  %mul13 = fmul double %mul12, %13
  %14 = load i32, i32* %neurode, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [8 x double], [8 x double]* @mid_error, i32 0, i64 %idxprom14
  store double %mul13, double* %arrayidx15, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %15 = load i32, i32* %neurode, align 4
  %inc17 = add nsw i32 %15, 1
  store i32 %inc17, i32* %neurode, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @adjust_out_wts() #0 {
entry:
  %weight = alloca i32, align 4
  %neurode = alloca i32, align 4
  %learn = alloca double, align 8
  %delta = alloca double, align 8
  %alph = alloca double, align 8
  store double 9.000000e-02, double* %learn, align 8
  store double 9.000000e-02, double* %alph, align 8
  store i32 0, i32* %neurode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %0 = load i32, i32* %neurode, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %weight, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %weight, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load double, double* %learn, align 8
  %3 = load i32, i32* %neurode, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* @out_error, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %mul = fmul double %2, %4
  %5 = load i32, i32* %weight, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [8 x double], [8 x double]* @mid_out, i32 0, i64 %idxprom4
  %6 = load double, double* %arrayidx5, align 8
  %mul6 = fmul double %mul, %6
  store double %mul6, double* %delta, align 8
  %7 = load double, double* %alph, align 8
  %8 = load i32, i32* %weight, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i32, i32* %neurode, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_change, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx9, i32 0, i64 %idxprom7
  %10 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %7, %10
  %11 = load double, double* %delta, align 8
  %add = fadd double %11, %mul11
  store double %add, double* %delta, align 8
  %12 = load double, double* %delta, align 8
  %13 = load i32, i32* %weight, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load i32, i32* %neurode, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wts, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx14, i32 0, i64 %idxprom12
  %15 = load double, double* %arrayidx15, align 8
  %add16 = fadd double %15, %12
  store double %add16, double* %arrayidx15, align 8
  %16 = load double, double* %delta, align 8
  %17 = load i32, i32* %weight, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load i32, i32* %neurode, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_cum_change, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx19, i32 0, i64 %idxprom17
  %19 = load double, double* %arrayidx20, align 8
  %add21 = fadd double %19, %16
  store double %add21, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %20 = load i32, i32* %weight, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %weight, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %21 = load i32, i32* %neurode, align 4
  %inc23 = add nsw i32 %21, 1
  store i32 %inc23, i32* %neurode, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @check_out_error() #0 {
entry:
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  store i32 1, i32* %result, align 4
  store i32 0, i32* %error, align 4
  call void @worst_pass_error()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @numpats, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* @worst_error, align 8
  %cmp1 = fcmp oge double %2, 1.000000e-01
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* @tot_out_error, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %cmp2 = fcmp oge double %4, 1.600000e+01
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %error, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %error, align 4
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  store i32 -1, i32* %result, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %for.end
  %7 = load i32, i32* %result, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @worst_pass_error() #0 {
entry:
  %error = alloca double, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  store double 0.000000e+00, double* %error, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @numpats, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* @tot_out_error, i32 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %4 = load double, double* %error, align 8
  %cmp1 = fcmp ogt double %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [10 x double], [10 x double]* @tot_out_error, i32 0, i64 %idxprom2
  %6 = load double, double* %arrayidx3, align 8
  store double %6, double* %error, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [10 x double], [10 x double]* @avg_out_error, i32 0, i64 %idxprom4
  %8 = load double, double* %arrayidx5, align 8
  %9 = load double, double* %sum, align 8
  %add = fadd double %9, %8
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load double, double* %error, align 8
  store double %11, double* @worst_error, align 8
  %12 = load double, double* %sum, align 8
  %13 = load i32, i32* @numpats, align 4
  %conv = sitofp i32 %13 to double
  %div = fdiv double %12, %conv
  store double %div, double* @average_error, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_data_file() #0 {
entry:
  %retval = alloca i32, align 4
  %infile = alloca %struct._IO_FILE*, align 8
  %xinsize = alloca i32, align 4
  %yinsize = alloca i32, align 4
  %youtsize = alloca i32, align 4
  %patt = alloca i32, align 4
  %element = alloca i32, align 4
  %i = alloca i32, align 4
  %row = alloca i32, align 4
  %vals_read = alloca i32, align 4
  %val1 = alloca i32, align 4
  %val2 = alloca i32, align 4
  %val3 = alloca i32, align 4
  %val4 = alloca i32, align 4
  %val5 = alloca i32, align 4
  %val6 = alloca i32, align 4
  %val7 = alloca i32, align 4
  %val8 = alloca i32, align 4
  %0 = load i8*, i8** @inpath, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %infile, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.65, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i32* %xinsize, i32* %yinsize, i32* %youtsize)
  store i32 %call2, i32* %vals_read, align 4
  %3 = load i32, i32* %vals_read, align 4
  %cmp3 = icmp ne i32 %3, 3
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %4 = load i32, i32* %vals_read, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.67, i32 0, i32 0), i32 %4)
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32* @numpats)
  store i32 %call7, i32* %vals_read, align 4
  %6 = load i32, i32* %vals_read, align 4
  %cmp8 = icmp ne i32 %6, 1
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %7 = load i32, i32* %vals_read, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.69, i32 0, i32 0), i32 %7)
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %8 = load i32, i32* @numpats, align 4
  %cmp12 = icmp sgt i32 %8, 10
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  store i32 10, i32* @numpats, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  store i32 0, i32* %patt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.131, %if.end.14
  %9 = load i32, i32* %patt, align 4
  %10 = load i32, i32* @numpats, align 4
  %cmp15 = icmp slt i32 %9, %10
  br i1 %cmp15, label %for.body, label %for.end.133

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %element, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body
  %11 = load i32, i32* %row, align 4
  %12 = load i32, i32* %yinsize, align 4
  %cmp17 = icmp slt i32 %11, %12
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i32 0, i32 0), i32* %val1, i32* %val2, i32* %val3, i32* %val4, i32* %val5)
  store i32 %call19, i32* %vals_read, align 4
  %14 = load i32, i32* %vals_read, align 4
  %cmp20 = icmp ne i32 %14, 5
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.body.18
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.71, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %for.body.18
  %15 = load i32, i32* %row, align 4
  %16 = load i32, i32* %xinsize, align 4
  %mul = mul nsw i32 %15, %16
  store i32 %mul, i32* %element, align 4
  %17 = load i32, i32* %val1, align 4
  %conv = sitofp i32 %17 to double
  %18 = load i32, i32* %element, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32, i32* %patt, align 4
  %idxprom24 = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i32 0, i64 %idxprom24
  %arrayidx25 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx, i32 0, i64 %idxprom
  store double %conv, double* %arrayidx25, align 8
  %20 = load i32, i32* %element, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %element, align 4
  %21 = load i32, i32* %val2, align 4
  %conv26 = sitofp i32 %21 to double
  %22 = load i32, i32* %element, align 4
  %idxprom27 = sext i32 %22 to i64
  %23 = load i32, i32* %patt, align 4
  %idxprom28 = sext i32 %23 to i64
  %arrayidx29 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i32 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx29, i32 0, i64 %idxprom27
  store double %conv26, double* %arrayidx30, align 8
  %24 = load i32, i32* %element, align 4
  %inc31 = add nsw i32 %24, 1
  store i32 %inc31, i32* %element, align 4
  %25 = load i32, i32* %val3, align 4
  %conv32 = sitofp i32 %25 to double
  %26 = load i32, i32* %element, align 4
  %idxprom33 = sext i32 %26 to i64
  %27 = load i32, i32* %patt, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx35, i32 0, i64 %idxprom33
  store double %conv32, double* %arrayidx36, align 8
  %28 = load i32, i32* %element, align 4
  %inc37 = add nsw i32 %28, 1
  store i32 %inc37, i32* %element, align 4
  %29 = load i32, i32* %val4, align 4
  %conv38 = sitofp i32 %29 to double
  %30 = load i32, i32* %element, align 4
  %idxprom39 = sext i32 %30 to i64
  %31 = load i32, i32* %patt, align 4
  %idxprom40 = sext i32 %31 to i64
  %arrayidx41 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i32 0, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx41, i32 0, i64 %idxprom39
  store double %conv38, double* %arrayidx42, align 8
  %32 = load i32, i32* %element, align 4
  %inc43 = add nsw i32 %32, 1
  store i32 %inc43, i32* %element, align 4
  %33 = load i32, i32* %val5, align 4
  %conv44 = sitofp i32 %33 to double
  %34 = load i32, i32* %element, align 4
  %idxprom45 = sext i32 %34 to i64
  %35 = load i32, i32* %patt, align 4
  %idxprom46 = sext i32 %35 to i64
  %arrayidx47 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx47, i32 0, i64 %idxprom45
  store double %conv44, double* %arrayidx48, align 8
  %36 = load i32, i32* %element, align 4
  %inc49 = add nsw i32 %36, 1
  store i32 %inc49, i32* %element, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %37 = load i32, i32* %row, align 4
  %inc50 = add nsw i32 %37, 1
  store i32 %inc50, i32* %row, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.79, %for.end
  %38 = load i32, i32* %i, align 4
  %cmp52 = icmp slt i32 %38, 35
  br i1 %cmp52, label %for.body.54, label %for.end.81

for.body.54:                                      ; preds = %for.cond.51
  %39 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %39 to i64
  %40 = load i32, i32* %patt, align 4
  %idxprom56 = sext i32 %40 to i64
  %arrayidx57 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i32 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx57, i32 0, i64 %idxprom55
  %41 = load double, double* %arrayidx58, align 8
  %cmp59 = fcmp oge double %41, 9.000000e-01
  br i1 %cmp59, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %for.body.54
  %42 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %42 to i64
  %43 = load i32, i32* %patt, align 4
  %idxprom63 = sext i32 %43 to i64
  %arrayidx64 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i32 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx64, i32 0, i64 %idxprom62
  store double 9.000000e-01, double* %arrayidx65, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %for.body.54
  %44 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %44 to i64
  %45 = load i32, i32* %patt, align 4
  %idxprom68 = sext i32 %45 to i64
  %arrayidx69 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i32 0, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx69, i32 0, i64 %idxprom67
  %46 = load double, double* %arrayidx70, align 8
  %cmp71 = fcmp ole double %46, 1.000000e-01
  br i1 %cmp71, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %if.end.66
  %47 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %47 to i64
  %48 = load i32, i32* %patt, align 4
  %idxprom75 = sext i32 %48 to i64
  %arrayidx76 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [35 x double], [35 x double]* %arrayidx76, i32 0, i64 %idxprom74
  store double 1.000000e-01, double* %arrayidx77, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %if.end.66
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %49 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %49, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.51

for.end.81:                                       ; preds = %for.cond.51
  store i32 0, i32* %element, align 4
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i32 0, i32 0), i32* %val1, i32* %val2, i32* %val3, i32* %val4, i32* %val5, i32* %val6, i32* %val7, i32* %val8)
  store i32 %call82, i32* %vals_read, align 4
  %51 = load i32, i32* %val1, align 4
  %conv83 = sitofp i32 %51 to double
  %52 = load i32, i32* %element, align 4
  %idxprom84 = sext i32 %52 to i64
  %53 = load i32, i32* %patt, align 4
  %idxprom85 = sext i32 %53 to i64
  %arrayidx86 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i32 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx86, i32 0, i64 %idxprom84
  store double %conv83, double* %arrayidx87, align 8
  %54 = load i32, i32* %element, align 4
  %inc88 = add nsw i32 %54, 1
  store i32 %inc88, i32* %element, align 4
  %55 = load i32, i32* %val2, align 4
  %conv89 = sitofp i32 %55 to double
  %56 = load i32, i32* %element, align 4
  %idxprom90 = sext i32 %56 to i64
  %57 = load i32, i32* %patt, align 4
  %idxprom91 = sext i32 %57 to i64
  %arrayidx92 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i32 0, i64 %idxprom91
  %arrayidx93 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx92, i32 0, i64 %idxprom90
  store double %conv89, double* %arrayidx93, align 8
  %58 = load i32, i32* %element, align 4
  %inc94 = add nsw i32 %58, 1
  store i32 %inc94, i32* %element, align 4
  %59 = load i32, i32* %val3, align 4
  %conv95 = sitofp i32 %59 to double
  %60 = load i32, i32* %element, align 4
  %idxprom96 = sext i32 %60 to i64
  %61 = load i32, i32* %patt, align 4
  %idxprom97 = sext i32 %61 to i64
  %arrayidx98 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i32 0, i64 %idxprom97
  %arrayidx99 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx98, i32 0, i64 %idxprom96
  store double %conv95, double* %arrayidx99, align 8
  %62 = load i32, i32* %element, align 4
  %inc100 = add nsw i32 %62, 1
  store i32 %inc100, i32* %element, align 4
  %63 = load i32, i32* %val4, align 4
  %conv101 = sitofp i32 %63 to double
  %64 = load i32, i32* %element, align 4
  %idxprom102 = sext i32 %64 to i64
  %65 = load i32, i32* %patt, align 4
  %idxprom103 = sext i32 %65 to i64
  %arrayidx104 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i32 0, i64 %idxprom103
  %arrayidx105 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx104, i32 0, i64 %idxprom102
  store double %conv101, double* %arrayidx105, align 8
  %66 = load i32, i32* %element, align 4
  %inc106 = add nsw i32 %66, 1
  store i32 %inc106, i32* %element, align 4
  %67 = load i32, i32* %val5, align 4
  %conv107 = sitofp i32 %67 to double
  %68 = load i32, i32* %element, align 4
  %idxprom108 = sext i32 %68 to i64
  %69 = load i32, i32* %patt, align 4
  %idxprom109 = sext i32 %69 to i64
  %arrayidx110 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i32 0, i64 %idxprom109
  %arrayidx111 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx110, i32 0, i64 %idxprom108
  store double %conv107, double* %arrayidx111, align 8
  %70 = load i32, i32* %element, align 4
  %inc112 = add nsw i32 %70, 1
  store i32 %inc112, i32* %element, align 4
  %71 = load i32, i32* %val6, align 4
  %conv113 = sitofp i32 %71 to double
  %72 = load i32, i32* %element, align 4
  %idxprom114 = sext i32 %72 to i64
  %73 = load i32, i32* %patt, align 4
  %idxprom115 = sext i32 %73 to i64
  %arrayidx116 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i32 0, i64 %idxprom115
  %arrayidx117 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx116, i32 0, i64 %idxprom114
  store double %conv113, double* %arrayidx117, align 8
  %74 = load i32, i32* %element, align 4
  %inc118 = add nsw i32 %74, 1
  store i32 %inc118, i32* %element, align 4
  %75 = load i32, i32* %val7, align 4
  %conv119 = sitofp i32 %75 to double
  %76 = load i32, i32* %element, align 4
  %idxprom120 = sext i32 %76 to i64
  %77 = load i32, i32* %patt, align 4
  %idxprom121 = sext i32 %77 to i64
  %arrayidx122 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i32 0, i64 %idxprom121
  %arrayidx123 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx122, i32 0, i64 %idxprom120
  store double %conv119, double* %arrayidx123, align 8
  %78 = load i32, i32* %element, align 4
  %inc124 = add nsw i32 %78, 1
  store i32 %inc124, i32* %element, align 4
  %79 = load i32, i32* %val8, align 4
  %conv125 = sitofp i32 %79 to double
  %80 = load i32, i32* %element, align 4
  %idxprom126 = sext i32 %80 to i64
  %81 = load i32, i32* %patt, align 4
  %idxprom127 = sext i32 %81 to i64
  %arrayidx128 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i32 0, i64 %idxprom127
  %arrayidx129 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx128, i32 0, i64 %idxprom126
  store double %conv125, double* %arrayidx129, align 8
  %82 = load i32, i32* %element, align 4
  %inc130 = add nsw i32 %82, 1
  store i32 %inc130, i32* %element, align 4
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.81
  %83 = load i32, i32* %patt, align 4
  %inc132 = add nsw i32 %83, 1
  store i32 %inc132, i32* %patt, align 4
  br label %for.cond

for.end.133:                                      ; preds = %for.cond
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call134 = call i32 @fclose(%struct._IO_FILE* %84)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.133, %if.then.21, %if.then.9, %if.then.4, %if.then
  %85 = load i32, i32* %retval
  ret i32 %85
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lusolve([101 x double]* %a, i32 %n, double* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca [101 x double]*, align 8
  %n.addr = alloca i32, align 4
  %b.addr = alloca double*, align 8
  %indx = alloca [101 x i32], align 16
  %d = alloca i32, align 4
  store [101 x double]* %a, [101 x double]** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %b, double** %b.addr, align 8
  %0 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %arraydecay = getelementptr inbounds [101 x i32], [101 x i32]* %indx, i32 0, i32 0
  %call = call i32 @ludcmp([101 x double]* %0, i32 %1, i32* %arraydecay, i32* %d)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %3 = load i32, i32* %n.addr, align 4
  %arraydecay1 = getelementptr inbounds [101 x i32], [101 x i32]* %indx, i32 0, i32 0
  %4 = load double*, double** %b.addr, align 8
  call void @lubksb([101 x double]* %2, i32 %3, i32* %arraydecay1, double* %4)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @ludcmp([101 x double]* %a, i32 %n, i32* %indx, i32* %d) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca [101 x double]*, align 8
  %n.addr = alloca i32, align 4
  %indx.addr = alloca i32*, align 8
  %d.addr = alloca i32*, align 8
  %big = alloca double, align 8
  %sum = alloca double, align 8
  %dum = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %imax = alloca i32, align 4
  %tiny = alloca double, align 8
  store [101 x double]* %a, [101 x double]** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32* %indx, i32** %indx.addr, align 8
  store i32* %d, i32** %d.addr, align 8
  store i32 0, i32* %imax, align 4
  store double 1.000000e-20, double* %tiny, align 8
  %0 = load i32*, i32** %d.addr, align 8
  store i32 1, i32* %0, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %big, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx = getelementptr inbounds [101 x double], [101 x double]* %7, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx, i32 0, i64 %idxprom
  %8 = load double, double* %arrayidx5, align 8
  %call = call double @fabs(double %8) #6
  %9 = load double, double* %big, align 8
  %cmp6 = fcmp ogt double %call, %9
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %10 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds [101 x double], [101 x double]* %12, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx9, i32 0, i64 %idxprom7
  %13 = load double, double* %arrayidx10, align 8
  %call11 = call double @fabs(double %13) #6
  store double %call11, double* %big, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %15 = load double, double* %big, align 8
  %cmp12 = fcmp oeq double %15, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %for.end
  %16 = load double, double* %big, align 8
  %div = fdiv double 1.000000e+00, %16
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load double*, double** @LUtempvv, align 8
  %arrayidx16 = getelementptr inbounds double, double* %18, i64 %idxprom15
  store double %div, double* %arrayidx16, align 8
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.14
  %19 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %19, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.168, %for.end.19
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp slt i32 %20, %21
  br i1 %cmp21, label %for.body.22, label %for.end.170

for.body.22:                                      ; preds = %for.cond.20
  %22 = load i32, i32* %j, align 4
  %cmp23 = icmp ne i32 %22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.56

if.then.24:                                       ; preds = %for.body.22
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.53, %if.then.24
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %j, align 4
  %cmp26 = icmp slt i32 %23, %24
  br i1 %cmp26, label %for.body.27, label %for.end.55

for.body.27:                                      ; preds = %for.cond.25
  %25 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %26 to i64
  %27 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx30 = getelementptr inbounds [101 x double], [101 x double]* %27, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx30, i32 0, i64 %idxprom28
  %28 = load double, double* %arrayidx31, align 8
  store double %28, double* %sum, align 8
  %29 = load i32, i32* %i, align 4
  %cmp32 = icmp ne i32 %29, 0
  br i1 %cmp32, label %if.then.33, label %if.end.48

if.then.33:                                       ; preds = %for.body.27
  store i32 0, i32* %k, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.45, %if.then.33
  %30 = load i32, i32* %k, align 4
  %31 = load i32, i32* %i, align 4
  %cmp35 = icmp slt i32 %30, %31
  br i1 %cmp35, label %for.body.36, label %for.end.47

for.body.36:                                      ; preds = %for.cond.34
  %32 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %33 to i64
  %34 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx39 = getelementptr inbounds [101 x double], [101 x double]* %34, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx39, i32 0, i64 %idxprom37
  %35 = load double, double* %arrayidx40, align 8
  %36 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %36 to i64
  %37 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %37 to i64
  %38 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx43 = getelementptr inbounds [101 x double], [101 x double]* %38, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx43, i32 0, i64 %idxprom41
  %39 = load double, double* %arrayidx44, align 8
  %mul = fmul double %35, %39
  %40 = load double, double* %sum, align 8
  %sub = fsub double %40, %mul
  store double %sub, double* %sum, align 8
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.36
  %41 = load i32, i32* %k, align 4
  %inc46 = add nsw i32 %41, 1
  store i32 %inc46, i32* %k, align 4
  br label %for.cond.34

for.end.47:                                       ; preds = %for.cond.34
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %for.body.27
  %42 = load double, double* %sum, align 8
  %43 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %44 to i64
  %45 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx51 = getelementptr inbounds [101 x double], [101 x double]* %45, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx51, i32 0, i64 %idxprom49
  store double %42, double* %arrayidx52, align 8
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.48
  %46 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %46, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.25

for.end.55:                                       ; preds = %for.cond.25
  br label %if.end.56

if.end.56:                                        ; preds = %for.end.55, %for.body.22
  store double 0.000000e+00, double* %big, align 8
  %47 = load i32, i32* %j, align 4
  store i32 %47, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.94, %if.end.56
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %n.addr, align 4
  %cmp58 = icmp slt i32 %48, %49
  br i1 %cmp58, label %for.body.59, label %for.end.96

for.body.59:                                      ; preds = %for.cond.57
  %50 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %50 to i64
  %51 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %51 to i64
  %52 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx62 = getelementptr inbounds [101 x double], [101 x double]* %52, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx62, i32 0, i64 %idxprom60
  %53 = load double, double* %arrayidx63, align 8
  store double %53, double* %sum, align 8
  %54 = load i32, i32* %j, align 4
  %cmp64 = icmp ne i32 %54, 0
  br i1 %cmp64, label %if.then.65, label %if.end.82

if.then.65:                                       ; preds = %for.body.59
  store i32 0, i32* %k, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.79, %if.then.65
  %55 = load i32, i32* %k, align 4
  %56 = load i32, i32* %j, align 4
  %cmp67 = icmp slt i32 %55, %56
  br i1 %cmp67, label %for.body.68, label %for.end.81

for.body.68:                                      ; preds = %for.cond.66
  %57 = load i32, i32* %k, align 4
  %idxprom69 = sext i32 %57 to i64
  %58 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %58 to i64
  %59 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx71 = getelementptr inbounds [101 x double], [101 x double]* %59, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx71, i32 0, i64 %idxprom69
  %60 = load double, double* %arrayidx72, align 8
  %61 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %61 to i64
  %62 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %62 to i64
  %63 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx75 = getelementptr inbounds [101 x double], [101 x double]* %63, i64 %idxprom74
  %arrayidx76 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx75, i32 0, i64 %idxprom73
  %64 = load double, double* %arrayidx76, align 8
  %mul77 = fmul double %60, %64
  %65 = load double, double* %sum, align 8
  %sub78 = fsub double %65, %mul77
  store double %sub78, double* %sum, align 8
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.68
  %66 = load i32, i32* %k, align 4
  %inc80 = add nsw i32 %66, 1
  store i32 %inc80, i32* %k, align 4
  br label %for.cond.66

for.end.81:                                       ; preds = %for.cond.66
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.81, %for.body.59
  %67 = load double, double* %sum, align 8
  %68 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %68 to i64
  %69 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %69 to i64
  %70 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx85 = getelementptr inbounds [101 x double], [101 x double]* %70, i64 %idxprom84
  %arrayidx86 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx85, i32 0, i64 %idxprom83
  store double %67, double* %arrayidx86, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %71 to i64
  %72 = load double*, double** @LUtempvv, align 8
  %arrayidx88 = getelementptr inbounds double, double* %72, i64 %idxprom87
  %73 = load double, double* %arrayidx88, align 8
  %74 = load double, double* %sum, align 8
  %call89 = call double @fabs(double %74) #6
  %mul90 = fmul double %73, %call89
  store double %mul90, double* %dum, align 8
  %75 = load double, double* %dum, align 8
  %76 = load double, double* %big, align 8
  %cmp91 = fcmp oge double %75, %76
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.82
  %77 = load double, double* %dum, align 8
  store double %77, double* %big, align 8
  %78 = load i32, i32* %i, align 4
  store i32 %78, i32* %imax, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.end.82
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %79 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %79, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond.57

for.end.96:                                       ; preds = %for.cond.57
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %imax, align 4
  %cmp97 = icmp ne i32 %80, %81
  br i1 %cmp97, label %if.then.98, label %if.end.130

if.then.98:                                       ; preds = %for.end.96
  store i32 0, i32* %k, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.118, %if.then.98
  %82 = load i32, i32* %k, align 4
  %83 = load i32, i32* %n.addr, align 4
  %cmp100 = icmp slt i32 %82, %83
  br i1 %cmp100, label %for.body.101, label %for.end.120

for.body.101:                                     ; preds = %for.cond.99
  %84 = load i32, i32* %k, align 4
  %idxprom102 = sext i32 %84 to i64
  %85 = load i32, i32* %imax, align 4
  %idxprom103 = sext i32 %85 to i64
  %86 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx104 = getelementptr inbounds [101 x double], [101 x double]* %86, i64 %idxprom103
  %arrayidx105 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx104, i32 0, i64 %idxprom102
  %87 = load double, double* %arrayidx105, align 8
  store double %87, double* %dum, align 8
  %88 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %88 to i64
  %89 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %89 to i64
  %90 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx108 = getelementptr inbounds [101 x double], [101 x double]* %90, i64 %idxprom107
  %arrayidx109 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx108, i32 0, i64 %idxprom106
  %91 = load double, double* %arrayidx109, align 8
  %92 = load i32, i32* %k, align 4
  %idxprom110 = sext i32 %92 to i64
  %93 = load i32, i32* %imax, align 4
  %idxprom111 = sext i32 %93 to i64
  %94 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx112 = getelementptr inbounds [101 x double], [101 x double]* %94, i64 %idxprom111
  %arrayidx113 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx112, i32 0, i64 %idxprom110
  store double %91, double* %arrayidx113, align 8
  %95 = load double, double* %dum, align 8
  %96 = load i32, i32* %k, align 4
  %idxprom114 = sext i32 %96 to i64
  %97 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %97 to i64
  %98 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx116 = getelementptr inbounds [101 x double], [101 x double]* %98, i64 %idxprom115
  %arrayidx117 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx116, i32 0, i64 %idxprom114
  store double %95, double* %arrayidx117, align 8
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.101
  %99 = load i32, i32* %k, align 4
  %inc119 = add nsw i32 %99, 1
  store i32 %inc119, i32* %k, align 4
  br label %for.cond.99

for.end.120:                                      ; preds = %for.cond.99
  %100 = load i32*, i32** %d.addr, align 8
  %101 = load i32, i32* %100, align 4
  %sub121 = sub nsw i32 0, %101
  %102 = load i32*, i32** %d.addr, align 8
  store i32 %sub121, i32* %102, align 4
  %103 = load i32, i32* %imax, align 4
  %idxprom122 = sext i32 %103 to i64
  %104 = load double*, double** @LUtempvv, align 8
  %arrayidx123 = getelementptr inbounds double, double* %104, i64 %idxprom122
  %105 = load double, double* %arrayidx123, align 8
  store double %105, double* %dum, align 8
  %106 = load i32, i32* %j, align 4
  %idxprom124 = sext i32 %106 to i64
  %107 = load double*, double** @LUtempvv, align 8
  %arrayidx125 = getelementptr inbounds double, double* %107, i64 %idxprom124
  %108 = load double, double* %arrayidx125, align 8
  %109 = load i32, i32* %imax, align 4
  %idxprom126 = sext i32 %109 to i64
  %110 = load double*, double** @LUtempvv, align 8
  %arrayidx127 = getelementptr inbounds double, double* %110, i64 %idxprom126
  store double %108, double* %arrayidx127, align 8
  %111 = load double, double* %dum, align 8
  %112 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %112 to i64
  %113 = load double*, double** @LUtempvv, align 8
  %arrayidx129 = getelementptr inbounds double, double* %113, i64 %idxprom128
  store double %111, double* %arrayidx129, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %for.end.120, %for.end.96
  %114 = load i32, i32* %imax, align 4
  %115 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %115 to i64
  %116 = load i32*, i32** %indx.addr, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %116, i64 %idxprom131
  store i32 %114, i32* %arrayidx132, align 4
  %117 = load i32, i32* %j, align 4
  %idxprom133 = sext i32 %117 to i64
  %118 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %118 to i64
  %119 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx135 = getelementptr inbounds [101 x double], [101 x double]* %119, i64 %idxprom134
  %arrayidx136 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx135, i32 0, i64 %idxprom133
  %120 = load double, double* %arrayidx136, align 8
  %cmp137 = fcmp oeq double %120, 0.000000e+00
  br i1 %cmp137, label %if.then.138, label %if.end.143

if.then.138:                                      ; preds = %if.end.130
  %121 = load double, double* %tiny, align 8
  %122 = load i32, i32* %j, align 4
  %idxprom139 = sext i32 %122 to i64
  %123 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %123 to i64
  %124 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx141 = getelementptr inbounds [101 x double], [101 x double]* %124, i64 %idxprom140
  %arrayidx142 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx141, i32 0, i64 %idxprom139
  store double %121, double* %arrayidx142, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.138, %if.end.130
  %125 = load i32, i32* %j, align 4
  %126 = load i32, i32* %n.addr, align 4
  %sub144 = sub nsw i32 %126, 1
  %cmp145 = icmp ne i32 %125, %sub144
  br i1 %cmp145, label %if.then.146, label %if.end.167

if.then.146:                                      ; preds = %if.end.143
  %127 = load i32, i32* %j, align 4
  %idxprom147 = sext i32 %127 to i64
  %128 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %128 to i64
  %129 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx149 = getelementptr inbounds [101 x double], [101 x double]* %129, i64 %idxprom148
  %arrayidx150 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx149, i32 0, i64 %idxprom147
  %130 = load double, double* %arrayidx150, align 8
  %div151 = fdiv double 1.000000e+00, %130
  store double %div151, double* %dum, align 8
  %131 = load i32, i32* %j, align 4
  %add = add nsw i32 %131, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.164, %if.then.146
  %132 = load i32, i32* %i, align 4
  %133 = load i32, i32* %n.addr, align 4
  %cmp153 = icmp slt i32 %132, %133
  br i1 %cmp153, label %for.body.154, label %for.end.166

for.body.154:                                     ; preds = %for.cond.152
  %134 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %134 to i64
  %135 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %135 to i64
  %136 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx157 = getelementptr inbounds [101 x double], [101 x double]* %136, i64 %idxprom156
  %arrayidx158 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx157, i32 0, i64 %idxprom155
  %137 = load double, double* %arrayidx158, align 8
  %138 = load double, double* %dum, align 8
  %mul159 = fmul double %137, %138
  %139 = load i32, i32* %j, align 4
  %idxprom160 = sext i32 %139 to i64
  %140 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %140 to i64
  %141 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx162 = getelementptr inbounds [101 x double], [101 x double]* %141, i64 %idxprom161
  %arrayidx163 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx162, i32 0, i64 %idxprom160
  store double %mul159, double* %arrayidx163, align 8
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.body.154
  %142 = load i32, i32* %i, align 4
  %inc165 = add nsw i32 %142, 1
  store i32 %inc165, i32* %i, align 4
  br label %for.cond.152

for.end.166:                                      ; preds = %for.cond.152
  br label %if.end.167

if.end.167:                                       ; preds = %for.end.166, %if.end.143
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.167
  %143 = load i32, i32* %j, align 4
  %inc169 = add nsw i32 %143, 1
  store i32 %inc169, i32* %j, align 4
  br label %for.cond.20

for.end.170:                                      ; preds = %for.cond.20
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.170, %if.then.13
  %144 = load i32, i32* %retval
  ret i32 %144
}

; Function Attrs: nounwind uwtable
define internal void @lubksb([101 x double]* %a, i32 %n, i32* %indx, double* %b) #0 {
entry:
  %a.addr = alloca [101 x double]*, align 8
  %n.addr = alloca i32, align 4
  %indx.addr = alloca i32*, align 8
  %b.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ip = alloca i32, align 4
  %ii = alloca i32, align 4
  %sum = alloca double, align 8
  store [101 x double]* %a, [101 x double]** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32* %indx, i32** %indx.addr, align 8
  store double* %b, double** %b.addr, align 8
  store i32 -1, i32* %ii, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %indx.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %ip, align 4
  %5 = load i32, i32* %ip, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load double*, double** %b.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom1
  %7 = load double, double* %arrayidx2, align 8
  store double %7, double* %sum, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load double*, double** %b.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %9, i64 %idxprom3
  %10 = load double, double* %arrayidx4, align 8
  %11 = load i32, i32* %ip, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load double*, double** %b.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 %idxprom5
  store double %10, double* %arrayidx6, align 8
  %13 = load i32, i32* %ii, align 4
  %cmp7 = icmp ne i32 %13, -1
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %ii, align 4
  store i32 %14, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.then
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %i, align 4
  %cmp9 = icmp slt i32 %15, %16
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %17 = load double, double* %sum, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds [101 x double], [101 x double]* %20, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx13, i32 0, i64 %idxprom11
  %21 = load double, double* %arrayidx14, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %22 to i64
  %23 = load double*, double** %b.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %23, i64 %idxprom15
  %24 = load double, double* %arrayidx16, align 8
  %mul = fmul double %21, %24
  %sub = fsub double %17, %mul
  store double %sub, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %if.end.19

if.else:                                          ; preds = %for.body
  %26 = load double, double* %sum, align 8
  %cmp17 = fcmp une double %26, 0.000000e+00
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else
  %27 = load i32, i32* %i, align 4
  store i32 %27, i32* %ii, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %for.end
  %28 = load double, double* %sum, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %29 to i64
  %30 = load double*, double** %b.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %30, i64 %idxprom20
  store double %28, double* %arrayidx21, align 8
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.19
  %31 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %31, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %32 = load i32, i32* %n.addr, align 4
  %sub25 = sub nsw i32 %32, 1
  store i32 %sub25, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.55, %for.end.24
  %33 = load i32, i32* %i, align 4
  %cmp27 = icmp sge i32 %33, 0
  br i1 %cmp27, label %for.body.28, label %for.end.56

for.body.28:                                      ; preds = %for.cond.26
  %34 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %34 to i64
  %35 = load double*, double** %b.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %35, i64 %idxprom29
  %36 = load double, double* %arrayidx30, align 8
  store double %36, double* %sum, align 8
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %n.addr, align 4
  %sub31 = sub nsw i32 %38, 1
  %cmp32 = icmp ne i32 %37, %sub31
  br i1 %cmp32, label %if.then.33, label %if.end.48

if.then.33:                                       ; preds = %for.body.28
  %39 = load i32, i32* %i, align 4
  %add = add nsw i32 %39, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.45, %if.then.33
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %n.addr, align 4
  %cmp35 = icmp slt i32 %40, %41
  br i1 %cmp35, label %for.body.36, label %for.end.47

for.body.36:                                      ; preds = %for.cond.34
  %42 = load double, double* %sum, align 8
  %43 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %44 to i64
  %45 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx39 = getelementptr inbounds [101 x double], [101 x double]* %45, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx39, i32 0, i64 %idxprom37
  %46 = load double, double* %arrayidx40, align 8
  %47 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %47 to i64
  %48 = load double*, double** %b.addr, align 8
  %arrayidx42 = getelementptr inbounds double, double* %48, i64 %idxprom41
  %49 = load double, double* %arrayidx42, align 8
  %mul43 = fmul double %46, %49
  %sub44 = fsub double %42, %mul43
  store double %sub44, double* %sum, align 8
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.36
  %50 = load i32, i32* %j, align 4
  %inc46 = add nsw i32 %50, 1
  store i32 %inc46, i32* %j, align 4
  br label %for.cond.34

for.end.47:                                       ; preds = %for.cond.34
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %for.body.28
  %51 = load double, double* %sum, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %52 to i64
  %53 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %53 to i64
  %54 = load [101 x double]*, [101 x double]** %a.addr, align 8
  %arrayidx51 = getelementptr inbounds [101 x double], [101 x double]* %54, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [101 x double], [101 x double]* %arrayidx51, i32 0, i64 %idxprom49
  %55 = load double, double* %arrayidx52, align 8
  %div = fdiv double %51, %55
  %56 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %56 to i64
  %57 = load double*, double** %b.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %57, i64 %idxprom53
  store double %div, double* %arrayidx54, align 8
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.48
  %58 = load i32, i32* %i, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.26

for.end.56:                                       ; preds = %for.cond.26
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
