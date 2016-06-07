; ModuleID = 'plan7.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.plan9_s = type { i32, %struct.basic_state*, %struct.basic_state*, %struct.basic_state*, [20 x float], i8*, i8*, i8*, float*, i32 }
%struct.basic_state = type { [3 x float], [20 x float] }

@.str = private unnamed_addr constant [8 x i8] c"plan7.c\00", align 1
@Alphabet_size = external global i32, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@Alphabet_iupac = external global i32, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Average score:  %10.2f bits\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Minimum score:  %10.2f bits\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Maximum score:  %10.2f bits\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Std. deviation: %10.2f bits\0A\00", align 1
@Degenerate = external global [24 x [20 x i8]], align 16

; Function Attrs: nounwind uwtable
define %struct.plan7_s* @AllocPlan7(i32 %M) #0 {
entry:
  %M.addr = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  store i32 %M, i32* %M.addr, align 4
  %call = call %struct.plan7_s* @AllocPlan7Shell()
  store %struct.plan7_s* %call, %struct.plan7_s** %hmm, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %1 = load i32, i32* %M.addr, align 4
  call void @AllocPlan7Body(%struct.plan7_s* %0, i32 %1)
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  ret %struct.plan7_s* %2
}

; Function Attrs: nounwind uwtable
define %struct.plan7_s* @AllocPlan7Shell() #0 {
entry:
  %hmm = alloca %struct.plan7_s*, align 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 54, i64 464)
  %0 = bitcast i8* %call to %struct.plan7_s*
  store %struct.plan7_s* %0, %struct.plan7_s** %hmm, align 8
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1, i32 0, i32 20
  store i32 0, i32* %M, align 4
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %name = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 0
  store i8* null, i8** %name, align 8
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %acc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 1
  store i8* null, i8** %acc, align 8
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %desc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 2
  store i8* null, i8** %desc, align 8
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 3
  store i8* null, i8** %rf, align 8
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 4
  store i8* null, i8** %cs, align 8
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ca = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 5
  store i8* null, i8** %ca, align 8
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 6
  store i8* null, i8** %comlog, align 8
  %9 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nseq = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %9, i32 0, i32 7
  store i32 0, i32* %nseq, align 4
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ctime = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 8
  store i8* null, i8** %ctime, align 8
  %11 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %map = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %11, i32 0, i32 9
  store i32* null, i32** %map, align 8
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %checksum = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 10
  store i32 0, i32* %checksum, align 4
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tpri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 11
  store i32* null, i32** %tpri, align 8
  %14 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mpri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 12
  store i32* null, i32** %mpri, align 8
  %15 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ipri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %15, i32 0, i32 13
  store i32* null, i32** %ipri, align 8
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ga2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 15
  store float 0.000000e+00, float* %ga2, align 4
  %17 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ga1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 14
  store float 0.000000e+00, float* %ga1, align 4
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 17
  store float 0.000000e+00, float* %tc2, align 4
  %19 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 16
  store float 0.000000e+00, float* %tc1, align 4
  %20 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 19
  store float 0.000000e+00, float* %nc2, align 4
  %21 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %21, i32 0, i32 18
  store float 0.000000e+00, float* %nc1, align 4
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 21
  store float** null, float*** %t, align 8
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 22
  store float** null, float*** %mat, align 8
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 23
  store float** null, float*** %ins, align 8
  %25 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 32
  store i32** null, i32*** %isc, align 8
  %26 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 31
  store i32** null, i32*** %msc, align 8
  %27 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %27, i32 0, i32 30
  store i32** null, i32*** %tsc, align 8
  %28 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %msc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 37
  store i32* null, i32** %msc_mem, align 8
  %29 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %msc_mem1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 37
  store i32* null, i32** %msc_mem1, align 8
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tsc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 36
  store i32* null, i32** %tsc_mem, align 8
  %31 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %31, i32 0, i32 26
  store float* null, float** %begin, align 8
  %32 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 27
  store float* null, float** %end, align 8
  %33 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %bsc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %33, i32 0, i32 39
  store i32* null, i32** %bsc_mem, align 8
  %34 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 34
  store i32* null, i32** %bsc, align 8
  %35 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %esc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %35, i32 0, i32 40
  store i32* null, i32** %esc_mem, align 8
  %36 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %36, i32 0, i32 35
  store i32* null, i32** %esc, align 8
  %37 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %dnam = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 41
  store i32** null, i32*** %dnam, align 8
  %38 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %dnai = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %38, i32 0, i32 42
  store i32** null, i32*** %dnai, align 8
  %39 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %dna2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %39, i32 0, i32 43
  store i32 -987654321, i32* %dna2, align 4
  %40 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %dna4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 44
  store i32 -987654321, i32* %dna4, align 4
  %41 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mu = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 45
  store float 0.000000e+00, float* %mu, align 4
  %42 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %lambda = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %42, i32 0, i32 46
  store float 0.000000e+00, float* %lambda, align 4
  %43 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %43, i32 0, i32 47
  store i32 0, i32* %flags, align 4
  %44 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  ret %struct.plan7_s* %44
}

; Function Attrs: nounwind uwtable
define void @AllocPlan7Body(%struct.plan7_s* %hmm, i32 %M) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %M.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  %0 = load i32, i32* %M.addr, align 4
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1, i32 0, i32 20
  store i32 %0, i32* %M1, align 4
  %2 = load i32, i32* %M.addr, align 4
  %add = add nsw i32 %2, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 111, i64 %mul)
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 3
  store i8* %call, i8** %rf, align 8
  %4 = load i32, i32* %M.addr, align 4
  %add2 = add nsw i32 %4, 2
  %conv3 = sext i32 %add2 to i64
  %mul4 = mul i64 %conv3, 1
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 112, i64 %mul4)
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 4
  store i8* %call5, i8** %cs, align 8
  %6 = load i32, i32* %M.addr, align 4
  %add6 = add nsw i32 %6, 2
  %conv7 = sext i32 %add6 to i64
  %mul8 = mul i64 %conv7, 1
  %call9 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 113, i64 %mul8)
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ca = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 5
  store i8* %call9, i8** %ca, align 8
  %8 = load i32, i32* %M.addr, align 4
  %add10 = add nsw i32 %8, 1
  %conv11 = sext i32 %add10 to i64
  %mul12 = mul i64 %conv11, 4
  %call13 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 114, i64 %mul12)
  %9 = bitcast i8* %call13 to i32*
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %map = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 9
  store i32* %9, i32** %map, align 8
  %11 = load i32, i32* %M.addr, align 4
  %conv14 = sext i32 %11 to i64
  %mul15 = mul i64 %conv14, 8
  %call16 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 116, i64 %mul15)
  %12 = bitcast i8* %call16 to float**
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 21
  store float** %12, float*** %t, align 8
  %14 = load i32, i32* %M.addr, align 4
  %add17 = add nsw i32 %14, 1
  %conv18 = sext i32 %add17 to i64
  %mul19 = mul i64 %conv18, 8
  %call20 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 117, i64 %mul19)
  %15 = bitcast i8* %call20 to float**
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 22
  store float** %15, float*** %mat, align 8
  %17 = load i32, i32* %M.addr, align 4
  %conv21 = sext i32 %17 to i64
  %mul22 = mul i64 %conv21, 8
  %call23 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 118, i64 %mul22)
  %18 = bitcast i8* %call23 to float**
  %19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 23
  store float** %18, float*** %ins, align 8
  %20 = load i32, i32* %M.addr, align 4
  %mul24 = mul nsw i32 7, %20
  %conv25 = sext i32 %mul24 to i64
  %mul26 = mul i64 %conv25, 4
  %call27 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 119, i64 %mul26)
  %21 = bitcast i8* %call27 to float*
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 21
  %23 = load float**, float*** %t28, align 8
  %arrayidx = getelementptr inbounds float*, float** %23, i64 0
  store float* %21, float** %arrayidx, align 8
  %24 = load i32, i32* %M.addr, align 4
  %add29 = add nsw i32 %24, 1
  %mul30 = mul nsw i32 20, %add29
  %conv31 = sext i32 %mul30 to i64
  %mul32 = mul i64 %conv31, 4
  %call33 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 120, i64 %mul32)
  %25 = bitcast i8* %call33 to float*
  %26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat34 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 22
  %27 = load float**, float*** %mat34, align 8
  %arrayidx35 = getelementptr inbounds float*, float** %27, i64 0
  store float* %25, float** %arrayidx35, align 8
  %28 = load i32, i32* %M.addr, align 4
  %mul36 = mul nsw i32 20, %28
  %conv37 = sext i32 %mul36 to i64
  %mul38 = mul i64 %conv37, 4
  %call39 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 121, i64 %mul38)
  %29 = bitcast i8* %call39 to float*
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins40 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 23
  %31 = load float**, float*** %ins40, align 8
  %arrayidx41 = getelementptr inbounds float*, float** %31, i64 0
  store float* %29, float** %arrayidx41, align 8
  %call42 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 123, i64 56)
  %32 = bitcast i8* %call42 to i32**
  %33 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %33, i32 0, i32 30
  store i32** %32, i32*** %tsc, align 8
  %call43 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 124, i64 192)
  %34 = bitcast i8* %call43 to i32**
  %35 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %35, i32 0, i32 31
  store i32** %34, i32*** %msc, align 8
  %call44 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 125, i64 192)
  %36 = bitcast i8* %call44 to i32**
  %37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 32
  store i32** %36, i32*** %isc, align 8
  %38 = load i32, i32* %M.addr, align 4
  %mul45 = mul nsw i32 7, %38
  %conv46 = sext i32 %mul45 to i64
  %mul47 = mul i64 %conv46, 4
  %call48 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 126, i64 %mul47)
  %39 = bitcast i8* %call48 to i32*
  %40 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 36
  store i32* %39, i32** %tsc_mem, align 8
  %41 = load i32, i32* %M.addr, align 4
  %add49 = add nsw i32 %41, 1
  %mul50 = mul nsw i32 24, %add49
  %conv51 = sext i32 %mul50 to i64
  %mul52 = mul i64 %conv51, 4
  %call53 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 127, i64 %mul52)
  %42 = bitcast i8* %call53 to i32*
  %43 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %43, i32 0, i32 37
  store i32* %42, i32** %msc_mem, align 8
  %44 = load i32, i32* %M.addr, align 4
  %mul54 = mul nsw i32 24, %44
  %conv55 = sext i32 %mul54 to i64
  %mul56 = mul i64 %conv55, 4
  %call57 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 128, i64 %mul56)
  %45 = bitcast i8* %call57 to i32*
  %46 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %46, i32 0, i32 38
  store i32* %45, i32** %isc_mem, align 8
  %47 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc_mem58 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %47, i32 0, i32 36
  %48 = load i32*, i32** %tsc_mem58, align 8
  %49 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc59 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %49, i32 0, i32 30
  %50 = load i32**, i32*** %tsc59, align 8
  %arrayidx60 = getelementptr inbounds i32*, i32** %50, i64 0
  store i32* %48, i32** %arrayidx60, align 8
  %51 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc_mem61 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %51, i32 0, i32 37
  %52 = load i32*, i32** %msc_mem61, align 8
  %53 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc62 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %53, i32 0, i32 31
  %54 = load i32**, i32*** %msc62, align 8
  %arrayidx63 = getelementptr inbounds i32*, i32** %54, i64 0
  store i32* %52, i32** %arrayidx63, align 8
  %55 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc_mem64 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %55, i32 0, i32 38
  %56 = load i32*, i32** %isc_mem64, align 8
  %57 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc65 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %57, i32 0, i32 32
  %58 = load i32**, i32*** %isc65, align 8
  %arrayidx66 = getelementptr inbounds i32*, i32** %58, i64 0
  store i32* %56, i32** %arrayidx66, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %59 = load i32, i32* %k, align 4
  %60 = load i32, i32* %M.addr, align 4
  %cmp = icmp sle i32 %59, %60
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat68 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %61, i32 0, i32 22
  %62 = load float**, float*** %mat68, align 8
  %arrayidx69 = getelementptr inbounds float*, float** %62, i64 0
  %63 = load float*, float** %arrayidx69, align 8
  %64 = load i32, i32* %k, align 4
  %mul70 = mul nsw i32 %64, 20
  %idx.ext = sext i32 %mul70 to i64
  %add.ptr = getelementptr inbounds float, float* %63, i64 %idx.ext
  %65 = load i32, i32* %k, align 4
  %idxprom = sext i32 %65 to i64
  %66 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat71 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 22
  %67 = load float**, float*** %mat71, align 8
  %arrayidx72 = getelementptr inbounds float*, float** %67, i64 %idxprom
  store float* %add.ptr, float** %arrayidx72, align 8
  %68 = load i32, i32* %k, align 4
  %69 = load i32, i32* %M.addr, align 4
  %cmp73 = icmp slt i32 %68, %69
  br i1 %cmp73, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %70 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins75 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %70, i32 0, i32 23
  %71 = load float**, float*** %ins75, align 8
  %arrayidx76 = getelementptr inbounds float*, float** %71, i64 0
  %72 = load float*, float** %arrayidx76, align 8
  %73 = load i32, i32* %k, align 4
  %mul77 = mul nsw i32 %73, 20
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds float, float* %72, i64 %idx.ext78
  %74 = load i32, i32* %k, align 4
  %idxprom80 = sext i32 %74 to i64
  %75 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins81 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %75, i32 0, i32 23
  %76 = load float**, float*** %ins81, align 8
  %arrayidx82 = getelementptr inbounds float*, float** %76, i64 %idxprom80
  store float* %add.ptr79, float** %arrayidx82, align 8
  %77 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t83 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %77, i32 0, i32 21
  %78 = load float**, float*** %t83, align 8
  %arrayidx84 = getelementptr inbounds float*, float** %78, i64 0
  %79 = load float*, float** %arrayidx84, align 8
  %80 = load i32, i32* %k, align 4
  %mul85 = mul nsw i32 %80, 7
  %idx.ext86 = sext i32 %mul85 to i64
  %add.ptr87 = getelementptr inbounds float, float* %79, i64 %idx.ext86
  %81 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %81 to i64
  %82 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t89 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 21
  %83 = load float**, float*** %t89, align 8
  %arrayidx90 = getelementptr inbounds float*, float** %83, i64 %idxprom88
  store float* %add.ptr87, float** %arrayidx90, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %84 = load i32, i32* %k, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %x, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.112, %for.end
  %85 = load i32, i32* %x, align 4
  %cmp92 = icmp slt i32 %85, 24
  br i1 %cmp92, label %for.body.94, label %for.end.114

for.body.94:                                      ; preds = %for.cond.91
  %86 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc95 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %86, i32 0, i32 31
  %87 = load i32**, i32*** %msc95, align 8
  %arrayidx96 = getelementptr inbounds i32*, i32** %87, i64 0
  %88 = load i32*, i32** %arrayidx96, align 8
  %89 = load i32, i32* %x, align 4
  %90 = load i32, i32* %M.addr, align 4
  %add97 = add nsw i32 %90, 1
  %mul98 = mul nsw i32 %89, %add97
  %idx.ext99 = sext i32 %mul98 to i64
  %add.ptr100 = getelementptr inbounds i32, i32* %88, i64 %idx.ext99
  %91 = load i32, i32* %x, align 4
  %idxprom101 = sext i32 %91 to i64
  %92 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc102 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %92, i32 0, i32 31
  %93 = load i32**, i32*** %msc102, align 8
  %arrayidx103 = getelementptr inbounds i32*, i32** %93, i64 %idxprom101
  store i32* %add.ptr100, i32** %arrayidx103, align 8
  %94 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc104 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %94, i32 0, i32 32
  %95 = load i32**, i32*** %isc104, align 8
  %arrayidx105 = getelementptr inbounds i32*, i32** %95, i64 0
  %96 = load i32*, i32** %arrayidx105, align 8
  %97 = load i32, i32* %x, align 4
  %98 = load i32, i32* %M.addr, align 4
  %mul106 = mul nsw i32 %97, %98
  %idx.ext107 = sext i32 %mul106 to i64
  %add.ptr108 = getelementptr inbounds i32, i32* %96, i64 %idx.ext107
  %99 = load i32, i32* %x, align 4
  %idxprom109 = sext i32 %99 to i64
  %100 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc110 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %100, i32 0, i32 32
  %101 = load i32**, i32*** %isc110, align 8
  %arrayidx111 = getelementptr inbounds i32*, i32** %101, i64 %idxprom109
  store i32* %add.ptr108, i32** %arrayidx111, align 8
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.94
  %102 = load i32, i32* %x, align 4
  %inc113 = add nsw i32 %102, 1
  store i32 %inc113, i32* %x, align 4
  br label %for.cond.91

for.end.114:                                      ; preds = %for.cond.91
  store i32 0, i32* %x, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.127, %for.end.114
  %103 = load i32, i32* %x, align 4
  %cmp116 = icmp slt i32 %103, 7
  br i1 %cmp116, label %for.body.118, label %for.end.129

