; ModuleID = './MultiSource.Applications.sgefa/4.driver.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.FULL = type { i32, i32, [1000 x float*] }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [49 x i8] c"Matrix row dim (%d) or column dim (%d) too big.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"One-Norm(A) ---------- %e.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"FACTORED MATRIX FOLLOWS\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"True Solution\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Solution\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Solution to transposed system\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"\0A\0A**********************************************************************\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Hilbert Slice.  Test case %d of size %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Monoelemental.  Test case %d of size %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Tridiagional.  Test case %d of size %d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Rank One.  Test case %d of size %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Zero Column.  Test case %d of size %d.\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Upper Triangular.  Test case %d of size %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Lower Triangular.  Test case %d of size %d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"Near Overflow.  Test case %d of size %d. BIG = %e\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Near Underflow.  Test case %d of size %d. SMALL = %e\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"MATGEN: All tests complete.\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"MATGEN: Error in matvec.\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"MATRIX FOLLOWS\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"SOLUTION\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"RIGHT HAND SIDE\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"TRANSPOSE RIGHT HAND SIDE\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"GET_SPACE: Can't get enouph space for matricies...\0A\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"GET_SPACE: Can't get enouph space for vectors...\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%3d|\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"%12.4e\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%8d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca %struct.FULL, align 8
  %b = alloca float*, align 8
  %bt = alloca float*, align 8
  %x = alloca float*, align 8
  %anorm = alloca float, align 4
  %col = alloca float*, align 8
  %t = alloca float, align 4
  %err = alloca double, align 8
  %ipvt = alloca i32*, align 8
  %retval1 = alloca i32, align 4
  %test_case = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %test_case, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.57, %entry
  %0 = load i32, i32* %test_case, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %test_case, align 4
  %call = call i32 @matgen(%struct.FULL* %a, float** %x, float** %b, float** %bt, i32** %ipvt, i32 %inc, i32 40)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %rd = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %1 = load i32, i32* %rd, align 4
  %cmp = icmp sgt i32 %1, 1000
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %cd = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 0
  %2 = load i32, i32* %cd, align 4
  %cmp2 = icmp sgt i32 %2, 1000
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %rd3 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %4 = load i32, i32* %rd3, align 4
  %cd4 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 0
  %5 = load i32, i32* %cd4, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 %4, i32 %5)
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %j, align 4
  store float 0.000000e+00, float* %anorm, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %if.end
  %6 = load i32, i32* %j, align 4
  %cd6 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 0
  %7 = load i32, i32* %cd6, align 4
  %cmp7 = icmp slt i32 %6, %7
  br i1 %cmp7, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %pd = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd, i32 0, i64 %idxprom
  %9 = load float*, float** %arrayidx, align 8
  store float* %9, float** %col, align 8
  store float 0.000000e+00, float* %t, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %i, align 4
  %rd9 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %11 = load i32, i32* %rd9, align 4
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %12 = load float*, float** %col, align 8
  %13 = load float, float* %12, align 4
  %conv = fpext float %13 to double
  %cmp12 = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.11
  %14 = load float*, float** %col, align 8
  %15 = load float, float* %14, align 4
  %sub = fsub float -0.000000e+00, %15
  br label %cond.end

cond.false:                                       ; preds = %for.body.11
  %16 = load float*, float** %col, align 8
  %17 = load float, float* %16, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub, %cond.true ], [ %17, %cond.false ]
  %18 = load float, float* %t, align 4
  %add = fadd float %18, %cond
  store float %add, float* %t, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %19 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %i, align 4
  %20 = load float*, float** %col, align 8
  %incdec.ptr = getelementptr inbounds float, float* %20, i32 1
  store float* %incdec.ptr, float** %col, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %21 = load float, float* %anorm, align 4
  %22 = load float, float* %t, align 4
  %cmp15 = fcmp ogt float %21, %22
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %for.end
  %23 = load float, float* %anorm, align 4
  br label %cond.end.19

cond.false.18:                                    ; preds = %for.end
  %24 = load float, float* %t, align 4
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi float [ %23, %cond.true.17 ], [ %24, %cond.false.18 ]
  store float %cond20, float* %anorm, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %cond.end.19
  %25 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %25, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %26 = load float, float* %anorm, align 4
  %conv24 = fpext float %26 to double
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), double %conv24)
  %27 = load i32*, i32** %ipvt, align 8
  %call26 = call i32 (%struct.FULL*, i32*, ...) bitcast (i32 (...)* @sgefa to i32 (%struct.FULL*, i32*, ...)*)(%struct.FULL* %a, i32* %27)
  store i32 %call26, i32* %retval1, align 4
  %28 = load i32, i32* %retval1, align 4
  %tobool27 = icmp ne i32 %28, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %for.end.23
  br label %if.end.57

