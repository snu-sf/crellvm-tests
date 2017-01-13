; ModuleID = './SingleSource.Benchmarks.Misc/5.whetstone.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"usage: whetdc [-c] [loops]\0A\00", align 1
@T = common global double 0.000000e+00, align 8
@T1 = common global double 0.000000e+00, align 8
@T2 = common global double 0.000000e+00, align 8
@E1 = common global [5 x double] zeroinitializer, align 16
@J = common global i32 0, align 4
@K = common global i32 0, align 4
@L = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%7ld %7ld %7ld %12.4e %12.4e %12.4e %12.4e\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %I = alloca i64, align 8
  %N1 = alloca i64, align 8
  %N2 = alloca i64, align 8
  %N3 = alloca i64, align 8
  %N4 = alloca i64, align 8
  %N6 = alloca i64, align 8
  %N7 = alloca i64, align 8
  %N8 = alloca i64, align 8
  %N9 = alloca i64, align 8
  %N10 = alloca i64, align 8
  %N11 = alloca i64, align 8
  %X1 = alloca double, align 8
  %X2 = alloca double, align 8
  %X3 = alloca double, align 8
  %X4 = alloca double, align 8
  %X = alloca double, align 8
  %Y = alloca double, align 8
  %Z = alloca double, align 8
  %LOOP = alloca i64, align 8
  %II = alloca i32, align 4
  %JJ = alloca i32, align 4
  %loopstart = alloca i64, align 8
  %startsec = alloca i64, align 8
  %finisec = alloca i64, align 8
  %KIPS = alloca float, align 4
  %continuous = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 100000, i64* %loopstart, align 8
  store i32 0, i32* %continuous, align 4
  store i32 1, i32* %II, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %entry
  %0 = load i32, i32* %II, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %II, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 2) #4
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %5 = load i32, i32* %II, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %6, i64 %idxprom2
  %7 = load i8*, i8** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv, 99
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 1, i32* %continuous, align 4
  br label %if.end.18

if.else:                                          ; preds = %lor.lhs.false
  %9 = load i32, i32* %II, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %10, i64 %idxprom7
  %11 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i64 @atol(i8* %11) #4
  %cmp10 = icmp sgt i64 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.else
  %12 = load i32, i32* %II, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %13, i64 %idxprom13
  %14 = load i8*, i8** %arrayidx14, align 8
  %call15 = call i64 @atol(i8* %14) #4
  store i64 %call15, i64* %loopstart, align 8
  br label %if.end

if.else.16:                                       ; preds = %if.else
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then
  %16 = load i32, i32* %II, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %II, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %LCONT

LCONT:                                            ; preds = %if.then.258, %while.end
  %call19 = call i64 @time(i64* null) #5
  store i64 %call19, i64* %startsec, align 8
  store double 4.999750e-01, double* @T, align 8
  store double 5.002500e-01, double* @T1, align 8
  store double 2.000000e+00, double* @T2, align 8
  %17 = load i64, i64* %loopstart, align 8
  store i64 %17, i64* %LOOP, align 8
  store i32 1, i32* %II, align 4
  store i32 1, i32* %JJ, align 4
  br label %IILOOP