for.body.118:                                     ; preds = %for.cond.115
  %104 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc119 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %104, i32 0, i32 30
  %105 = load i32**, i32*** %tsc119, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %105, i64 0
  %106 = load i32*, i32** %arrayidx120, align 8
  %107 = load i32, i32* %x, align 4
  %108 = load i32, i32* %M.addr, align 4
  %mul121 = mul nsw i32 %107, %108
  %idx.ext122 = sext i32 %mul121 to i64
  %add.ptr123 = getelementptr inbounds i32, i32* %106, i64 %idx.ext122
  %109 = load i32, i32* %x, align 4
  %idxprom124 = sext i32 %109 to i64
  %110 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc125 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %110, i32 0, i32 30
  %111 = load i32**, i32*** %tsc125, align 8
  %arrayidx126 = getelementptr inbounds i32*, i32** %111, i64 %idxprom124
  store i32* %add.ptr123, i32** %arrayidx126, align 8
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.118
  %112 = load i32, i32* %x, align 4
  %inc128 = add nsw i32 %112, 1
  store i32 %inc128, i32* %x, align 4
  br label %for.cond.115

for.end.129:                                      ; preds = %for.cond.115
  store i32 0, i32* %x, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.138, %for.end.129
  %113 = load i32, i32* %x, align 4
  %cmp131 = icmp slt i32 %113, 7
  br i1 %cmp131, label %for.body.133, label %for.end.140

for.body.133:                                     ; preds = %for.cond.130
  %114 = load i32, i32* %x, align 4
  %idxprom134 = sext i32 %114 to i64
  %115 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc135 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %115, i32 0, i32 30
  %116 = load i32**, i32*** %tsc135, align 8
  %arrayidx136 = getelementptr inbounds i32*, i32** %116, i64 %idxprom134
  %117 = load i32*, i32** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 -987654321, i32* %arrayidx137, align 4
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.body.133
  %118 = load i32, i32* %x, align 4
  %inc139 = add nsw i32 %118, 1
  store i32 %inc139, i32* %x, align 4
  br label %for.cond.130

for.end.140:                                      ; preds = %for.cond.130
  %119 = load i32, i32* %M.addr, align 4
  %add141 = add nsw i32 %119, 1
  %conv142 = sext i32 %add141 to i64
  %mul143 = mul i64 %conv142, 4
  %call144 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 157, i64 %mul143)
  %120 = bitcast i8* %call144 to float*
  %121 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %121, i32 0, i32 26
  store float* %120, float** %begin, align 8
  %122 = load i32, i32* %M.addr, align 4
  %add145 = add nsw i32 %122, 1
  %conv146 = sext i32 %add145 to i64
  %mul147 = mul i64 %conv146, 4
  %call148 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 158, i64 %mul147)
  %123 = bitcast i8* %call148 to float*
  %124 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %124, i32 0, i32 27
  store float* %123, float** %end, align 8
  %125 = load i32, i32* %M.addr, align 4
  %add149 = add nsw i32 %125, 1
  %conv150 = sext i32 %add149 to i64
  %mul151 = mul i64 %conv150, 4
  %call152 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 160, i64 %mul151)
  %126 = bitcast i8* %call152 to i32*
  %127 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %127, i32 0, i32 39
  store i32* %126, i32** %bsc_mem, align 8
  %128 = load i32, i32* %M.addr, align 4
  %add153 = add nsw i32 %128, 1
  %conv154 = sext i32 %add153 to i64
  %mul155 = mul i64 %conv154, 4
  %call156 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 161, i64 %mul155)
  %129 = bitcast i8* %call156 to i32*
  %130 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %130, i32 0, i32 40
  store i32* %129, i32** %esc_mem, align 8
  %131 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc_mem157 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %131, i32 0, i32 39
  %132 = load i32*, i32** %bsc_mem157, align 8
  %133 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %133, i32 0, i32 34
  store i32* %132, i32** %bsc, align 8
  %134 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc_mem158 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %134, i32 0, i32 40
  %135 = load i32*, i32** %esc_mem158, align 8
  %136 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %136, i32 0, i32 35
  store i32* %135, i32** %esc, align 8
  ret void
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define void @FreePlan7(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %name1, align 8
  call void @free(i8* %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %acc, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 1
  %7 = load i8*, i8** %acc4, align 8
  call void @free(i8* %7) #5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 2
  %9 = load i8*, i8** %desc, align 8
  %cmp6 = icmp ne i8* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc8 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 2
  %11 = load i8*, i8** %desc8, align 8
  call void @free(i8* %11) #5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 3
  %13 = load i8*, i8** %rf, align 8
  %cmp10 = icmp ne i8* %13, null
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 3
  %15 = load i8*, i8** %rf12, align 8
  call void @free(i8* %15) #5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 4
  %17 = load i8*, i8** %cs, align 8
  %cmp14 = icmp ne i8* %17, null
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs16 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 4
  %19 = load i8*, i8** %cs16, align 8
  call void @free(i8* %19) #5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ca = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 5
  %21 = load i8*, i8** %ca, align 8
  %cmp18 = icmp ne i8* %21, null
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ca20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 5
  %23 = load i8*, i8** %ca20, align 8
  call void @free(i8* %23) #5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 6
  %25 = load i8*, i8** %comlog, align 8
  %cmp22 = icmp ne i8* %25, null
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 6
  %27 = load i8*, i8** %comlog24, align 8
  call void @free(i8* %27) #5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  %28 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 8
  %29 = load i8*, i8** %ctime, align 8
  %cmp26 = icmp ne i8* %29, null
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.25
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 8
  %31 = load i8*, i8** %ctime28, align 8
  call void @free(i8* %31) #5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.25
  %32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %map = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 9
  %33 = load i32*, i32** %map, align 8
  %cmp30 = icmp ne i32* %33, null
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %34 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %map32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 9
  %35 = load i32*, i32** %map32, align 8
  %36 = bitcast i32* %35 to i8*
  call void @free(i8* %36) #5
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 11
  %38 = load i32*, i32** %tpri, align 8
  %cmp34 = icmp ne i32* %38, null
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.33
  %39 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri36 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %39, i32 0, i32 11
  %40 = load i32*, i32** %tpri36, align 8
  %41 = bitcast i32* %40 to i8*
  call void @free(i8* %41) #5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.33
  %42 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %42, i32 0, i32 12
  %43 = load i32*, i32** %mpri, align 8
  %cmp38 = icmp ne i32* %43, null
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.37
  %44 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri40 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %44, i32 0, i32 12
  %45 = load i32*, i32** %mpri40, align 8
  %46 = bitcast i32* %45 to i8*
  call void @free(i8* %46) #5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.37
  %47 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %47, i32 0, i32 13
  %48 = load i32*, i32** %ipri, align 8
  %cmp42 = icmp ne i32* %48, null
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.41
  %49 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %49, i32 0, i32 13
  %50 = load i32*, i32** %ipri44, align 8
  %51 = bitcast i32* %50 to i8*
  call void @free(i8* %51) #5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.41
  %52 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %52, i32 0, i32 39
  %53 = load i32*, i32** %bsc_mem, align 8
  %cmp46 = icmp ne i32* %53, null
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.45
  %54 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc_mem48 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %54, i32 0, i32 39
  %55 = load i32*, i32** %bsc_mem48, align 8
  %56 = bitcast i32* %55 to i8*
  call void @free(i8* %56) #5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.45
  %57 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %57, i32 0, i32 26
  %58 = load float*, float** %begin, align 8
  %cmp50 = icmp ne float* %58, null
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.49
  %59 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin52 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %59, i32 0, i32 26
  %60 = load float*, float** %begin52, align 8
  %61 = bitcast float* %60 to i8*
  call void @free(i8* %61) #5
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.49
  %62 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %62, i32 0, i32 40
  %63 = load i32*, i32** %esc_mem, align 8
  %cmp54 = icmp ne i32* %63, null
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.53
  %64 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc_mem56 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %64, i32 0, i32 40
  %65 = load i32*, i32** %esc_mem56, align 8
  %66 = bitcast i32* %65 to i8*
  call void @free(i8* %66) #5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.53
  %67 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %67, i32 0, i32 27
  %68 = load float*, float** %end, align 8
  %cmp58 = icmp ne float* %68, null
  br i1 %cmp58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.57
  %69 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end60 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %69, i32 0, i32 27
  %70 = load float*, float** %end60, align 8
  %71 = bitcast float* %70 to i8*
  call void @free(i8* %71) #5
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.57
  %72 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %72, i32 0, i32 37
  %73 = load i32*, i32** %msc_mem, align 8
  %cmp62 = icmp ne i32* %73, null
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.61
  %74 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc_mem64 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 37
  %75 = load i32*, i32** %msc_mem64, align 8
  %76 = bitcast i32* %75 to i8*
  call void @free(i8* %76) #5
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.61
  %77 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %77, i32 0, i32 38
  %78 = load i32*, i32** %isc_mem, align 8
  %cmp66 = icmp ne i32* %78, null
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.65
  %79 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc_mem68 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %79, i32 0, i32 38
  %80 = load i32*, i32** %isc_mem68, align 8
  %81 = bitcast i32* %80 to i8*
  call void @free(i8* %81) #5
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.65
  %82 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 36
  %83 = load i32*, i32** %tsc_mem, align 8
  %cmp70 = icmp ne i32* %83, null
  br i1 %cmp70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.69
  %84 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc_mem72 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %84, i32 0, i32 36
  %85 = load i32*, i32** %tsc_mem72, align 8
  %86 = bitcast i32* %85 to i8*
  call void @free(i8* %86) #5
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.end.69
  %87 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %87, i32 0, i32 22
  %88 = load float**, float*** %mat, align 8
  %cmp74 = icmp ne float** %88, null
  br i1 %cmp74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.73
  %89 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat76 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %89, i32 0, i32 22
  %90 = load float**, float*** %mat76, align 8
  %arrayidx = getelementptr inbounds float*, float** %90, i64 0
  %91 = load float*, float** %arrayidx, align 8
  %92 = bitcast float* %91 to i8*
  call void @free(i8* %92) #5
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.73
  %93 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %93, i32 0, i32 23
  %94 = load float**, float*** %ins, align 8
  %cmp78 = icmp ne float** %94, null
  br i1 %cmp78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %if.end.77
  %95 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins80 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %95, i32 0, i32 23
  %96 = load float**, float*** %ins80, align 8
  %arrayidx81 = getelementptr inbounds float*, float** %96, i64 0
  %97 = load float*, float** %arrayidx81, align 8
  %98 = bitcast float* %97 to i8*
  call void @free(i8* %98) #5
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %if.end.77
  %99 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %99, i32 0, i32 21
  %100 = load float**, float*** %t, align 8
  %cmp83 = icmp ne float** %100, null
  br i1 %cmp83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.end.82
  %101 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t85 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %101, i32 0, i32 21
  %102 = load float**, float*** %t85, align 8
  %arrayidx86 = getelementptr inbounds float*, float** %102, i64 0
  %103 = load float*, float** %arrayidx86, align 8
  %104 = bitcast float* %103 to i8*
  call void @free(i8* %104) #5
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %if.end.82
  %105 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %105, i32 0, i32 31
  %106 = load i32**, i32*** %msc, align 8
  %cmp88 = icmp ne i32** %106, null
  br i1 %cmp88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.87
  %107 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc90 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %107, i32 0, i32 31
  %108 = load i32**, i32*** %msc90, align 8
  %109 = bitcast i32** %108 to i8*
  call void @free(i8* %109) #5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.87
  %110 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %110, i32 0, i32 32
  %111 = load i32**, i32*** %isc, align 8
  %cmp92 = icmp ne i32** %111, null
  br i1 %cmp92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.end.91
  %112 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc94 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %112, i32 0, i32 32
  %113 = load i32**, i32*** %isc94, align 8
  %114 = bitcast i32** %113 to i8*
  call void @free(i8* %114) #5
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.end.91
  %115 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %115, i32 0, i32 30
  %116 = load i32**, i32*** %tsc, align 8
  %cmp96 = icmp ne i32** %116, null
  br i1 %cmp96, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.end.95
  %117 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc98 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %117, i32 0, i32 30
  %118 = load i32**, i32*** %tsc98, align 8
  %119 = bitcast i32** %118 to i8*
  call void @free(i8* %119) #5
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %if.end.95
  %120 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat100 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %120, i32 0, i32 22
  %121 = load float**, float*** %mat100, align 8
  %cmp101 = icmp ne float** %121, null
  br i1 %cmp101, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.99
  %122 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %122, i32 0, i32 22
  %123 = load float**, float*** %mat103, align 8
  %124 = bitcast float** %123 to i8*
  call void @free(i8* %124) #5
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.end.99
  %125 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins105 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %125, i32 0, i32 23
  %126 = load float**, float*** %ins105, align 8
  %cmp106 = icmp ne float** %126, null
  br i1 %cmp106, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.end.104
  %127 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins108 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %127, i32 0, i32 23
  %128 = load float**, float*** %ins108, align 8
  %129 = bitcast float** %128 to i8*
  call void @free(i8* %129) #5
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.end.104
  %130 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t110 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %130, i32 0, i32 21
  %131 = load float**, float*** %t110, align 8
  %cmp111 = icmp ne float** %131, null
  br i1 %cmp111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.end.109
  %132 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t113 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %132, i32 0, i32 21
  %133 = load float**, float*** %t113, align 8
  %134 = bitcast float** %133 to i8*
  call void @free(i8* %134) #5
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.end.109
  %135 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnam = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %135, i32 0, i32 41
  %136 = load i32**, i32*** %dnam, align 8
  %cmp115 = icmp ne i32** %136, null
  br i1 %cmp115, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.end.114
  %137 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnam117 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %137, i32 0, i32 41
  %138 = load i32**, i32*** %dnam117, align 8
  %139 = bitcast i32** %138 to i8*
  call void @free(i8* %139) #5
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.end.114
  %140 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnai = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %140, i32 0, i32 42
  %141 = load i32**, i32*** %dnai, align 8
  %cmp119 = icmp ne i32** %141, null
  br i1 %cmp119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.end.118
  %142 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnai121 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %142, i32 0, i32 42
  %143 = load i32**, i32*** %dnai121, align 8
  %144 = bitcast i32** %143 to i8*
  call void @free(i8* %144) #5
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.end.118
  %145 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %146 = bitcast %struct.plan7_s* %145 to i8*
  call void @free(i8* %146) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @ZeroPlan7(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %k = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1, i32 0, i32 20
  %2 = load i32, i32* %M, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 21
  %5 = load float**, float*** %t, align 8
  %arrayidx = getelementptr inbounds float*, float** %5, i64 %idxprom
  %6 = load float*, float** %arrayidx, align 8
  call void @FSet(float* %6, i32 7, float 0.000000e+00)
  %7 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 22
  %9 = load float**, float*** %mat, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %9, i64 %idxprom1
  %10 = load float*, float** %arrayidx2, align 8
  %11 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %10, i32 %11, float 0.000000e+00)
  %12 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 23
  %14 = load float**, float*** %ins, align 8
  %arrayidx4 = getelementptr inbounds float*, float** %14, i64 %idxprom3
  %15 = load float*, float** %arrayidx4, align 8
  %16 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %15, i32 %16, float 0.000000e+00)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M5 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 20
  %19 = load i32, i32* %M5, align 4
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat7 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 22
  %21 = load float**, float*** %mat7, align 8
  %arrayidx8 = getelementptr inbounds float*, float** %21, i64 %idxprom6
  %22 = load float*, float** %arrayidx8, align 8
  %23 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %22, i32 %23, float 0.000000e+00)
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 24
  store float 0.000000e+00, float* %tbd1, align 4
  %25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 26
  %26 = load float*, float** %begin, align 8
  %add.ptr = getelementptr inbounds float, float* %26, i64 1
  %27 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M9 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %27, i32 0, i32 20
  %28 = load i32, i32* %M9, align 4
  call void @FSet(float* %add.ptr, i32 %28, float 0.000000e+00)
  %29 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 27
  %30 = load float*, float** %end, align 8
  %add.ptr10 = getelementptr inbounds float, float* %30, i64 1
  %31 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %31, i32 0, i32 20
  %32 = load i32, i32* %M11, align 4
  call void @FSet(float* %add.ptr10, i32 %32, float 0.000000e+00)
  store i32 0, i32* %k, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.17, %for.end
  %33 = load i32, i32* %k, align 4
  %cmp13 = icmp slt i32 %33, 4
  br i1 %cmp13, label %for.body.14, label %for.end.19

for.body.14:                                      ; preds = %for.cond.12
  %34 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %34 to i64
  %35 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %35, i32 0, i32 25
  %arrayidx16 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 %idxprom15
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %arrayidx16, i32 0, i32 0
  call void @FSet(float* %arraydecay, i32 2, float 0.000000e+00)
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.14
  %36 = load i32, i32* %k, align 4
  %inc18 = add nsw i32 %36, 1
  store i32 %inc18, i32* %k, align 4
  br label %for.cond.12

for.end.19:                                       ; preds = %for.cond.12
  %37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 47
  %38 = load i32, i32* %flags, align 4
  %and = and i32 %38, -2
  store i32 %and, i32* %flags, align 4
  %39 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %39, i32 0, i32 47
  %40 = load i32, i32* %flags20, align 4
  %and21 = and i32 %40, -33
  store i32 %and21, i32* %flags20, align 4
  ret void
}

