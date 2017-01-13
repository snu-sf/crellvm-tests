; ModuleID = './SingleSource.Benchmarks.Misc/4.ffbench.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@main.nsize = internal global [3 x i32] zeroinitializer, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [28 x i8] c"Can't allocate data array.\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Wrong answer at (%d,%d)!  Expected %d, got %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%d passes.  No errors in results.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%d passes.  %d errors in results.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %npasses = alloca i32, align 4
  %faedge = alloca i32, align 4
  %fdata = alloca double*, align 8
  %fanum = alloca i64, align 8
  %fasize = alloca i64, align 8
  %mapbase = alloca double, align 8
  %mapscale = alloca double, align 8
  %rmin = alloca double, align 8
  %rmax = alloca double, align 8
  %imin = alloca double, align 8
  %imax = alloca double, align 8
  %r = alloca double, align 8
  %ij = alloca double, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  store i32 0, i32* %retval
  store i32 63, i32* %npasses, align 4
  store i32 256, i32* %faedge, align 4
  %0 = load i32, i32* %faedge, align 4
  %1 = load i32, i32* %faedge, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %fanum, align 8
  %2 = load i64, i64* %fanum, align 8
  %add = add nsw i64 %2, 1
  %mul1 = mul nsw i64 %add, 2
  %mul2 = mul i64 %mul1, 8
  store i64 %mul2, i64* %fasize, align 8
  %3 = load i32, i32* %faedge, align 4
  store i32 %3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @main.nsize, i32 0, i64 2), align 4
  store i32 %3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @main.nsize, i32 0, i64 1), align 4
  %4 = load i64, i64* %fasize, align 8
  %call = call noalias i8* @malloc(i64 %4) #4
  %5 = bitcast i8* %call to double*
  store double* %5, double** %fdata, align 8
  %6 = load double*, double** %fdata, align 8
  %cmp = icmp eq double* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %8 = load double*, double** %fdata, align 8
  %9 = bitcast double* %8 to i8*
  %10 = load i64, i64* %fasize, align 8
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %10, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %faedge, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %faedge, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %15 = load i32, i32* %i, align 4
  %and = and i32 %15, 15
  %cmp11 = icmp eq i32 %and, 8
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.10
  %16 = load i32, i32* %j, align 4
  %and13 = and i32 %16, 15
  %cmp14 = icmp eq i32 %and13, 8
  br i1 %cmp14, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %lor.lhs.false, %for.body.10
  %17 = load i32, i32* %faedge, align 4
  %18 = load i32, i32* %i, align 4
  %mul17 = mul nsw i32 %17, %18
  %19 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %mul17, %19
  %mul19 = mul nsw i32 %add18, 2
  %add20 = add nsw i32 1, %mul19
  %idxprom = sext i32 %add20 to i64
  %20 = load double*, double** %fdata, align 8
  %arrayidx = getelementptr inbounds double, double* %20, i64 %idxprom
  store double 1.280000e+02, double* %arrayidx, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.29, %for.end.24
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %npasses, align 4
  %cmp26 = icmp slt i32 %23, %24
  br i1 %cmp26, label %for.body.28, label %for.end.31

for.body.28:                                      ; preds = %for.cond.25
  %25 = load double*, double** %fdata, align 8
  call void @fourn(double* %25, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @main.nsize, i32 0, i32 0), i32 2, i32 1)
  %26 = load double*, double** %fdata, align 8
  call void @fourn(double* %26, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @main.nsize, i32 0, i32 0), i32 2, i32 -1)
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.28
  %27 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %27, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.25

for.end.31:                                       ; preds = %for.cond.25
  store double 1.000000e+10, double* %rmin, align 8
  store double -1.000000e+10, double* %rmax, align 8
  store double 1.000000e+10, double* %imin, align 8
  store double -1.000000e+10, double* %imax, align 8
  store double 0.000000e+00, double* %ar, align 8
  store double 0.000000e+00, double* %ai, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.64, %for.end.31
  %28 = load i32, i32* %i, align 4
  %conv33 = sext i32 %28 to i64
  %29 = load i64, i64* %fanum, align 8
  %cmp34 = icmp sle i64 %conv33, %29
  br i1 %cmp34, label %for.body.36, label %for.end.66