IILOOP:                                           ; preds = %if.then.254, %LCONT
  store i64 0, i64* %N1, align 8
  %18 = load i64, i64* %LOOP, align 8
  %mul = mul nsw i64 12, %18
  store i64 %mul, i64* %N2, align 8
  %19 = load i64, i64* %LOOP, align 8
  %mul20 = mul nsw i64 14, %19
  store i64 %mul20, i64* %N3, align 8
  %20 = load i64, i64* %LOOP, align 8
  %mul21 = mul nsw i64 345, %20
  store i64 %mul21, i64* %N4, align 8
  %21 = load i64, i64* %LOOP, align 8
  %mul22 = mul nsw i64 210, %21
  store i64 %mul22, i64* %N6, align 8
  %22 = load i64, i64* %LOOP, align 8
  %mul23 = mul nsw i64 32, %22
  store i64 %mul23, i64* %N7, align 8
  %23 = load i64, i64* %LOOP, align 8
  %mul24 = mul nsw i64 899, %23
  store i64 %mul24, i64* %N8, align 8
  %24 = load i64, i64* %LOOP, align 8
  %mul25 = mul nsw i64 616, %24
  store i64 %mul25, i64* %N9, align 8
  store i64 0, i64* %N10, align 8
  %25 = load i64, i64* %LOOP, align 8
  %mul26 = mul nsw i64 93, %25
  store i64 %mul26, i64* %N11, align 8
  store double 1.000000e+00, double* %X1, align 8
  store double -1.000000e+00, double* %X2, align 8
  store double -1.000000e+00, double* %X3, align 8
  store double -1.000000e+00, double* %X4, align 8
  store i64 1, i64* %I, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %IILOOP
  %26 = load i64, i64* %I, align 8
  %27 = load i64, i64* %N1, align 8
  %cmp27 = icmp sle i64 %26, %27
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load double, double* %X1, align 8
  %29 = load double, double* %X2, align 8
  %add = fadd double %28, %29
  %30 = load double, double* %X3, align 8
  %add29 = fadd double %add, %30
  %31 = load double, double* %X4, align 8
  %sub = fsub double %add29, %31
  %32 = load double, double* @T, align 8
  %mul30 = fmul double %sub, %32
  store double %mul30, double* %X1, align 8
  %33 = load double, double* %X1, align 8
  %34 = load double, double* %X2, align 8
  %add31 = fadd double %33, %34
  %35 = load double, double* %X3, align 8
  %sub32 = fsub double %add31, %35
  %36 = load double, double* %X4, align 8
  %add33 = fadd double %sub32, %36
  %37 = load double, double* @T, align 8
  %mul34 = fmul double %add33, %37
  store double %mul34, double* %X2, align 8
  %38 = load double, double* %X1, align 8
  %39 = load double, double* %X2, align 8
  %sub35 = fsub double %38, %39
  %40 = load double, double* %X3, align 8
  %add36 = fadd double %sub35, %40
  %41 = load double, double* %X4, align 8
  %add37 = fadd double %add36, %41
  %42 = load double, double* @T, align 8
  %mul38 = fmul double %add37, %42
  store double %mul38, double* %X3, align 8
  %43 = load double, double* %X1, align 8
  %sub39 = fsub double -0.000000e+00, %43
  %44 = load double, double* %X2, align 8
  %add40 = fadd double %sub39, %44
  %45 = load double, double* %X3, align 8
  %add41 = fadd double %add40, %45
  %46 = load double, double* %X4, align 8
  %add42 = fadd double %add41, %46
  %47 = load double, double* @T, align 8
  %mul43 = fmul double %add42, %47
  store double %mul43, double* %X4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i64, i64* %I, align 8
  %inc44 = add nsw i64 %48, 1
  store i64 %inc44, i64* %I, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load i32, i32* %JJ, align 4
  %50 = load i32, i32* %II, align 4
  %cmp45 = icmp eq i32 %49, %50
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.end
  %51 = load i64, i64* %N1, align 8
  %52 = load i64, i64* %N1, align 8
  %53 = load i64, i64* %N1, align 8
  %54 = load double, double* %X1, align 8
  %55 = load double, double* %X2, align 8
  %56 = load double, double* %X3, align 8
  %57 = load double, double* %X4, align 8
  call void @POUT(i64 %51, i64 %52, i64 %53, double %54, double %55, double %56, double %57)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %for.end
  store double 1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 1), align 8
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 2), align 8
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 3), align 8
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 4), align 8
  store i64 1, i64* %I, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.70, %if.end.48
  %58 = load i64, i64* %I, align 8
  %59 = load i64, i64* %N2, align 8
  %cmp50 = icmp sle i64 %58, %59
  br i1 %cmp50, label %for.body.52, label %for.end.72

for.body.52:                                      ; preds = %for.cond.49
  %60 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 1), align 8
  %61 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 2), align 8
  %add53 = fadd double %60, %61
  %62 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 3), align 8
  %add54 = fadd double %add53, %62
  %63 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 4), align 8
  %sub55 = fsub double %add54, %63
  %64 = load double, double* @T, align 8
  %mul56 = fmul double %sub55, %64
  store double %mul56, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 1), align 8
  %65 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 1), align 8
  %66 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 2), align 8
  %add57 = fadd double %65, %66
  %67 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 3), align 8
  %sub58 = fsub double %add57, %67
  %68 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 4), align 8
  %add59 = fadd double %sub58, %68
  %69 = load double, double* @T, align 8
  %mul60 = fmul double %add59, %69
  store double %mul60, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 2), align 8
  %70 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 1), align 8
  %71 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 2), align 8
  %sub61 = fsub double %70, %71
  %72 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 3), align 8
  %add62 = fadd double %sub61, %72
  %73 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 4), align 8
  %add63 = fadd double %add62, %73
  %74 = load double, double* @T, align 8
  %mul64 = fmul double %add63, %74
  store double %mul64, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 3), align 8
  %75 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 1), align 8
  %sub65 = fsub double -0.000000e+00, %75
  %76 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 2), align 8
  %add66 = fadd double %sub65, %76
  %77 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 3), align 8
  %add67 = fadd double %add66, %77
  %78 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 4), align 8
  %add68 = fadd double %add67, %78
  %79 = load double, double* @T, align 8
  %mul69 = fmul double %add68, %79
  store double %mul69, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 4), align 8
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.52
  %80 = load i64, i64* %I, align 8
  %inc71 = add nsw i64 %80, 1
  store i64 %inc71, i64* %I, align 8
  br label %for.cond.49

