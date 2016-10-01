; ModuleID = './MultiSource.Benchmarks.NPB-serial/1.is.is.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@S_test_index_array = global [5 x i32] [i32 48427, i32 17148, i32 23627, i32 62548, i32 4431], align 16
@S_test_rank_array = global [5 x i32] [i32 0, i32 18, i32 346, i32 64917, i32 65463], align 16
@W_test_index_array = global [5 x i32] [i32 357773, i32 934767, i32 875723, i32 898999, i32 404505], align 16
@W_test_rank_array = global [5 x i32] [i32 1249, i32 11698, i32 1039987, i32 1043896, i32 1048018], align 16
@A_test_index_array = global [5 x i32] [i32 2112377, i32 662041, i32 5336171, i32 3642833, i32 4250760], align 16
@A_test_rank_array = global [5 x i32] [i32 104, i32 17523, i32 123928, i32 8288932, i32 8388264], align 16
@B_test_index_array = global [5 x i32] [i32 41869, i32 812306, i32 5102857, i32 18232239, i32 26860214], align 16
@B_test_rank_array = global [5 x i32] [i32 33422937, i32 10244, i32 59149, i32 33135281, i32 99], align 16
@C_test_index_array = global [5 x i32] [i32 44172927, i32 72999161, i32 74326391, i32 129606274, i32 21736814], align 16
@C_test_rank_array = global [5 x i32] [i32 61147, i32 882988, i32 266290, i32 133997595, i32 133525895], align 16
@D_test_index_array = global [5 x i32] [i32 1317351170, i32 995930646, i32 1157283250, i32 1503301535, i32 1453734525], align 16
@D_test_rank_array = global [5 x i32] [i32 1, i32 36538729, i32 1978098519, i32 2145192618, i32 2147425337], align 16
@randlc.KS = internal global i32 0, align 4
@randlc.R23 = internal global double 0.000000e+00, align 8
@randlc.R46 = internal global double 0.000000e+00, align 8
@randlc.T23 = internal global double 0.000000e+00, align 8
@randlc.T46 = internal global double 0.000000e+00, align 8
@key_array = common global [33554432 x i32] zeroinitializer, align 16
@key_buff2 = common global [33554432 x i32] zeroinitializer, align 16
@key_buff_ptr_global = common global i32* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Full_verify: number of keys out of sort: %ld\0A\00", align 1
@passed_verification = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c" Class           =                        %c\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c" Size            =             %12ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c" Please send all errors/feedbacks to:\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c" NPB Development Team\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c" npb@nas.nasa.gov\0A\0A\00", align 1
@test_index_array = common global [5 x i32] zeroinitializer, align 16
@partial_verify_vals = common global [5 x i32] zeroinitializer, align 16
@bucket_size = common global [1024 x i32] zeroinitializer, align 16
@bucket_ptrs = common global [1024 x i32] zeroinitializer, align 16
@key_buff1 = common global [2097152 x i32] zeroinitializer, align 16
@test_rank_array = common global [5 x i32] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c" Size:  %ld  (class %c)\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c" Iterations:   %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"\0A   iteration\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"        %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"keys ranked\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"3.3\00", align 1

; Function Attrs: nounwind uwtable
define double @randlc(double* %X, double* %A) #0 {
entry:
  %X.addr = alloca double*, align 8
  %A.addr = alloca double*, align 8
  %T1 = alloca double, align 8
  %T2 = alloca double, align 8
  %T3 = alloca double, align 8
  %T4 = alloca double, align 8
  %A1 = alloca double, align 8
  %A2 = alloca double, align 8
  %X1 = alloca double, align 8
  %X2 = alloca double, align 8
  %Z = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store double* %X, double** %X.addr, align 8
  store double* %A, double** %A.addr, align 8
  %0 = load i32, i32* @randlc.KS, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* @randlc.R23, align 8
  store double 1.000000e+00, double* @randlc.R46, align 8
  store double 1.000000e+00, double* @randlc.T23, align 8
  store double 1.000000e+00, double* @randlc.T46, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp sle i32 %1, 23
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* @randlc.R23, align 8
  %mul = fmul double 5.000000e-01, %2
  store double %mul, double* @randlc.R23, align 8
  %3 = load double, double* @randlc.T23, align 8
  %mul2 = fmul double 2.000000e+00, %3
  store double %mul2, double* @randlc.T23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.8, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp sle i32 %5, 46
  br i1 %cmp4, label %for.body.5, label %for.end.10

