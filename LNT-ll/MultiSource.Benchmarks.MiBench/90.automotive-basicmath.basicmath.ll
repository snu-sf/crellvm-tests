; ModuleID = './MultiSource.Benchmarks.MiBench/90.automotive-basicmath.basicmath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"********* CUBIC FUNCTIONS ***********\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"********* INTEGER SQR ROOTS ***********\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"sqrt(%lX) = %X\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"********* ANGLE CONVERSION ***********\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a1 = alloca double, align 8
  %b1 = alloca double, align 8
  %c1 = alloca double, align 8
  %d1 = alloca double, align 8
  %x = alloca [3 x double], align 16
  %X = alloca double, align 8
  %solutions = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %q = alloca %struct.int_sqrt, align 4
  %n = alloca i64, align 8
  store i32 0, i32* %retval
  store double 1.000000e+00, double* %a1, align 8
  store double -1.050000e+01, double* %b1, align 8
  store double 3.200000e+01, double* %c1, align 8
  store double -3.000000e+01, double* %d1, align 8
  store i32 1072497001, i32* %l, align 4
  store i64 0, i64* %n, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  %0 = load double, double* %a1, align 8
  %1 = load double, double* %b1, align 8
  %2 = load double, double* %c1, align 8
  %3 = load double, double* %d1, align 8
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %0, double %1, double %2, double %3, i32* %solutions, double* %arraydecay)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %solutions, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i64 %idxprom
  %7 = load double, double* %arrayidx, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %a1, align 8
  store double -4.500000e+00, double* %b1, align 8
  store double 1.700000e+01, double* %c1, align 8
  store double -3.000000e+01, double* %d1, align 8
  %9 = load double, double* %a1, align 8
  %10 = load double, double* %b1, align 8
  %11 = load double, double* %c1, align 8
  %12 = load double, double* %d1, align 8
  %arraydecay4 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %9, double %10, double %11, double %12, i32* %solutions, double* %arraydecay4)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.12, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %solutions, align 4
  %cmp7 = icmp slt i32 %13, %14
  br i1 %cmp7, label %for.body.8, label %for.end.14

for.body.8:                                       ; preds = %for.cond.6
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i64 %idxprom9
  %16 = load double, double* %arrayidx10, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %16)
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.8
  %17 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond.6

for.end.14:                                       ; preds = %for.cond.6
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %a1, align 8
  store double -3.500000e+00, double* %b1, align 8
  store double 2.200000e+01, double* %c1, align 8
  store double -3.100000e+01, double* %d1, align 8
  %18 = load double, double* %a1, align 8
  %19 = load double, double* %b1, align 8
  %20 = load double, double* %c1, align 8
  %21 = load double, double* %d1, align 8
  %arraydecay16 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %18, double %19, double %20, double %21, i32* %solutions, double* %arraydecay16)
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.24, %for.end.14
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %solutions, align 4
  %cmp19 = icmp slt i32 %22, %23
  br i1 %cmp19, label %for.body.20, label %for.end.26

for.body.20:                                      ; preds = %for.cond.18
  %24 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i64 %idxprom21
  %25 = load double, double* %arrayidx22, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %25)
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.20
  %26 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %26, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.18

for.end.26:                                       ; preds = %for.cond.18
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %a1, align 8
  store double -1.370000e+01, double* %b1, align 8
  store double 1.000000e+00, double* %c1, align 8
  store double -3.500000e+01, double* %d1, align 8
  %27 = load double, double* %a1, align 8
  %28 = load double, double* %b1, align 8
  %29 = load double, double* %c1, align 8
  %30 = load double, double* %d1, align 8
  %arraydecay28 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %27, double %28, double %29, double %30, i32* %solutions, double* %arraydecay28)
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.36, %for.end.26
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %solutions, align 4
  %cmp31 = icmp slt i32 %31, %32
  br i1 %cmp31, label %for.body.32, label %for.end.38