for.end.72:                                       ; preds = %for.cond.49
  %81 = load i32, i32* %JJ, align 4
  %82 = load i32, i32* %II, align 4
  %cmp73 = icmp eq i32 %81, %82
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.end.72
  %83 = load i64, i64* %N2, align 8
  %84 = load i64, i64* %N3, align 8
  %85 = load i64, i64* %N2, align 8
  %86 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 1), align 8
  %87 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 2), align 8
  %88 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 3), align 8
  %89 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 4), align 8
  call void @POUT(i64 %83, i64 %84, i64 %85, double %86, double %87, double %88, double %89)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %for.end.72
  store i64 1, i64* %I, align 8
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.81, %if.end.76
  %90 = load i64, i64* %I, align 8
  %91 = load i64, i64* %N3, align 8
  %cmp78 = icmp sle i64 %90, %91
  br i1 %cmp78, label %for.body.80, label %for.end.83

for.body.80:                                      ; preds = %for.cond.77
  call void @PA(double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i32 0))
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.80
  %92 = load i64, i64* %I, align 8
  %inc82 = add nsw i64 %92, 1
  store i64 %inc82, i64* %I, align 8
  br label %for.cond.77

for.end.83:                                       ; preds = %for.cond.77
  %93 = load i32, i32* %JJ, align 4
  %94 = load i32, i32* %II, align 4
  %cmp84 = icmp eq i32 %93, %94
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %for.end.83
  %95 = load i64, i64* %N3, align 8
  %96 = load i64, i64* %N2, align 8
  %97 = load i64, i64* %N2, align 8
  %98 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 1), align 8
  %99 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 2), align 8
  %100 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 3), align 8
  %101 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 4), align 8
  call void @POUT(i64 %95, i64 %96, i64 %97, double %98, double %99, double %100, double %101)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %for.end.83
  store i32 1, i32* @J, align 4
  store i64 1, i64* %I, align 8
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.107, %if.end.87
  %102 = load i64, i64* %I, align 8
  %103 = load i64, i64* %N4, align 8
  %cmp89 = icmp sle i64 %102, %103
  br i1 %cmp89, label %for.body.91, label %for.end.109

for.body.91:                                      ; preds = %for.cond.88
  %104 = load i32, i32* @J, align 4
  %cmp92 = icmp eq i32 %104, 1
  br i1 %cmp92, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %for.body.91
  store i32 2, i32* @J, align 4
  br label %if.end.96

if.else.95:                                       ; preds = %for.body.91
  store i32 3, i32* @J, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.95, %if.then.94
  %105 = load i32, i32* @J, align 4
  %cmp97 = icmp sgt i32 %105, 2
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.end.96
  store i32 0, i32* @J, align 4
  br label %if.end.101

if.else.100:                                      ; preds = %if.end.96
  store i32 1, i32* @J, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.100, %if.then.99
  %106 = load i32, i32* @J, align 4
  %cmp102 = icmp slt i32 %106, 1
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %if.end.101
  store i32 1, i32* @J, align 4
  br label %if.end.106

if.else.105:                                      ; preds = %if.end.101
  store i32 0, i32* @J, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.105, %if.then.104
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.106
  %107 = load i64, i64* %I, align 8
  %inc108 = add nsw i64 %107, 1
  store i64 %inc108, i64* %I, align 8
  br label %for.cond.88

for.end.109:                                      ; preds = %for.cond.88
  %108 = load i32, i32* %JJ, align 4
  %109 = load i32, i32* %II, align 4
  %cmp110 = icmp eq i32 %108, %109
  br i1 %cmp110, label %if.then.112, label %if.end.115

if.then.112:                                      ; preds = %for.end.109
  %110 = load i64, i64* %N4, align 8
  %111 = load i32, i32* @J, align 4
  %conv113 = sext i32 %111 to i64
  %112 = load i32, i32* @J, align 4
  %conv114 = sext i32 %112 to i64
  %113 = load double, double* %X1, align 8
  %114 = load double, double* %X2, align 8
  %115 = load double, double* %X3, align 8
  %116 = load double, double* %X4, align 8
  call void @POUT(i64 %110, i64 %conv113, i64 %conv114, double %113, double %114, double %115, double %116)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.112, %for.end.109
  store i32 1, i32* @J, align 4
  store i32 2, i32* @K, align 4
  store i32 3, i32* @L, align 4
  store i64 1, i64* %I, align 8
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.143, %if.end.115
  %117 = load i64, i64* %I, align 8
  %118 = load i64, i64* %N6, align 8
  %cmp117 = icmp sle i64 %117, %118
  br i1 %cmp117, label %for.body.119, label %for.end.145