for.body.36:                                      ; preds = %for.cond.32
  %30 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %30 to i64
  %31 = load double*, double** %fdata, align 8
  %arrayidx38 = getelementptr inbounds double, double* %31, i64 %idxprom37
  %32 = load double, double* %arrayidx38, align 8
  store double %32, double* %r, align 8
  %33 = load i32, i32* %i, align 4
  %add39 = add nsw i32 %33, 1
  %idxprom40 = sext i32 %add39 to i64
  %34 = load double*, double** %fdata, align 8
  %arrayidx41 = getelementptr inbounds double, double* %34, i64 %idxprom40
  %35 = load double, double* %arrayidx41, align 8
  store double %35, double* %ij, align 8
  %36 = load double, double* %r, align 8
  %37 = load double, double* %ar, align 8
  %add42 = fadd double %37, %36
  store double %add42, double* %ar, align 8
  %38 = load double, double* %ij, align 8
  %39 = load double, double* %ai, align 8
  %add43 = fadd double %39, %38
  store double %add43, double* %ai, align 8
  %40 = load double, double* %r, align 8
  %41 = load double, double* %rmin, align 8
  %cmp44 = fcmp ole double %40, %41
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.36
  %42 = load double, double* %r, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.36
  %43 = load double, double* %rmin, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %42, %cond.true ], [ %43, %cond.false ]
  store double %cond, double* %rmin, align 8
  %44 = load double, double* %r, align 8
  %45 = load double, double* %rmax, align 8
  %cmp46 = fcmp ogt double %44, %45
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.end
  %46 = load double, double* %r, align 8
  br label %cond.end.50

cond.false.49:                                    ; preds = %cond.end
  %47 = load double, double* %rmax, align 8
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.48
  %cond51 = phi double [ %46, %cond.true.48 ], [ %47, %cond.false.49 ]
  store double %cond51, double* %rmax, align 8
  %48 = load double, double* %ij, align 8
  %49 = load double, double* %imin, align 8
  %cmp52 = fcmp ole double %48, %49
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.end.50
  %50 = load double, double* %ij, align 8
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.end.50
  %51 = load double, double* %imin, align 8
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond57 = phi double [ %50, %cond.true.54 ], [ %51, %cond.false.55 ]
  store double %cond57, double* %imin, align 8
  %52 = load double, double* %ij, align 8
  %53 = load double, double* %imax, align 8
  %cmp58 = fcmp ogt double %52, %53
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %cond.end.56
  %54 = load double, double* %ij, align 8
  br label %cond.end.62

cond.false.61:                                    ; preds = %cond.end.56
  %55 = load double, double* %imax, align 8
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.60
  %cond63 = phi double [ %54, %cond.true.60 ], [ %55, %cond.false.61 ]
  store double %cond63, double* %imax, align 8
  br label %for.inc.64

for.inc.64:                                       ; preds = %cond.end.62
  %56 = load i32, i32* %i, align 4
  %add65 = add nsw i32 %56, 2
  store i32 %add65, i32* %i, align 4
  br label %for.cond.32

for.end.66:                                       ; preds = %for.cond.32
  %57 = load double, double* %rmin, align 8
  store double %57, double* %mapbase, align 8
  %58 = load double, double* %rmax, align 8
  %59 = load double, double* %rmin, align 8
  %sub = fsub double %58, %59
  %div = fdiv double 2.550000e+02, %sub
  store double %div, double* %mapscale, align 8
  store i32 0, i32* %m, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.100, %for.end.66
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %faedge, align 4
  %cmp68 = icmp slt i32 %60, %61
  br i1 %cmp68, label %for.body.70, label %for.end.102

for.body.70:                                      ; preds = %for.cond.67
  store i32 0, i32* %j, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.97, %for.body.70
  %62 = load i32, i32* %j, align 4
  %63 = load i32, i32* %faedge, align 4
  %cmp72 = icmp slt i32 %62, %63
  br i1 %cmp72, label %for.body.74, label %for.end.99