if.else:                                          ; preds = %for.end.23
  %29 = load i32*, i32** %ipvt, align 8
  %30 = load float*, float** %b, align 8
  %call29 = call i32 (%struct.FULL*, i32*, float*, i32, ...) bitcast (i32 (...)* @sgesl to i32 (%struct.FULL*, i32*, float*, i32, ...)*)(%struct.FULL* %a, i32* %29, float* %30, i32 0)
  %rd30 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %31 = load i32, i32* %rd30, align 4
  %cmp31 = icmp sle i32 %31, 7
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.else
  call void @matdump(%struct.FULL* %a, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.else
  %rd35 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %32 = load i32, i32* %rd35, align 4
  %cmp36 = icmp sle i32 %32, 7
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.34
  %33 = load float*, float** %x, align 8
  %rd39 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %34 = load i32, i32* %rd39, align 4
  call void @fvecdump(float* %33, i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  %35 = load float*, float** %b, align 8
  %rd40 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %36 = load i32, i32* %rd40, align 4
  call void @fvecdump(float* %35, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.34
  %rd42 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %37 = load i32, i32* %rd42, align 4
  %38 = load float*, float** %b, align 8
  %39 = load float*, float** %x, align 8
  %40 = load float*, float** %b, align 8
  %call43 = call i32 (i32, float*, float*, float*, i32, ...) bitcast (i32 (...)* @vexopy to i32 (i32, float*, float*, float*, i32, ...)*)(i32 %37, float* %38, float* %39, float* %40, i32 2)
  %rd44 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %41 = load i32, i32* %rd44, align 4
  %42 = load float*, float** %b, align 8
  %call45 = call double (i32, float*, i32, ...) bitcast (double (...)* @snrm2 to double (i32, float*, i32, ...)*)(i32 %41, float* %42, i32 1)
  store double %call45, double* %err, align 8
  %43 = load i32*, i32** %ipvt, align 8
  %44 = load float*, float** %bt, align 8
  %call46 = call i32 (%struct.FULL*, i32*, float*, i32, ...) bitcast (i32 (...)* @sgesl to i32 (%struct.FULL*, i32*, float*, i32, ...)*)(%struct.FULL* %a, i32* %43, float* %44, i32 1)
  %rd47 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %45 = load i32, i32* %rd47, align 4
  %cmp48 = icmp sle i32 %45, 7
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.41
  %46 = load float*, float** %bt, align 8
  %rd51 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %47 = load i32, i32* %rd51, align 4
  call void @fvecdump(float* %46, i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.41
  %rd53 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %48 = load i32, i32* %rd53, align 4
  %49 = load float*, float** %bt, align 8
  %50 = load float*, float** %x, align 8
  %51 = load float*, float** %bt, align 8
  %call54 = call i32 (i32, float*, float*, float*, i32, ...) bitcast (i32 (...)* @vexopy to i32 (i32, float*, float*, float*, i32, ...)*)(i32 %48, float* %49, float* %50, float* %51, i32 2)
  %rd55 = getelementptr inbounds %struct.FULL, %struct.FULL* %a, i32 0, i32 1
  %52 = load i32, i32* %rd55, align 4
  %53 = load float*, float** %bt, align 8
  %call56 = call double (i32, float*, i32, ...) bitcast (double (...)* @snrm2 to double (i32, float*, i32, ...)*)(i32 %52, float* %53, i32 1)
  store double %call56, double* %err, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.52, %if.then.28
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare i32 @printf(i8*, ...) #1

declare i32 @sgefa(...) #1

declare i32 @sgesl(...) #1

declare i32 @vexopy(...) #1

declare double @snrm2(...) #1

; Function Attrs: nounwind uwtable
define i32 @matgen(%struct.FULL* %a, float** %x, float** %b, float** %bt, i32** %ipvt, i32 %test_case, i32 %scale) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.FULL*, align 8
  %x.addr = alloca float**, align 8
  %b.addr = alloca float**, align 8
  %bt.addr = alloca float**, align 8
  %ipvt.addr = alloca i32**, align 8
  %test_case.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %col = alloca float*, align 8
  %tl = alloca float, align 4
  %tu = alloca float, align 4
  store %struct.FULL* %a, %struct.FULL** %a.addr, align 8
  store float** %x, float*** %x.addr, align 8
  store float** %b, float*** %b.addr, align 8
  store float** %bt, float*** %bt.addr, align 8
  store i32** %ipvt, i32*** %ipvt.addr, align 8
  store i32 %test_case, i32* %test_case.addr, align 4
  store i32 %scale, i32* %scale.addr, align 4
  %0 = load i32, i32* %test_case.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd = getelementptr inbounds %struct.FULL, %struct.FULL* %2, i32 0, i32 1
  %3 = load i32, i32* %rd, align 4
  %cmp1 = icmp slt i32 %1, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd = getelementptr inbounds %struct.FULL, %struct.FULL* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd, i32 0, i64 %idxprom
  %6 = load float*, float** %arrayidx, align 8
  call void (float*, ...) bitcast (void (...)* @free to void (float*, ...)*)(float* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load float**, float*** %x.addr, align 8
  %9 = load float*, float** %8, align 8
  call void (float*, ...) bitcast (void (...)* @free to void (float*, ...)*)(float* %9)
  %10 = load float**, float*** %b.addr, align 8
  %11 = load float*, float** %10, align 8
  call void (float*, ...) bitcast (void (...)* @free to void (float*, ...)*)(float* %11)
  %12 = load float**, float*** %bt.addr, align 8
  %13 = load float*, float** %12, align 8
  call void (float*, ...) bitcast (void (...)* @free to void (float*, ...)*)(float* %13)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %14 = load i32, i32* %test_case.addr, align 4
  switch i32 %14, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb.31
    i32 5, label %sw.bb.31
    i32 6, label %sw.bb.44
    i32 7, label %sw.bb.44
    i32 8, label %sw.bb.44
    i32 9, label %sw.bb.94
    i32 10, label %sw.bb.125
    i32 11, label %sw.bb.157
    i32 12, label %sw.bb.192
    i32 13, label %sw.bb.230
    i32 14, label %sw.bb.276
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %15 = load i32, i32* %test_case.addr, align 4
  %mul = mul nsw i32 3, %15
  %16 = load i32, i32* %scale.addr, align 4
  %mul2 = mul nsw i32 %mul, %16
  store i32 %mul2, i32* %n, align 4
  %17 = load i32, i32* %n, align 4
  %18 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd = getelementptr inbounds %struct.FULL, %struct.FULL* %18, i32 0, i32 0
  store i32 %17, i32* %cd, align 4
  %19 = load i32, i32* %n, align 4
  %20 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd3 = getelementptr inbounds %struct.FULL, %struct.FULL* %20, i32 0, i32 1
  store i32 %19, i32* %rd3, align 4
  %21 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %22 = load float**, float*** %x.addr, align 8
  %23 = load float**, float*** %b.addr, align 8
  %24 = load float**, float*** %bt.addr, align 8
  %25 = load i32**, i32*** %ipvt.addr, align 8
  %call4 = call i32 @get_space(%struct.FULL* %21, float** %22, float** %23, float** %24, i32** %25)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb
  %26 = load i32, i32* %test_case.addr, align 4
  %27 = load i32, i32* %n, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0), i32 %26, i32 %27)
  store i32 0, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.28, %if.end.6
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %n, align 4
  %cmp9 = icmp slt i32 %28, %29
  br i1 %cmp9, label %for.body.10, label %for.end.30

for.body.10:                                      ; preds = %for.cond.8
  store i32 0, i32* %i, align 4
  %30 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %30 to i64
  %31 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd12 = getelementptr inbounds %struct.FULL, %struct.FULL* %31, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd12, i32 0, i64 %idxprom11
  %32 = load float*, float** %arrayidx13, align 8
  store float* %32, float** %col, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.25, %for.body.10
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %n, align 4
  %cmp15 = icmp slt i32 %33, %34
  br i1 %cmp15, label %for.body.16, label %for.end.27

for.body.16:                                      ; preds = %for.cond.14
  %35 = load float*, float** %col, align 8
  store float 0.000000e+00, float* %35, align 4
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %37, 3
  %cmp17 = icmp sge i32 %36, %sub
  br i1 %cmp17, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %for.body.16
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %j, align 4
  %add = add nsw i32 %39, 2
  %cmp18 = icmp sle i32 %38, %add
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %land.lhs.true
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %40, %41
  %add21 = add nsw i32 %add20, 1
  %conv = sitofp i32 %add21 to float
  %conv22 = fpext float %conv to double
  %div = fdiv double 1.000000e+00, %conv22
  %conv23 = fptrunc double %div to float
  %42 = load float*, float** %col, align 8
  store float %conv23, float* %42, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %land.lhs.true, %for.body.16
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %43 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %43, 1
  store i32 %inc26, i32* %i, align 4
  %44 = load float*, float** %col, align 8
  %incdec.ptr = getelementptr inbounds float, float* %44, i32 1
  store float* %incdec.ptr, float** %col, align 8
  br label %for.cond.14

for.end.27:                                       ; preds = %for.cond.14
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27
  %45 = load i32, i32* %j, align 4
  %inc29 = add nsw i32 %45, 1
  store i32 %inc29, i32* %j, align 4
  br label %for.cond.8

for.end.30:                                       ; preds = %for.cond.8
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end, %if.end
  store i32 1, i32* %n, align 4
  %46 = load i32, i32* %n, align 4
  %47 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd32 = getelementptr inbounds %struct.FULL, %struct.FULL* %47, i32 0, i32 0
  store i32 %46, i32* %cd32, align 4
  %48 = load i32, i32* %n, align 4
  %49 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd33 = getelementptr inbounds %struct.FULL, %struct.FULL* %49, i32 0, i32 1
  store i32 %48, i32* %rd33, align 4
  %50 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %51 = load float**, float*** %x.addr, align 8
  %52 = load float**, float*** %b.addr, align 8
  %53 = load float**, float*** %bt.addr, align 8
  %54 = load i32**, i32*** %ipvt.addr, align 8
  %call34 = call i32 @get_space(%struct.FULL* %50, float** %51, float** %52, float** %53, i32** %54)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.bb.31
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %sw.bb.31
  %55 = load i32, i32* %test_case.addr, align 4
  %56 = load i32, i32* %n, align 4
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i32 %55, i32 %56)
  %57 = load i32, i32* %test_case.addr, align 4
  %cmp39 = icmp eq i32 %57, 4
  %cond = select i1 %cmp39, double 3.000000e+00, double 0.000000e+00
  %conv41 = fptrunc double %cond to float
  %58 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd42 = getelementptr inbounds %struct.FULL, %struct.FULL* %58, i32 0, i32 2
  %arrayidx43 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd42, i32 0, i64 0
  %59 = load float*, float** %arrayidx43, align 8
  store float %conv41, float* %59, align 4
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end, %if.end, %if.end
  %60 = load i32, i32* %scale.addr, align 4
  %mul45 = mul nsw i32 15, %60
  store i32 %mul45, i32* %n, align 4
  %61 = load i32, i32* %n, align 4
  %62 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd46 = getelementptr inbounds %struct.FULL, %struct.FULL* %62, i32 0, i32 0
  store i32 %61, i32* %cd46, align 4
  %63 = load i32, i32* %n, align 4
  %64 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd47 = getelementptr inbounds %struct.FULL, %struct.FULL* %64, i32 0, i32 1
  store i32 %63, i32* %rd47, align 4
  %65 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %66 = load float**, float*** %x.addr, align 8
  %67 = load float**, float*** %b.addr, align 8
  %68 = load float**, float*** %bt.addr, align 8
  %69 = load i32**, i32*** %ipvt.addr, align 8
  %call48 = call i32 @get_space(%struct.FULL* %65, float** %66, float** %67, float** %68, i32** %69)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %sw.bb.44
  store i32 1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %sw.bb.44
  %70 = load i32, i32* %test_case.addr, align 4
  %71 = load i32, i32* %n, align 4
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i32 %70, i32 %71)
  store float 1.000000e+00, float* %tu, align 4
  store float 1.000000e+00, float* %tl, align 4
  %72 = load i32, i32* %test_case.addr, align 4
  %cmp53 = icmp eq i32 %72, 7
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.51
  store float 1.000000e+02, float* %tl, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.51
  %73 = load i32, i32* %test_case.addr, align 4
  %cmp57 = icmp eq i32 %73, 8
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.56
  store float 1.000000e+02, float* %tu, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.56
  store i32 0, i32* %j, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.91, %if.end.60
  %74 = load i32, i32* %j, align 4
  %75 = load i32, i32* %n, align 4
  %cmp62 = icmp slt i32 %74, %75
  br i1 %cmp62, label %for.body.64, label %for.end.93

for.body.64:                                      ; preds = %for.cond.61
  store i32 0, i32* %i, align 4
  %76 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %76 to i64
  %77 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd66 = getelementptr inbounds %struct.FULL, %struct.FULL* %77, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd66, i32 0, i64 %idxprom65
  %78 = load float*, float** %arrayidx67, align 8
  store float* %78, float** %col, align 8
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.87, %for.body.64
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %n, align 4
  %cmp69 = icmp slt i32 %79, %80
  br i1 %cmp69, label %for.body.71, label %for.end.90

for.body.71:                                      ; preds = %for.cond.68
  %81 = load float*, float** %col, align 8
  store float 0.000000e+00, float* %81, align 4
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %j, align 4
  %cmp72 = icmp eq i32 %82, %83
  br i1 %cmp72, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %for.body.71
  %84 = load float*, float** %col, align 8
  store float 4.000000e+00, float* %84, align 4
  br label %if.end.86

if.else:                                          ; preds = %for.body.71
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %j, align 4
  %sub75 = sub nsw i32 %86, 1
  %cmp76 = icmp eq i32 %85, %sub75
  br i1 %cmp76, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %if.else
  %87 = load float, float* %tl, align 4
  %88 = load float*, float** %col, align 8
  store float %87, float* %88, align 4
  br label %if.end.85

if.else.79:                                       ; preds = %if.else
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* %j, align 4
  %add80 = add nsw i32 %90, 1
  %cmp81 = icmp eq i32 %89, %add80
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.else.79
  %91 = load float, float* %tu, align 4
  %92 = load float*, float** %col, align 8
  store float %91, float* %92, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.else.79
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.78
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.74
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %93 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %93, 1
  store i32 %inc88, i32* %i, align 4
  %94 = load float*, float** %col, align 8
  %incdec.ptr89 = getelementptr inbounds float, float* %94, i32 1
  store float* %incdec.ptr89, float** %col, align 8
  br label %for.cond.68

for.end.90:                                       ; preds = %for.cond.68
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.90
  %95 = load i32, i32* %j, align 4
  %inc92 = add nsw i32 %95, 1
  store i32 %inc92, i32* %j, align 4
  br label %for.cond.61

for.end.93:                                       ; preds = %for.cond.61
  br label %sw.epilog

sw.bb.94:                                         ; preds = %if.end
  %96 = load i32, i32* %scale.addr, align 4
  %mul95 = mul nsw i32 5, %96
  store i32 %mul95, i32* %n, align 4
  %97 = load i32, i32* %n, align 4
  %98 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd96 = getelementptr inbounds %struct.FULL, %struct.FULL* %98, i32 0, i32 0
  store i32 %97, i32* %cd96, align 4
  %99 = load i32, i32* %n, align 4
  %100 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd97 = getelementptr inbounds %struct.FULL, %struct.FULL* %100, i32 0, i32 1
  store i32 %99, i32* %rd97, align 4
  %101 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %102 = load float**, float*** %x.addr, align 8
  %103 = load float**, float*** %b.addr, align 8
  %104 = load float**, float*** %bt.addr, align 8
  %105 = load i32**, i32*** %ipvt.addr, align 8
  %call98 = call i32 @get_space(%struct.FULL* %101, float** %102, float** %103, float** %104, i32** %105)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %sw.bb.94
  store i32 1, i32* %retval
  br label %return

if.end.101:                                       ; preds = %sw.bb.94
  %106 = load i32, i32* %test_case.addr, align 4
  %107 = load i32, i32* %n, align 4
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i32 %106, i32 %107)
  store i32 0, i32* %j, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.122, %if.end.101
  %108 = load i32, i32* %j, align 4
  %109 = load i32, i32* %n, align 4
  %cmp104 = icmp slt i32 %108, %109
  br i1 %cmp104, label %for.body.106, label %for.end.124