for.body.5:                                       ; preds = %for.cond.3
  %6 = load double, double* @randlc.R46, align 8
  %mul6 = fmul double 5.000000e-01, %6
  store double %mul6, double* @randlc.R46, align 8
  %7 = load double, double* @randlc.T46, align 8
  %mul7 = fmul double 2.000000e+00, %7
  store double %mul7, double* @randlc.T46, align 8
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.5
  %8 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %8, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.3

for.end.10:                                       ; preds = %for.cond.3
  store i32 1, i32* @randlc.KS, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.10, %entry
  %9 = load double, double* @randlc.R23, align 8
  %10 = load double*, double** %A.addr, align 8
  %11 = load double, double* %10, align 8
  %mul11 = fmul double %9, %11
  store double %mul11, double* %T1, align 8
  %12 = load double, double* %T1, align 8
  %conv = fptosi double %12 to i32
  store i32 %conv, i32* %j, align 4
  %13 = load i32, i32* %j, align 4
  %conv12 = sitofp i32 %13 to double
  store double %conv12, double* %A1, align 8
  %14 = load double*, double** %A.addr, align 8
  %15 = load double, double* %14, align 8
  %16 = load double, double* @randlc.T23, align 8
  %17 = load double, double* %A1, align 8
  %mul13 = fmul double %16, %17
  %sub = fsub double %15, %mul13
  store double %sub, double* %A2, align 8
  %18 = load double, double* @randlc.R23, align 8
  %19 = load double*, double** %X.addr, align 8
  %20 = load double, double* %19, align 8
  %mul14 = fmul double %18, %20
  store double %mul14, double* %T1, align 8
  %21 = load double, double* %T1, align 8
  %conv15 = fptosi double %21 to i32
  store i32 %conv15, i32* %j, align 4
  %22 = load i32, i32* %j, align 4
  %conv16 = sitofp i32 %22 to double
  store double %conv16, double* %X1, align 8
  %23 = load double*, double** %X.addr, align 8
  %24 = load double, double* %23, align 8
  %25 = load double, double* @randlc.T23, align 8
  %26 = load double, double* %X1, align 8
  %mul17 = fmul double %25, %26
  %sub18 = fsub double %24, %mul17
  store double %sub18, double* %X2, align 8
  %27 = load double, double* %A1, align 8
  %28 = load double, double* %X2, align 8
  %mul19 = fmul double %27, %28
  %29 = load double, double* %A2, align 8
  %30 = load double, double* %X1, align 8
  %mul20 = fmul double %29, %30
  %add = fadd double %mul19, %mul20
  store double %add, double* %T1, align 8
  %31 = load double, double* @randlc.R23, align 8
  %32 = load double, double* %T1, align 8
  %mul21 = fmul double %31, %32
  %conv22 = fptosi double %mul21 to i32
  store i32 %conv22, i32* %j, align 4
  %33 = load i32, i32* %j, align 4
  %conv23 = sitofp i32 %33 to double
  store double %conv23, double* %T2, align 8
  %34 = load double, double* %T1, align 8
  %35 = load double, double* @randlc.T23, align 8
  %36 = load double, double* %T2, align 8
  %mul24 = fmul double %35, %36
  %sub25 = fsub double %34, %mul24
  store double %sub25, double* %Z, align 8
  %37 = load double, double* @randlc.T23, align 8
  %38 = load double, double* %Z, align 8
  %mul26 = fmul double %37, %38
  %39 = load double, double* %A2, align 8
  %40 = load double, double* %X2, align 8
  %mul27 = fmul double %39, %40
  %add28 = fadd double %mul26, %mul27
  store double %add28, double* %T3, align 8
  %41 = load double, double* @randlc.R46, align 8
  %42 = load double, double* %T3, align 8
  %mul29 = fmul double %41, %42
  %conv30 = fptosi double %mul29 to i32
  store i32 %conv30, i32* %j, align 4
  %43 = load i32, i32* %j, align 4
  %conv31 = sitofp i32 %43 to double
  store double %conv31, double* %T4, align 8
  %44 = load double, double* %T3, align 8
  %45 = load double, double* @randlc.T46, align 8
  %46 = load double, double* %T4, align 8
  %mul32 = fmul double %45, %46
  %sub33 = fsub double %44, %mul32
  %47 = load double*, double** %X.addr, align 8
  store double %sub33, double* %47, align 8
  %48 = load double, double* @randlc.R46, align 8
  %49 = load double*, double** %X.addr, align 8
  %50 = load double, double* %49, align 8
  %mul34 = fmul double %48, %50
  ret double %mul34
}