for.body.74:                                      ; preds = %for.cond.71
  %64 = load i32, i32* %faedge, align 4
  %65 = load i32, i32* %i, align 4
  %mul75 = mul nsw i32 %64, %65
  %66 = load i32, i32* %j, align 4
  %add76 = add nsw i32 %mul75, %66
  %mul77 = mul nsw i32 %add76, 2
  %add78 = add nsw i32 1, %mul77
  %idxprom79 = sext i32 %add78 to i64
  %67 = load double*, double** %fdata, align 8
  %arrayidx80 = getelementptr inbounds double, double* %67, i64 %idxprom79
  %68 = load double, double* %arrayidx80, align 8
  %69 = load double, double* %mapbase, align 8
  %sub81 = fsub double %68, %69
  %70 = load double, double* %mapscale, align 8
  %mul82 = fmul double %sub81, %70
  %conv83 = fptosi double %mul82 to i32
  store i32 %conv83, i32* %k, align 4
  %71 = load i32, i32* %i, align 4
  %and84 = and i32 %71, 15
  %cmp85 = icmp eq i32 %and84, 8
  br i1 %cmp85, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body.74
  %72 = load i32, i32* %j, align 4
  %and87 = and i32 %72, 15
  %cmp88 = icmp eq i32 %and87, 8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body.74
  %73 = phi i1 [ true, %for.body.74 ], [ %cmp88, %lor.rhs ]
  %cond90 = select i1 %73, i32 255, i32 0
  store i32 %cond90, i32* %l, align 4
  %74 = load i32, i32* %k, align 4
  %75 = load i32, i32* %l, align 4
  %cmp91 = icmp ne i32 %74, %75
  br i1 %cmp91, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %lor.end
  %76 = load i32, i32* %m, align 4
  %inc94 = add nsw i32 %76, 1
  store i32 %inc94, i32* %m, align 4
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %j, align 4
  %80 = load i32, i32* %l, align 4
  %81 = load i32, i32* %k, align 4
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 %78, i32 %79, i32 %80, i32 %81)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %lor.end
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %82 = load i32, i32* %j, align 4
  %inc98 = add nsw i32 %82, 1
  store i32 %inc98, i32* %j, align 4
  br label %for.cond.71

for.end.99:                                       ; preds = %for.cond.71
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.99
  %83 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %83, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond.67

for.end.102:                                      ; preds = %for.cond.67
  %84 = load i32, i32* %m, align 4
  %cmp103 = icmp eq i32 %84, 0
  br i1 %cmp103, label %if.then.105, label %if.else

if.then.105:                                      ; preds = %for.end.102
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %86 = load i32, i32* %npasses, align 4
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 %86)
  br label %if.end.108

if.else:                                          ; preds = %for.end.102
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %88 = load i32, i32* %npasses, align 4
  %89 = load i32, i32* %m, align 4
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i32 %88, i32 %89)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else, %if.then.105
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @fourn(double* %data, i32* %nn, i32 %ndim, i32 %isign) #0 {
entry:
  %data.addr = alloca double*, align 8
  %nn.addr = alloca i32*, align 8
  %ndim.addr = alloca i32, align 4
  %isign.addr = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i2rev = alloca i32, align 4
  %i3rev = alloca i32, align 4
  %ip1 = alloca i32, align 4
  %ip2 = alloca i32, align 4
  %ip3 = alloca i32, align 4
  %ifp1 = alloca i32, align 4
  %ifp2 = alloca i32, align 4
  %ibit = alloca i32, align 4
  %idim = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %n = alloca i32, align 4
  %nprev = alloca i32, align 4
  %nrem = alloca i32, align 4
  %ntot = alloca i32, align 4
  %tempi = alloca double, align 8
  %tempr = alloca double, align 8
  %theta = alloca double, align 8
  %wi = alloca double, align 8
  %wpi = alloca double, align 8
  %wpr = alloca double, align 8
  %wr = alloca double, align 8
  %wtemp = alloca double, align 8
  store double* %data, double** %data.addr, align 8
  store i32* %nn, i32** %nn.addr, align 8
  store i32 %ndim, i32* %ndim.addr, align 4
  store i32 %isign, i32* %isign.addr, align 4
  store i32 1, i32* %ntot, align 4
  store i32 1, i32* %idim, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idim, align 4
  %1 = load i32, i32* %ndim.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %idim, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %nn.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %ntot, align 4
  %mul = mul nsw i32 %5, %4
  store i32 %mul, i32* %ntot, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %idim, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %idim, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %nprev, align 4
  %7 = load i32, i32* %ndim.addr, align 4
  store i32 %7, i32* %idim, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.136, %for.end
  %8 = load i32, i32* %idim, align 4
  %cmp2 = icmp sge i32 %8, 1
  br i1 %cmp2, label %for.body.3, label %for.end.137