for.body.32:                                      ; preds = %for.cond.30
  %33 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %33 to i64
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i64 %idxprom33
  %34 = load double, double* %arrayidx34, align 8
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %34)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.32
  %35 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %35, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.30

for.end.38:                                       ; preds = %for.cond.30
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 3.000000e+00, double* %a1, align 8
  store double 1.234000e+01, double* %b1, align 8
  store double 5.000000e+00, double* %c1, align 8
  store double 1.200000e+01, double* %d1, align 8
  %36 = load double, double* %a1, align 8
  %37 = load double, double* %b1, align 8
  %38 = load double, double* %c1, align 8
  %39 = load double, double* %d1, align 8
  %arraydecay40 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %36, double %37, double %38, double %39, i32* %solutions, double* %arraydecay40)
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.48, %for.end.38
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %solutions, align 4
  %cmp43 = icmp slt i32 %40, %41
  br i1 %cmp43, label %for.body.44, label %for.end.50

for.body.44:                                      ; preds = %for.cond.42
  %42 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %42 to i64
  %arrayidx46 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i64 %idxprom45
  %43 = load double, double* %arrayidx46, align 8
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %43)
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.44
  %44 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %44, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond.42

for.end.50:                                       ; preds = %for.cond.42
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double -8.000000e+00, double* %a1, align 8
  store double -6.789000e+01, double* %b1, align 8
  store double 6.000000e+00, double* %c1, align 8
  store double -2.360000e+01, double* %d1, align 8
  %45 = load double, double* %a1, align 8
  %46 = load double, double* %b1, align 8
  %47 = load double, double* %c1, align 8
  %48 = load double, double* %d1, align 8
  %arraydecay52 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %45, double %46, double %47, double %48, i32* %solutions, double* %arraydecay52)
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.60, %for.end.50
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %solutions, align 4
  %cmp55 = icmp slt i32 %49, %50
  br i1 %cmp55, label %for.body.56, label %for.end.62

for.body.56:                                      ; preds = %for.cond.54
  %51 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %51 to i64
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i64 %idxprom57
  %52 = load double, double* %arrayidx58, align 8
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %52)
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.56
  %53 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %53, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.54

for.end.62:                                       ; preds = %for.cond.54
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 4.500000e+01, double* %a1, align 8
  store double 8.670000e+00, double* %b1, align 8
  store double 7.500000e+00, double* %c1, align 8
  store double 3.400000e+01, double* %d1, align 8
  %54 = load double, double* %a1, align 8
  %55 = load double, double* %b1, align 8
  %56 = load double, double* %c1, align 8
  %57 = load double, double* %d1, align 8
  %arraydecay64 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %54, double %55, double %56, double %57, i32* %solutions, double* %arraydecay64)
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.72, %for.end.62
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %solutions, align 4
  %cmp67 = icmp slt i32 %58, %59
  br i1 %cmp67, label %for.body.68, label %for.end.74

for.body.68:                                      ; preds = %for.cond.66
  %60 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %60 to i64
  %arrayidx70 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i64 %idxprom69
  %61 = load double, double* %arrayidx70, align 8
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %61)
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.68
  %62 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %62, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.66

for.end.74:                                       ; preds = %for.cond.66
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double -1.200000e+01, double* %a1, align 8
  store double -1.700000e+00, double* %b1, align 8
  store double 5.300000e+00, double* %c1, align 8
  store double 1.600000e+01, double* %d1, align 8
  %63 = load double, double* %a1, align 8
  %64 = load double, double* %b1, align 8
  %65 = load double, double* %c1, align 8
  %66 = load double, double* %d1, align 8
  %arraydecay76 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %63, double %64, double %65, double %66, i32* %solutions, double* %arraydecay76)
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.84, %for.end.74
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %solutions, align 4
  %cmp79 = icmp slt i32 %67, %68
  br i1 %cmp79, label %for.body.80, label %for.end.86