; Function Attrs: nounwind uwtable
define void @create_seq(double %seed, double %a) #0 {
entry:
  %seed.addr = alloca double, align 8
  %a.addr = alloca double, align 8
  %x = alloca double, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store double %seed, double* %seed.addr, align 8
  store double %a, double* %a.addr, align 8
  store i32 524288, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 33554432
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call double @randlc(double* %seed.addr, double* %a.addr)
  store double %call, double* %x, align 8
  %call1 = call double @randlc(double* %seed.addr, double* %a.addr)
  %1 = load double, double* %x, align 8
  %add = fadd double %1, %call1
  store double %add, double* %x, align 8
  %call2 = call double @randlc(double* %seed.addr, double* %a.addr)
  %2 = load double, double* %x, align 8
  %add3 = fadd double %2, %call2
  store double %add3, double* %x, align 8
  %call4 = call double @randlc(double* %seed.addr, double* %a.addr)
  %3 = load double, double* %x, align 8
  %add5 = fadd double %3, %call4
  store double %add5, double* %x, align 8
  %4 = load i32, i32* %k, align 4
  %conv = sitofp i32 %4 to double
  %5 = load double, double* %x, align 8
  %mul = fmul double %conv, %5
  %conv6 = fptosi double %mul to i32
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i32 0, i64 %idxprom
  store i32 %conv6, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @full_verify() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 33554432
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load i32*, i32** @key_buff_ptr_global, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 %idxprom3
  %6 = load i32, i32* %arrayidx4, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %arrayidx4, align 4
  %idxprom5 = sext i32 %dec to i64
  %arrayidx6 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i32 0, i64 %idxprom5
  store i32 %2, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.16, %for.end
  %8 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %8, 33554432
  br i1 %cmp8, label %for.body.9, label %for.end.18

for.body.9:                                       ; preds = %for.cond.7
  %9 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom10 = sext i32 %sub to i64
  %arrayidx11 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i32 0, i64 %idxprom10
  %10 = load i32, i32* %arrayidx11, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i32 0, i64 %idxprom12
  %12 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp sgt i32 %10, %12
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.9
  %13 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.9
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %14, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond.7

for.end.18:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %j, align 4
  %cmp19 = icmp ne i32 %15, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.end.18
  %16 = load i32, i32* %j, align 4
  %conv = sext i32 %16 to i64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0), i64 %conv)
  br label %if.end.22

if.else:                                          ; preds = %for.end.18
  %17 = load i32, i32* @passed_verification, align 4
  %inc21 = add nsw i32 %17, 1
  store i32 %inc21, i32* @passed_verification, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @c_print_results(i8* %name, i8 signext %class, i32 %n1, i32 %n2, i32 %n3, i32 %niter, i8* %optype, i32 %passed_verification, i8* %npbversion) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %class.addr = alloca i8, align 1
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %n3.addr = alloca i32, align 4
  %niter.addr = alloca i32, align 4
  %optype.addr = alloca i8*, align 8
  %passed_verification.addr = alloca i32, align 4
  %npbversion.addr = alloca i8*, align 8
  %nn = alloca i64, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8 %class, i8* %class.addr, align 1
  store i32 %n1, i32* %n1.addr, align 4
  store i32 %n2, i32* %n2.addr, align 4
  store i32 %n3, i32* %n3.addr, align 4
  store i32 %niter, i32* %niter.addr, align 4
  store i8* %optype, i8** %optype.addr, align 8
  store i32 %passed_verification, i32* %passed_verification.addr, align 4
  store i8* %npbversion, i8** %npbversion.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i8* %0)
  %1 = load i8, i8* %class.addr, align 1
  %conv = sext i8 %1 to i32
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i32 %conv)
  %2 = load i32, i32* %n3.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n1.addr, align 4
  %conv3 = sext i32 %3 to i64
  store i64 %conv3, i64* %nn, align 8
  %4 = load i32, i32* %n2.addr, align 4
  %cmp4 = icmp ne i32 %4, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %5 = load i32, i32* %n2.addr, align 4
  %conv7 = sext i32 %5 to i64
  %6 = load i64, i64* %nn, align 8
  %mul = mul nsw i64 %6, %conv7
  store i64 %mul, i64* %nn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %7 = load i64, i64* %nn, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i64 %7)
  br label %if.end.10

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %n1.addr, align 4
  %9 = load i32, i32* %n2.addr, align 4
  %10 = load i32, i32* %n3.addr, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i32 %8, i32 %9, i32 %10)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  %11 = load i32, i32* %niter.addr, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i32 %11)
  %12 = load i8*, i8** %optype.addr, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* %12)
  %13 = load i32, i32* %passed_verification.addr, align 4
  %cmp13 = icmp slt i32 %13, 0
  br i1 %cmp13, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.end.10
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.23