for.body.3:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %idim, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i32*, i32** %nn.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  store i32 %11, i32* %n, align 4
  %12 = load i32, i32* %ntot, align 4
  %13 = load i32, i32* %n, align 4
  %14 = load i32, i32* %nprev, align 4
  %mul6 = mul nsw i32 %13, %14
  %div = sdiv i32 %12, %mul6
  store i32 %div, i32* %nrem, align 4
  %15 = load i32, i32* %nprev, align 4
  %shl = shl i32 %15, 1
  store i32 %shl, i32* %ip1, align 4
  %16 = load i32, i32* %ip1, align 4
  %17 = load i32, i32* %n, align 4
  %mul7 = mul nsw i32 %16, %17
  store i32 %mul7, i32* %ip2, align 4
  %18 = load i32, i32* %ip2, align 4
  %19 = load i32, i32* %nrem, align 4
  %mul8 = mul nsw i32 %18, %19
  store i32 %mul8, i32* %ip3, align 4
  store i32 1, i32* %i2rev, align 4
  store i32 1, i32* %i2, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.52, %for.body.3
  %20 = load i32, i32* %i2, align 4
  %21 = load i32, i32* %ip2, align 4
  %cmp10 = icmp sle i32 %20, %21
  br i1 %cmp10, label %for.body.11, label %for.end.54

for.body.11:                                      ; preds = %for.cond.9
  %22 = load i32, i32* %i2, align 4
  %23 = load i32, i32* %i2rev, align 4
  %cmp12 = icmp slt i32 %22, %23
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.11
  %24 = load i32, i32* %i2, align 4
  store i32 %24, i32* %i1, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.44, %if.then
  %25 = load i32, i32* %i1, align 4
  %26 = load i32, i32* %i2, align 4
  %27 = load i32, i32* %ip1, align 4
  %add = add nsw i32 %26, %27
  %sub = sub nsw i32 %add, 2
  %cmp14 = icmp sle i32 %25, %sub
  br i1 %cmp14, label %for.body.15, label %for.end.46

for.body.15:                                      ; preds = %for.cond.13
  %28 = load i32, i32* %i1, align 4
  store i32 %28, i32* %i3, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.41, %for.body.15
  %29 = load i32, i32* %i3, align 4
  %30 = load i32, i32* %ip3, align 4
  %cmp17 = icmp sle i32 %29, %30
  br i1 %cmp17, label %for.body.18, label %for.end.43

for.body.18:                                      ; preds = %for.cond.16
  %31 = load i32, i32* %i2rev, align 4
  %32 = load i32, i32* %i3, align 4
  %add19 = add nsw i32 %31, %32
  %33 = load i32, i32* %i2, align 4
  %sub20 = sub nsw i32 %add19, %33
  store i32 %sub20, i32* %i3rev, align 4
  %34 = load i32, i32* %i3, align 4
  %idxprom21 = sext i32 %34 to i64
  %35 = load double*, double** %data.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %35, i64 %idxprom21
  %36 = load double, double* %arrayidx22, align 8
  store double %36, double* %tempr, align 8
  %37 = load i32, i32* %i3rev, align 4
  %idxprom23 = sext i32 %37 to i64
  %38 = load double*, double** %data.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %38, i64 %idxprom23
  %39 = load double, double* %arrayidx24, align 8
  %40 = load i32, i32* %i3, align 4
  %idxprom25 = sext i32 %40 to i64
  %41 = load double*, double** %data.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %41, i64 %idxprom25
  store double %39, double* %arrayidx26, align 8
  %42 = load double, double* %tempr, align 8
  %43 = load i32, i32* %i3rev, align 4
  %idxprom27 = sext i32 %43 to i64
  %44 = load double*, double** %data.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %44, i64 %idxprom27
  store double %42, double* %arrayidx28, align 8
  %45 = load i32, i32* %i3, align 4
  %add29 = add nsw i32 %45, 1
  %idxprom30 = sext i32 %add29 to i64
  %46 = load double*, double** %data.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %46, i64 %idxprom30
  %47 = load double, double* %arrayidx31, align 8
  store double %47, double* %tempr, align 8
  %48 = load i32, i32* %i3rev, align 4
  %add32 = add nsw i32 %48, 1
  %idxprom33 = sext i32 %add32 to i64
  %49 = load double*, double** %data.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %49, i64 %idxprom33
  %50 = load double, double* %arrayidx34, align 8
  %51 = load i32, i32* %i3, align 4
  %add35 = add nsw i32 %51, 1
  %idxprom36 = sext i32 %add35 to i64
  %52 = load double*, double** %data.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %52, i64 %idxprom36
  store double %50, double* %arrayidx37, align 8
  %53 = load double, double* %tempr, align 8
  %54 = load i32, i32* %i3rev, align 4
  %add38 = add nsw i32 %54, 1
  %idxprom39 = sext i32 %add38 to i64
  %55 = load double*, double** %data.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %55, i64 %idxprom39
  store double %53, double* %arrayidx40, align 8
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.18
  %56 = load i32, i32* %ip2, align 4
  %57 = load i32, i32* %i3, align 4
  %add42 = add nsw i32 %57, %56
  store i32 %add42, i32* %i3, align 4
  br label %for.cond.16