for.body.80:                                      ; preds = %for.cond.78
  %69 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %69 to i64
  %arrayidx82 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i64 %idxprom81
  %70 = load double, double* %arrayidx82, align 8
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %70)
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.80
  %71 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %71, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond.78

for.end.86:                                       ; preds = %for.cond.78
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %a1, align 8
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.119, %for.end.86
  %72 = load double, double* %a1, align 8
  %cmp89 = fcmp olt double %72, 1.000000e+01
  br i1 %cmp89, label %for.body.90, label %for.end.121

for.body.90:                                      ; preds = %for.cond.88
  store double 1.000000e+01, double* %b1, align 8
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.116, %for.body.90
  %73 = load double, double* %b1, align 8
  %cmp92 = fcmp ogt double %73, 0.000000e+00
  br i1 %cmp92, label %for.body.93, label %for.end.118

for.body.93:                                      ; preds = %for.cond.91
  store double 5.000000e+00, double* %c1, align 8
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.114, %for.body.93
  %74 = load double, double* %c1, align 8
  %cmp95 = fcmp olt double %74, 1.500000e+01
  br i1 %cmp95, label %for.body.96, label %for.end.115

for.body.96:                                      ; preds = %for.cond.94
  store double -1.000000e+00, double* %d1, align 8
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.112, %for.body.96
  %75 = load double, double* %d1, align 8
  %cmp98 = fcmp ogt double %75, -5.000000e+00
  br i1 %cmp98, label %for.body.99, label %for.end.113

for.body.99:                                      ; preds = %for.cond.97
  %76 = load double, double* %a1, align 8
  %77 = load double, double* %b1, align 8
  %78 = load double, double* %c1, align 8
  %79 = load double, double* %d1, align 8
  %arraydecay100 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %76, double %77, double %78, double %79, i32* %solutions, double* %arraydecay100)
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.108, %for.body.99
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %solutions, align 4
  %cmp103 = icmp slt i32 %80, %81
  br i1 %cmp103, label %for.body.104, label %for.end.110

for.body.104:                                     ; preds = %for.cond.102
  %82 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %82 to i64
  %arrayidx106 = getelementptr inbounds [3 x double], [3 x double]* %x, i32 0, i64 %idxprom105
  %83 = load double, double* %arrayidx106, align 8
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %83)
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.104
  %84 = load i32, i32* %i, align 4
  %inc109 = add nsw i32 %84, 1
  store i32 %inc109, i32* %i, align 4
  br label %for.cond.102

for.end.110:                                      ; preds = %for.cond.102
  %call111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.end.110
  %85 = load double, double* %d1, align 8
  %sub = fsub double %85, 4.510000e-01
  store double %sub, double* %d1, align 8
  br label %for.cond.97

for.end.113:                                      ; preds = %for.cond.97
  br label %for.inc.114

for.inc.114:                                      ; preds = %for.end.113
  %86 = load double, double* %c1, align 8
  %add = fadd double %86, 6.100000e-01
  store double %add, double* %c1, align 8
  br label %for.cond.94

for.end.115:                                      ; preds = %for.cond.94
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.end.115
  %87 = load double, double* %b1, align 8
  %sub117 = fsub double %87, 2.500000e-01
  store double %sub117, double* %b1, align 8
  br label %for.cond.91

for.end.118:                                      ; preds = %for.cond.91
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.end.118
  %88 = load double, double* %a1, align 8
  %add120 = fadd double %88, 1.000000e+00
  store double %add120, double* %a1, align 8
  br label %for.cond.88

for.end.121:                                      ; preds = %for.cond.88
  %call122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.127, %for.end.121
  %89 = load i32, i32* %i, align 4
  %cmp124 = icmp slt i32 %89, 100000
  br i1 %cmp124, label %for.body.125, label %for.end.129