if.else.17:                                       ; preds = %if.end.10
  %14 = load i32, i32* %passed_verification.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.17
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.22

if.else.20:                                       ; preds = %if.else.17
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.15
  %15 = load i8*, i8** %npbversion.addr, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i8* %15)
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0))
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @rank(i32 %iteration) #0 {
entry:
  %iteration.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %key_buff_ptr = alloca i32*, align 8
  %key_buff_ptr2 = alloca i32*, align 8
  %shift = alloca i32, align 4
  %key = alloca i32, align 4
  %key_rank = alloca i32, align 4
  %failed = alloca i32, align 4
  store i32 %iteration, i32* %iteration.addr, align 4
  store i32 11, i32* %shift, align 4
  %0 = load i32, i32* %iteration.addr, align 4
  %1 = load i32, i32* %iteration.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i32 0, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  %2 = load i32, i32* %iteration.addr, align 4
  %sub = sub nsw i32 2097152, %2
  %3 = load i32, i32* %iteration.addr, align 4
  %add = add nsw i32 %3, 10
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i32 0, i64 %idxprom1
  store i32 %sub, i32* %arrayidx2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [5 x i32], [5 x i32]* @test_index_array, i32 0, i64 %idxprom3
  %6 = load i32, i32* %arrayidx4, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i32 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [5 x i32], [5 x i32]* @partial_verify_vals, i32 0, i64 %idxprom7
  store i32 %7, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.14, %for.end
  %10 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %10, 1024
  br i1 %cmp10, label %for.body.11, label %for.end.16

for.body.11:                                      ; preds = %for.cond.9
  %11 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_size, i32 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.11
  %12 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %12, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.9

for.end.16:                                       ; preds = %for.cond.9
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.25, %for.end.16
  %13 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %13, 33554432
  br i1 %cmp18, label %for.body.19, label %for.end.27

for.body.19:                                      ; preds = %for.cond.17
  %14 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i32 0, i64 %idxprom20
  %15 = load i32, i32* %arrayidx21, align 4
  %16 = load i32, i32* %shift, align 4
  %shr = ashr i32 %15, %16
  %idxprom22 = sext i32 %shr to i64
  %arrayidx23 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_size, i32 0, i64 %idxprom22
  %17 = load i32, i32* %arrayidx23, align 4
  %inc24 = add nsw i32 %17, 1
  store i32 %inc24, i32* %arrayidx23, align 4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.19
  %18 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %18, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.17

for.end.27:                                       ; preds = %for.cond.17
  store i32 0, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @bucket_ptrs, i32 0, i64 0), align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.40, %for.end.27
  %19 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %19, 1024
  br i1 %cmp29, label %for.body.30, label %for.end.42

for.body.30:                                      ; preds = %for.cond.28
  %20 = load i32, i32* %i, align 4
  %sub31 = sub nsw i32 %20, 1
  %idxprom32 = sext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i32 0, i64 %idxprom32
  %21 = load i32, i32* %arrayidx33, align 4
  %22 = load i32, i32* %i, align 4
  %sub34 = sub nsw i32 %22, 1
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_size, i32 0, i64 %idxprom35
  %23 = load i32, i32* %arrayidx36, align 4
  %add37 = add nsw i32 %21, %23
  %24 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %24 to i64
  %arrayidx39 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i32 0, i64 %idxprom38
  store i32 %add37, i32* %arrayidx39, align 4
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.30
  %25 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %25, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.28

for.end.42:                                       ; preds = %for.cond.28
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.54, %for.end.42
  %26 = load i32, i32* %i, align 4
  %cmp44 = icmp slt i32 %26, 33554432
  br i1 %cmp44, label %for.body.45, label %for.end.56