for.end.43:                                       ; preds = %for.cond.16
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %58 = load i32, i32* %i1, align 4
  %add45 = add nsw i32 %58, 2
  store i32 %add45, i32* %i1, align 4
  br label %for.cond.13

for.end.46:                                       ; preds = %for.cond.13
  br label %if.end

if.end:                                           ; preds = %for.end.46, %for.body.11
  %59 = load i32, i32* %ip2, align 4
  %shr = ashr i32 %59, 1
  store i32 %shr, i32* %ibit, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %60 = load i32, i32* %ibit, align 4
  %61 = load i32, i32* %ip1, align 4
  %cmp47 = icmp sge i32 %60, %61
  br i1 %cmp47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %62 = load i32, i32* %i2rev, align 4
  %63 = load i32, i32* %ibit, align 4
  %cmp48 = icmp sgt i32 %62, %63
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %64 = phi i1 [ false, %while.cond ], [ %cmp48, %land.rhs ]
  br i1 %64, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %65 = load i32, i32* %ibit, align 4
  %66 = load i32, i32* %i2rev, align 4
  %sub49 = sub nsw i32 %66, %65
  store i32 %sub49, i32* %i2rev, align 4
  %67 = load i32, i32* %ibit, align 4
  %shr50 = ashr i32 %67, 1
  store i32 %shr50, i32* %ibit, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %68 = load i32, i32* %ibit, align 4
  %69 = load i32, i32* %i2rev, align 4
  %add51 = add nsw i32 %69, %68
  store i32 %add51, i32* %i2rev, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %while.end
  %70 = load i32, i32* %ip1, align 4
  %71 = load i32, i32* %i2, align 4
  %add53 = add nsw i32 %71, %70
  store i32 %add53, i32* %i2, align 4
  br label %for.cond.9

for.end.54:                                       ; preds = %for.cond.9
  %72 = load i32, i32* %ip1, align 4
  store i32 %72, i32* %ifp1, align 4
  br label %while.cond.55

while.cond.55:                                    ; preds = %for.end.133, %for.end.54
  %73 = load i32, i32* %ifp1, align 4
  %74 = load i32, i32* %ip2, align 4
  %cmp56 = icmp slt i32 %73, %74
  br i1 %cmp56, label %while.body.57, label %while.end.134

while.body.57:                                    ; preds = %while.cond.55
  %75 = load i32, i32* %ifp1, align 4
  %shl58 = shl i32 %75, 1
  store i32 %shl58, i32* %ifp2, align 4
  %76 = load i32, i32* %isign.addr, align 4
  %conv = sitofp i32 %76 to double
  %mul59 = fmul double %conv, 0x401921FB54442D1C
  %77 = load i32, i32* %ifp2, align 4
  %78 = load i32, i32* %ip1, align 4
  %div60 = sdiv i32 %77, %78
  %conv61 = sitofp i32 %div60 to double
  %div62 = fdiv double %mul59, %conv61
  store double %div62, double* %theta, align 8
  %79 = load double, double* %theta, align 8
  %mul63 = fmul double 5.000000e-01, %79
  %call = call double @sin(double %mul63) #4
  store double %call, double* %wtemp, align 8
  %80 = load double, double* %wtemp, align 8
  %mul64 = fmul double -2.000000e+00, %80
  %81 = load double, double* %wtemp, align 8
  %mul65 = fmul double %mul64, %81
  store double %mul65, double* %wpr, align 8
  %82 = load double, double* %theta, align 8
  %call66 = call double @sin(double %82) #4
  store double %call66, double* %wpi, align 8
  store double 1.000000e+00, double* %wr, align 8
  store double 0.000000e+00, double* %wi, align 8
  store i32 1, i32* %i3, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.131, %while.body.57
  %83 = load i32, i32* %i3, align 4
  %84 = load i32, i32* %ifp1, align 4
  %cmp68 = icmp sle i32 %83, %84
  br i1 %cmp68, label %for.body.70, label %for.end.133