for.body.119:                                     ; preds = %for.cond.116
  %119 = load i32, i32* @J, align 4
  %120 = load i32, i32* @K, align 4
  %121 = load i32, i32* @J, align 4
  %sub120 = sub nsw i32 %120, %121
  %mul121 = mul nsw i32 %119, %sub120
  %122 = load i32, i32* @L, align 4
  %123 = load i32, i32* @K, align 4
  %sub122 = sub nsw i32 %122, %123
  %mul123 = mul nsw i32 %mul121, %sub122
  store i32 %mul123, i32* @J, align 4
  %124 = load i32, i32* @L, align 4
  %125 = load i32, i32* @K, align 4
  %mul124 = mul nsw i32 %124, %125
  %126 = load i32, i32* @L, align 4
  %127 = load i32, i32* @J, align 4
  %sub125 = sub nsw i32 %126, %127
  %128 = load i32, i32* @K, align 4
  %mul126 = mul nsw i32 %sub125, %128
  %sub127 = sub nsw i32 %mul124, %mul126
  store i32 %sub127, i32* @K, align 4
  %129 = load i32, i32* @L, align 4
  %130 = load i32, i32* @K, align 4
  %sub128 = sub nsw i32 %129, %130
  %131 = load i32, i32* @K, align 4
  %132 = load i32, i32* @J, align 4
  %add129 = add nsw i32 %131, %132
  %mul130 = mul nsw i32 %sub128, %add129
  store i32 %mul130, i32* @L, align 4
  %133 = load i32, i32* @J, align 4
  %134 = load i32, i32* @K, align 4
  %add131 = add nsw i32 %133, %134
  %135 = load i32, i32* @L, align 4
  %add132 = add nsw i32 %add131, %135
  %conv133 = sitofp i32 %add132 to double
  %136 = load i32, i32* @L, align 4
  %sub134 = sub nsw i32 %136, 1
  %idxprom135 = sext i32 %sub134 to i64
  %arrayidx136 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i64 %idxprom135
  store double %conv133, double* %arrayidx136, align 8
  %137 = load i32, i32* @J, align 4
  %138 = load i32, i32* @K, align 4
  %mul137 = mul nsw i32 %137, %138
  %139 = load i32, i32* @L, align 4
  %mul138 = mul nsw i32 %mul137, %139
  %conv139 = sitofp i32 %mul138 to double
  %140 = load i32, i32* @K, align 4
  %sub140 = sub nsw i32 %140, 1
  %idxprom141 = sext i32 %sub140 to i64
  %arrayidx142 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i64 %idxprom141
  store double %conv139, double* %arrayidx142, align 8
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.119
  %141 = load i64, i64* %I, align 8
  %inc144 = add nsw i64 %141, 1
  store i64 %inc144, i64* %I, align 8
  br label %for.cond.116

for.end.145:                                      ; preds = %for.cond.116
  %142 = load i32, i32* %JJ, align 4
  %143 = load i32, i32* %II, align 4
  %cmp146 = icmp eq i32 %142, %143
  br i1 %cmp146, label %if.then.148, label %if.end.151

if.then.148:                                      ; preds = %for.end.145
  %144 = load i64, i64* %N6, align 8
  %145 = load i32, i32* @J, align 4
  %conv149 = sext i32 %145 to i64
  %146 = load i32, i32* @K, align 4
  %conv150 = sext i32 %146 to i64
  %147 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 1), align 8
  %148 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 2), align 8
  %149 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 3), align 8
  %150 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 4), align 8
  call void @POUT(i64 %144, i64 %conv149, i64 %conv150, double %147, double %148, double %149, double %150)
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.148, %for.end.145
  store double 5.000000e-01, double* %X, align 8
  store double 5.000000e-01, double* %Y, align 8
  store i64 1, i64* %I, align 8
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.181, %if.end.151
  %151 = load i64, i64* %I, align 8
  %152 = load i64, i64* %N7, align 8
  %cmp153 = icmp sle i64 %151, %152
  br i1 %cmp153, label %for.body.155, label %for.end.183