for.body.106:                                     ; preds = %for.cond.103
  store i32 0, i32* %i, align 4
  %110 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %110 to i64
  %111 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd108 = getelementptr inbounds %struct.FULL, %struct.FULL* %111, i32 0, i32 2
  %arrayidx109 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd108, i32 0, i64 %idxprom107
  %112 = load float*, float** %arrayidx109, align 8
  store float* %112, float** %col, align 8
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.118, %for.body.106
  %113 = load i32, i32* %i, align 4
  %114 = load i32, i32* %n, align 4
  %cmp111 = icmp slt i32 %113, %114
  br i1 %cmp111, label %for.body.113, label %for.end.121

for.body.113:                                     ; preds = %for.cond.110
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* %j, align 4
  %sub114 = sub nsw i32 %115, %116
  %conv115 = sitofp i32 %sub114 to double
  %call116 = call double @pow(double 1.000000e+01, double %conv115) #5
  %conv117 = fptrunc double %call116 to float
  %117 = load float*, float** %col, align 8
  store float %conv117, float* %117, align 4
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.113
  %118 = load i32, i32* %i, align 4
  %inc119 = add nsw i32 %118, 1
  store i32 %inc119, i32* %i, align 4
  %119 = load float*, float** %col, align 8
  %incdec.ptr120 = getelementptr inbounds float, float* %119, i32 1
  store float* %incdec.ptr120, float** %col, align 8
  br label %for.cond.110

for.end.121:                                      ; preds = %for.cond.110
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.end.121
  %120 = load i32, i32* %j, align 4
  %inc123 = add nsw i32 %120, 1
  store i32 %inc123, i32* %j, align 4
  br label %for.cond.103

for.end.124:                                      ; preds = %for.cond.103
  br label %sw.epilog

sw.bb.125:                                        ; preds = %if.end
  %121 = load i32, i32* %scale.addr, align 4
  %mul126 = mul nsw i32 4, %121
  store i32 %mul126, i32* %n, align 4
  %122 = load i32, i32* %n, align 4
  %123 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd127 = getelementptr inbounds %struct.FULL, %struct.FULL* %123, i32 0, i32 0
  store i32 %122, i32* %cd127, align 4
  %124 = load i32, i32* %n, align 4
  %125 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd128 = getelementptr inbounds %struct.FULL, %struct.FULL* %125, i32 0, i32 1
  store i32 %124, i32* %rd128, align 4
  %126 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %127 = load float**, float*** %x.addr, align 8
  %128 = load float**, float*** %b.addr, align 8
  %129 = load float**, float*** %bt.addr, align 8
  %130 = load i32**, i32*** %ipvt.addr, align 8
  %call129 = call i32 @get_space(%struct.FULL* %126, float** %127, float** %128, float** %129, i32** %130)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %sw.bb.125
  store i32 1, i32* %retval
  br label %return

if.end.132:                                       ; preds = %sw.bb.125
  %131 = load i32, i32* %test_case.addr, align 4
  %132 = load i32, i32* %n, align 4
  %call133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i32 %131, i32 %132)
  store i32 0, i32* %j, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.154, %if.end.132
  %133 = load i32, i32* %j, align 4
  %134 = load i32, i32* %n, align 4
  %cmp135 = icmp slt i32 %133, %134
  br i1 %cmp135, label %for.body.137, label %for.end.156

for.body.137:                                     ; preds = %for.cond.134
  store i32 0, i32* %i, align 4
  %135 = load i32, i32* %j, align 4
  %idxprom138 = sext i32 %135 to i64
  %136 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd139 = getelementptr inbounds %struct.FULL, %struct.FULL* %136, i32 0, i32 2
  %arrayidx140 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd139, i32 0, i64 %idxprom138
  %137 = load float*, float** %arrayidx140, align 8
  store float* %137, float** %col, align 8
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.150, %for.body.137
  %138 = load i32, i32* %i, align 4
  %139 = load i32, i32* %n, align 4
  %cmp142 = icmp slt i32 %138, %139
  br i1 %cmp142, label %for.body.144, label %for.end.153