declare void @FSet(float*, i32, float) #1

; Function Attrs: nounwind uwtable
define void @Plan7SetName(%struct.plan7_s* %hmm, i8* %name) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %name1, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %name2, align 8
  call void @free(i8* %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %name.addr, align 8
  %call = call i8* @Strdup(i8* %4)
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name3 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 0
  store i8* %call, i8** %name3, align 8
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %name4, align 8
  call void @StringChop(i8* %7)
  ret void
}

declare i8* @Strdup(i8*) #1

declare void @StringChop(i8*) #1

; Function Attrs: nounwind uwtable
define void @Plan7SetAccession(%struct.plan7_s* %hmm, i8* %acc) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %acc.addr = alloca i8*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %acc, i8** %acc.addr, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %acc1, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %acc2, align 8
  call void @free(i8* %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %acc.addr, align 8
  %call = call i8* @Strdup(i8* %4)
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc3 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 1
  store i8* %call, i8** %acc3, align 8
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 1
  %7 = load i8*, i8** %acc4, align 8
  call void @StringChop(i8* %7)
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 47
  %9 = load i32, i32* %flags, align 4
  %or = or i32 %9, 512
  store i32 %or, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7SetDescription(%struct.plan7_s* %hmm, i8* %desc) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %desc.addr = alloca i8*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %desc, i8** %desc.addr, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %desc1, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 2
  %3 = load i8*, i8** %desc2, align 8
  call void @free(i8* %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %desc.addr, align 8
  %call = call i8* @Strdup(i8* %4)
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc3 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 2
  store i8* %call, i8** %desc3, align 8
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 2
  %7 = load i8*, i8** %desc4, align 8
  call void @StringChop(i8* %7)
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 47
  %9 = load i32, i32* %flags, align 4
  %or = or i32 %9, 2
  store i32 %or, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7ComlogAppend(%struct.plan7_s* %hmm, i32 %argc, i8** %argv) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  store i32 %0, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %5) #6
  %6 = load i32, i32* %len, align 4
  %conv = sext i32 %6 to i64
  %add = add i64 %conv, %call
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 6
  %9 = load i8*, i8** %comlog, align 8
  %cmp2 = icmp ne i8* %9, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 6
  %11 = load i8*, i8** %comlog4, align 8
  %call5 = call i64 @strlen(i8* %11) #6
  %12 = load i32, i32* %len, align 4
  %conv6 = sext i32 %12 to i64
  %add7 = add i64 %conv6, %call5
  %conv8 = trunc i64 %add7 to i32
  store i32 %conv8, i32* %len, align 4
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog9 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 6
  %14 = load i8*, i8** %comlog9, align 8
  %15 = load i32, i32* %len, align 4
  %add10 = add nsw i32 %15, 1
  %conv11 = sext i32 %add10 to i64
  %mul = mul i64 1, %conv11
  %call12 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 296, i8* %14, i64 %mul)
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 6
  store i8* %call12, i8** %comlog13, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  %17 = load i32, i32* %len, align 4
  %add14 = add nsw i32 %17, 1
  %conv15 = sext i32 %add14 to i64
  %mul16 = mul i64 1, %conv15
  %call17 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 300, i64 %mul16)
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 6
  store i8* %call17, i8** %comlog18, align 8
  %19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog19 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 6
  %20 = load i8*, i8** %comlog19, align 8
  store i8 0, i8* %20, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %21, i32 0, i32 6
  %22 = load i8*, i8** %comlog20, align 8
  %call21 = call i8* @strcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.36, %if.end
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %argc.addr, align 4
  %cmp23 = icmp slt i32 %23, %24
  br i1 %cmp23, label %for.body.25, label %for.end.38

for.body.25:                                      ; preds = %for.cond.22
  %25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog26 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 6
  %26 = load i8*, i8** %comlog26, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %28, i64 %idxprom27
  %29 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i8* @strcat(i8* %26, i8* %29) #5
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %31, 1
  %cmp30 = icmp slt i32 %30, %sub
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %for.body.25
  %32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog33 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 6
  %33 = load i8*, i8** %comlog33, align 8
  %call34 = call i8* @strcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %for.body.25
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %34 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %34, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.22