for.body.125:                                     ; preds = %for.cond.123
  %90 = load i32, i32* %i, align 4
  call void @usqrt(i32 %90, %struct.int_sqrt* %q)
  %91 = load i32, i32* %i, align 4
  %sqrt = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %q, i32 0, i32 0
  %92 = load i32, i32* %sqrt, align 4
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %91, i32 %92)
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.125
  %93 = load i32, i32* %i, align 4
  %add128 = add nsw i32 %93, 2
  store i32 %add128, i32* %i, align 4
  br label %for.cond.123

for.end.129:                                      ; preds = %for.cond.123
  %call130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 1072497001, i32* %l, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.136, %for.end.129
  %94 = load i32, i32* %l, align 4
  %cmp132 = icmp ult i32 %94, 1072513385
  br i1 %cmp132, label %for.body.133, label %for.end.138

for.body.133:                                     ; preds = %for.cond.131
  %95 = load i32, i32* %l, align 4
  call void @usqrt(i32 %95, %struct.int_sqrt* %q)
  %96 = load i32, i32* %l, align 4
  %sqrt134 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %q, i32 0, i32 0
  %97 = load i32, i32* %sqrt134, align 4
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 %96, i32 %97)
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.body.133
  %98 = load i32, i32* %l, align 4
  %inc137 = add i32 %98, 1
  store i32 %inc137, i32* %l, align 4
  br label %for.cond.131

for.end.138:                                      ; preds = %for.cond.131
  %call139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %X, align 8
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.146, %for.end.138
  %99 = load double, double* %X, align 8
  %cmp141 = fcmp ole double %99, 3.600000e+02
  br i1 %cmp141, label %for.body.142, label %for.end.148

for.body.142:                                     ; preds = %for.cond.140
  %100 = load double, double* %X, align 8
  %101 = load double, double* %X, align 8
  %call143 = call double @atan(double 1.000000e+00) #3
  %mul = fmul double 4.000000e+00, %call143
  %mul144 = fmul double %101, %mul
  %div = fdiv double %mul144, 1.800000e+02
  %call145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), double %100, double %div)
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.142
  %102 = load double, double* %X, align 8
  %add147 = fadd double %102, 1.000000e-03
  store double %add147, double* %X, align 8
  br label %for.cond.140

for.end.148:                                      ; preds = %for.cond.140
  %call149 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store double 0.000000e+00, double* %X, align 8
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.162, %for.end.148
  %103 = load double, double* %X, align 8
  %call151 = call double @atan(double 1.000000e+00) #3
  %mul152 = fmul double 4.000000e+00, %call151
  %mul153 = fmul double 2.000000e+00, %mul152
  %add154 = fadd double %mul153, 1.000000e-06
  %cmp155 = fcmp ole double %103, %add154
  br i1 %cmp155, label %for.body.156, label %for.end.167

for.body.156:                                     ; preds = %for.cond.150
  %104 = load double, double* %X, align 8
  %105 = load double, double* %X, align 8
  %mul157 = fmul double %105, 1.800000e+02
  %call158 = call double @atan(double 1.000000e+00) #3
  %mul159 = fmul double 4.000000e+00, %call158
  %div160 = fdiv double %mul157, %mul159
  %call161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), double %104, double %div160)
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.156
  %call163 = call double @atan(double 1.000000e+00) #3
  %mul164 = fmul double 4.000000e+00, %call163
  %div165 = fdiv double %mul164, 5.760000e+03
  %106 = load double, double* %X, align 8
  %add166 = fadd double %106, %div165
  store double %add166, double* %X, align 8
  br label %for.cond.150

for.end.167:                                      ; preds = %for.cond.150
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare void @SolveCubic(double, double, double, double, i32*, double*) #1

declare void @usqrt(i32, %struct.int_sqrt*) #1

; Function Attrs: nounwind
declare double @atan(double) #2

declare i32 @puts(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