for.body.155:                                     ; preds = %for.cond.152
  %153 = load double, double* @T, align 8
  %154 = load double, double* @T2, align 8
  %155 = load double, double* %X, align 8
  %call156 = call double @sin(double %155) #5
  %mul157 = fmul double %154, %call156
  %156 = load double, double* %X, align 8
  %call158 = call double @cos(double %156) #5
  %mul159 = fmul double %mul157, %call158
  %157 = load double, double* %X, align 8
  %158 = load double, double* %Y, align 8
  %add160 = fadd double %157, %158
  %call161 = call double @cos(double %add160) #5
  %159 = load double, double* %X, align 8
  %160 = load double, double* %Y, align 8
  %sub162 = fsub double %159, %160
  %call163 = call double @cos(double %sub162) #5
  %add164 = fadd double %call161, %call163
  %sub165 = fsub double %add164, 1.000000e+00
  %div = fdiv double %mul159, %sub165
  %call166 = call double @atan(double %div) #5
  %mul167 = fmul double %153, %call166
  store double %mul167, double* %X, align 8
  %161 = load double, double* @T, align 8
  %162 = load double, double* @T2, align 8
  %163 = load double, double* %Y, align 8
  %call168 = call double @sin(double %163) #5
  %mul169 = fmul double %162, %call168
  %164 = load double, double* %Y, align 8
  %call170 = call double @cos(double %164) #5
  %mul171 = fmul double %mul169, %call170
  %165 = load double, double* %X, align 8
  %166 = load double, double* %Y, align 8
  %add172 = fadd double %165, %166
  %call173 = call double @cos(double %add172) #5
  %167 = load double, double* %X, align 8
  %168 = load double, double* %Y, align 8
  %sub174 = fsub double %167, %168
  %call175 = call double @cos(double %sub174) #5
  %add176 = fadd double %call173, %call175
  %sub177 = fsub double %add176, 1.000000e+00
  %div178 = fdiv double %mul171, %sub177
  %call179 = call double @atan(double %div178) #5
  %mul180 = fmul double %161, %call179
  store double %mul180, double* %Y, align 8
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.155
  %169 = load i64, i64* %I, align 8
  %inc182 = add nsw i64 %169, 1
  store i64 %inc182, i64* %I, align 8
  br label %for.cond.152

for.end.183:                                      ; preds = %for.cond.152
  %170 = load i32, i32* %JJ, align 4
  %171 = load i32, i32* %II, align 4
  %cmp184 = icmp eq i32 %170, %171
  br i1 %cmp184, label %if.then.186, label %if.end.189

if.then.186:                                      ; preds = %for.end.183
  %172 = load i64, i64* %N7, align 8
  %173 = load i32, i32* @J, align 4
  %conv187 = sext i32 %173 to i64
  %174 = load i32, i32* @K, align 4
  %conv188 = sext i32 %174 to i64
  %175 = load double, double* %X, align 8
  %176 = load double, double* %X, align 8
  %177 = load double, double* %Y, align 8
  %178 = load double, double* %Y, align 8
  call void @POUT(i64 %172, i64 %conv187, i64 %conv188, double %175, double %176, double %177, double %178)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.186, %for.end.183
  store double 1.000000e+00, double* %X, align 8
  store double 1.000000e+00, double* %Y, align 8
  store double 1.000000e+00, double* %Z, align 8
  store i64 1, i64* %I, align 8
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.194, %if.end.189
  %179 = load i64, i64* %I, align 8
  %180 = load i64, i64* %N8, align 8
  %cmp191 = icmp sle i64 %179, %180
  br i1 %cmp191, label %for.body.193, label %for.end.196

for.body.193:                                     ; preds = %for.cond.190
  %181 = load double, double* %X, align 8
  %182 = load double, double* %Y, align 8
  call void @P3(double %181, double %182, double* %Z)
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.body.193
  %183 = load i64, i64* %I, align 8
  %inc195 = add nsw i64 %183, 1
  store i64 %inc195, i64* %I, align 8
  br label %for.cond.190

for.end.196:                                      ; preds = %for.cond.190
  %184 = load i32, i32* %JJ, align 4
  %185 = load i32, i32* %II, align 4
  %cmp197 = icmp eq i32 %184, %185
  br i1 %cmp197, label %if.then.199, label %if.end.202