for.body.45:                                      ; preds = %for.cond.43
  %27 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %27 to i64
  %arrayidx47 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i32 0, i64 %idxprom46
  %28 = load i32, i32* %arrayidx47, align 4
  store i32 %28, i32* %key, align 4
  %29 = load i32, i32* %key, align 4
  %30 = load i32, i32* %key, align 4
  %31 = load i32, i32* %shift, align 4
  %shr48 = ashr i32 %30, %31
  %idxprom49 = sext i32 %shr48 to i64
  %arrayidx50 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i32 0, i64 %idxprom49
  %32 = load i32, i32* %arrayidx50, align 4
  %inc51 = add nsw i32 %32, 1
  store i32 %inc51, i32* %arrayidx50, align 4
  %idxprom52 = sext i32 %32 to i64
  %arrayidx53 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i32 0, i64 %idxprom52
  store i32 %29, i32* %arrayidx53, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.45
  %33 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %33, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.43

for.end.56:                                       ; preds = %for.cond.43
  store i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_buff2, i32 0, i32 0), i32** %key_buff_ptr2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.62, %for.end.56
  %34 = load i32, i32* %i, align 4
  %cmp58 = icmp slt i32 %34, 2097152
  br i1 %cmp58, label %for.body.59, label %for.end.64

for.body.59:                                      ; preds = %for.cond.57
  %35 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %35 to i64
  %arrayidx61 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i32 0, i64 %idxprom60
  store i32 0, i32* %arrayidx61, align 4
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.59
  %36 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %36, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.57

for.end.64:                                       ; preds = %for.cond.57
  store i32* getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @key_buff1, i32 0, i32 0), i32** %key_buff_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.73, %for.end.64
  %37 = load i32, i32* %i, align 4
  %cmp66 = icmp slt i32 %37, 33554432
  br i1 %cmp66, label %for.body.67, label %for.end.75

for.body.67:                                      ; preds = %for.cond.65
  %38 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %38 to i64
  %39 = load i32*, i32** %key_buff_ptr2, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %39, i64 %idxprom68
  %40 = load i32, i32* %arrayidx69, align 4
  %idxprom70 = sext i32 %40 to i64
  %41 = load i32*, i32** %key_buff_ptr, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %41, i64 %idxprom70
  %42 = load i32, i32* %arrayidx71, align 4
  %inc72 = add nsw i32 %42, 1
  store i32 %inc72, i32* %arrayidx71, align 4
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.67
  %43 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %43, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.65

for.end.75:                                       ; preds = %for.cond.65
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.85, %for.end.75
  %44 = load i32, i32* %i, align 4
  %cmp77 = icmp slt i32 %44, 2097151
  br i1 %cmp77, label %for.body.78, label %for.end.87

for.body.78:                                      ; preds = %for.cond.76
  %45 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %45 to i64
  %46 = load i32*, i32** %key_buff_ptr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %46, i64 %idxprom79
  %47 = load i32, i32* %arrayidx80, align 4
  %48 = load i32, i32* %i, align 4
  %add81 = add nsw i32 %48, 1
  %idxprom82 = sext i32 %add81 to i64
  %49 = load i32*, i32** %key_buff_ptr, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %49, i64 %idxprom82
  %50 = load i32, i32* %arrayidx83, align 4
  %add84 = add nsw i32 %50, %47
  store i32 %add84, i32* %arrayidx83, align 4
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.78
  %51 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %51, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond.76

for.end.87:                                       ; preds = %for.cond.76
  store i32 0, i32* %i, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.123, %for.end.87
  %52 = load i32, i32* %i, align 4
  %cmp89 = icmp slt i32 %52, 5
  br i1 %cmp89, label %for.body.90, label %for.end.125

for.body.90:                                      ; preds = %for.cond.88
  %53 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %53 to i64
  %arrayidx92 = getelementptr inbounds [5 x i32], [5 x i32]* @partial_verify_vals, i32 0, i64 %idxprom91
  %54 = load i32, i32* %arrayidx92, align 4
  store i32 %54, i32* %k, align 4
  %55 = load i32, i32* %k, align 4
  %cmp93 = icmp slt i32 0, %55
  br i1 %cmp93, label %land.lhs.true, label %if.end.122

land.lhs.true:                                    ; preds = %for.body.90
  %56 = load i32, i32* %k, align 4
  %cmp94 = icmp sle i32 %56, 33554431
  br i1 %cmp94, label %if.then, label %if.end.122