for.body.70:                                      ; preds = %for.cond.67
  %85 = load i32, i32* %i3, align 4
  store i32 %85, i32* %i1, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.120, %for.body.70
  %86 = load i32, i32* %i1, align 4
  %87 = load i32, i32* %i3, align 4
  %88 = load i32, i32* %ip1, align 4
  %add72 = add nsw i32 %87, %88
  %sub73 = sub nsw i32 %add72, 2
  %cmp74 = icmp sle i32 %86, %sub73
  br i1 %cmp74, label %for.body.76, label %for.end.122

for.body.76:                                      ; preds = %for.cond.71
  %89 = load i32, i32* %i1, align 4
  store i32 %89, i32* %i2, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.117, %for.body.76
  %90 = load i32, i32* %i2, align 4
  %91 = load i32, i32* %ip3, align 4
  %cmp78 = icmp sle i32 %90, %91
  br i1 %cmp78, label %for.body.80, label %for.end.119

for.body.80:                                      ; preds = %for.cond.77
  %92 = load i32, i32* %i2, align 4
  store i32 %92, i32* %k1, align 4
  %93 = load i32, i32* %k1, align 4
  %94 = load i32, i32* %ifp1, align 4
  %add81 = add nsw i32 %93, %94
  store i32 %add81, i32* %k2, align 4
  %95 = load double, double* %wr, align 8
  %96 = load i32, i32* %k2, align 4
  %idxprom82 = sext i32 %96 to i64
  %97 = load double*, double** %data.addr, align 8
  %arrayidx83 = getelementptr inbounds double, double* %97, i64 %idxprom82
  %98 = load double, double* %arrayidx83, align 8
  %mul84 = fmul double %95, %98
  %99 = load double, double* %wi, align 8
  %100 = load i32, i32* %k2, align 4
  %add85 = add nsw i32 %100, 1
  %idxprom86 = sext i32 %add85 to i64
  %101 = load double*, double** %data.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %101, i64 %idxprom86
  %102 = load double, double* %arrayidx87, align 8
  %mul88 = fmul double %99, %102
  %sub89 = fsub double %mul84, %mul88
  store double %sub89, double* %tempr, align 8
  %103 = load double, double* %wr, align 8
  %104 = load i32, i32* %k2, align 4
  %add90 = add nsw i32 %104, 1
  %idxprom91 = sext i32 %add90 to i64
  %105 = load double*, double** %data.addr, align 8
  %arrayidx92 = getelementptr inbounds double, double* %105, i64 %idxprom91
  %106 = load double, double* %arrayidx92, align 8
  %mul93 = fmul double %103, %106
  %107 = load double, double* %wi, align 8
  %108 = load i32, i32* %k2, align 4
  %idxprom94 = sext i32 %108 to i64
  %109 = load double*, double** %data.addr, align 8
  %arrayidx95 = getelementptr inbounds double, double* %109, i64 %idxprom94
  %110 = load double, double* %arrayidx95, align 8
  %mul96 = fmul double %107, %110
  %add97 = fadd double %mul93, %mul96
  store double %add97, double* %tempi, align 8
  %111 = load i32, i32* %k1, align 4
  %idxprom98 = sext i32 %111 to i64
  %112 = load double*, double** %data.addr, align 8
  %arrayidx99 = getelementptr inbounds double, double* %112, i64 %idxprom98
  %113 = load double, double* %arrayidx99, align 8
  %114 = load double, double* %tempr, align 8
  %sub100 = fsub double %113, %114
  %115 = load i32, i32* %k2, align 4
  %idxprom101 = sext i32 %115 to i64
  %116 = load double*, double** %data.addr, align 8
  %arrayidx102 = getelementptr inbounds double, double* %116, i64 %idxprom101
  store double %sub100, double* %arrayidx102, align 8
  %117 = load i32, i32* %k1, align 4
  %add103 = add nsw i32 %117, 1
  %idxprom104 = sext i32 %add103 to i64
  %118 = load double*, double** %data.addr, align 8
  %arrayidx105 = getelementptr inbounds double, double* %118, i64 %idxprom104
  %119 = load double, double* %arrayidx105, align 8
  %120 = load double, double* %tempi, align 8
  %sub106 = fsub double %119, %120
  %121 = load i32, i32* %k2, align 4
  %add107 = add nsw i32 %121, 1
  %idxprom108 = sext i32 %add107 to i64
  %122 = load double*, double** %data.addr, align 8
  %arrayidx109 = getelementptr inbounds double, double* %122, i64 %idxprom108
  store double %sub106, double* %arrayidx109, align 8
  %123 = load double, double* %tempr, align 8
  %124 = load i32, i32* %k1, align 4
  %idxprom110 = sext i32 %124 to i64
  %125 = load double*, double** %data.addr, align 8
  %arrayidx111 = getelementptr inbounds double, double* %125, i64 %idxprom110
  %126 = load double, double* %arrayidx111, align 8
  %add112 = fadd double %126, %123
  store double %add112, double* %arrayidx111, align 8
  %127 = load double, double* %tempi, align 8
  %128 = load i32, i32* %k1, align 4
  %add113 = add nsw i32 %128, 1
  %idxprom114 = sext i32 %add113 to i64
  %129 = load double*, double** %data.addr, align 8
  %arrayidx115 = getelementptr inbounds double, double* %129, i64 %idxprom114
  %130 = load double, double* %arrayidx115, align 8
  %add116 = fadd double %130, %127
  store double %add116, double* %arrayidx115, align 8
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.80
  %131 = load i32, i32* %ifp2, align 4
  %132 = load i32, i32* %i2, align 4
  %add118 = add nsw i32 %132, %131
  store i32 %add118, i32* %i2, align 4
  br label %for.cond.77