if.then.199:                                      ; preds = %for.end.196
  %186 = load i64, i64* %N8, align 8
  %187 = load i32, i32* @J, align 4
  %conv200 = sext i32 %187 to i64
  %188 = load i32, i32* @K, align 4
  %conv201 = sext i32 %188 to i64
  %189 = load double, double* %X, align 8
  %190 = load double, double* %Y, align 8
  %191 = load double, double* %Z, align 8
  %192 = load double, double* %Z, align 8
  call void @POUT(i64 %186, i64 %conv200, i64 %conv201, double %189, double %190, double %191, double %192)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.199, %for.end.196
  store i32 1, i32* @J, align 4
  store i32 2, i32* @K, align 4
  store i32 3, i32* @L, align 4
  store double 1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 1), align 8
  store double 2.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 2), align 8
  store double 3.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 3), align 8
  store i64 1, i64* %I, align 8
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.207, %if.end.202
  %193 = load i64, i64* %I, align 8
  %194 = load i64, i64* %N9, align 8
  %cmp204 = icmp sle i64 %193, %194
  br i1 %cmp204, label %for.body.206, label %for.end.209

for.body.206:                                     ; preds = %for.cond.203
  call void @P0()
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.body.206
  %195 = load i64, i64* %I, align 8
  %inc208 = add nsw i64 %195, 1
  store i64 %inc208, i64* %I, align 8
  br label %for.cond.203

for.end.209:                                      ; preds = %for.cond.203
  %196 = load i32, i32* %JJ, align 4
  %197 = load i32, i32* %II, align 4
  %cmp210 = icmp eq i32 %196, %197
  br i1 %cmp210, label %if.then.212, label %if.end.215

if.then.212:                                      ; preds = %for.end.209
  %198 = load i64, i64* %N9, align 8
  %199 = load i32, i32* @J, align 4
  %conv213 = sext i32 %199 to i64
  %200 = load i32, i32* @K, align 4
  %conv214 = sext i32 %200 to i64
  %201 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 1), align 8
  %202 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 2), align 8
  %203 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 3), align 8
  %204 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i64 4), align 8
  call void @POUT(i64 %198, i64 %conv213, i64 %conv214, double %201, double %202, double %203, double %204)
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.212, %for.end.209
  store i32 2, i32* @J, align 4
  store i32 3, i32* @K, align 4
  store i64 1, i64* %I, align 8
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.225, %if.end.215
  %205 = load i64, i64* %I, align 8
  %206 = load i64, i64* %N10, align 8
  %cmp217 = icmp sle i64 %205, %206
  br i1 %cmp217, label %for.body.219, label %for.end.227

for.body.219:                                     ; preds = %for.cond.216
  %207 = load i32, i32* @J, align 4
  %208 = load i32, i32* @K, align 4
  %add220 = add nsw i32 %207, %208
  store i32 %add220, i32* @J, align 4
  %209 = load i32, i32* @J, align 4
  %210 = load i32, i32* @K, align 4
  %add221 = add nsw i32 %209, %210
  store i32 %add221, i32* @K, align 4
  %211 = load i32, i32* @K, align 4
  %212 = load i32, i32* @J, align 4
  %sub222 = sub nsw i32 %211, %212
  store i32 %sub222, i32* @J, align 4
  %213 = load i32, i32* @K, align 4
  %214 = load i32, i32* @J, align 4
  %sub223 = sub nsw i32 %213, %214
  %215 = load i32, i32* @J, align 4
  %sub224 = sub nsw i32 %sub223, %215
  store i32 %sub224, i32* @K, align 4
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.body.219
  %216 = load i64, i64* %I, align 8
  %inc226 = add nsw i64 %216, 1
  store i64 %inc226, i64* %I, align 8
  br label %for.cond.216

for.end.227:                                      ; preds = %for.cond.216
  %217 = load i32, i32* %JJ, align 4
  %218 = load i32, i32* %II, align 4
  %cmp228 = icmp eq i32 %217, %218
  br i1 %cmp228, label %if.then.230, label %if.end.233

if.then.230:                                      ; preds = %for.end.227
  %219 = load i64, i64* %N10, align 8
  %220 = load i32, i32* @J, align 4
  %conv231 = sext i32 %220 to i64
  %221 = load i32, i32* @K, align 4
  %conv232 = sext i32 %221 to i64
  %222 = load double, double* %X1, align 8
  %223 = load double, double* %X2, align 8
  %224 = load double, double* %X3, align 8
  %225 = load double, double* %X4, align 8
  call void @POUT(i64 %219, i64 %conv231, i64 %conv232, double %222, double %223, double %224, double %225)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.230, %for.end.227
  store double 7.500000e-01, double* %X, align 8
  store i64 1, i64* %I, align 8
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.242, %if.end.233
  %226 = load i64, i64* %I, align 8
  %227 = load i64, i64* %N11, align 8
  %cmp235 = icmp sle i64 %226, %227
  br i1 %cmp235, label %for.body.237, label %for.end.244

for.body.237:                                     ; preds = %for.cond.234
  %228 = load double, double* %X, align 8
  %call238 = call double @log(double %228) #5
  %229 = load double, double* @T1, align 8
  %div239 = fdiv double %call238, %229
  %call240 = call double @exp(double %div239) #5
  %call241 = call double @sqrt(double %call240) #5
  store double %call241, double* %X, align 8
  br label %for.inc.242