if.then:                                          ; preds = %land.lhs.true
  %57 = load i32, i32* %k, align 4
  %sub95 = sub nsw i32 %57, 1
  %idxprom96 = sext i32 %sub95 to i64
  %58 = load i32*, i32** %key_buff_ptr, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %58, i64 %idxprom96
  %59 = load i32, i32* %arrayidx97, align 4
  store i32 %59, i32* %key_rank, align 4
  store i32 0, i32* %failed, align 4
  %60 = load i32, i32* %i, align 4
  %cmp98 = icmp eq i32 %60, 1
  br i1 %cmp98, label %if.then.102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %61 = load i32, i32* %i, align 4
  %cmp99 = icmp eq i32 %61, 2
  br i1 %cmp99, label %if.then.102, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %lor.lhs.false
  %62 = load i32, i32* %i, align 4
  %cmp101 = icmp eq i32 %62, 4
  br i1 %cmp101, label %if.then.102, label %if.else.109

if.then.102:                                      ; preds = %lor.lhs.false.100, %lor.lhs.false, %if.then
  %63 = load i32, i32* %key_rank, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %64 to i64
  %arrayidx104 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i32 0, i64 %idxprom103
  %65 = load i32, i32* %arrayidx104, align 4
  %66 = load i32, i32* %iteration.addr, align 4
  %add105 = add nsw i32 %65, %66
  %cmp106 = icmp ne i32 %63, %add105
  br i1 %cmp106, label %if.then.107, label %if.else

if.then.107:                                      ; preds = %if.then.102
  store i32 1, i32* %failed, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.102
  %67 = load i32, i32* @passed_verification, align 4
  %inc108 = add nsw i32 %67, 1
  store i32 %inc108, i32* @passed_verification, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.107
  br label %if.end.118

if.else.109:                                      ; preds = %lor.lhs.false.100
  %68 = load i32, i32* %key_rank, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %69 to i64
  %arrayidx111 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i32 0, i64 %idxprom110
  %70 = load i32, i32* %arrayidx111, align 4
  %71 = load i32, i32* %iteration.addr, align 4
  %sub112 = sub nsw i32 %70, %71
  %cmp113 = icmp ne i32 %68, %sub112
  br i1 %cmp113, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %if.else.109
  store i32 1, i32* %failed, align 4
  br label %if.end.117

if.else.115:                                      ; preds = %if.else.109
  %72 = load i32, i32* @passed_verification, align 4
  %inc116 = add nsw i32 %72, 1
  store i32 %inc116, i32* @passed_verification, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.115, %if.then.114
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end
  %73 = load i32, i32* %failed, align 4
  %cmp119 = icmp eq i32 %73, 1
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.118
  %74 = load i32, i32* %iteration.addr, align 4
  %75 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i32 0, i32 0), i32 %74, i32 %75)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %if.end.118
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %land.lhs.true, %for.body.90
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.122
  %76 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %76, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond.88

for.end.125:                                      ; preds = %for.cond.88
  %77 = load i32, i32* %iteration.addr, align 4
  %cmp126 = icmp eq i32 %77, 10
  br i1 %cmp126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %for.end.125
  %78 = load i32*, i32** %key_buff_ptr, align 8
  store i32* %78, i32** @key_buff_ptr_global, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %for.end.125
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %iteration = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @B_test_index_array, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [5 x i32], [5 x i32]* @test_index_array, i32 0, i64 %idxprom1
  store i32 %2, i32* %arrayidx2, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [5 x i32], [5 x i32]* @B_test_rank_array, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i32 0, i64 %idxprom5
  store i32 %5, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i64 33554432, i32 66)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i32 10)
  call void @create_seq(double 0x41B2B9B0A1000000, double 0x41D2309CE5400000)
  call void @rank(i32 1)
  store i32 0, i32* @passed_verification, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0))
  store i32 1, i32* %iteration, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.14, %for.end
  %8 = load i32, i32* %iteration, align 4
  %cmp11 = icmp sle i32 %8, 10
  br i1 %cmp11, label %for.body.12, label %for.end.16

for.body.12:                                      ; preds = %for.cond.10
  %9 = load i32, i32* %iteration, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 %9)
  %10 = load i32, i32* %iteration, align 4
  call void @rank(i32 %10)
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.12
  %11 = load i32, i32* %iteration, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, i32* %iteration, align 4
  br label %for.cond.10

for.end.16:                                       ; preds = %for.cond.10
  call void @full_verify()
  %12 = load i32, i32* @passed_verification, align 4
  %cmp17 = icmp ne i32 %12, 51
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.16
  store i32 0, i32* @passed_verification, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.16
  %13 = load i32, i32* @passed_verification, align 4
  call void @c_print_results(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8 signext 66, i32 524288, i32 64, i32 0, i32 10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0))
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