for.end.119:                                      ; preds = %for.cond.77
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end.119
  %133 = load i32, i32* %i1, align 4
  %add121 = add nsw i32 %133, 2
  store i32 %add121, i32* %i1, align 4
  br label %for.cond.71

for.end.122:                                      ; preds = %for.cond.71
  %134 = load double, double* %wr, align 8
  store double %134, double* %wtemp, align 8
  %135 = load double, double* %wpr, align 8
  %mul123 = fmul double %134, %135
  %136 = load double, double* %wi, align 8
  %137 = load double, double* %wpi, align 8
  %mul124 = fmul double %136, %137
  %sub125 = fsub double %mul123, %mul124
  %138 = load double, double* %wr, align 8
  %add126 = fadd double %sub125, %138
  store double %add126, double* %wr, align 8
  %139 = load double, double* %wi, align 8
  %140 = load double, double* %wpr, align 8
  %mul127 = fmul double %139, %140
  %141 = load double, double* %wtemp, align 8
  %142 = load double, double* %wpi, align 8
  %mul128 = fmul double %141, %142
  %add129 = fadd double %mul127, %mul128
  %143 = load double, double* %wi, align 8
  %add130 = fadd double %add129, %143
  store double %add130, double* %wi, align 8
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.122
  %144 = load i32, i32* %ip1, align 4
  %145 = load i32, i32* %i3, align 4
  %add132 = add nsw i32 %145, %144
  store i32 %add132, i32* %i3, align 4
  br label %for.cond.67

for.end.133:                                      ; preds = %for.cond.67
  %146 = load i32, i32* %ifp2, align 4
  store i32 %146, i32* %ifp1, align 4
  br label %while.cond.55

while.end.134:                                    ; preds = %while.cond.55
  %147 = load i32, i32* %n, align 4
  %148 = load i32, i32* %nprev, align 4
  %mul135 = mul nsw i32 %148, %147
  store i32 %mul135, i32* %nprev, align 4
  br label %for.inc.136

for.inc.136:                                      ; preds = %while.end.134
  %149 = load i32, i32* %idim, align 4
  %dec = add nsw i32 %149, -1
  store i32 %dec, i32* %idim, align 4
  br label %for.cond.1

for.end.137:                                      ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind
declare double @sin(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