for.end.38:                                       ; preds = %for.cond.22
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @Plan7SetCtime(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %date = alloca i64, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %call = call i64 @time(i64* null) #5
  store i64 %call, i64* %date, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 8
  %1 = load i8*, i8** %ctime, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 8
  %3 = load i8*, i8** %ctime1, align 8
  call void @free(i8* %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i8* @ctime(i64* %date) #5
  %call3 = call i8* @Strdup(i8* %call2)
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 8
  store i8* %call3, i8** %ctime4, align 8
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime5 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 8
  %6 = load i8*, i8** %ctime5, align 8
  call void @StringChop(i8* %6)
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #2

; Function Attrs: nounwind uwtable
define void @Plan7SetNullModel(%struct.plan7_s* %hmm, float* %null, float %p1) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %null.addr = alloca float*, align 8
  %p1.addr = alloca float, align 4
  %x = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store float* %null, float** %null.addr, align 8
  store float %p1, float* %p1.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* @Alphabet_size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %null.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 28
  %arrayidx3 = getelementptr inbounds [20 x float], [20 x float]* %null2, i32 0, i64 %idxprom1
  store float %4, float* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %x, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load float, float* %p1.addr, align 4
  %9 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %9, i32 0, i32 29
  store float %8, float* %p14, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @P7Logoddsify(%struct.plan7_s* %hmm, i32 %viterbi_mode) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %viterbi_mode.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %accum = alloca float, align 4
  %tbm = alloca float, align 4
  %tme = alloca float, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 %viterbi_mode, i32* %viterbi_mode.addr, align 4
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 47
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %if.end
  %2 = load i32, i32* %k, align 4
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 20
  %4 = load i32, i32* %M, align 4
  %cmp = icmp sle i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* @Alphabet_size, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %x, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %9, i32 0, i32 22
  %10 = load float**, float*** %mat, align 8
  %arrayidx = getelementptr inbounds float*, float** %10, i64 %idxprom4
  %11 = load float*, float** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds float, float* %11, i64 %idxprom
  %12 = load float, float* %arrayidx5, align 4
  %13 = load i32, i32* %x, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 28
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i64 %idxprom6
  %15 = load float, float* %arrayidx7, align 4
  %call = call i32 @Prob2Score(float %12, float %15)
  %16 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load i32, i32* %x, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 31
  %19 = load i32**, i32*** %msc, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %19, i64 %idxprom9
  %20 = load i32*, i32** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 %idxprom8
  store i32 %call, i32* %arrayidx11, align 4
  %21 = load i32, i32* %k, align 4
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 20
  %23 = load i32, i32* %M12, align 4
  %cmp13 = icmp slt i32 %21, %23
  br i1 %cmp13, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %for.body.3
  %24 = load i32, i32* %x, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 23
  %27 = load float**, float*** %ins, align 8
  %arrayidx17 = getelementptr inbounds float*, float** %27, i64 %idxprom16
  %28 = load float*, float** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds float, float* %28, i64 %idxprom15
  %29 = load float, float* %arrayidx18, align 4
  %30 = load i32, i32* %x, align 4
  %idxprom19 = sext i32 %30 to i64
  %31 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %31, i32 0, i32 28
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %null20, i32 0, i64 %idxprom19
  %32 = load float, float* %arrayidx21, align 4
  %call22 = call i32 @Prob2Score(float %29, float %32)
  %33 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load i32, i32* %x, align 4
  %idxprom24 = sext i32 %34 to i64
  %35 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %35, i32 0, i32 32
  %36 = load i32**, i32*** %isc, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %36, i64 %idxprom24
  %37 = load i32*, i32** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %37, i64 %idxprom23
  store i32 %call22, i32* %arrayidx26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.14, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %38 = load i32, i32* %x, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %39 = load i32, i32* @Alphabet_size, align 4
  store i32 %39, i32* %x, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.56, %for.end
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* @Alphabet_iupac, align 4
  %cmp29 = icmp slt i32 %40, %41
  br i1 %cmp29, label %for.body.30, label %for.end.58

for.body.30:                                      ; preds = %for.cond.28
  %42 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %42 to i64
  %43 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %43, i32 0, i32 22
  %44 = load float**, float*** %mat32, align 8
  %arrayidx33 = getelementptr inbounds float*, float** %44, i64 %idxprom31
  %45 = load float*, float** %arrayidx33, align 8
  %46 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null34 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %46, i32 0, i32 28
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %null34, i32 0, i32 0
  %47 = load i32, i32* %x, align 4
  %call35 = call i32 @DegenerateSymbolScore(float* %45, float* %arraydecay, i32 %47)
  %48 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %48 to i64
  %49 = load i32, i32* %x, align 4
  %idxprom37 = sext i32 %49 to i64
  %50 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc38 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %50, i32 0, i32 31
  %51 = load i32**, i32*** %msc38, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %51, i64 %idxprom37
  %52 = load i32*, i32** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %52, i64 %idxprom36
  store i32 %call35, i32* %arrayidx40, align 4
  %53 = load i32, i32* %k, align 4
  %54 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M41 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %54, i32 0, i32 20
  %55 = load i32, i32* %M41, align 4
  %cmp42 = icmp slt i32 %53, %55
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %for.body.30
  %56 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %56 to i64
  %57 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins45 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %57, i32 0, i32 23
  %58 = load float**, float*** %ins45, align 8
  %arrayidx46 = getelementptr inbounds float*, float** %58, i64 %idxprom44
  %59 = load float*, float** %arrayidx46, align 8
  %60 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null47 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %60, i32 0, i32 28
  %arraydecay48 = getelementptr inbounds [20 x float], [20 x float]* %null47, i32 0, i32 0
  %61 = load i32, i32* %x, align 4
  %call49 = call i32 @DegenerateSymbolScore(float* %59, float* %arraydecay48, i32 %61)
  %62 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %62 to i64
  %63 = load i32, i32* %x, align 4
  %idxprom51 = sext i32 %63 to i64
  %64 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc52 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %64, i32 0, i32 32
  %65 = load i32**, i32*** %isc52, align 8
  %arrayidx53 = getelementptr inbounds i32*, i32** %65, i64 %idxprom51
  %66 = load i32*, i32** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %66, i64 %idxprom50
  store i32 %call49, i32* %arrayidx54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.43, %for.body.30
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %67 = load i32, i32* %x, align 4
  %inc57 = add nsw i32 %67, 1
  store i32 %inc57, i32* %x, align 4
  br label %for.cond.28

for.end.58:                                       ; preds = %for.cond.28
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.58
  %68 = load i32, i32* %k, align 4
  %inc60 = add nsw i32 %68, 1
  store i32 %inc60, i32* %k, align 4
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  store i32 1, i32* %k, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.131, %for.end.61
  %69 = load i32, i32* %k, align 4
  %70 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M63 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %70, i32 0, i32 20
  %71 = load i32, i32* %M63, align 4
  %cmp64 = icmp slt i32 %69, %71
  br i1 %cmp64, label %for.body.65, label %for.end.133

for.body.65:                                      ; preds = %for.cond.62
  %72 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %72 to i64
  %73 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %73, i32 0, i32 21
  %74 = load float**, float*** %t, align 8
  %arrayidx67 = getelementptr inbounds float*, float** %74, i64 %idxprom66
  %75 = load float*, float** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds float, float* %75, i64 0
  %76 = load float, float* %arrayidx68, align 4
  %77 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %77, i32 0, i32 29
  %78 = load float, float* %p1, align 4
  %call69 = call i32 @Prob2Score(float %76, float %78)
  %79 = load i32, i32* %k, align 4
  %idxprom70 = sext i32 %79 to i64
  %80 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %80, i32 0, i32 30
  %81 = load i32**, i32*** %tsc, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %81, i64 0
  %82 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %82, i64 %idxprom70
  store i32 %call69, i32* %arrayidx72, align 4
  %83 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %83 to i64
  %84 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t74 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %84, i32 0, i32 21
  %85 = load float**, float*** %t74, align 8
  %arrayidx75 = getelementptr inbounds float*, float** %85, i64 %idxprom73
  %86 = load float*, float** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds float, float* %86, i64 1
  %87 = load float, float* %arrayidx76, align 4
  %88 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p177 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %88, i32 0, i32 29
  %89 = load float, float* %p177, align 4
  %call78 = call i32 @Prob2Score(float %87, float %89)
  %90 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %90 to i64
  %91 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc80 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %91, i32 0, i32 30
  %92 = load i32**, i32*** %tsc80, align 8
  %arrayidx81 = getelementptr inbounds i32*, i32** %92, i64 1
  %93 = load i32*, i32** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %93, i64 %idxprom79
  store i32 %call78, i32* %arrayidx82, align 4
  %94 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %94 to i64
  %95 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t84 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %95, i32 0, i32 21
  %96 = load float**, float*** %t84, align 8
  %arrayidx85 = getelementptr inbounds float*, float** %96, i64 %idxprom83
  %97 = load float*, float** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds float, float* %97, i64 2
  %98 = load float, float* %arrayidx86, align 4
  %call87 = call i32 @Prob2Score(float %98, float 1.000000e+00)
  %99 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %99 to i64
  %100 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc89 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %100, i32 0, i32 30
  %101 = load i32**, i32*** %tsc89, align 8
  %arrayidx90 = getelementptr inbounds i32*, i32** %101, i64 2
  %102 = load i32*, i32** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %102, i64 %idxprom88
  store i32 %call87, i32* %arrayidx91, align 4
  %103 = load i32, i32* %k, align 4
  %idxprom92 = sext i32 %103 to i64
  %104 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t93 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %104, i32 0, i32 21
  %105 = load float**, float*** %t93, align 8
  %arrayidx94 = getelementptr inbounds float*, float** %105, i64 %idxprom92
  %106 = load float*, float** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds float, float* %106, i64 3
  %107 = load float, float* %arrayidx95, align 4
  %108 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p196 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %108, i32 0, i32 29
  %109 = load float, float* %p196, align 4
  %call97 = call i32 @Prob2Score(float %107, float %109)
  %110 = load i32, i32* %k, align 4
  %idxprom98 = sext i32 %110 to i64
  %111 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc99 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %111, i32 0, i32 30
  %112 = load i32**, i32*** %tsc99, align 8
  %arrayidx100 = getelementptr inbounds i32*, i32** %112, i64 3
  %113 = load i32*, i32** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %113, i64 %idxprom98
  store i32 %call97, i32* %arrayidx101, align 4
  %114 = load i32, i32* %k, align 4
  %idxprom102 = sext i32 %114 to i64
  %115 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %115, i32 0, i32 21
  %116 = load float**, float*** %t103, align 8
  %arrayidx104 = getelementptr inbounds float*, float** %116, i64 %idxprom102
  %117 = load float*, float** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds float, float* %117, i64 4
  %118 = load float, float* %arrayidx105, align 4
  %119 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1106 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %119, i32 0, i32 29
  %120 = load float, float* %p1106, align 4
  %call107 = call i32 @Prob2Score(float %118, float %120)
  %121 = load i32, i32* %k, align 4
  %idxprom108 = sext i32 %121 to i64
  %122 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc109 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %122, i32 0, i32 30
  %123 = load i32**, i32*** %tsc109, align 8
  %arrayidx110 = getelementptr inbounds i32*, i32** %123, i64 4
  %124 = load i32*, i32** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %124, i64 %idxprom108
  store i32 %call107, i32* %arrayidx111, align 4
  %125 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %125 to i64
  %126 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t113 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %126, i32 0, i32 21
  %127 = load float**, float*** %t113, align 8
  %arrayidx114 = getelementptr inbounds float*, float** %127, i64 %idxprom112
  %128 = load float*, float** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds float, float* %128, i64 5
  %129 = load float, float* %arrayidx115, align 4
  %130 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1116 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %130, i32 0, i32 29
  %131 = load float, float* %p1116, align 4
  %call117 = call i32 @Prob2Score(float %129, float %131)
  %132 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %132 to i64
  %133 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc119 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %133, i32 0, i32 30
  %134 = load i32**, i32*** %tsc119, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %134, i64 5
  %135 = load i32*, i32** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %135, i64 %idxprom118
  store i32 %call117, i32* %arrayidx121, align 4
  %136 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %136 to i64
  %137 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t123 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %137, i32 0, i32 21
  %138 = load float**, float*** %t123, align 8
  %arrayidx124 = getelementptr inbounds float*, float** %138, i64 %idxprom122
  %139 = load float*, float** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds float, float* %139, i64 6
  %140 = load float, float* %arrayidx125, align 4
  %call126 = call i32 @Prob2Score(float %140, float 1.000000e+00)
  %141 = load i32, i32* %k, align 4
  %idxprom127 = sext i32 %141 to i64
  %142 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc128 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %142, i32 0, i32 30
  %143 = load i32**, i32*** %tsc128, align 8
  %arrayidx129 = getelementptr inbounds i32*, i32** %143, i64 6
  %144 = load i32*, i32** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %144, i64 %idxprom127
  store i32 %call126, i32* %arrayidx130, align 4
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.65
  %145 = load i32, i32* %k, align 4
  %inc132 = add nsw i32 %145, 1
  store i32 %inc132, i32* %k, align 4
  br label %for.cond.62

for.end.133:                                      ; preds = %for.cond.62
  %146 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %146, i32 0, i32 24
  %147 = load float, float* %tbd1, align 4
  %conv = fpext float %147 to double
  %cmp134 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp134, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.133
  %148 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1136 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %148, i32 0, i32 24
  %149 = load float, float* %tbd1136, align 4
  %conv137 = fpext float %149 to double
  %call138 = call double @log(double %conv137) #5
  br label %cond.end

cond.false:                                       ; preds = %for.end.133
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call138, %cond.true ], [ -9.999000e+03, %cond.false ]
  %conv139 = fptrunc double %cond to float
  store float %conv139, float* %accum, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.257, %cond.end
  %150 = load i32, i32* %k, align 4
  %151 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M141 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %151, i32 0, i32 20
  %152 = load i32, i32* %M141, align 4
  %cmp142 = icmp sle i32 %150, %152
  br i1 %cmp142, label %for.body.144, label %for.end.259

for.body.144:                                     ; preds = %for.cond.140
  %153 = load i32, i32* %k, align 4
  %idxprom145 = sext i32 %153 to i64
  %154 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %154, i32 0, i32 26
  %155 = load float*, float** %begin, align 8
  %arrayidx146 = getelementptr inbounds float, float* %155, i64 %idxprom145
  %156 = load float, float* %arrayidx146, align 4
  %conv147 = fpext float %156 to double
  %cmp148 = fcmp ogt double %conv147, 0.000000e+00
  br i1 %cmp148, label %cond.true.150, label %cond.false.156

cond.true.150:                                    ; preds = %for.body.144
  %157 = load i32, i32* %k, align 4
  %idxprom151 = sext i32 %157 to i64
  %158 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin152 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %158, i32 0, i32 26
  %159 = load float*, float** %begin152, align 8
  %arrayidx153 = getelementptr inbounds float, float* %159, i64 %idxprom151
  %160 = load float, float* %arrayidx153, align 4
  %conv154 = fpext float %160 to double
  %call155 = call double @log(double %conv154) #5
  br label %cond.end.157

cond.false.156:                                   ; preds = %for.body.144
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.150
  %cond158 = phi double [ %call155, %cond.true.150 ], [ -9.999000e+03, %cond.false.156 ]
  %conv159 = fptrunc double %cond158 to float
  store float %conv159, float* %tbm, align 4
  %161 = load i32, i32* %k, align 4
  %cmp160 = icmp sgt i32 %161, 1
  br i1 %cmp160, label %land.lhs.true, label %if.end.237

land.lhs.true:                                    ; preds = %cond.end.157
  %162 = load float, float* %accum, align 4
  %conv162 = fpext float %162 to double
  %cmp163 = fcmp ogt double %conv162, -9.999000e+03
  br i1 %cmp163, label %if.then.165, label %if.end.237

if.then.165:                                      ; preds = %land.lhs.true
  %163 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %163, 1
  %idxprom166 = sext i32 %sub to i64
  %164 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t167 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %164, i32 0, i32 21
  %165 = load float**, float*** %t167, align 8
  %arrayidx168 = getelementptr inbounds float*, float** %165, i64 %idxprom166
  %166 = load float*, float** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds float, float* %166, i64 5
  %167 = load float, float* %arrayidx169, align 4
  %conv170 = fpext float %167 to double
  %cmp171 = fcmp ogt double %conv170, 0.000000e+00
  br i1 %cmp171, label %if.then.173, label %if.end.214

if.then.173:                                      ; preds = %if.then.165
  %168 = load i32, i32* %viterbi_mode.addr, align 4
  %tobool174 = icmp ne i32 %168, 0
  br i1 %tobool174, label %if.then.175, label %if.else

if.then.175:                                      ; preds = %if.then.173
  %169 = load float, float* %tbm, align 4
  %conv176 = fpext float %169 to double
  %170 = load float, float* %accum, align 4
  %conv177 = fpext float %170 to double
  %171 = load i32, i32* %k, align 4
  %sub178 = sub nsw i32 %171, 1
  %idxprom179 = sext i32 %sub178 to i64
  %172 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t180 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %172, i32 0, i32 21
  %173 = load float**, float*** %t180, align 8
  %arrayidx181 = getelementptr inbounds float*, float** %173, i64 %idxprom179
  %174 = load float*, float** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds float, float* %174, i64 5
  %175 = load float, float* %arrayidx182, align 4
  %conv183 = fpext float %175 to double
  %call184 = call double @log(double %conv183) #5
  %add = fadd double %conv177, %call184
  %cmp185 = fcmp ogt double %conv176, %add
  br i1 %cmp185, label %cond.true.187, label %cond.false.189

cond.true.187:                                    ; preds = %if.then.175
  %176 = load float, float* %tbm, align 4
  %conv188 = fpext float %176 to double
  br label %cond.end.199

cond.false.189:                                   ; preds = %if.then.175
  %177 = load float, float* %accum, align 4
  %conv190 = fpext float %177 to double
  %178 = load i32, i32* %k, align 4
  %sub191 = sub nsw i32 %178, 1
  %idxprom192 = sext i32 %sub191 to i64
  %179 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t193 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %179, i32 0, i32 21
  %180 = load float**, float*** %t193, align 8
  %arrayidx194 = getelementptr inbounds float*, float** %180, i64 %idxprom192
  %181 = load float*, float** %arrayidx194, align 8
  %arrayidx195 = getelementptr inbounds float, float* %181, i64 5
  %182 = load float, float* %arrayidx195, align 4
  %conv196 = fpext float %182 to double
  %call197 = call double @log(double %conv196) #5
  %add198 = fadd double %conv190, %call197
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.189, %cond.true.187
  %cond200 = phi double [ %conv188, %cond.true.187 ], [ %add198, %cond.false.189 ]
  %conv201 = fptrunc double %cond200 to float
  store float %conv201, float* %tbm, align 4
  br label %if.end.213

if.else:                                          ; preds = %if.then.173
  %183 = load float, float* %tbm, align 4
  %184 = load float, float* %accum, align 4
  %conv202 = fpext float %184 to double
  %185 = load i32, i32* %k, align 4
  %sub203 = sub nsw i32 %185, 1
  %idxprom204 = sext i32 %sub203 to i64
  %186 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t205 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %186, i32 0, i32 21
  %187 = load float**, float*** %t205, align 8
  %arrayidx206 = getelementptr inbounds float*, float** %187, i64 %idxprom204
  %188 = load float*, float** %arrayidx206, align 8
  %arrayidx207 = getelementptr inbounds float, float* %188, i64 5
  %189 = load float, float* %arrayidx207, align 4
  %conv208 = fpext float %189 to double
  %call209 = call double @log(double %conv208) #5
  %add210 = fadd double %conv202, %call209
  %conv211 = fptrunc double %add210 to float
  %call212 = call float @LogSum(float %183, float %conv211)
  store float %call212, float* %tbm, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %if.else, %cond.end.199
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.then.165
  %190 = load i32, i32* %k, align 4
  %sub215 = sub nsw i32 %190, 1
  %idxprom216 = sext i32 %sub215 to i64
  %191 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t217 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %191, i32 0, i32 21
  %192 = load float**, float*** %t217, align 8
  %arrayidx218 = getelementptr inbounds float*, float** %192, i64 %idxprom216
  %193 = load float*, float** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds float, float* %193, i64 6
  %194 = load float, float* %arrayidx219, align 4
  %conv220 = fpext float %194 to double
  %cmp221 = fcmp ogt double %conv220, 0.000000e+00
  br i1 %cmp221, label %cond.true.223, label %cond.false.233

cond.true.223:                                    ; preds = %if.end.214
  %195 = load float, float* %accum, align 4
  %conv224 = fpext float %195 to double
  %196 = load i32, i32* %k, align 4
  %sub225 = sub nsw i32 %196, 1
  %idxprom226 = sext i32 %sub225 to i64
  %197 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t227 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %197, i32 0, i32 21
  %198 = load float**, float*** %t227, align 8
  %arrayidx228 = getelementptr inbounds float*, float** %198, i64 %idxprom226
  %199 = load float*, float** %arrayidx228, align 8
  %arrayidx229 = getelementptr inbounds float, float* %199, i64 6
  %200 = load float, float* %arrayidx229, align 4
  %conv230 = fpext float %200 to double
  %call231 = call double @log(double %conv230) #5
  %add232 = fadd double %conv224, %call231
  br label %cond.end.234

cond.false.233:                                   ; preds = %if.end.214
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.233, %cond.true.223
  %cond235 = phi double [ %add232, %cond.true.223 ], [ -9.999000e+03, %cond.false.233 ]
  %conv236 = fptrunc double %cond235 to float
  store float %conv236, float* %accum, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %cond.end.234, %land.lhs.true, %cond.end.157
  %201 = load float, float* %tbm, align 4
  %conv238 = fpext float %201 to double
  %cmp239 = fcmp ogt double %conv238, -9.999000e+03
  br i1 %cmp239, label %if.then.241, label %if.else.252

if.then.241:                                      ; preds = %if.end.237
  %202 = load float, float* %tbm, align 4
  %conv242 = fpext float %202 to double
  %203 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1243 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %203, i32 0, i32 29
  %204 = load float, float* %p1243, align 4
  %conv244 = fpext float %204 to double
  %call245 = call double @log(double %conv244) #5
  %sub246 = fsub double %conv242, %call245
  %mul = fmul double 0x40968AC7B890D5A6, %sub246
  %add247 = fadd double 5.000000e-01, %mul
  %call248 = call double @floor(double %add247) #7
  %conv249 = fptosi double %call248 to i32
  %205 = load i32, i32* %k, align 4
  %idxprom250 = sext i32 %205 to i64
  %206 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %206, i32 0, i32 34
  %207 = load i32*, i32** %bsc, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %207, i64 %idxprom250
  store i32 %conv249, i32* %arrayidx251, align 4
  br label %if.end.256

if.else.252:                                      ; preds = %if.end.237
  %208 = load i32, i32* %k, align 4
  %idxprom253 = sext i32 %208 to i64
  %209 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc254 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %209, i32 0, i32 34
  %210 = load i32*, i32** %bsc254, align 8
  %arrayidx255 = getelementptr inbounds i32, i32* %210, i64 %idxprom253
  store i32 -987654321, i32* %arrayidx255, align 4
  br label %if.end.256

if.end.256:                                       ; preds = %if.else.252, %if.then.241
  br label %for.inc.257

for.inc.257:                                      ; preds = %if.end.256
  %211 = load i32, i32* %k, align 4
  %inc258 = add nsw i32 %211, 1
  store i32 %inc258, i32* %k, align 4
  br label %for.cond.140

for.end.259:                                      ; preds = %for.cond.140
  %212 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M260 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %212, i32 0, i32 20
  %213 = load i32, i32* %M260, align 4
  %idxprom261 = sext i32 %213 to i64
  %214 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %214, i32 0, i32 35
  %215 = load i32*, i32** %esc, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %215, i64 %idxprom261
  store i32 0, i32* %arrayidx262, align 4
  store float 0.000000e+00, float* %accum, align 4
  %216 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M263 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %216, i32 0, i32 20
  %217 = load i32, i32* %M263, align 4
  %sub264 = sub nsw i32 %217, 1
  store i32 %sub264, i32* %k, align 4
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.372, %for.end.259
  %218 = load i32, i32* %k, align 4
  %cmp266 = icmp sge i32 %218, 1
  br i1 %cmp266, label %for.body.268, label %for.end.373

for.body.268:                                     ; preds = %for.cond.265
  %219 = load i32, i32* %k, align 4
  %idxprom269 = sext i32 %219 to i64
  %220 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %220, i32 0, i32 27
  %221 = load float*, float** %end, align 8
  %arrayidx270 = getelementptr inbounds float, float* %221, i64 %idxprom269
  %222 = load float, float* %arrayidx270, align 4
  %conv271 = fpext float %222 to double
  %cmp272 = fcmp ogt double %conv271, 0.000000e+00
  br i1 %cmp272, label %cond.true.274, label %cond.false.280

cond.true.274:                                    ; preds = %for.body.268
  %223 = load i32, i32* %k, align 4
  %idxprom275 = sext i32 %223 to i64
  %224 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end276 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %224, i32 0, i32 27
  %225 = load float*, float** %end276, align 8
  %arrayidx277 = getelementptr inbounds float, float* %225, i64 %idxprom275
  %226 = load float, float* %arrayidx277, align 4
  %conv278 = fpext float %226 to double
  %call279 = call double @log(double %conv278) #5
  br label %cond.end.281

cond.false.280:                                   ; preds = %for.body.268
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.false.280, %cond.true.274
  %cond282 = phi double [ %call279, %cond.true.274 ], [ -9.999000e+03, %cond.false.280 ]
  %conv283 = fptrunc double %cond282 to float
  store float %conv283, float* %tme, align 4
  %227 = load float, float* %accum, align 4
  %conv284 = fpext float %227 to double
  %cmp285 = fcmp ogt double %conv284, -9.999000e+03
  br i1 %cmp285, label %if.then.287, label %if.end.356

if.then.287:                                      ; preds = %cond.end.281
  %228 = load i32, i32* %k, align 4
  %idxprom288 = sext i32 %228 to i64
  %229 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t289 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %229, i32 0, i32 21
  %230 = load float**, float*** %t289, align 8
  %arrayidx290 = getelementptr inbounds float*, float** %230, i64 %idxprom288
  %231 = load float*, float** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds float, float* %231, i64 2
  %232 = load float, float* %arrayidx291, align 4
  %conv292 = fpext float %232 to double
  %cmp293 = fcmp ogt double %conv292, 0.000000e+00
  br i1 %cmp293, label %if.then.295, label %if.end.335

if.then.295:                                      ; preds = %if.then.287
  %233 = load i32, i32* %viterbi_mode.addr, align 4
  %tobool296 = icmp ne i32 %233, 0
  br i1 %tobool296, label %if.then.297, label %if.else.323

if.then.297:                                      ; preds = %if.then.295
  %234 = load float, float* %tme, align 4
  %conv298 = fpext float %234 to double
  %235 = load float, float* %accum, align 4
  %conv299 = fpext float %235 to double
  %236 = load i32, i32* %k, align 4
  %idxprom300 = sext i32 %236 to i64
  %237 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t301 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %237, i32 0, i32 21
  %238 = load float**, float*** %t301, align 8
  %arrayidx302 = getelementptr inbounds float*, float** %238, i64 %idxprom300
  %239 = load float*, float** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds float, float* %239, i64 2
  %240 = load float, float* %arrayidx303, align 4
  %conv304 = fpext float %240 to double
  %call305 = call double @log(double %conv304) #5
  %add306 = fadd double %conv299, %call305
  %cmp307 = fcmp ogt double %conv298, %add306
  br i1 %cmp307, label %cond.true.309, label %cond.false.311

cond.true.309:                                    ; preds = %if.then.297
  %241 = load float, float* %tme, align 4
  %conv310 = fpext float %241 to double
  br label %cond.end.320

cond.false.311:                                   ; preds = %if.then.297
  %242 = load float, float* %accum, align 4
  %conv312 = fpext float %242 to double
  %243 = load i32, i32* %k, align 4
  %idxprom313 = sext i32 %243 to i64
  %244 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t314 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %244, i32 0, i32 21
  %245 = load float**, float*** %t314, align 8
  %arrayidx315 = getelementptr inbounds float*, float** %245, i64 %idxprom313
  %246 = load float*, float** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds float, float* %246, i64 2
  %247 = load float, float* %arrayidx316, align 4
  %conv317 = fpext float %247 to double
  %call318 = call double @log(double %conv317) #5
  %add319 = fadd double %conv312, %call318
  br label %cond.end.320

cond.end.320:                                     ; preds = %cond.false.311, %cond.true.309
  %cond321 = phi double [ %conv310, %cond.true.309 ], [ %add319, %cond.false.311 ]
  %conv322 = fptrunc double %cond321 to float
  store float %conv322, float* %tme, align 4
  br label %if.end.334

if.else.323:                                      ; preds = %if.then.295
  %248 = load float, float* %tme, align 4
  %249 = load float, float* %accum, align 4
  %conv324 = fpext float %249 to double
  %250 = load i32, i32* %k, align 4
  %idxprom325 = sext i32 %250 to i64
  %251 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t326 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %251, i32 0, i32 21
  %252 = load float**, float*** %t326, align 8
  %arrayidx327 = getelementptr inbounds float*, float** %252, i64 %idxprom325
  %253 = load float*, float** %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds float, float* %253, i64 2
  %254 = load float, float* %arrayidx328, align 4
  %conv329 = fpext float %254 to double
  %call330 = call double @log(double %conv329) #5
  %add331 = fadd double %conv324, %call330
  %conv332 = fptrunc double %add331 to float
  %call333 = call float @LogSum(float %248, float %conv332)
  store float %call333, float* %tme, align 4
  br label %if.end.334

if.end.334:                                       ; preds = %if.else.323, %cond.end.320
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %if.then.287
  %255 = load i32, i32* %k, align 4
  %idxprom336 = sext i32 %255 to i64
  %256 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t337 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %256, i32 0, i32 21
  %257 = load float**, float*** %t337, align 8
  %arrayidx338 = getelementptr inbounds float*, float** %257, i64 %idxprom336
  %258 = load float*, float** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds float, float* %258, i64 6
  %259 = load float, float* %arrayidx339, align 4
  %conv340 = fpext float %259 to double
  %cmp341 = fcmp ogt double %conv340, 0.000000e+00
  br i1 %cmp341, label %cond.true.343, label %cond.false.352

cond.true.343:                                    ; preds = %if.end.335
  %260 = load float, float* %accum, align 4
  %conv344 = fpext float %260 to double
  %261 = load i32, i32* %k, align 4
  %idxprom345 = sext i32 %261 to i64
  %262 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t346 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %262, i32 0, i32 21
  %263 = load float**, float*** %t346, align 8
  %arrayidx347 = getelementptr inbounds float*, float** %263, i64 %idxprom345
  %264 = load float*, float** %arrayidx347, align 8
  %arrayidx348 = getelementptr inbounds float, float* %264, i64 6
  %265 = load float, float* %arrayidx348, align 4
  %conv349 = fpext float %265 to double
  %call350 = call double @log(double %conv349) #5
  %add351 = fadd double %conv344, %call350
  br label %cond.end.353

cond.false.352:                                   ; preds = %if.end.335
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.false.352, %cond.true.343
  %cond354 = phi double [ %add351, %cond.true.343 ], [ -9.999000e+03, %cond.false.352 ]
  %conv355 = fptrunc double %cond354 to float
  store float %conv355, float* %accum, align 4
  br label %if.end.356

if.end.356:                                       ; preds = %cond.end.353, %cond.end.281
  %266 = load float, float* %tme, align 4
  %conv357 = fpext float %266 to double
  %cmp358 = fcmp ogt double %conv357, -9.999000e+03
  br i1 %cmp358, label %cond.true.360, label %cond.false.366

cond.true.360:                                    ; preds = %if.end.356
  %267 = load float, float* %tme, align 4
  %conv361 = fpext float %267 to double
  %mul362 = fmul double 0x40968AC7B890D5A6, %conv361
  %add363 = fadd double 5.000000e-01, %mul362
  %call364 = call double @floor(double %add363) #7
  %conv365 = fptosi double %call364 to i32
  br label %cond.end.367

cond.false.366:                                   ; preds = %if.end.356
  br label %cond.end.367

cond.end.367:                                     ; preds = %cond.false.366, %cond.true.360
  %cond368 = phi i32 [ %conv365, %cond.true.360 ], [ -987654321, %cond.false.366 ]
  %268 = load i32, i32* %k, align 4
  %idxprom369 = sext i32 %268 to i64
  %269 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc370 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %269, i32 0, i32 35
  %270 = load i32*, i32** %esc370, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %270, i64 %idxprom369
  store i32 %cond368, i32* %arrayidx371, align 4
  br label %for.inc.372

for.inc.372:                                      ; preds = %cond.end.367
  %271 = load i32, i32* %k, align 4
  %dec = add nsw i32 %271, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.265

for.end.373:                                      ; preds = %for.cond.265
  %272 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %272, i32 0, i32 25
  %arrayidx374 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx375 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx374, i32 0, i64 1
  %273 = load float, float* %arrayidx375, align 4
  %274 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1376 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %274, i32 0, i32 29
  %275 = load float, float* %p1376, align 4
  %call377 = call i32 @Prob2Score(float %273, float %275)
  %276 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %276, i32 0, i32 33
  %arrayidx378 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 0
  %arrayidx379 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx378, i32 0, i64 1
  store i32 %call377, i32* %arrayidx379, align 4
  %277 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt380 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %277, i32 0, i32 25
  %arrayidx381 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt380, i32 0, i64 0
  %arrayidx382 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx381, i32 0, i64 0
  %278 = load float, float* %arrayidx382, align 4
  %call383 = call i32 @Prob2Score(float %278, float 1.000000e+00)
  %279 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc384 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %279, i32 0, i32 33
  %arrayidx385 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc384, i32 0, i64 0
  %arrayidx386 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx385, i32 0, i64 0
  store i32 %call383, i32* %arrayidx386, align 4
  %280 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt387 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %280, i32 0, i32 25
  %arrayidx388 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt387, i32 0, i64 1
  %arrayidx389 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx388, i32 0, i64 1
  %281 = load float, float* %arrayidx389, align 4
  %call390 = call i32 @Prob2Score(float %281, float 1.000000e+00)
  %282 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc391 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %282, i32 0, i32 33
  %arrayidx392 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc391, i32 0, i64 1
  %arrayidx393 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx392, i32 0, i64 1
  store i32 %call390, i32* %arrayidx393, align 4
  %283 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt394 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %283, i32 0, i32 25
  %arrayidx395 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt394, i32 0, i64 1
  %arrayidx396 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx395, i32 0, i64 0
  %284 = load float, float* %arrayidx396, align 4
  %call397 = call i32 @Prob2Score(float %284, float 1.000000e+00)
  %285 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc398 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %285, i32 0, i32 33
  %arrayidx399 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc398, i32 0, i64 1
  %arrayidx400 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx399, i32 0, i64 0
  store i32 %call397, i32* %arrayidx400, align 4
  %286 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt401 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %286, i32 0, i32 25
  %arrayidx402 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt401, i32 0, i64 2
  %arrayidx403 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx402, i32 0, i64 1
  %287 = load float, float* %arrayidx403, align 4
  %288 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1404 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %288, i32 0, i32 29
  %289 = load float, float* %p1404, align 4
  %call405 = call i32 @Prob2Score(float %287, float %289)
  %290 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc406 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %290, i32 0, i32 33
  %arrayidx407 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc406, i32 0, i64 2
  %arrayidx408 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx407, i32 0, i64 1
  store i32 %call405, i32* %arrayidx408, align 4
  %291 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt409 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %291, i32 0, i32 25
  %arrayidx410 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt409, i32 0, i64 2
  %arrayidx411 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx410, i32 0, i64 0
  %292 = load float, float* %arrayidx411, align 4
  %293 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1412 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %293, i32 0, i32 29
  %294 = load float, float* %p1412, align 4
  %conv413 = fpext float %294 to double
  %sub414 = fsub double 1.000000e+00, %conv413
  %conv415 = fptrunc double %sub414 to float
  %call416 = call i32 @Prob2Score(float %292, float %conv415)
  %295 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc417 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %295, i32 0, i32 33
  %arrayidx418 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc417, i32 0, i64 2
  %arrayidx419 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx418, i32 0, i64 0
  store i32 %call416, i32* %arrayidx419, align 4
  %296 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt420 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %296, i32 0, i32 25
  %arrayidx421 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt420, i32 0, i64 3
  %arrayidx422 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx421, i32 0, i64 1
  %297 = load float, float* %arrayidx422, align 4
  %298 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1423 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %298, i32 0, i32 29
  %299 = load float, float* %p1423, align 4
  %call424 = call i32 @Prob2Score(float %297, float %299)
  %300 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc425 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %300, i32 0, i32 33
  %arrayidx426 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc425, i32 0, i64 3
  %arrayidx427 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx426, i32 0, i64 1
  store i32 %call424, i32* %arrayidx427, align 4
  %301 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt428 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %301, i32 0, i32 25
  %arrayidx429 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt428, i32 0, i64 3
  %arrayidx430 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx429, i32 0, i64 0
  %302 = load float, float* %arrayidx430, align 4
  %call431 = call i32 @Prob2Score(float %302, float 1.000000e+00)
  %303 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc432 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %303, i32 0, i32 33
  %arrayidx433 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc432, i32 0, i64 3
  %arrayidx434 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx433, i32 0, i64 0
  store i32 %call431, i32* %arrayidx434, align 4
  %304 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags435 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %304, i32 0, i32 47
  %305 = load i32, i32* %flags435, align 4
  %or = or i32 %305, 1
  store i32 %or, i32* %flags435, align 4
  br label %return

return:                                           ; preds = %for.end.373, %if.then
  ret void
}