for.body.144:                                     ; preds = %for.cond.141
  %140 = load i32, i32* %j, align 4
  %sub145 = sub nsw i32 %140, 2
  %conv146 = sitofp i32 %sub145 to float
  store float %conv146, float* %tu, align 4
  %141 = load i32, i32* %i, align 4
  %add147 = add nsw i32 %141, 1
  %conv148 = sitofp i32 %add147 to float
  store float %conv148, float* %tl, align 4
  %142 = load float, float* %tu, align 4
  %143 = load float, float* %tl, align 4
  %div149 = fdiv float %142, %143
  %144 = load float*, float** %col, align 8
  store float %div149, float* %144, align 4
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.body.144
  %145 = load i32, i32* %i, align 4
  %inc151 = add nsw i32 %145, 1
  store i32 %inc151, i32* %i, align 4
  %146 = load float*, float** %col, align 8
  %incdec.ptr152 = getelementptr inbounds float, float* %146, i32 1
  store float* %incdec.ptr152, float** %col, align 8
  br label %for.cond.141

for.end.153:                                      ; preds = %for.cond.141
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.end.153
  %147 = load i32, i32* %j, align 4
  %inc155 = add nsw i32 %147, 1
  store i32 %inc155, i32* %j, align 4
  br label %for.cond.134

for.end.156:                                      ; preds = %for.cond.134
  br label %sw.epilog

sw.bb.157:                                        ; preds = %if.end
  %148 = load i32, i32* %scale.addr, align 4
  %mul158 = mul nsw i32 6, %148
  store i32 %mul158, i32* %n, align 4
  %149 = load i32, i32* %n, align 4
  %150 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd159 = getelementptr inbounds %struct.FULL, %struct.FULL* %150, i32 0, i32 0
  store i32 %149, i32* %cd159, align 4
  %151 = load i32, i32* %n, align 4
  %152 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd160 = getelementptr inbounds %struct.FULL, %struct.FULL* %152, i32 0, i32 1
  store i32 %151, i32* %rd160, align 4
  %153 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %154 = load float**, float*** %x.addr, align 8
  %155 = load float**, float*** %b.addr, align 8
  %156 = load float**, float*** %bt.addr, align 8
  %157 = load i32**, i32*** %ipvt.addr, align 8
  %call161 = call i32 @get_space(%struct.FULL* %153, float** %154, float** %155, float** %156, i32** %157)
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %sw.bb.157
  store i32 1, i32* %retval
  br label %return

if.end.164:                                       ; preds = %sw.bb.157
  %158 = load i32, i32* %test_case.addr, align 4
  %159 = load i32, i32* %n, align 4
  %call165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0), i32 %158, i32 %159)
  store i32 0, i32* %j, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.189, %if.end.164
  %160 = load i32, i32* %j, align 4
  %161 = load i32, i32* %n, align 4
  %cmp167 = icmp slt i32 %160, %161
  br i1 %cmp167, label %for.body.169, label %for.end.191

for.body.169:                                     ; preds = %for.cond.166
  store i32 0, i32* %i, align 4
  %162 = load i32, i32* %j, align 4
  %idxprom170 = sext i32 %162 to i64
  %163 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd171 = getelementptr inbounds %struct.FULL, %struct.FULL* %163, i32 0, i32 2
  %arrayidx172 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd171, i32 0, i64 %idxprom170
  %164 = load float*, float** %arrayidx172, align 8
  store float* %164, float** %col, align 8
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.185, %for.body.169
  %165 = load i32, i32* %i, align 4
  %166 = load i32, i32* %n, align 4
  %cmp174 = icmp slt i32 %165, %166
  br i1 %cmp174, label %for.body.176, label %for.end.188

for.body.176:                                     ; preds = %for.cond.173
  %167 = load i32, i32* %i, align 4
  %168 = load i32, i32* %j, align 4
  %cmp177 = icmp sgt i32 %167, %168
  br i1 %cmp177, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.176
  br label %cond.end

cond.false:                                       ; preds = %for.body.176
  %169 = load i32, i32* %i, align 4
  %170 = load i32, i32* %j, align 4
  %sub179 = sub nsw i32 %169, %170
  %add180 = add nsw i32 %sub179, 1
  %conv181 = sitofp i32 %add180 to float
  %conv182 = fpext float %conv181 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond183 = phi double [ 0.000000e+00, %cond.true ], [ %conv182, %cond.false ]
  %conv184 = fptrunc double %cond183 to float
  %171 = load float*, float** %col, align 8
  store float %conv184, float* %171, align 4
  br label %for.inc.185

for.inc.185:                                      ; preds = %cond.end
  %172 = load i32, i32* %i, align 4
  %inc186 = add nsw i32 %172, 1
  store i32 %inc186, i32* %i, align 4
  %173 = load float*, float** %col, align 8
  %incdec.ptr187 = getelementptr inbounds float, float* %173, i32 1
  store float* %incdec.ptr187, float** %col, align 8
  br label %for.cond.173

for.end.188:                                      ; preds = %for.cond.173
  br label %for.inc.189

for.inc.189:                                      ; preds = %for.end.188
  %174 = load i32, i32* %j, align 4
  %inc190 = add nsw i32 %174, 1
  store i32 %inc190, i32* %j, align 4
  br label %for.cond.166

for.end.191:                                      ; preds = %for.cond.166
  br label %sw.epilog

sw.bb.192:                                        ; preds = %if.end
  %175 = load i32, i32* %scale.addr, align 4
  %mul193 = mul nsw i32 6, %175
  store i32 %mul193, i32* %n, align 4
  %176 = load i32, i32* %n, align 4
  %177 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd194 = getelementptr inbounds %struct.FULL, %struct.FULL* %177, i32 0, i32 0
  store i32 %176, i32* %cd194, align 4
  %178 = load i32, i32* %n, align 4
  %179 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd195 = getelementptr inbounds %struct.FULL, %struct.FULL* %179, i32 0, i32 1
  store i32 %178, i32* %rd195, align 4
  %180 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %181 = load float**, float*** %x.addr, align 8
  %182 = load float**, float*** %b.addr, align 8
  %183 = load float**, float*** %bt.addr, align 8
  %184 = load i32**, i32*** %ipvt.addr, align 8
  %call196 = call i32 @get_space(%struct.FULL* %180, float** %181, float** %182, float** %183, i32** %184)
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %sw.bb.192
  store i32 1, i32* %retval
  br label %return

if.end.199:                                       ; preds = %sw.bb.192
  %185 = load i32, i32* %test_case.addr, align 4
  %186 = load i32, i32* %n, align 4
  %call200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i32 %185, i32 %186)
  store i32 0, i32* %j, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.227, %if.end.199
  %187 = load i32, i32* %j, align 4
  %188 = load i32, i32* %n, align 4
  %cmp202 = icmp slt i32 %187, %188
  br i1 %cmp202, label %for.body.204, label %for.end.229

for.body.204:                                     ; preds = %for.cond.201
  store i32 0, i32* %i, align 4
  %189 = load i32, i32* %j, align 4
  %idxprom205 = sext i32 %189 to i64
  %190 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd206 = getelementptr inbounds %struct.FULL, %struct.FULL* %190, i32 0, i32 2
  %arrayidx207 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd206, i32 0, i64 %idxprom205
  %191 = load float*, float** %arrayidx207, align 8
  store float* %191, float** %col, align 8
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.223, %for.body.204
  %192 = load i32, i32* %i, align 4
  %193 = load i32, i32* %n, align 4
  %cmp209 = icmp slt i32 %192, %193
  br i1 %cmp209, label %for.body.211, label %for.end.226

for.body.211:                                     ; preds = %for.cond.208
  %194 = load i32, i32* %i, align 4
  %195 = load i32, i32* %j, align 4
  %cmp212 = icmp slt i32 %194, %195
  br i1 %cmp212, label %cond.true.214, label %cond.false.215

cond.true.214:                                    ; preds = %for.body.211
  br label %cond.end.220

cond.false.215:                                   ; preds = %for.body.211
  %196 = load i32, i32* %i, align 4
  %197 = load i32, i32* %j, align 4
  %sub216 = sub nsw i32 %196, %197
  %add217 = add nsw i32 %sub216, 1
  %conv218 = sitofp i32 %add217 to float
  %conv219 = fpext float %conv218 to double
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.215, %cond.true.214
  %cond221 = phi double [ 0.000000e+00, %cond.true.214 ], [ %conv219, %cond.false.215 ]
  %conv222 = fptrunc double %cond221 to float
  %198 = load float*, float** %col, align 8
  store float %conv222, float* %198, align 4
  br label %for.inc.223