for.inc.242:                                      ; preds = %for.body.237
  %230 = load i64, i64* %I, align 8
  %inc243 = add nsw i64 %230, 1
  store i64 %inc243, i64* %I, align 8
  br label %for.cond.234

for.end.244:                                      ; preds = %for.cond.234
  %231 = load i32, i32* %JJ, align 4
  %232 = load i32, i32* %II, align 4
  %cmp245 = icmp eq i32 %231, %232
  br i1 %cmp245, label %if.then.247, label %if.end.250

if.then.247:                                      ; preds = %for.end.244
  %233 = load i64, i64* %N11, align 8
  %234 = load i32, i32* @J, align 4
  %conv248 = sext i32 %234 to i64
  %235 = load i32, i32* @K, align 4
  %conv249 = sext i32 %235 to i64
  %236 = load double, double* %X, align 8
  %237 = load double, double* %X, align 8
  %238 = load double, double* %X, align 8
  %239 = load double, double* %X, align 8
  call void @POUT(i64 %233, i64 %conv248, i64 %conv249, double %236, double %237, double %238, double %239)
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.247, %for.end.244
  %240 = load i32, i32* %JJ, align 4
  %inc251 = add nsw i32 %240, 1
  store i32 %inc251, i32* %JJ, align 4
  %241 = load i32, i32* %II, align 4
  %cmp252 = icmp sle i32 %inc251, %241
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %if.end.250
  br label %IILOOP

if.end.255:                                       ; preds = %if.end.250
  %call256 = call i64 @time(i64* null) #5
  store i64 %call256, i64* %finisec, align 8
  %call257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %242 = load i32, i32* %continuous, align 4
  %tobool = icmp ne i32 %242, 0
  br i1 %tobool, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.end.255
  br label %LCONT

if.end.259:                                       ; preds = %if.end.255
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.259, %if.else.16
  %243 = load i32, i32* %retval
  ret i32 %243
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind uwtable
define void @POUT(i64 %N, i64 %J, i64 %K, double %X1, double %X2, double %X3, double %X4) #0 {
entry:
  %N.addr = alloca i64, align 8
  %J.addr = alloca i64, align 8
  %K.addr = alloca i64, align 8
  %X1.addr = alloca double, align 8
  %X2.addr = alloca double, align 8
  %X3.addr = alloca double, align 8
  %X4.addr = alloca double, align 8
  store i64 %N, i64* %N.addr, align 8
  store i64 %J, i64* %J.addr, align 8
  store i64 %K, i64* %K.addr, align 8
  store double %X1, double* %X1.addr, align 8
  store double %X2, double* %X2.addr, align 8
  store double %X3, double* %X3.addr, align 8
  store double %X4, double* %X4.addr, align 8
  %0 = load i64, i64* %N.addr, align 8
  %1 = load i64, i64* %J.addr, align 8
  %2 = load i64, i64* %K.addr, align 8
  %3 = load double, double* %X1.addr, align 8
  %4 = load double, double* %X2.addr, align 8
  %5 = load double, double* %X3.addr, align 8
  %6 = load double, double* %X4.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i64 %0, i64 %1, i64 %2, double %3, double %4, double %5, double %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PA(double* %E) #0 {
entry:
  %E.addr = alloca double*, align 8
  store double* %E, double** %E.addr, align 8
  store i32 0, i32* @J, align 4
  br label %L10