declare i32 @Prob2Score(float, float) #1

; Function Attrs: nounwind uwtable
define i32 @DegenerateSymbolScore(float* %p, float* %null, i32 %ambig) #0 {
entry:
  %p.addr = alloca float*, align 8
  %null.addr = alloca float*, align 8
  %ambig.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %numer = alloca float, align 4
  %denom = alloca float, align 4
  store float* %p, float** %p.addr, align 8
  store float* %null, float** %null.addr, align 8
  store i32 %ambig, i32* %ambig.addr, align 4
  store float 0.000000e+00, float* %numer, align 4
  store float 0.000000e+00, float* %denom, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* @Alphabet_size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %ambig.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx2, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %x, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load float*, float** %null.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %6, i64 %idxprom3
  %7 = load float, float* %arrayidx4, align 4
  %conv = fpext float %7 to double
  %8 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load float*, float** %p.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %9, i64 %idxprom5
  %10 = load float, float* %arrayidx6, align 4
  %11 = load i32, i32* %x, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load float*, float** %null.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %12, i64 %idxprom7
  %13 = load float, float* %arrayidx8, align 4
  %div = fdiv float %10, %13
  %cmp9 = fcmp ogt float %div, 0.000000e+00
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %14 = load i32, i32* %x, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load float*, float** %p.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %15, i64 %idxprom11
  %16 = load float, float* %arrayidx12, align 4
  %17 = load i32, i32* %x, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load float*, float** %null.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %18, i64 %idxprom13
  %19 = load float, float* %arrayidx14, align 4
  %div15 = fdiv float %16, %19
  %conv16 = fpext float %div15 to double
  %call = call double @log(double %conv16) #5
  %mul = fmul double %call, 0x3FF7154764EE6C2F
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul, %cond.true ], [ -9.999000e+03, %cond.false ]
  %mul17 = fmul double %conv, %cond
  %20 = load float, float* %numer, align 4
  %conv18 = fpext float %20 to double
  %add = fadd double %conv18, %mul17
  %conv19 = fptrunc double %add to float
  store float %conv19, float* %numer, align 4
  %21 = load i32, i32* %x, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load float*, float** %null.addr, align 8
  %arrayidx21 = getelementptr inbounds float, float* %22, i64 %idxprom20
  %23 = load float, float* %arrayidx21, align 4
  %24 = load float, float* %denom, align 4
  %add22 = fadd float %24, %23
  store float %add22, float* %denom, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %x, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load float, float* %numer, align 4
  %conv23 = fpext float %26 to double
  %mul24 = fmul double 1.000000e+03, %conv23
  %27 = load float, float* %denom, align 4
  %conv25 = fpext float %27 to double
  %div26 = fdiv double %mul24, %conv25
  %conv27 = fptosi double %div26 to i32
  ret i32 %conv27
}

; Function Attrs: nounwind
declare double @log(double) #2

declare float @LogSum(float, float) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind uwtable
define void @Plan7Renormalize(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %k = alloca i32, align 4
  %st = alloca i32, align 4
  %d = alloca float, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1, i32 0, i32 20
  %2 = load i32, i32* %M, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 22
  %5 = load float**, float*** %mat, align 8
  %arrayidx = getelementptr inbounds float*, float** %5, i64 %idxprom
  %6 = load float*, float** %arrayidx, align 8
  %7 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %6, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %k, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.7, %for.end
  %9 = load i32, i32* %k, align 4
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 20
  %11 = load i32, i32* %M2, align 4
  %cmp3 = icmp slt i32 %9, %11
  br i1 %cmp3, label %for.body.4, label %for.end.9

for.body.4:                                       ; preds = %for.cond.1
  %12 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 23
  %14 = load float**, float*** %ins, align 8
  %arrayidx6 = getelementptr inbounds float*, float** %14, i64 %idxprom5
  %15 = load float*, float** %arrayidx6, align 8
  %16 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %15, i32 %16)
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.body.4
  %17 = load i32, i32* %k, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %k, align 4
  br label %for.cond.1

for.end.9:                                        ; preds = %for.cond.1
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 26
  %19 = load float*, float** %begin, align 8
  %add.ptr = getelementptr inbounds float, float* %19, i64 1
  %20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 20
  %21 = load i32, i32* %M10, align 4
  %call = call float @FSum(float* %add.ptr, i32 %21)
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 24
  %23 = load float, float* %tbd1, align 4
  %add = fadd float %call, %23
  store float %add, float* %d, align 4
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 26
  %25 = load float*, float** %begin11, align 8
  %add.ptr12 = getelementptr inbounds float, float* %25, i64 1
  %26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 20
  %27 = load i32, i32* %M13, align 4
  %28 = load float, float* %d, align 4
  %conv = fpext float %28 to double
  %div = fdiv double 1.000000e+00, %conv
  %conv14 = fptrunc double %div to float
  call void @FScale(float* %add.ptr12, i32 %27, float %conv14)
  %29 = load float, float* %d, align 4
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd115 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 24
  %31 = load float, float* %tbd115, align 4
  %div16 = fdiv float %31, %29
  store float %div16, float* %tbd115, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.46, %for.end.9
  %32 = load i32, i32* %k, align 4
  %33 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %33, i32 0, i32 20
  %34 = load i32, i32* %M18, align 4
  %cmp19 = icmp slt i32 %32, %34
  br i1 %cmp19, label %for.body.21, label %for.end.48

for.body.21:                                      ; preds = %for.cond.17
  %35 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %35 to i64
  %36 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %36, i32 0, i32 21
  %37 = load float**, float*** %t, align 8
  %arrayidx23 = getelementptr inbounds float*, float** %37, i64 %idxprom22
  %38 = load float*, float** %arrayidx23, align 8
  %call24 = call float @FSum(float* %38, i32 3)
  %39 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %39 to i64
  %40 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 27
  %41 = load float*, float** %end, align 8
  %arrayidx26 = getelementptr inbounds float, float* %41, i64 %idxprom25
  %42 = load float, float* %arrayidx26, align 4
  %add27 = fadd float %call24, %42
  store float %add27, float* %d, align 4
  %43 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %43 to i64
  %44 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %44, i32 0, i32 21
  %45 = load float**, float*** %t29, align 8
  %arrayidx30 = getelementptr inbounds float*, float** %45, i64 %idxprom28
  %46 = load float*, float** %arrayidx30, align 8
  %47 = load float, float* %d, align 4
  %conv31 = fpext float %47 to double
  %div32 = fdiv double 1.000000e+00, %conv31
  %conv33 = fptrunc double %div32 to float
  call void @FScale(float* %46, i32 3, float %conv33)
  %48 = load float, float* %d, align 4
  %49 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %49 to i64
  %50 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end35 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %50, i32 0, i32 27
  %51 = load float*, float** %end35, align 8
  %arrayidx36 = getelementptr inbounds float, float* %51, i64 %idxprom34
  %52 = load float, float* %arrayidx36, align 4
  %div37 = fdiv float %52, %48
  store float %div37, float* %arrayidx36, align 4
  %53 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %53 to i64
  %54 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %54, i32 0, i32 21
  %55 = load float**, float*** %t39, align 8
  %arrayidx40 = getelementptr inbounds float*, float** %55, i64 %idxprom38
  %56 = load float*, float** %arrayidx40, align 8
  %add.ptr41 = getelementptr inbounds float, float* %56, i64 3
  call void @FNorm(float* %add.ptr41, i32 2)
  %57 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %57 to i64
  %58 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t43 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %58, i32 0, i32 21
  %59 = load float**, float*** %t43, align 8
  %arrayidx44 = getelementptr inbounds float*, float** %59, i64 %idxprom42
  %60 = load float*, float** %arrayidx44, align 8
  %add.ptr45 = getelementptr inbounds float, float* %60, i64 5
  call void @FNorm(float* %add.ptr45, i32 2)
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.21
  %61 = load i32, i32* %k, align 4
  %inc47 = add nsw i32 %61, 1
  store i32 %inc47, i32* %k, align 4
  br label %for.cond.17

for.end.48:                                       ; preds = %for.cond.17
  %62 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %62, i32 0, i32 28
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i32 0
  %63 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %arraydecay, i32 %63)
  store i32 0, i32* %st, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.56, %for.end.48
  %64 = load i32, i32* %st, align 4
  %cmp50 = icmp slt i32 %64, 4
  br i1 %cmp50, label %for.body.52, label %for.end.58

for.body.52:                                      ; preds = %for.cond.49
  %65 = load i32, i32* %st, align 4
  %idxprom53 = sext i32 %65 to i64
  %66 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 25
  %arrayidx54 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 %idxprom53
  %arraydecay55 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx54, i32 0, i32 0
  call void @FNorm(float* %arraydecay55, i32 2)
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.52
  %67 = load i32, i32* %st, align 4
  %inc57 = add nsw i32 %67, 1
  store i32 %inc57, i32* %st, align 4
  br label %for.cond.49