for.inc.223:                                      ; preds = %cond.end.220
  %199 = load i32, i32* %i, align 4
  %inc224 = add nsw i32 %199, 1
  store i32 %inc224, i32* %i, align 4
  %200 = load float*, float** %col, align 8
  %incdec.ptr225 = getelementptr inbounds float, float* %200, i32 1
  store float* %incdec.ptr225, float** %col, align 8
  br label %for.cond.208

for.end.226:                                      ; preds = %for.cond.208
  br label %for.inc.227

for.inc.227:                                      ; preds = %for.end.226
  %201 = load i32, i32* %j, align 4
  %inc228 = add nsw i32 %201, 1
  store i32 %inc228, i32* %j, align 4
  br label %for.cond.201

for.end.229:                                      ; preds = %for.cond.201
  br label %sw.epilog

sw.bb.230:                                        ; preds = %if.end
  %202 = load i32, i32* %scale.addr, align 4
  %mul231 = mul nsw i32 5, %202
  store i32 %mul231, i32* %n, align 4
  %203 = load i32, i32* %n, align 4
  %204 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd232 = getelementptr inbounds %struct.FULL, %struct.FULL* %204, i32 0, i32 0
  store i32 %203, i32* %cd232, align 4
  %205 = load i32, i32* %n, align 4
  %206 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd233 = getelementptr inbounds %struct.FULL, %struct.FULL* %206, i32 0, i32 1
  store i32 %205, i32* %rd233, align 4
  %207 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %208 = load float**, float*** %x.addr, align 8
  %209 = load float**, float*** %b.addr, align 8
  %210 = load float**, float*** %bt.addr, align 8
  %211 = load i32**, i32*** %ipvt.addr, align 8
  %call234 = call i32 @get_space(%struct.FULL* %207, float** %208, float** %209, float** %210, i32** %211)
  %tobool235 = icmp ne i32 %call234, 0
  br i1 %tobool235, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %sw.bb.230
  store i32 1, i32* %retval
  br label %return

if.end.237:                                       ; preds = %sw.bb.230
  %212 = load i32, i32* %test_case.addr, align 4
  %213 = load i32, i32* %n, align 4
  %call238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i32 0, i32 0), i32 %212, i32 %213, double 1.000000e+38)
  %214 = load i32, i32* %n, align 4
  %215 = load i32, i32* %n, align 4
  %mul239 = mul nsw i32 %214, %215
  %conv240 = sitofp i32 %mul239 to float
  store float %conv240, float* %tl, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.273, %if.end.237
  %216 = load i32, i32* %j, align 4
  %217 = load i32, i32* %n, align 4
  %cmp242 = icmp slt i32 %216, %217
  br i1 %cmp242, label %for.body.244, label %for.end.275

for.body.244:                                     ; preds = %for.cond.241
  store i32 0, i32* %i, align 4
  %218 = load i32, i32* %j, align 4
  %idxprom245 = sext i32 %218 to i64
  %219 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd246 = getelementptr inbounds %struct.FULL, %struct.FULL* %219, i32 0, i32 2
  %arrayidx247 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd246, i32 0, i64 %idxprom245
  %220 = load float*, float** %arrayidx247, align 8
  store float* %220, float** %col, align 8
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.269, %for.body.244
  %221 = load i32, i32* %i, align 4
  %222 = load i32, i32* %n, align 4
  %cmp249 = icmp slt i32 %221, %222
  br i1 %cmp249, label %for.body.251, label %for.end.272

for.body.251:                                     ; preds = %for.cond.248
  %223 = load i32, i32* %j, align 4
  %add252 = add nsw i32 %223, 1
  %conv253 = sitofp i32 %add252 to float
  %224 = load i32, i32* %i, align 4
  %225 = load i32, i32* %j, align 4
  %cmp254 = icmp sgt i32 %224, %225
  br i1 %cmp254, label %cond.true.256, label %cond.false.258

cond.true.256:                                    ; preds = %for.body.251
  %226 = load i32, i32* %i, align 4
  %add257 = add nsw i32 %226, 1
  br label %cond.end.260

cond.false.258:                                   ; preds = %for.body.251
  %227 = load i32, i32* %j, align 4
  %add259 = add nsw i32 %227, 1
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.false.258, %cond.true.256
  %cond261 = phi i32 [ %add257, %cond.true.256 ], [ %add259, %cond.false.258 ]
  %conv262 = sitofp i32 %cond261 to float
  %div263 = fdiv float %conv253, %conv262
  store float %div263, float* %tu, align 4
  %228 = load float, float* %tu, align 4
  %conv264 = fpext float %228 to double
  %mul265 = fmul double 1.000000e+38, %conv264
  %229 = load float, float* %tl, align 4
  %conv266 = fpext float %229 to double
  %div267 = fdiv double %mul265, %conv266
  %conv268 = fptrunc double %div267 to float
  %230 = load float*, float** %col, align 8
  store float %conv268, float* %230, align 4
  br label %for.inc.269

for.inc.269:                                      ; preds = %cond.end.260
  %231 = load i32, i32* %i, align 4
  %inc270 = add nsw i32 %231, 1
  store i32 %inc270, i32* %i, align 4
  %232 = load float*, float** %col, align 8
  %incdec.ptr271 = getelementptr inbounds float, float* %232, i32 1
  store float* %incdec.ptr271, float** %col, align 8
  br label %for.cond.248

for.end.272:                                      ; preds = %for.cond.248
  br label %for.inc.273

for.inc.273:                                      ; preds = %for.end.272
  %233 = load i32, i32* %j, align 4
  %inc274 = add nsw i32 %233, 1
  store i32 %inc274, i32* %j, align 4
  br label %for.cond.241

for.end.275:                                      ; preds = %for.cond.241
  br label %sw.epilog

sw.bb.276:                                        ; preds = %if.end
  %234 = load i32, i32* %scale.addr, align 4
  %mul277 = mul nsw i32 5, %234
  store i32 %mul277, i32* %n, align 4
  %235 = load i32, i32* %n, align 4
  %236 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd278 = getelementptr inbounds %struct.FULL, %struct.FULL* %236, i32 0, i32 0
  store i32 %235, i32* %cd278, align 4
  %237 = load i32, i32* %n, align 4
  %238 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd279 = getelementptr inbounds %struct.FULL, %struct.FULL* %238, i32 0, i32 1
  store i32 %237, i32* %rd279, align 4
  %239 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %240 = load float**, float*** %x.addr, align 8
  %241 = load float**, float*** %b.addr, align 8
  %242 = load float**, float*** %bt.addr, align 8
  %243 = load i32**, i32*** %ipvt.addr, align 8
  %call280 = call i32 @get_space(%struct.FULL* %239, float** %240, float** %241, float** %242, i32** %243)
  %tobool281 = icmp ne i32 %call280, 0
  br i1 %tobool281, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %sw.bb.276
  store i32 1, i32* %retval
  br label %return

if.end.283:                                       ; preds = %sw.bb.276
  %244 = load i32, i32* %test_case.addr, align 4
  %245 = load i32, i32* %n, align 4
  %call284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i32 %244, i32 %245, double 1.000000e-38)
  %246 = load i32, i32* %n, align 4
  %247 = load i32, i32* %n, align 4
  %mul285 = mul nsw i32 %246, %247
  %conv286 = sitofp i32 %mul285 to float
  store float %conv286, float* %tl, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.287

for.cond.287:                                     ; preds = %for.inc.318, %if.end.283
  %248 = load i32, i32* %j, align 4
  %249 = load i32, i32* %n, align 4
  %cmp288 = icmp slt i32 %248, %249
  br i1 %cmp288, label %for.body.290, label %for.end.320

for.body.290:                                     ; preds = %for.cond.287
  store i32 0, i32* %i, align 4
  %250 = load i32, i32* %j, align 4
  %idxprom291 = sext i32 %250 to i64
  %251 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd292 = getelementptr inbounds %struct.FULL, %struct.FULL* %251, i32 0, i32 2
  %arrayidx293 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd292, i32 0, i64 %idxprom291
  %252 = load float*, float** %arrayidx293, align 8
  store float* %252, float** %col, align 8
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.314, %for.body.290
  %253 = load i32, i32* %i, align 4
  %254 = load i32, i32* %n, align 4
  %cmp295 = icmp slt i32 %253, %254
  br i1 %cmp295, label %for.body.297, label %for.end.317