L10:                                              ; preds = %if.then, %entry
  %0 = load double*, double** %E.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 1
  %1 = load double, double* %arrayidx, align 8
  %2 = load double*, double** %E.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 2
  %3 = load double, double* %arrayidx1, align 8
  %add = fadd double %1, %3
  %4 = load double*, double** %E.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 3
  %5 = load double, double* %arrayidx2, align 8
  %add3 = fadd double %add, %5
  %6 = load double*, double** %E.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %6, i64 4
  %7 = load double, double* %arrayidx4, align 8
  %sub = fsub double %add3, %7
  %8 = load double, double* @T, align 8
  %mul = fmul double %sub, %8
  %9 = load double*, double** %E.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 1
  store double %mul, double* %arrayidx5, align 8
  %10 = load double*, double** %E.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 1
  %11 = load double, double* %arrayidx6, align 8
  %12 = load double*, double** %E.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 2
  %13 = load double, double* %arrayidx7, align 8
  %add8 = fadd double %11, %13
  %14 = load double*, double** %E.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %14, i64 3
  %15 = load double, double* %arrayidx9, align 8
  %sub10 = fsub double %add8, %15
  %16 = load double*, double** %E.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %16, i64 4
  %17 = load double, double* %arrayidx11, align 8
  %add12 = fadd double %sub10, %17
  %18 = load double, double* @T, align 8
  %mul13 = fmul double %add12, %18
  %19 = load double*, double** %E.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %19, i64 2
  store double %mul13, double* %arrayidx14, align 8
  %20 = load double*, double** %E.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 1
  %21 = load double, double* %arrayidx15, align 8
  %22 = load double*, double** %E.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %22, i64 2
  %23 = load double, double* %arrayidx16, align 8
  %sub17 = fsub double %21, %23
  %24 = load double*, double** %E.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %24, i64 3
  %25 = load double, double* %arrayidx18, align 8
  %add19 = fadd double %sub17, %25
  %26 = load double*, double** %E.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %26, i64 4
  %27 = load double, double* %arrayidx20, align 8
  %add21 = fadd double %add19, %27
  %28 = load double, double* @T, align 8
  %mul22 = fmul double %add21, %28
  %29 = load double*, double** %E.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %29, i64 3
  store double %mul22, double* %arrayidx23, align 8
  %30 = load double*, double** %E.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %30, i64 1
  %31 = load double, double* %arrayidx24, align 8
  %sub25 = fsub double -0.000000e+00, %31
  %32 = load double*, double** %E.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %32, i64 2
  %33 = load double, double* %arrayidx26, align 8
  %add27 = fadd double %sub25, %33
  %34 = load double*, double** %E.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %34, i64 3
  %35 = load double, double* %arrayidx28, align 8
  %add29 = fadd double %add27, %35
  %36 = load double*, double** %E.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %36, i64 4
  %37 = load double, double* %arrayidx30, align 8
  %add31 = fadd double %add29, %37
  %38 = load double, double* @T2, align 8
  %div = fdiv double %add31, %38
  %39 = load double*, double** %E.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %39, i64 4
  store double %div, double* %arrayidx32, align 8
  %40 = load i32, i32* @J, align 4
  %add33 = add nsw i32 %40, 1
  store i32 %add33, i32* @J, align 4
  %41 = load i32, i32* @J, align 4
  %cmp = icmp slt i32 %41, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %L10
  br label %L10

if.end:                                           ; preds = %L10
  ret void
}

; Function Attrs: nounwind
declare double @atan(double) #3

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind uwtable
define void @P3(double %X, double %Y, double* %Z) #0 {
entry:
  %X.addr = alloca double, align 8
  %Y.addr = alloca double, align 8
  %Z.addr = alloca double*, align 8
  %X1 = alloca double, align 8
  %Y1 = alloca double, align 8
  store double %X, double* %X.addr, align 8
  store double %Y, double* %Y.addr, align 8
  store double* %Z, double** %Z.addr, align 8
  %0 = load double, double* %X.addr, align 8
  store double %0, double* %X1, align 8
  %1 = load double, double* %Y.addr, align 8
  store double %1, double* %Y1, align 8
  %2 = load double, double* @T, align 8
  %3 = load double, double* %X1, align 8
  %4 = load double, double* %Y1, align 8
  %add = fadd double %3, %4
  %mul = fmul double %2, %add
  store double %mul, double* %X1, align 8
  %5 = load double, double* @T, align 8
  %6 = load double, double* %X1, align 8
  %7 = load double, double* %Y1, align 8
  %add1 = fadd double %6, %7
  %mul2 = fmul double %5, %add1
  store double %mul2, double* %Y1, align 8
  %8 = load double, double* %X1, align 8
  %9 = load double, double* %Y1, align 8
  %add3 = fadd double %8, %9
  %10 = load double, double* @T2, align 8
  %div = fdiv double %add3, %10
  %11 = load double*, double** %Z.addr, align 8
  store double %div, double* %11, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @P0() #0 {
entry:
  %0 = load i32, i32* @K, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i64 %idxprom
  %1 = load double, double* %arrayidx, align 8
  %2 = load i32, i32* @J, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i64 %idxprom1
  store double %1, double* %arrayidx2, align 8
  %3 = load i32, i32* @L, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i64 %idxprom3
  %4 = load double, double* %arrayidx4, align 8
  %5 = load i32, i32* @K, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i64 %idxprom5
  store double %4, double* %arrayidx6, align 8
  %6 = load i32, i32* @J, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i64 %idxprom7
  %7 = load double, double* %arrayidx8, align 8
  %8 = load i32, i32* @L, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i64 %idxprom9
  store double %7, double* %arrayidx10, align 8
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind
declare double @log(double) #3

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