for.end.58:                                       ; preds = %for.cond.49
  %68 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t59 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %68, i32 0, i32 21
  %69 = load float**, float*** %t59, align 8
  %arrayidx60 = getelementptr inbounds float*, float** %69, i64 0
  %70 = load float*, float** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds float, float* %70, i64 6
  store float 0.000000e+00, float* %arrayidx61, align 4
  %71 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t62 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %71, i32 0, i32 21
  %72 = load float**, float*** %t62, align 8
  %arrayidx63 = getelementptr inbounds float*, float** %72, i64 0
  %73 = load float*, float** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds float, float* %73, i64 5
  store float 0.000000e+00, float* %arrayidx64, align 4
  %74 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 47
  %75 = load i32, i32* %flags, align 4
  %and = and i32 %75, -2
  store i32 %and, i32* %flags, align 4
  %76 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags65 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 47
  %77 = load i32, i32* %flags65, align 4
  %or = or i32 %77, 32
  store i32 %or, i32* %flags65, align 4
  ret void
}

declare void @FNorm(float*, i32) #1

declare float @FSum(float*, i32) #1

declare void @FScale(float*, i32, float) #1

; Function Attrs: nounwind uwtable
define void @Plan7RenormalizeExits(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %k = alloca i32, align 4
  %d = alloca float, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1, i32 0, i32 20
  %2 = load i32, i32* %M, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 21
  %5 = load float**, float*** %t, align 8
  %arrayidx = getelementptr inbounds float*, float** %5, i64 %idxprom
  %6 = load float*, float** %arrayidx, align 8
  %call = call float @FSum(float* %6, i32 3)
  store float %call, float* %d, align 4
  %7 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 21
  %9 = load float**, float*** %t2, align 8
  %arrayidx3 = getelementptr inbounds float*, float** %9, i64 %idxprom1
  %10 = load float*, float** %arrayidx3, align 8
  %11 = load float, float* %d, align 4
  %12 = load float, float* %d, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 27
  %15 = load float*, float** %end, align 8
  %arrayidx5 = getelementptr inbounds float, float* %15, i64 %idxprom4
  %16 = load float, float* %arrayidx5, align 4
  %mul = fmul float %12, %16
  %add = fadd float %11, %mul
  %conv = fpext float %add to double
  %div = fdiv double 1.000000e+00, %conv
  %conv6 = fptrunc double %div to float
  call void @FScale(float* %10, i32 3, float %conv6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7NakedConfig(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx1, align 4
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1, i32 0, i32 25
  %arrayidx3 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx3, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx4, align 4
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt5 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 25
  %arrayidx6 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt5, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx6, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx7, align 4
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt8 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 25
  %arrayidx9 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt8, i32 0, i64 1
  %arrayidx10 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx9, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx10, align 4
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 25
  %arrayidx12 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt11, i32 0, i64 2
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx12, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx13, align 4
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 25
  %arrayidx15 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt14, i32 0, i64 2
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx15, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx16, align 4
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 25
  %arrayidx18 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt17, i32 0, i64 3
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx18, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx19, align 4
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 25
  %arrayidx21 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt20, i32 0, i64 3
  %arrayidx22 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx21, i32 0, i64 1
  store float 1.000000e+00, float* %arrayidx22, align 4
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 26
  %9 = load float*, float** %begin, align 8
  %add.ptr = getelementptr inbounds float, float* %9, i64 2
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 20
  %11 = load i32, i32* %M, align 4
  %sub = sub nsw i32 %11, 1
  call void @FSet(float* %add.ptr, i32 %sub, float 0.000000e+00)
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 24
  %13 = load float, float* %tbd1, align 4
  %conv = fpext float %13 to double
  %sub23 = fsub double 1.000000e+00, %conv
  %conv24 = fptrunc double %sub23 to float
  %14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin25 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 26
  %15 = load float*, float** %begin25, align 8
  %arrayidx26 = getelementptr inbounds float, float* %15, i64 1
  store float %conv24, float* %arrayidx26, align 4
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 27
  %17 = load float*, float** %end, align 8
  %add.ptr27 = getelementptr inbounds float, float* %17, i64 1
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 20
  %19 = load i32, i32* %M28, align 4
  %sub29 = sub nsw i32 %19, 1
  call void @FSet(float* %add.ptr27, i32 %sub29, float 0.000000e+00)
  %20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 20
  %21 = load i32, i32* %M30, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end31 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 27
  %23 = load float*, float** %end31, align 8
  %arrayidx32 = getelementptr inbounds float, float* %23, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx32, align 4
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %24)
  %25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 47
  %26 = load i32, i32* %flags, align 4
  %and = and i32 %26, -2
  store i32 %and, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7GlobalConfig(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 29
  %1 = load float, float* %p1, align 4
  %conv = fpext float %1 to double
  %sub = fsub double 1.000000e+00, %conv
  %conv1 = fptrunc double %sub to float
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float %conv1, float* %arrayidx2, align 4
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 29
  %4 = load float, float* %p13, align 4
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 25
  %arrayidx5 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt4, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx5, i32 0, i64 1
  store float %4, float* %arrayidx6, align 4
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt7 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 25
  %arrayidx8 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt7, i32 0, i64 1
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx8, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx9, align 4
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 25
  %arrayidx11 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt10, i32 0, i64 1
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx11, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx12, align 4
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p113 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 29
  %9 = load float, float* %p113, align 4
  %conv14 = fpext float %9 to double
  %sub15 = fsub double 1.000000e+00, %conv14
  %conv16 = fptrunc double %sub15 to float
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 25
  %arrayidx18 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt17, i32 0, i64 2
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx18, i32 0, i64 0
  store float %conv16, float* %arrayidx19, align 4
  %11 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p120 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %11, i32 0, i32 29
  %12 = load float, float* %p120, align 4
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 25
  %arrayidx22 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt21, i32 0, i64 2
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx22, i32 0, i64 1
  store float %12, float* %arrayidx23, align 4
  %14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 25
  %arrayidx25 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt24, i32 0, i64 3
  %arrayidx26 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx25, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx26, align 4
  %15 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt27 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %15, i32 0, i32 25
  %arrayidx28 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt27, i32 0, i64 3
  %arrayidx29 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx28, i32 0, i64 1
  store float 1.000000e+00, float* %arrayidx29, align 4
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 26
  %17 = load float*, float** %begin, align 8
  %add.ptr = getelementptr inbounds float, float* %17, i64 2
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 20
  %19 = load i32, i32* %M, align 4
  %sub30 = sub nsw i32 %19, 1
  call void @FSet(float* %add.ptr, i32 %sub30, float 0.000000e+00)
  %20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 24
  %21 = load float, float* %tbd1, align 4
  %conv31 = fpext float %21 to double
  %sub32 = fsub double 1.000000e+00, %conv31
  %conv33 = fptrunc double %sub32 to float
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin34 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 26
  %23 = load float*, float** %begin34, align 8
  %arrayidx35 = getelementptr inbounds float, float* %23, i64 1
  store float %conv33, float* %arrayidx35, align 4
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 27
  %25 = load float*, float** %end, align 8
  %add.ptr36 = getelementptr inbounds float, float* %25, i64 1
  %26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M37 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 20
  %27 = load i32, i32* %M37, align 4
  %sub38 = sub nsw i32 %27, 1
  call void @FSet(float* %add.ptr36, i32 %sub38, float 0.000000e+00)
  %28 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 20
  %29 = load i32, i32* %M39, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end40 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 27
  %31 = load float*, float** %end40, align 8
  %arrayidx41 = getelementptr inbounds float, float* %31, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx41, align 4
  %32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %32)
  %33 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %33, i32 0, i32 47
  %34 = load i32, i32* %flags, align 4
  %and = and i32 %34, -2
  store i32 %and, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7LSConfig(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 29
  %1 = load float, float* %p1, align 4
  %conv = fpext float %1 to double
  %sub = fsub double 1.000000e+00, %conv
  %conv1 = fptrunc double %sub to float
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float %conv1, float* %arrayidx2, align 4
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 29
  %4 = load float, float* %p13, align 4
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 25
  %arrayidx5 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt4, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx5, i32 0, i64 1
  store float %4, float* %arrayidx6, align 4
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt7 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 25
  %arrayidx8 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt7, i32 0, i64 1
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx8, i32 0, i64 0
  store float 5.000000e-01, float* %arrayidx9, align 4
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 25
  %arrayidx11 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt10, i32 0, i64 1
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx11, i32 0, i64 1
  store float 5.000000e-01, float* %arrayidx12, align 4
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p113 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 29
  %9 = load float, float* %p113, align 4
  %conv14 = fpext float %9 to double
  %sub15 = fsub double 1.000000e+00, %conv14
  %conv16 = fptrunc double %sub15 to float
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 25
  %arrayidx18 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt17, i32 0, i64 2
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx18, i32 0, i64 0
  store float %conv16, float* %arrayidx19, align 4
  %11 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p120 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %11, i32 0, i32 29
  %12 = load float, float* %p120, align 4
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 25
  %arrayidx22 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt21, i32 0, i64 2
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx22, i32 0, i64 1
  store float %12, float* %arrayidx23, align 4
  %14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p124 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 29
  %15 = load float, float* %p124, align 4
  %conv25 = fpext float %15 to double
  %sub26 = fsub double 1.000000e+00, %conv25
  %conv27 = fptrunc double %sub26 to float
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 25
  %arrayidx29 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt28, i32 0, i64 3
  %arrayidx30 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx29, i32 0, i64 0
  store float %conv27, float* %arrayidx30, align 4
  %17 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p131 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 29
  %18 = load float, float* %p131, align 4
  %19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 25
  %arrayidx33 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt32, i32 0, i64 3
  %arrayidx34 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx33, i32 0, i64 1
  store float %18, float* %arrayidx34, align 4
  %20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 26
  %21 = load float*, float** %begin, align 8
  %add.ptr = getelementptr inbounds float, float* %21, i64 2
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 20
  %23 = load i32, i32* %M, align 4
  %sub35 = sub nsw i32 %23, 1
  call void @FSet(float* %add.ptr, i32 %sub35, float 0.000000e+00)
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 24
  %25 = load float, float* %tbd1, align 4
  %conv36 = fpext float %25 to double
  %sub37 = fsub double 1.000000e+00, %conv36
  %conv38 = fptrunc double %sub37 to float
  %26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 26
  %27 = load float*, float** %begin39, align 8
  %arrayidx40 = getelementptr inbounds float, float* %27, i64 1
  store float %conv38, float* %arrayidx40, align 4
  %28 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 27
  %29 = load float*, float** %end, align 8
  %add.ptr41 = getelementptr inbounds float, float* %29, i64 1
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M42 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 20
  %31 = load i32, i32* %M42, align 4
  %sub43 = sub nsw i32 %31, 1
  call void @FSet(float* %add.ptr41, i32 %sub43, float 0.000000e+00)
  %32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 20
  %33 = load i32, i32* %M44, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end45 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 27
  %35 = load float*, float** %end45, align 8
  %arrayidx46 = getelementptr inbounds float, float* %35, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx46, align 4
  %36 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %36)
  %37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 47
  %38 = load i32, i32* %flags, align 4
  %and = and i32 %38, -2
  store i32 %and, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7SWConfig(%struct.plan7_s* %hmm, float %pentry, float %pexit) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %pentry.addr = alloca float, align 4
  %pexit.addr = alloca float, align 4
  %basep = alloca float, align 4
  %k = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store float %pentry, float* %pentry.addr, align 4
  store float %pexit, float* %pexit.addr, align 4
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 29
  %1 = load float, float* %p1, align 4
  %sub = fsub float 1.000000e+00, %1
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float %sub, float* %arrayidx1, align 4
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 29
  %4 = load float, float* %p12, align 4
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt3 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 25
  %arrayidx4 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx4, i32 0, i64 1
  store float %4, float* %arrayidx5, align 4
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt6 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 25
  %arrayidx7 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt6, i32 0, i64 1
  %arrayidx8 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx7, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx8, align 4
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt9 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 25
  %arrayidx10 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt9, i32 0, i64 1
  %arrayidx11 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx10, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx11, align 4
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p112 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 29
  %9 = load float, float* %p112, align 4
  %sub13 = fsub float 1.000000e+00, %9
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 25
  %arrayidx15 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt14, i32 0, i64 2
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx15, i32 0, i64 0
  store float %sub13, float* %arrayidx16, align 4
  %11 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p117 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %11, i32 0, i32 29
  %12 = load float, float* %p117, align 4
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 25
  %arrayidx19 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt18, i32 0, i64 2
  %arrayidx20 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx19, i32 0, i64 1
  store float %12, float* %arrayidx20, align 4
  %14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 25
  %arrayidx22 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt21, i32 0, i64 3
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx22, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx23, align 4
  %15 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %15, i32 0, i32 25
  %arrayidx25 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt24, i32 0, i64 3
  %arrayidx26 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx25, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx26, align 4
  %16 = load float, float* %pentry.addr, align 4
  %conv = fpext float %16 to double
  %sub27 = fsub double 1.000000e+00, %conv
  %17 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 24
  %18 = load float, float* %tbd1, align 4
  %conv28 = fpext float %18 to double
  %sub29 = fsub double 1.000000e+00, %conv28
  %mul = fmul double %sub27, %sub29
  %conv30 = fptrunc double %mul to float
  %19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 26
  %20 = load float*, float** %begin, align 8
  %arrayidx31 = getelementptr inbounds float, float* %20, i64 1
  store float %conv30, float* %arrayidx31, align 4
  %21 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %21, i32 0, i32 26
  %22 = load float*, float** %begin32, align 8
  %add.ptr = getelementptr inbounds float, float* %22, i64 2
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 20
  %24 = load i32, i32* %M, align 4
  %sub33 = sub nsw i32 %24, 1
  %25 = load float, float* %pentry.addr, align 4
  %conv34 = fpext float %25 to double
  %26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd135 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 24
  %27 = load float, float* %tbd135, align 4
  %conv36 = fpext float %27 to double
  %sub37 = fsub double 1.000000e+00, %conv36
  %mul38 = fmul double %conv34, %sub37
  %28 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 20
  %29 = load i32, i32* %M39, align 4
  %sub40 = sub nsw i32 %29, 1
  %conv41 = sitofp i32 %sub40 to float
  %conv42 = fpext float %conv41 to double
  %div = fdiv double %mul38, %conv42
  %conv43 = fptrunc double %div to float
  call void @FSet(float* %add.ptr, i32 %sub33, float %conv43)
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 20
  %31 = load i32, i32* %M44, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 27
  %33 = load float*, float** %end, align 8
  %arrayidx45 = getelementptr inbounds float, float* %33, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx45, align 4
  %34 = load float, float* %pexit.addr, align 4
  %35 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M46 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %35, i32 0, i32 20
  %36 = load i32, i32* %M46, align 4
  %sub47 = sub nsw i32 %36, 1
  %conv48 = sitofp i32 %sub47 to float
  %div49 = fdiv float %34, %conv48
  store float %div49, float* %basep, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %37 = load i32, i32* %k, align 4
  %38 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M50 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %38, i32 0, i32 20
  %39 = load i32, i32* %M50, align 4
  %cmp = icmp slt i32 %37, %39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load float, float* %basep, align 4
  %conv52 = fpext float %40 to double
  %41 = load float, float* %basep, align 4
  %42 = load i32, i32* %k, align 4
  %sub53 = sub nsw i32 %42, 1
  %conv54 = sitofp i32 %sub53 to float
  %mul55 = fmul float %41, %conv54
  %conv56 = fpext float %mul55 to double
  %sub57 = fsub double 1.000000e+00, %conv56
  %div58 = fdiv double %conv52, %sub57
  %conv59 = fptrunc double %div58 to float
  %43 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %43 to i64
  %44 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end61 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %44, i32 0, i32 27
  %45 = load float*, float** %end61, align 8
  %arrayidx62 = getelementptr inbounds float, float* %45, i64 %idxprom60
  store float %conv59, float* %arrayidx62, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %k, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %47)
  %48 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %48, i32 0, i32 47
  %49 = load i32, i32* %flags, align 4
  %and = and i32 %49, -2
  store i32 %and, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7FSConfig(%struct.plan7_s* %hmm, float %pentry, float %pexit) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %pentry.addr = alloca float, align 4
  %pexit.addr = alloca float, align 4
  %basep = alloca float, align 4
  %k = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store float %pentry, float* %pentry.addr, align 4
  store float %pexit, float* %pexit.addr, align 4
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 29
  %1 = load float, float* %p1, align 4
  %sub = fsub float 1.000000e+00, %1
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float %sub, float* %arrayidx1, align 4
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 29
  %4 = load float, float* %p12, align 4
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt3 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 25
  %arrayidx4 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx4, i32 0, i64 1
  store float %4, float* %arrayidx5, align 4
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt6 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 25
  %arrayidx7 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt6, i32 0, i64 1
  %arrayidx8 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx7, i32 0, i64 0
  store float 5.000000e-01, float* %arrayidx8, align 4
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt9 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 25
  %arrayidx10 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt9, i32 0, i64 1
  %arrayidx11 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx10, i32 0, i64 1
  store float 5.000000e-01, float* %arrayidx11, align 4
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p112 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 29
  %9 = load float, float* %p112, align 4
  %sub13 = fsub float 1.000000e+00, %9
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 25
  %arrayidx15 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt14, i32 0, i64 2
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx15, i32 0, i64 0
  store float %sub13, float* %arrayidx16, align 4
  %11 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p117 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %11, i32 0, i32 29
  %12 = load float, float* %p117, align 4
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 25
  %arrayidx19 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt18, i32 0, i64 2
  %arrayidx20 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx19, i32 0, i64 1
  store float %12, float* %arrayidx20, align 4
  %14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p121 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 29
  %15 = load float, float* %p121, align 4
  %conv = fpext float %15 to double
  %sub22 = fsub double 1.000000e+00, %conv
  %conv23 = fptrunc double %sub22 to float
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 25
  %arrayidx25 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt24, i32 0, i64 3
  %arrayidx26 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx25, i32 0, i64 0
  store float %conv23, float* %arrayidx26, align 4
  %17 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p127 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 29
  %18 = load float, float* %p127, align 4
  %19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 25
  %arrayidx29 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt28, i32 0, i64 3
  %arrayidx30 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx29, i32 0, i64 1
  store float %18, float* %arrayidx30, align 4
  %20 = load float, float* %pentry.addr, align 4
  %conv31 = fpext float %20 to double
  %sub32 = fsub double 1.000000e+00, %conv31
  %21 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %21, i32 0, i32 24
  %22 = load float, float* %tbd1, align 4
  %conv33 = fpext float %22 to double
  %sub34 = fsub double 1.000000e+00, %conv33
  %mul = fmul double %sub32, %sub34
  %conv35 = fptrunc double %mul to float
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 26
  %24 = load float*, float** %begin, align 8
  %arrayidx36 = getelementptr inbounds float, float* %24, i64 1
  store float %conv35, float* %arrayidx36, align 4
  %25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin37 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 26
  %26 = load float*, float** %begin37, align 8
  %add.ptr = getelementptr inbounds float, float* %26, i64 2
  %27 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %27, i32 0, i32 20
  %28 = load i32, i32* %M, align 4
  %sub38 = sub nsw i32 %28, 1
  %29 = load float, float* %pentry.addr, align 4
  %conv39 = fpext float %29 to double
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd140 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 24
  %31 = load float, float* %tbd140, align 4
  %conv41 = fpext float %31 to double
  %sub42 = fsub double 1.000000e+00, %conv41
  %mul43 = fmul double %conv39, %sub42
  %32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 20
  %33 = load i32, i32* %M44, align 4
  %sub45 = sub nsw i32 %33, 1
  %conv46 = sitofp i32 %sub45 to float
  %conv47 = fpext float %conv46 to double
  %div = fdiv double %mul43, %conv47
  %conv48 = fptrunc double %div to float
  call void @FSet(float* %add.ptr, i32 %sub38, float %conv48)
  %34 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M49 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 20
  %35 = load i32, i32* %M49, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %36, i32 0, i32 27
  %37 = load float*, float** %end, align 8
  %arrayidx50 = getelementptr inbounds float, float* %37, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx50, align 4
  %38 = load float, float* %pexit.addr, align 4
  %39 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M51 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %39, i32 0, i32 20
  %40 = load i32, i32* %M51, align 4
  %sub52 = sub nsw i32 %40, 1
  %conv53 = sitofp i32 %sub52 to float
  %div54 = fdiv float %38, %conv53
  store float %div54, float* %basep, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %41 = load i32, i32* %k, align 4
  %42 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M55 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %42, i32 0, i32 20
  %43 = load i32, i32* %M55, align 4
  %cmp = icmp slt i32 %41, %43
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load float, float* %basep, align 4
  %conv57 = fpext float %44 to double
  %45 = load float, float* %basep, align 4
  %46 = load i32, i32* %k, align 4
  %sub58 = sub nsw i32 %46, 1
  %conv59 = sitofp i32 %sub58 to float
  %mul60 = fmul float %45, %conv59
  %conv61 = fpext float %mul60 to double
  %sub62 = fsub double 1.000000e+00, %conv61
  %div63 = fdiv double %conv57, %sub62
  %conv64 = fptrunc double %div63 to float
  %47 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %47 to i64
  %48 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end66 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %48, i32 0, i32 27
  %49 = load float*, float** %end66, align 8
  %arrayidx67 = getelementptr inbounds float, float* %49, i64 %idxprom65
  store float %conv64, float* %arrayidx67, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %k, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %51)
  %52 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %52, i32 0, i32 47
  %53 = load i32, i32* %flags, align 4
  %and = and i32 %53, -2
  store i32 %and, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7ESTConfig(%struct.plan7_s* %hmm, i32* %aacode, float** %estmodel, float %dna2, float %dna4) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %aacode.addr = alloca i32*, align 8
  %estmodel.addr = alloca float**, align 8
  %dna2.addr = alloca float, align 4
  %dna4.addr = alloca float, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %p = alloca float, align 4
  %tripnull = alloca float*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32* %aacode, i32** %aacode.addr, align 8
  store float** %estmodel, float*** %estmodel.addr, align 8
  store float %dna2, float* %dna2.addr, align 4
  store float %dna4, float* %dna4.addr, align 4
  store float* null, float** %tripnull, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float 0x3F6756CAC0000000, float* %arrayidx1, align 4
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1, i32 0, i32 25
  %arrayidx3 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx3, i32 0, i64 1
  store float 0x3FEFE8A940000000, float* %arrayidx4, align 4
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt5 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 25
  %arrayidx6 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt5, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx6, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx7, align 4
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt8 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 25
  %arrayidx9 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt8, i32 0, i64 1
  %arrayidx10 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx9, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx10, align 4
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 25
  %arrayidx12 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt11, i32 0, i64 2
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx12, i32 0, i64 0
  store float 0x3F6756CAC0000000, float* %arrayidx13, align 4
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 25
  %arrayidx15 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt14, i32 0, i64 2
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx15, i32 0, i64 1
  store float 0x3FEFE8A940000000, float* %arrayidx16, align 4
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 25
  %arrayidx18 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt17, i32 0, i64 3
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx18, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx19, align 4
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 25
  %arrayidx21 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt20, i32 0, i64 3
  %arrayidx22 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx21, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx22, align 4
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 26
  %9 = load float*, float** %begin, align 8
  %arrayidx23 = getelementptr inbounds float, float* %9, i64 1
  store float 5.000000e-01, float* %arrayidx23, align 4
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 26
  %11 = load float*, float** %begin24, align 8
  %add.ptr = getelementptr inbounds float, float* %11, i64 2
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 20
  %13 = load i32, i32* %M, align 4
  %sub = sub nsw i32 %13, 1
  %14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M25 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 20
  %15 = load i32, i32* %M25, align 4
  %conv = sitofp i32 %15 to float
  %conv26 = fpext float %conv to double
  %sub27 = fsub double %conv26, 1.000000e+00
  %div = fdiv double 5.000000e-01, %sub27
  %conv28 = fptrunc double %div to float
  call void @FSet(float* %add.ptr, i32 %sub, float %conv28)
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 20
  %17 = load i32, i32* %M29, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 27
  %19 = load float*, float** %end, align 8
  %arrayidx30 = getelementptr inbounds float, float* %19, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx30, align 4
  %20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end31 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %20, i32 0, i32 27
  %21 = load float*, float** %end31, align 8
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 20
  %23 = load i32, i32* %M32, align 4
  %sub33 = sub nsw i32 %23, 1
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M34 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 20
  %25 = load i32, i32* %M34, align 4
  %conv35 = sitofp i32 %25 to float
  %conv36 = fpext float %conv35 to double
  %sub37 = fsub double %conv36, 1.000000e+00
  %div38 = fdiv double 5.000000e-01, %sub37
  %conv39 = fptrunc double %div38 to float
  call void @FSet(float* %21, i32 %sub33, float %conv39)
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.106, %entry
  %26 = load i32, i32* %k, align 4
  %27 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M40 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %27, i32 0, i32 20
  %28 = load i32, i32* %M40, align 4
  %cmp = icmp sle i32 %26, %28
  br i1 %cmp, label %for.body, label %for.end.108

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %for.body
  %29 = load i32, i32* %x, align 4
  %cmp43 = icmp slt i32 %29, 64
  br i1 %cmp43, label %for.body.45, label %for.end