for.body.297:                                     ; preds = %for.cond.294
  %255 = load i32, i32* %i, align 4
  %256 = load i32, i32* %j, align 4
  %cmp298 = icmp sgt i32 %255, %256
  br i1 %cmp298, label %cond.true.300, label %cond.false.302

cond.true.300:                                    ; preds = %for.body.297
  %257 = load i32, i32* %i, align 4
  %add301 = add nsw i32 %257, 1
  br label %cond.end.304

cond.false.302:                                   ; preds = %for.body.297
  %258 = load i32, i32* %j, align 4
  %add303 = add nsw i32 %258, 1
  br label %cond.end.304

cond.end.304:                                     ; preds = %cond.false.302, %cond.true.300
  %cond305 = phi i32 [ %add301, %cond.true.300 ], [ %add303, %cond.false.302 ]
  %conv306 = sitofp i32 %cond305 to float
  %259 = load i32, i32* %j, align 4
  %add307 = add nsw i32 %259, 1
  %conv308 = sitofp i32 %add307 to float
  %div309 = fdiv float %conv306, %conv308
  store float %div309, float* %tu, align 4
  %260 = load float, float* %tu, align 4
  %261 = load float, float* %tl, align 4
  %mul310 = fmul float %260, %261
  %conv311 = fpext float %mul310 to double
  %div312 = fdiv double %conv311, 1.000000e+38
  %conv313 = fptrunc double %div312 to float
  %262 = load float*, float** %col, align 8
  store float %conv313, float* %262, align 4
  br label %for.inc.314

for.inc.314:                                      ; preds = %cond.end.304
  %263 = load i32, i32* %i, align 4
  %inc315 = add nsw i32 %263, 1
  store i32 %inc315, i32* %i, align 4
  %264 = load float*, float** %col, align 8
  %incdec.ptr316 = getelementptr inbounds float, float* %264, i32 1
  store float* %incdec.ptr316, float** %col, align 8
  br label %for.cond.294

for.end.317:                                      ; preds = %for.cond.294
  br label %for.inc.318

for.inc.318:                                      ; preds = %for.end.317
  %265 = load i32, i32* %j, align 4
  %inc319 = add nsw i32 %265, 1
  store i32 %inc319, i32* %j, align 4
  br label %for.cond.287

for.end.320:                                      ; preds = %for.cond.287
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %for.end.320, %for.end.275, %for.end.229, %for.end.191, %for.end.156, %for.end.124, %for.end.93, %if.end.37, %for.end.30
  %266 = load float**, float*** %x.addr, align 8
  %267 = load float*, float** %266, align 8
  store float 1.000000e+00, float* %267, align 4
  %268 = load i32, i32* %n, align 4
  %cmp322 = icmp sgt i32 %268, 1
  br i1 %cmp322, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %sw.epilog
  %269 = load float**, float*** %bt.addr, align 8
  %270 = load float*, float** %269, align 8
  store float 0.000000e+00, float* %270, align 4
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.324, %sw.epilog
  %271 = load i32, i32* %n, align 4
  %cmp326 = icmp sgt i32 %271, 2
  br i1 %cmp326, label %if.then.328, label %if.end.339

if.then.328:                                      ; preds = %if.end.325
  store i32 2, i32* %i, align 4
  %272 = load float**, float*** %x.addr, align 8
  %273 = load float*, float** %272, align 8
  %add.ptr = getelementptr inbounds float, float* %273, i64 2
  store float* %add.ptr, float** %col, align 8
  br label %for.cond.329

for.cond.329:                                     ; preds = %for.inc.335, %if.then.328
  %274 = load i32, i32* %i, align 4
  %275 = load i32, i32* %n, align 4
  %cmp330 = icmp slt i32 %274, %275
  br i1 %cmp330, label %for.body.332, label %for.end.338

for.body.332:                                     ; preds = %for.cond.329
  %276 = load float*, float** %col, align 8
  %add.ptr333 = getelementptr inbounds float, float* %276, i64 -2
  %277 = load float, float* %add.ptr333, align 4
  %sub334 = fsub float -0.000000e+00, %277
  %278 = load float*, float** %col, align 8
  store float %sub334, float* %278, align 4
  br label %for.inc.335

for.inc.335:                                      ; preds = %for.body.332
  %279 = load i32, i32* %i, align 4
  %inc336 = add nsw i32 %279, 1
  store i32 %inc336, i32* %i, align 4
  %280 = load float*, float** %col, align 8
  %incdec.ptr337 = getelementptr inbounds float, float* %280, i32 1
  store float* %incdec.ptr337, float** %col, align 8
  br label %for.cond.329

for.end.338:                                      ; preds = %for.cond.329
  br label %if.end.339

if.end.339:                                       ; preds = %for.end.338, %if.end.325
  %281 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %282 = load float**, float*** %x.addr, align 8
  %283 = load float*, float** %282, align 8
  %284 = load float**, float*** %b.addr, align 8
  %285 = load float*, float** %284, align 8
  %call340 = call i32 @matvec(%struct.FULL* %281, float* %283, float* %285, i32 0)
  %tobool341 = icmp ne i32 %call340, 0
  br i1 %tobool341, label %if.then.342, label %if.end.344

if.then.342:                                      ; preds = %if.end.339
  %call343 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.344:                                       ; preds = %if.end.339
  %286 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %287 = load float**, float*** %x.addr, align 8
  %288 = load float*, float** %287, align 8
  %289 = load float**, float*** %bt.addr, align 8
  %290 = load float*, float** %289, align 8
  %call345 = call i32 @matvec(%struct.FULL* %286, float* %288, float* %290, i32 1)
  %tobool346 = icmp ne i32 %call345, 0
  br i1 %tobool346, label %if.then.347, label %if.end.349

if.then.347:                                      ; preds = %if.end.344
  %call348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.349:                                       ; preds = %if.end.344
  %291 = load i32, i32* %n, align 4
  %cmp350 = icmp sle i32 %291, 7
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %if.end.349
  %292 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  call void @matdump(%struct.FULL* %292, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.352, %if.end.349
  %293 = load i32, i32* %n, align 4
  %cmp354 = icmp sle i32 %293, 7
  br i1 %cmp354, label %if.then.356, label %if.end.357

if.then.356:                                      ; preds = %if.end.353
  %294 = load float**, float*** %x.addr, align 8
  %295 = load float*, float** %294, align 8
  %296 = load i32, i32* %n, align 4
  call void @fvecdump(float* %295, i32 %296, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0))
  %297 = load float**, float*** %b.addr, align 8
  %298 = load float*, float** %297, align 8
  %299 = load i32, i32* %n, align 4
  call void @fvecdump(float* %298, i32 %299, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0))
  %300 = load float**, float*** %bt.addr, align 8
  %301 = load float*, float** %300, align 8
  %302 = load i32, i32* %n, align 4
  call void @fvecdump(float* %301, i32 %302, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.357

if.end.357:                                       ; preds = %if.then.356, %if.end.353
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.357, %if.then.347, %if.then.342, %sw.default, %if.then.282, %if.then.236, %if.then.198, %if.then.163, %if.then.131, %if.then.100, %if.then.50, %if.then.36, %if.then.5
  %303 = load i32, i32* %retval
  ret i32 %303
}