for.body.45:                                      ; preds = %for.cond.42
  %30 = load i32, i32* %x, align 4
  %idxprom46 = sext i32 %30 to i64
  %31 = load i32*, i32** %aacode.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %31, i64 %idxprom46
  %32 = load i32, i32* %arrayidx47, align 4
  %idxprom48 = sext i32 %32 to i64
  %33 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %33 to i64
  %34 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 22
  %35 = load float**, float*** %mat, align 8
  %arrayidx50 = getelementptr inbounds float*, float** %35, i64 %idxprom49
  %36 = load float*, float** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds float, float* %36, i64 %idxprom48
  %37 = load float, float* %arrayidx51, align 4
  %38 = load i32, i32* %x, align 4
  %idxprom52 = sext i32 %38 to i64
  %39 = load i32, i32* %x, align 4
  %idxprom53 = sext i32 %39 to i64
  %40 = load i32*, i32** %aacode.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %40, i64 %idxprom53
  %41 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %41 to i64
  %42 = load float**, float*** %estmodel.addr, align 8
  %arrayidx56 = getelementptr inbounds float*, float** %42, i64 %idxprom55
  %43 = load float*, float** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds float, float* %43, i64 %idxprom52
  %44 = load float, float* %arrayidx57, align 4
  %mul = fmul float %37, %44
  %conv58 = fpext float %mul to double
  %45 = load float, float* %dna2.addr, align 4
  %conv59 = fpext float %45 to double
  %sub60 = fsub double 1.000000e+00, %conv59
  %46 = load float, float* %dna4.addr, align 4
  %conv61 = fpext float %46 to double
  %sub62 = fsub double %sub60, %conv61
  %mul63 = fmul double %conv58, %sub62
  %conv64 = fptrunc double %mul63 to float
  store float %conv64, float* %p, align 4
  %47 = load float, float* %p, align 4
  %48 = load i32, i32* %x, align 4
  %idxprom65 = sext i32 %48 to i64
  %49 = load float*, float** %tripnull, align 8
  %arrayidx66 = getelementptr inbounds float, float* %49, i64 %idxprom65
  %50 = load float, float* %arrayidx66, align 4
  %call = call i32 @Prob2Score(float %47, float %50)
  %51 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %51 to i64
  %52 = load i32, i32* %x, align 4
  %idxprom68 = sext i32 %52 to i64
  %53 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnam = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %53, i32 0, i32 41
  %54 = load i32**, i32*** %dnam, align 8
  %arrayidx69 = getelementptr inbounds i32*, i32** %54, i64 %idxprom68
  %55 = load i32*, i32** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %55, i64 %idxprom67
  store i32 %call, i32* %arrayidx70, align 4
  %56 = load i32, i32* %x, align 4
  %idxprom71 = sext i32 %56 to i64
  %57 = load i32*, i32** %aacode.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %57, i64 %idxprom71
  %58 = load i32, i32* %arrayidx72, align 4
  %idxprom73 = sext i32 %58 to i64
  %59 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %59 to i64
  %60 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %60, i32 0, i32 23
  %61 = load float**, float*** %ins, align 8
  %arrayidx75 = getelementptr inbounds float*, float** %61, i64 %idxprom74
  %62 = load float*, float** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds float, float* %62, i64 %idxprom73
  %63 = load float, float* %arrayidx76, align 4
  %64 = load i32, i32* %x, align 4
  %idxprom77 = sext i32 %64 to i64
  %65 = load i32, i32* %x, align 4
  %idxprom78 = sext i32 %65 to i64
  %66 = load i32*, i32** %aacode.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %66, i64 %idxprom78
  %67 = load i32, i32* %arrayidx79, align 4
  %idxprom80 = sext i32 %67 to i64
  %68 = load float**, float*** %estmodel.addr, align 8
  %arrayidx81 = getelementptr inbounds float*, float** %68, i64 %idxprom80
  %69 = load float*, float** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds float, float* %69, i64 %idxprom77
  %70 = load float, float* %arrayidx82, align 4
  %mul83 = fmul float %63, %70
  %conv84 = fpext float %mul83 to double
  %71 = load float, float* %dna2.addr, align 4
  %conv85 = fpext float %71 to double
  %sub86 = fsub double 1.000000e+00, %conv85
  %72 = load float, float* %dna4.addr, align 4
  %conv87 = fpext float %72 to double
  %sub88 = fsub double %sub86, %conv87
  %mul89 = fmul double %conv84, %sub88
  %conv90 = fptrunc double %mul89 to float
  store float %conv90, float* %p, align 4
  %73 = load float, float* %p, align 4
  %74 = load i32, i32* %x, align 4
  %idxprom91 = sext i32 %74 to i64
  %75 = load float*, float** %tripnull, align 8
  %arrayidx92 = getelementptr inbounds float, float* %75, i64 %idxprom91
  %76 = load float, float* %arrayidx92, align 4
  %call93 = call i32 @Prob2Score(float %73, float %76)
  %77 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %77 to i64
  %78 = load i32, i32* %x, align 4
  %idxprom95 = sext i32 %78 to i64
  %79 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnai = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %79, i32 0, i32 42
  %80 = load i32**, i32*** %dnai, align 8
  %arrayidx96 = getelementptr inbounds i32*, i32** %80, i64 %idxprom95
  %81 = load i32*, i32** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %81, i64 %idxprom94
  store i32 %call93, i32* %arrayidx97, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.45
  %82 = load i32, i32* %x, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.42

for.end:                                          ; preds = %for.cond.42
  %83 = load i32, i32* %k, align 4
  %idxprom98 = sext i32 %83 to i64
  %84 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnam99 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %84, i32 0, i32 41
  %85 = load i32**, i32*** %dnam99, align 8
  %arrayidx100 = getelementptr inbounds i32*, i32** %85, i64 64
  %86 = load i32*, i32** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %86, i64 %idxprom98
  store i32 0, i32* %arrayidx101, align 4
  %87 = load float, float* %dna2.addr, align 4
  %call102 = call i32 @Prob2Score(float %87, float 1.000000e+00)
  %88 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna2103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %88, i32 0, i32 43
  store i32 %call102, i32* %dna2103, align 4
  %89 = load float, float* %dna4.addr, align 4
  %call104 = call i32 @Prob2Score(float %89, float 1.000000e+00)
  %90 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna4105 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %90, i32 0, i32 44
  store i32 %call104, i32* %dna4105, align 4
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end
  %91 = load i32, i32* %k, align 4
  %inc107 = add nsw i32 %91, 1
  store i32 %inc107, i32* %k, align 4
  br label %for.cond

for.end.108:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @PrintPlan7Stats(%struct._IO_FILE* %fp, %struct.plan7_s* %hmm, i8** %dsq, i32 %nseq, %struct.p7trace_s** %tr) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %dsq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %tr.addr = alloca %struct.p7trace_s**, align 8
  %idx = alloca i32, align 4
  %score = alloca float, align 4
  %total = alloca float, align 4
  %best = alloca float, align 4
  %worst = alloca float, align 4
  %sqsum = alloca float, align 4
  %stddev = alloca float, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8** %dsq, i8*** %dsq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store %struct.p7trace_s** %tr, %struct.p7trace_s*** %tr.addr, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @P7Logoddsify(%struct.plan7_s* %0, i32 1)
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %2 = load i8**, i8*** %dsq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %4 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %4, i64 0
  %5 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx1, align 8
  %call = call float @P7TraceScore(%struct.plan7_s* %1, i8* %3, %struct.p7trace_s* %5)
  store float %call, float* %score, align 4
  %6 = load float, float* %score, align 4
  store float %6, float* %worst, align 4
  store float %6, float* %best, align 4
  store float %6, float* %total, align 4
  %7 = load float, float* %score, align 4
  %8 = load float, float* %score, align 4
  %mul = fmul float %7, %8
  store float %mul, float* %sqsum, align 4
  store i32 1, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %idx, align 4
  %10 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %12 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i8**, i8*** %dsq.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %13, i64 %idxprom
  %14 = load i8*, i8** %arrayidx2, align 8
  %15 = load i32, i32* %idx, align 4
  %idxprom3 = sext i32 %15 to i64
  %16 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %16, i64 %idxprom3
  %17 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx4, align 8
  %call5 = call float @P7TraceScore(%struct.plan7_s* %11, i8* %14, %struct.p7trace_s* %17)
  store float %call5, float* %score, align 4
  %18 = load float, float* %score, align 4
  %19 = load float, float* %total, align 4
  %add = fadd float %19, %18
  store float %add, float* %total, align 4
  %20 = load float, float* %score, align 4
  %21 = load float, float* %score, align 4
  %mul6 = fmul float %20, %21
  %22 = load float, float* %sqsum, align 4
  %add7 = fadd float %22, %mul6
  store float %add7, float* %sqsum, align 4
  %23 = load float, float* %score, align 4
  %24 = load float, float* %best, align 4
  %cmp8 = fcmp ogt float %23, %24
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %25 = load float, float* %score, align 4
  store float %25, float* %best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %26 = load float, float* %score, align 4
  %27 = load float, float* %worst, align 4
  %cmp9 = fcmp olt float %26, %27
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %28 = load float, float* %score, align 4
  store float %28, float* %worst, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %29 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %nseq.addr, align 4
  %cmp12 = icmp sgt i32 %30, 1
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.end
  %31 = load float, float* %sqsum, align 4
  %32 = load float, float* %total, align 4
  %33 = load float, float* %total, align 4
  %mul14 = fmul float %32, %33
  %34 = load i32, i32* %nseq.addr, align 4
  %conv = sitofp i32 %34 to float
  %div = fdiv float %mul14, %conv
  %sub = fsub float %31, %div
  %conv15 = fpext float %sub to double
  %35 = load i32, i32* %nseq.addr, align 4
  %conv16 = sitofp i32 %35 to float
  %conv17 = fpext float %conv16 to double
  %sub18 = fsub double %conv17, 1.000000e+00
  %div19 = fdiv double %conv15, %sub18
  %conv20 = fptrunc double %div19 to float
  store float %conv20, float* %stddev, align 4
  %36 = load float, float* %stddev, align 4
  %cmp21 = fcmp ogt float %36, 0.000000e+00
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.13
  %37 = load float, float* %stddev, align 4
  %conv23 = fpext float %37 to double
  %call24 = call double @sqrt(double %conv23) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call24, %cond.true ], [ 0.000000e+00, %cond.false ]
  %conv25 = fptrunc double %cond to float
  store float %conv25, float* %stddev, align 4
  br label %if.end.26