declare void @free(...) #1

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define i32 @get_space(%struct.FULL* %a, float** %x, float** %b, float** %bt, i32** %ipvt) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.FULL*, align 8
  %x.addr = alloca float**, align 8
  %b.addr = alloca float**, align 8
  %bt.addr = alloca float**, align 8
  %ipvt.addr = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.FULL* %a, %struct.FULL** %a.addr, align 8
  store float** %x, float*** %x.addr, align 8
  store float** %b, float*** %b.addr, align 8
  store float** %bt, float*** %bt.addr, align 8
  store i32** %ipvt, i32*** %ipvt.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd = getelementptr inbounds %struct.FULL, %struct.FULL* %1, i32 0, i32 1
  %2 = load i32, i32* %rd, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd = getelementptr inbounds %struct.FULL, %struct.FULL* %3, i32 0, i32 0
  %4 = load i32, i32* %cd, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 %mul)
  %5 = bitcast i8* %call to float*
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd = getelementptr inbounds %struct.FULL, %struct.FULL* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd, i32 0, i64 %idxprom
  store float* %5, float** %arrayidx, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd2 = getelementptr inbounds %struct.FULL, %struct.FULL* %9, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd2, i32 0, i64 %idxprom1
  %10 = load float*, float** %arrayidx3, align 8
  %cmp4 = icmp eq float* %10, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.22, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd7 = getelementptr inbounds %struct.FULL, %struct.FULL* %12, i32 0, i32 0
  %13 = load i32, i32* %cd7, align 4
  %conv8 = sext i32 %13 to i64
  %mul9 = mul i64 %conv8, 4
  %call10 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 %mul9)
  %14 = bitcast i8* %call10 to float*
  %15 = load float**, float*** %x.addr, align 8
  store float* %14, float** %15, align 8
  %16 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd11 = getelementptr inbounds %struct.FULL, %struct.FULL* %16, i32 0, i32 0
  %17 = load i32, i32* %cd11, align 4
  %conv12 = sext i32 %17 to i64
  %mul13 = mul i64 %conv12, 4
  %call14 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 %mul13)
  %18 = bitcast i8* %call14 to float*
  %19 = load float**, float*** %b.addr, align 8
  store float* %18, float** %19, align 8
  %20 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd15 = getelementptr inbounds %struct.FULL, %struct.FULL* %20, i32 0, i32 0
  %21 = load i32, i32* %cd15, align 4
  %conv16 = sext i32 %21 to i64
  %mul17 = mul i64 %conv16, 4
  %call18 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 %mul17)
  %22 = bitcast i8* %call18 to float*
  %23 = load float**, float*** %bt.addr, align 8
  store float* %22, float** %23, align 8
  %24 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd19 = getelementptr inbounds %struct.FULL, %struct.FULL* %24, i32 0, i32 0
  %25 = load i32, i32* %cd19, align 4
  %conv20 = sext i32 %25 to i64
  %mul21 = mul i64 %conv20, 4
  %call22 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 %mul21)
  %26 = bitcast i8* %call22 to i32*
  %27 = load i32**, i32*** %ipvt.addr, align 8
  store i32* %26, i32** %27, align 8
  %28 = load float**, float*** %x.addr, align 8
  %29 = load float*, float** %28, align 8
  %cmp23 = icmp eq float* %29, null
  br i1 %cmp23, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %30 = load float**, float*** %b.addr, align 8
  %31 = load float*, float** %30, align 8
  %cmp25 = icmp eq float* %31, null
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %32 = load float**, float*** %bt.addr, align 8
  %33 = load float*, float** %32, align 8
  %cmp28 = icmp eq float* %33, null
  br i1 %cmp28, label %if.then.33, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.27
  %34 = load i32**, i32*** %ipvt.addr, align 8
  %35 = load i32*, i32** %34, align 8
  %cmp31 = icmp eq i32* %35, null
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false.27, %lor.lhs.false, %for.end
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %lor.lhs.false.30
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.33, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i8* @malloc(...) #1

; Function Attrs: nounwind uwtable
define i32 @matvec(%struct.FULL* %a, float* %x, float* %b, i32 %job) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.FULL*, align 8
  %x.addr = alloca float*, align 8
  %b.addr = alloca float*, align 8
  %job.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %px = alloca float*, align 8
  %pb = alloca float*, align 8
  %col = alloca float*, align 8
  %row = alloca float*, align 8
  store %struct.FULL* %a, %struct.FULL** %a.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %b, float** %b.addr, align 8
  store i32 %job, i32* %job.addr, align 4
  %0 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i32 0, i32 0
  %1 = load i32, i32* %cd, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd = getelementptr inbounds %struct.FULL, %struct.FULL* %2, i32 0, i32 1
  %3 = load i32, i32* %rd, align 4
  %cmp1 = icmp slt i32 %3, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %job.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end.14

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  %5 = load float*, float** %b.addr, align 8
  store float* %5, float** %pb, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %if.then.2
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd3 = getelementptr inbounds %struct.FULL, %struct.FULL* %7, i32 0, i32 1
  %8 = load i32, i32* %rd3, align 4
  %cmp4 = icmp slt i32 %6, %8
  br i1 %cmp4, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd = getelementptr inbounds %struct.FULL, %struct.FULL* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd, i32 0, i64 %idxprom
  %11 = load float*, float** %arrayidx, align 8
  store float* %11, float** %row, align 8
  %12 = load float*, float** %x.addr, align 8
  store float* %12, float** %px, align 8
  %13 = load float*, float** %pb, align 8
  store float 0.000000e+00, float* %13, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4
  %15 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd6 = getelementptr inbounds %struct.FULL, %struct.FULL* %15, i32 0, i32 0
  %16 = load i32, i32* %cd6, align 4
  %cmp7 = icmp slt i32 %14, %16
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %17 = load float*, float** %row, align 8
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %px, align 8
  %20 = load float, float* %19, align 4
  %mul = fmul float %18, %20
  %21 = load float*, float** %pb, align 8
  %22 = load float, float* %21, align 4
  %add = fadd float %22, %mul
  store float %add, float* %21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  %24 = load float*, float** %px, align 8
  %incdec.ptr = getelementptr inbounds float, float* %24, i32 1
  store float* %incdec.ptr, float** %px, align 8
  %25 = load float*, float** %row, align 8
  %incdec.ptr9 = getelementptr inbounds float, float* %25, i32 1
  store float* %incdec.ptr9, float** %row, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %26, 1
  store i32 %inc11, i32* %i, align 4
  %27 = load float*, float** %pb, align 8
  %incdec.ptr12 = getelementptr inbounds float, float* %27, i32 1
  store float* %incdec.ptr12, float** %pb, align 8
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  %28 = load float*, float** %x.addr, align 8
  store float* %28, float** %px, align 8
  %29 = load float*, float** %b.addr, align 8
  store float* %29, float** %pb, align 8
  %30 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd15 = getelementptr inbounds %struct.FULL, %struct.FULL* %30, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd15, i32 0, i64 0
  %31 = load float*, float** %arrayidx16, align 8
  store float* %31, float** %col, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.22, %if.end.14
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd18 = getelementptr inbounds %struct.FULL, %struct.FULL* %33, i32 0, i32 1
  %34 = load i32, i32* %rd18, align 4
  %cmp19 = icmp slt i32 %32, %34
  br i1 %cmp19, label %for.body.20, label %for.end.26

for.body.20:                                      ; preds = %for.cond.17
  %35 = load float*, float** %col, align 8
  %36 = load float, float* %35, align 4
  %37 = load float*, float** %px, align 8
  %38 = load float, float* %37, align 4
  %mul21 = fmul float %36, %38
  %39 = load float*, float** %pb, align 8
  store float %mul21, float* %39, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.20
  %40 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %40, 1
  store i32 %inc23, i32* %i, align 4
  %41 = load float*, float** %pb, align 8
  %incdec.ptr24 = getelementptr inbounds float, float* %41, i32 1
  store float* %incdec.ptr24, float** %pb, align 8
  %42 = load float*, float** %col, align 8
  %incdec.ptr25 = getelementptr inbounds float, float* %42, i32 1
  store float* %incdec.ptr25, float** %col, align 8
  br label %for.cond.17

for.end.26:                                       ; preds = %for.cond.17
  store i32 1, i32* %j, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.45, %for.end.26
  %43 = load i32, i32* %j, align 4
  %44 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd28 = getelementptr inbounds %struct.FULL, %struct.FULL* %44, i32 0, i32 0
  %45 = load i32, i32* %cd28, align 4
  %cmp29 = icmp slt i32 %43, %45
  br i1 %cmp29, label %for.body.30, label %for.end.47

for.body.30:                                      ; preds = %for.cond.27
  store i32 0, i32* %i, align 4
  %46 = load float*, float** %x.addr, align 8
  %47 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %47 to i64
  %add.ptr = getelementptr inbounds float, float* %46, i64 %idx.ext
  store float* %add.ptr, float** %px, align 8
  %48 = load float*, float** %b.addr, align 8
  store float* %48, float** %pb, align 8
  %49 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %49 to i64
  %50 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd32 = getelementptr inbounds %struct.FULL, %struct.FULL* %50, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd32, i32 0, i64 %idxprom31
  %51 = load float*, float** %arrayidx33, align 8
  store float* %51, float** %col, align 8
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.40, %for.body.30
  %52 = load i32, i32* %i, align 4
  %53 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd35 = getelementptr inbounds %struct.FULL, %struct.FULL* %53, i32 0, i32 1
  %54 = load i32, i32* %rd35, align 4
  %cmp36 = icmp slt i32 %52, %54
  br i1 %cmp36, label %for.body.37, label %for.end.44