if.else:                                          ; preds = %for.end
  store float 0.000000e+00, float* %stddev, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %cond.end
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %39 = load float, float* %total, align 4
  %40 = load i32, i32* %nseq.addr, align 4
  %conv27 = sitofp i32 %40 to float
  %div28 = fdiv float %39, %conv27
  %conv29 = fpext float %div28 to double
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), double %conv29)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %42 = load float, float* %worst, align 4
  %conv31 = fpext float %42 to double
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), double %conv31)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %44 = load float, float* %best, align 4
  %conv33 = fpext float %44 to double
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), double %conv33)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %46 = load float, float* %stddev, align 4
  %conv35 = fpext float %46 to double
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), double %conv35)
  ret void
}

declare float @P7TraceScore(%struct.plan7_s*, i8*, %struct.p7trace_s*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Plan9toPlan7(%struct.plan9_s* %hmm, %struct.plan7_s** %ret_plan7) #0 {
entry:
  %hmm.addr = alloca %struct.plan9_s*, align 8
  %ret_plan7.addr = alloca %struct.plan7_s**, align 8
  %plan7 = alloca %struct.plan7_s*, align 8
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  store %struct.plan9_s* %hmm, %struct.plan9_s** %hmm.addr, align 8
  store %struct.plan7_s** %ret_plan7, %struct.plan7_s*** %ret_plan7.addr, align 8
  %0 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %0, i32 0, i32 0
  %1 = load i32, i32* %M, align 4
  %call = call %struct.plan7_s* @AllocPlan7(i32 %1)
  store %struct.plan7_s* %call, %struct.plan7_s** %plan7, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %k, align 4
  %3 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %M1 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %3, i32 0, i32 0
  %4 = load i32, i32* %M1, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %k, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %6, i32 0, i32 2
  %7 = load %struct.basic_state*, %struct.basic_state** %mat, align 8
  %arrayidx = getelementptr inbounds %struct.basic_state, %struct.basic_state* %7, i64 %idxprom
  %t = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x float], [3 x float]* %t, i32 0, i64 0
  %8 = load float, float* %arrayidx2, align 4
  %9 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 21
  %11 = load float**, float*** %t4, align 8
  %arrayidx5 = getelementptr inbounds float*, float** %11, i64 %idxprom3
  %12 = load float*, float** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds float, float* %12, i64 0
  store float %8, float* %arrayidx6, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat8 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %14, i32 0, i32 2
  %15 = load %struct.basic_state*, %struct.basic_state** %mat8, align 8
  %arrayidx9 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %15, i64 %idxprom7
  %t10 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x float], [3 x float]* %t10, i32 0, i64 2
  %16 = load float, float* %arrayidx11, align 4
  %17 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 21
  %19 = load float**, float*** %t13, align 8
  %arrayidx14 = getelementptr inbounds float*, float** %19, i64 %idxprom12
  %20 = load float*, float** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds float, float* %20, i64 2
  store float %16, float* %arrayidx15, align 4
  %21 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat17 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %22, i32 0, i32 2
  %23 = load %struct.basic_state*, %struct.basic_state** %mat17, align 8
  %arrayidx18 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %23, i64 %idxprom16
  %t19 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x float], [3 x float]* %t19, i32 0, i64 1
  %24 = load float, float* %arrayidx20, align 4
  %25 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t22 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 21
  %27 = load float**, float*** %t22, align 8
  %arrayidx23 = getelementptr inbounds float*, float** %27, i64 %idxprom21
  %28 = load float*, float** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds float, float* %28, i64 1
  store float %24, float* %arrayidx24, align 4
  %29 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %29 to i64
  %30 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %del = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %30, i32 0, i32 3
  %31 = load %struct.basic_state*, %struct.basic_state** %del, align 8
  %arrayidx26 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %31, i64 %idxprom25
  %t27 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x float], [3 x float]* %t27, i32 0, i64 0
  %32 = load float, float* %arrayidx28, align 4
  %33 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 21
  %35 = load float**, float*** %t30, align 8
  %arrayidx31 = getelementptr inbounds float*, float** %35, i64 %idxprom29
  %36 = load float*, float** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds float, float* %36, i64 5
  store float %32, float* %arrayidx32, align 4
  %37 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %37 to i64
  %38 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %del34 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %38, i32 0, i32 3
  %39 = load %struct.basic_state*, %struct.basic_state** %del34, align 8
  %arrayidx35 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %39, i64 %idxprom33
  %t36 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx35, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x float], [3 x float]* %t36, i32 0, i64 2
  %40 = load float, float* %arrayidx37, align 4
  %41 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %41 to i64
  %42 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %42, i32 0, i32 21
  %43 = load float**, float*** %t39, align 8
  %arrayidx40 = getelementptr inbounds float*, float** %43, i64 %idxprom38
  %44 = load float*, float** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds float, float* %44, i64 6
  store float %40, float* %arrayidx41, align 4
  %45 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %45 to i64
  %46 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %46, i32 0, i32 1
  %47 = load %struct.basic_state*, %struct.basic_state** %ins, align 8
  %arrayidx43 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %47, i64 %idxprom42
  %t44 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx43, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x float], [3 x float]* %t44, i32 0, i64 0
  %48 = load float, float* %arrayidx45, align 4
  %49 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %49 to i64
  %50 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t47 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %50, i32 0, i32 21
  %51 = load float**, float*** %t47, align 8
  %arrayidx48 = getelementptr inbounds float*, float** %51, i64 %idxprom46
  %52 = load float*, float** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds float, float* %52, i64 3
  store float %48, float* %arrayidx49, align 4
  %53 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %53 to i64
  %54 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ins51 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %54, i32 0, i32 1
  %55 = load %struct.basic_state*, %struct.basic_state** %ins51, align 8
  %arrayidx52 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %55, i64 %idxprom50
  %t53 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx52, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [3 x float], [3 x float]* %t53, i32 0, i64 1
  %56 = load float, float* %arrayidx54, align 4
  %57 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %57 to i64
  %58 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t56 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %58, i32 0, i32 21
  %59 = load float**, float*** %t56, align 8
  %arrayidx57 = getelementptr inbounds float*, float** %59, i64 %idxprom55
  %60 = load float*, float** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds float, float* %60, i64 4
  store float %56, float* %arrayidx58, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i32, i32* %k, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %k, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.79, %for.end
  %62 = load i32, i32* %k, align 4
  %63 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %M60 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %63, i32 0, i32 0
  %64 = load i32, i32* %M60, align 4
  %cmp61 = icmp sle i32 %62, %64
  br i1 %cmp61, label %for.body.62, label %for.end.81

for.body.62:                                      ; preds = %for.cond.59
  store i32 0, i32* %x, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.76, %for.body.62
  %65 = load i32, i32* %x, align 4
  %66 = load i32, i32* @Alphabet_size, align 4
  %cmp64 = icmp slt i32 %65, %66
  br i1 %cmp64, label %for.body.65, label %for.end.78

for.body.65:                                      ; preds = %for.cond.63
  %67 = load i32, i32* %x, align 4
  %idxprom66 = sext i32 %67 to i64
  %68 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %68 to i64
  %69 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat68 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %69, i32 0, i32 2
  %70 = load %struct.basic_state*, %struct.basic_state** %mat68, align 8
  %arrayidx69 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %70, i64 %idxprom67
  %p = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx69, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i64 %idxprom66
  %71 = load float, float* %arrayidx70, align 4
  %72 = load i32, i32* %x, align 4
  %idxprom71 = sext i32 %72 to i64
  %73 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %73 to i64
  %74 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %mat73 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %74, i32 0, i32 22
  %75 = load float**, float*** %mat73, align 8
  %arrayidx74 = getelementptr inbounds float*, float** %75, i64 %idxprom72
  %76 = load float*, float** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds float, float* %76, i64 %idxprom71
  store float %71, float* %arrayidx75, align 4
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.65
  %77 = load i32, i32* %x, align 4
  %inc77 = add nsw i32 %77, 1
  store i32 %inc77, i32* %x, align 4
  br label %for.cond.63

for.end.78:                                       ; preds = %for.cond.63
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.78
  %78 = load i32, i32* %k, align 4
  %inc80 = add nsw i32 %78, 1
  store i32 %inc80, i32* %k, align 4
  br label %for.cond.59

for.end.81:                                       ; preds = %for.cond.59
  store i32 1, i32* %k, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.103, %for.end.81
  %79 = load i32, i32* %k, align 4
  %80 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %M83 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %80, i32 0, i32 0
  %81 = load i32, i32* %M83, align 4
  %cmp84 = icmp slt i32 %79, %81
  br i1 %cmp84, label %for.body.85, label %for.end.105

for.body.85:                                      ; preds = %for.cond.82
  store i32 0, i32* %x, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.100, %for.body.85
  %82 = load i32, i32* %x, align 4
  %83 = load i32, i32* @Alphabet_size, align 4
  %cmp87 = icmp slt i32 %82, %83
  br i1 %cmp87, label %for.body.88, label %for.end.102

for.body.88:                                      ; preds = %for.cond.86
  %84 = load i32, i32* %x, align 4
  %idxprom89 = sext i32 %84 to i64
  %85 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %85 to i64
  %86 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ins91 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %86, i32 0, i32 1
  %87 = load %struct.basic_state*, %struct.basic_state** %ins91, align 8
  %arrayidx92 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %87, i64 %idxprom90
  %p93 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx92, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [20 x float], [20 x float]* %p93, i32 0, i64 %idxprom89
  %88 = load float, float* %arrayidx94, align 4
  %89 = load i32, i32* %x, align 4
  %idxprom95 = sext i32 %89 to i64
  %90 = load i32, i32* %k, align 4
  %idxprom96 = sext i32 %90 to i64
  %91 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %ins97 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %91, i32 0, i32 23
  %92 = load float**, float*** %ins97, align 8
  %arrayidx98 = getelementptr inbounds float*, float** %92, i64 %idxprom96
  %93 = load float*, float** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds float, float* %93, i64 %idxprom95
  store float %88, float* %arrayidx99, align 4
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.88
  %94 = load i32, i32* %x, align 4
  %inc101 = add nsw i32 %94, 1
  store i32 %inc101, i32* %x, align 4
  br label %for.cond.86

for.end.102:                                      ; preds = %for.cond.86
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end.102
  %95 = load i32, i32* %k, align 4
  %inc104 = add nsw i32 %95, 1
  store i32 %inc104, i32* %k, align 4
  br label %for.cond.82

for.end.105:                                      ; preds = %for.cond.82
  %96 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat106 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %96, i32 0, i32 2
  %97 = load %struct.basic_state*, %struct.basic_state** %mat106, align 8
  %arrayidx107 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %97, i64 0
  %t108 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [3 x float], [3 x float]* %t108, i32 0, i64 2
  %98 = load float, float* %arrayidx109, align 4
  %99 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat110 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %99, i32 0, i32 2
  %100 = load %struct.basic_state*, %struct.basic_state** %mat110, align 8
  %arrayidx111 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %100, i64 0
  %t112 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [3 x float], [3 x float]* %t112, i32 0, i64 2
  %101 = load float, float* %arrayidx113, align 4
  %102 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat114 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %102, i32 0, i32 2
  %103 = load %struct.basic_state*, %struct.basic_state** %mat114, align 8
  %arrayidx115 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %103, i64 0
  %t116 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [3 x float], [3 x float]* %t116, i32 0, i64 0
  %104 = load float, float* %arrayidx117, align 4
  %add = fadd float %101, %104
  %div = fdiv float %98, %add
  %105 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %105, i32 0, i32 24
  store float %div, float* %tbd1, align 4
  %106 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %106, i32 0, i32 28
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i32 0
  %107 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %107, i32 0, i32 29
  call void @P7DefaultNullModel(float* %arraydecay, float* %p1)
  store i32 0, i32* %x, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.127, %for.end.105
  %108 = load i32, i32* %x, align 4
  %109 = load i32, i32* @Alphabet_size, align 4
  %cmp119 = icmp slt i32 %108, %109
  br i1 %cmp119, label %for.body.120, label %for.end.129

for.body.120:                                     ; preds = %for.cond.118
  %110 = load i32, i32* %x, align 4
  %idxprom121 = sext i32 %110 to i64
  %111 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %null122 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %111, i32 0, i32 4
  %arrayidx123 = getelementptr inbounds [20 x float], [20 x float]* %null122, i32 0, i64 %idxprom121
  %112 = load float, float* %arrayidx123, align 4
  %113 = load i32, i32* %x, align 4
  %idxprom124 = sext i32 %113 to i64
  %114 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %null125 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %114, i32 0, i32 28
  %arrayidx126 = getelementptr inbounds [20 x float], [20 x float]* %null125, i32 0, i64 %idxprom124
  store float %112, float* %arrayidx126, align 4
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.120
  %115 = load i32, i32* %x, align 4
  %inc128 = add nsw i32 %115, 1
  store i32 %inc128, i32* %x, align 4
  br label %for.cond.118

for.end.129:                                      ; preds = %for.cond.118
  %116 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %name = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %116, i32 0, i32 5
  %117 = load i8*, i8** %name, align 8
  %cmp130 = icmp ne i8* %117, null
  br i1 %cmp130, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.129
  %118 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %119 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %name131 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %119, i32 0, i32 5
  %120 = load i8*, i8** %name131, align 8
  call void @Plan7SetName(%struct.plan7_s* %118, i8* %120)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.129
  %121 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %121, i32 0, i32 9
  %122 = load i32, i32* %flags, align 4
  %and = and i32 %122, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.132, label %if.end.135

if.then.132:                                      ; preds = %if.end
  %123 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %123, i32 0, i32 3
  %124 = load i8*, i8** %rf, align 8
  %125 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ref = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %125, i32 0, i32 6
  %126 = load i8*, i8** %ref, align 8
  %call133 = call i8* @strcpy(i8* %124, i8* %126) #5
  %127 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %flags134 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %127, i32 0, i32 47
  %128 = load i32, i32* %flags134, align 4
  %or = or i32 %128, 4
  store i32 %or, i32* %flags134, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.132, %if.end
  %129 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %flags136 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %129, i32 0, i32 9
  %130 = load i32, i32* %flags136, align 4
  %and137 = and i32 %130, 2
  %tobool138 = icmp ne i32 %and137, 0
  br i1 %tobool138, label %if.then.139, label %if.end.144

if.then.139:                                      ; preds = %if.end.135
  %131 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %131, i32 0, i32 4
  %132 = load i8*, i8** %cs, align 8
  %133 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %cs140 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %133, i32 0, i32 7
  %134 = load i8*, i8** %cs140, align 8
  %call141 = call i8* @strcpy(i8* %132, i8* %134) #5
  %135 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %flags142 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %135, i32 0, i32 47
  %136 = load i32, i32* %flags142, align 4
  %or143 = or i32 %136, 8
  store i32 %or143, i32* %flags142, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.139, %if.end.135
  %137 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  call void @Plan7LSConfig(%struct.plan7_s* %137)
  %138 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  call void @Plan7Renormalize(%struct.plan7_s* %138)
  %139 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %flags145 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %139, i32 0, i32 47
  %140 = load i32, i32* %flags145, align 4
  %or146 = or i32 %140, 32
  store i32 %or146, i32* %flags145, align 4
  %141 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %flags147 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %141, i32 0, i32 47
  %142 = load i32, i32* %flags147, align 4
  %and148 = and i32 %142, -2
  store i32 %and148, i32* %flags147, align 4
  %143 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %144 = load %struct.plan7_s**, %struct.plan7_s*** %ret_plan7.addr, align 8
  store %struct.plan7_s* %143, %struct.plan7_s** %144, align 8
  ret void
}

declare void @P7DefaultNullModel(float*, float*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