for.body.37:                                      ; preds = %for.cond.34
  %55 = load float*, float** %col, align 8
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %px, align 8
  %58 = load float, float* %57, align 4
  %mul38 = fmul float %56, %58
  %59 = load float*, float** %pb, align 8
  %60 = load float, float* %59, align 4
  %add39 = fadd float %60, %mul38
  store float %add39, float* %59, align 4
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.37
  %61 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %61, 1
  store i32 %inc41, i32* %i, align 4
  %62 = load float*, float** %pb, align 8
  %incdec.ptr42 = getelementptr inbounds float, float* %62, i32 1
  store float* %incdec.ptr42, float** %pb, align 8
  %63 = load float*, float** %col, align 8
  %incdec.ptr43 = getelementptr inbounds float, float* %63, i32 1
  store float* %incdec.ptr43, float** %col, align 8
  br label %for.cond.34

for.end.44:                                       ; preds = %for.cond.34
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end.44
  %64 = load i32, i32* %j, align 4
  %inc46 = add nsw i32 %64, 1
  store i32 %inc46, i32* %j, align 4
  br label %for.cond.27

for.end.47:                                       ; preds = %for.cond.27
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.47, %for.end.13, %if.then
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define void @matdump(%struct.FULL* %a, i8* %head) #0 {
entry:
  %a.addr = alloca %struct.FULL*, align 8
  %head.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %jj = alloca i32, align 4
  %ncolmod = alloca i32, align 4
  %ncolrem = alloca i32, align 4
  store %struct.FULL* %a, %struct.FULL** %a.addr, align 8
  store i8* %head, i8** %head.addr, align 8
  %0 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i32 0, i32 0
  %1 = load i32, i32* %cd, align 4
  %div = sdiv i32 %1, 6
  store i32 %div, i32* %ncolmod, align 4
  %2 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd1 = getelementptr inbounds %struct.FULL, %struct.FULL* %2, i32 0, i32 0
  %3 = load i32, i32* %cd1, align 4
  %4 = load i32, i32* %ncolmod, align 4
  %mul = mul nsw i32 %4, 6
  %sub = sub nsw i32 %3, %mul
  store i32 %sub, i32* %ncolrem, align 4
  %5 = load i8*, i8** %head.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd = getelementptr inbounds %struct.FULL, %struct.FULL* %7, i32 0, i32 1
  %8 = load i32, i32* %rd, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %9)
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.13, %for.body
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %ncolmod, align 4
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %for.body.5, label %for.end.15

for.body.5:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %k, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  store i32 0, i32* %jj, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.end
  %13 = load i32, i32* %jj, align 4
  %cmp8 = icmp slt i32 %13, 6
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %14 = load i32, i32* %j, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd = getelementptr inbounds %struct.FULL, %struct.FULL* %15, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd, i32 0, i64 %idxprom
  %16 = load float*, float** %arrayidx, align 8
  %17 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds float, float* %16, i64 %idx.ext
  %18 = load float, float* %add.ptr, align 4
  %conv = fpext float %18 to double
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), double %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %19 = load i32, i32* %jj, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %jj, align 4
  %20 = load i32, i32* %j, align 4
  %inc11 = add nsw i32 %20, 1
  store i32 %inc11, i32* %j, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %21 = load i32, i32* %k, align 4
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, i32* %k, align 4
  br label %for.cond.3

for.end.15:                                       ; preds = %for.cond.3
  store i32 0, i32* %jj, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.27, %for.end.15
  %22 = load i32, i32* %jj, align 4
  %23 = load i32, i32* %ncolrem, align 4
  %cmp17 = icmp slt i32 %22, %23
  br i1 %cmp17, label %for.body.19, label %for.end.30

for.body.19:                                      ; preds = %for.cond.16
  %24 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %24 to i64
  %25 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd21 = getelementptr inbounds %struct.FULL, %struct.FULL* %25, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd21, i32 0, i64 %idxprom20
  %26 = load float*, float** %arrayidx22, align 8
  %27 = load i32, i32* %i, align 4
  %idx.ext23 = sext i32 %27 to i64
  %add.ptr24 = getelementptr inbounds float, float* %26, i64 %idx.ext23
  %28 = load float, float* %add.ptr24, align 4
  %conv25 = fpext float %28 to double
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), double %conv25)
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.19
  %29 = load i32, i32* %jj, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %jj, align 4
  %30 = load i32, i32* %j, align 4
  %inc29 = add nsw i32 %30, 1
  store i32 %inc29, i32* %j, align 4
  br label %for.cond.16

for.end.30:                                       ; preds = %for.cond.16
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.30
  %31 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %31, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @fvecdump(float* %vec, i32 %len, i8* %head) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %head.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %lenmod = alloca i32, align 4
  %lenrem = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %head, i8** %head.addr, align 8
  %0 = load i32, i32* %len.addr, align 4
  %div = sdiv i32 %0, 6
  store i32 %div, i32* %lenmod, align 4
  %1 = load i32, i32* %len.addr, align 4
  %2 = load i32, i32* %lenmod, align 4
  %mul = mul nsw i32 %2, 6
  %sub = sub nsw i32 %1, %mul
  store i32 %sub, i32* %lenrem, align 4
  %3 = load i8*, i8** %head.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* %3)
  store i32 0, i32* %count, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %lenmod, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %count, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %6)
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %7, 6
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load float*, float** %vec.addr, align 8
  %9 = load float, float* %8, align 4
  %conv = fpext float %9 to double
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), double %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  %11 = load float*, float** %vec.addr, align 8
  %incdec.ptr = getelementptr inbounds float, float* %11, i32 1
  store float* %incdec.ptr, float** %vec.addr, align 8
  %12 = load i32, i32* %count, align 4
  %inc6 = add nsw i32 %12, 1
  store i32 %inc6, i32* %count, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %13 = load i32, i32* %j, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %j, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %14 = load i32, i32* %lenrem, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.10
  %15 = load i32, i32* %count, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %15)
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.18, %if.then
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %lenrem, align 4
  %cmp13 = icmp slt i32 %16, %17
  br i1 %cmp13, label %for.body.15, label %for.end.21

for.body.15:                                      ; preds = %for.cond.12
  %18 = load float*, float** %vec.addr, align 8
  %19 = load float, float* %18, align 4
  %conv16 = fpext float %19 to double
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), double %conv16)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %20 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, i32* %i, align 4
  %21 = load float*, float** %vec.addr, align 8
  %incdec.ptr20 = getelementptr inbounds float, float* %21, i32 1
  store float* %incdec.ptr20, float** %vec.addr, align 8
  br label %for.cond.12

for.end.21:                                       ; preds = %for.cond.12
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end.21, %for.end.10
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @ivecdump(i32* %vec, i32 %len, i8* %head) #0 {
entry:
  %vec.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %head.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %lenmod = alloca i32, align 4
  %lenrem = alloca i32, align 4
  store i32* %vec, i32** %vec.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %head, i8** %head.addr, align 8
  %0 = load i32, i32* %len.addr, align 4
  %div = sdiv i32 %0, 9
  store i32 %div, i32* %lenmod, align 4
  %1 = load i32, i32* %len.addr, align 4
  %2 = load i32, i32* %lenmod, align 4
  %mul = mul nsw i32 %2, 6
  %sub = sub nsw i32 %1, %mul
  store i32 %sub, i32* %lenrem, align 4
  %3 = load i8*, i8** %head.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* %3)
  store i32 0, i32* %count, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %lenmod, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %count, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %6)
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %7, 9
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load i32*, i32** %vec.addr, align 8
  %9 = load i32, i32* %8, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  %11 = load i32*, i32** %vec.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %vec.addr, align 8
  %12 = load i32, i32* %count, align 4
  %inc6 = add nsw i32 %12, 1
  store i32 %inc6, i32* %count, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %13 = load i32, i32* %j, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %j, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %14 = load i32, i32* %lenrem, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.10
  %15 = load i32, i32* %count, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %15)
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.16, %if.then
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %lenrem, align 4
  %cmp13 = icmp slt i32 %16, %17
  br i1 %cmp13, label %for.body.14, label %for.end.19

for.body.14:                                      ; preds = %for.cond.12
  %18 = load i32*, i32** %vec.addr, align 8
  %19 = load i32, i32* %18, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 %19)
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.14
  %20 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %20, 1
  store i32 %inc17, i32* %i, align 4
  %21 = load i32*, i32** %vec.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %incdec.ptr18, i32** %vec.addr, align 8
  br label %for.cond.12

for.end.19:                                       ; preds = %for.cond.12
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end.19, %for.end.10
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
