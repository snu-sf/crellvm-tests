; ModuleID = './MultiSource.Benchmarks.Prolangs-C/247.TimberWolfMC.wireratio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.array3d = type { i32, double }

@N = common global double 0.000000e+00, align 8
@CC = common global double 0.000000e+00, align 8
@bb = common global double 0.000000e+00, align 8
@a = common global double 0.000000e+00, align 8
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [78 x i8] c"\0A\0A_________________________________________________________________________\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"DISTINCT NETS PER CELL ---------------- : %.2f\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"NETS PER DISTINCT NET  ---------------- : %.2f\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"CELLS PER DISTINCT NET ---------------- : %.2f\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"AVE. # CELLS CONNECTED TO A CELL ------ : %.2f\0A\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"_________________________________________________________________________\0A\00", align 1
@rootN = common global double 0.000000e+00, align 8
@c = common global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define double @wireratio(i32 %numofcells, double %cellspernet, double %netsperd, double %dnetspercell) #0 {
entry:
  %numofcells.addr = alloca i32, align 4
  %cellspernet.addr = alloca double, align 8
  %netsperd.addr = alloca double, align 8
  %dnetspercell.addr = alloca double, align 8
  %result1 = alloca double, align 8
  %result2 = alloca double, align 8
  %match = alloca double, align 8
  store i32 %numofcells, i32* %numofcells.addr, align 4
  store double %cellspernet, double* %cellspernet.addr, align 8
  store double %netsperd, double* %netsperd.addr, align 8
  store double %dnetspercell, double* %dnetspercell.addr, align 8
  %0 = load i32, i32* %numofcells.addr, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, double* @N, align 8
  %1 = load double, double* %cellspernet.addr, align 8
  %cmp = fcmp oge double %1, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load double, double* %cellspernet.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %2, %cond.true ], [ 1.000000e+00, %cond.false ]
  %3 = load i32, i32* %numofcells.addr, align 4
  %cmp2 = icmp sge i32 %3, 2
  br i1 %cmp2, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %4 = load i32, i32* %numofcells.addr, align 4
  %sub = sub nsw i32 %4, 1
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi i32 [ %sub, %cond.true.4 ], [ 1, %cond.false.5 ]
  %5 = load double, double* %dnetspercell.addr, align 8
  %cmp8 = fcmp oge double %5, 1.000000e+00
  br i1 %cmp8, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end.6
  %6 = load double, double* %dnetspercell.addr, align 8
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end.6
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi double [ %6, %cond.true.10 ], [ 1.000000e+00, %cond.false.11 ]
  %call = call double @probtree(double %cond, i32 %cond7, double %cond13)
  store double %call, double* @CC, align 8
  store double 1.000000e+02, double* @bb, align 8
  store double 1.000000e-02, double* @a, align 8
  call void @findratio(double* %result1, double* %result2)
  %7 = load double, double* %result2, align 8
  %8 = load double, double* %result1, align 8
  %sub14 = fsub double %7, %8
  store double %sub14, double* %match, align 8
  %9 = load double, double* %netsperd.addr, align 8
  %sub15 = fsub double %9, 2.500000e+00
  store double %sub15, double* @a, align 8
  %10 = load double, double* @a, align 8
  %cmp16 = fcmp ogt double %10, 0.000000e+00
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.12
  %11 = load double, double* @a, align 8
  %add = fadd double %11, 2.500000e+00
  %mul = fmul double %add, 1.250000e+00
  %add18 = fadd double 1.000000e-02, %mul
  store double %add18, double* @a, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.12
  store double 1.000000e-02, double* @a, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load double, double* %cellspernet.addr, align 8
  %sub19 = fsub double -0.000000e+00, %12
  %add20 = fadd double %sub19, 3.300000e+00
  %call21 = call double @pow(double 1.000000e+01, double %add20) #3
  store double %call21, double* @bb, align 8
  call void @findratio(double* %result1, double* %result2)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %15 = load double, double* %dnetspercell.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), double %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %17 = load double, double* %netsperd.addr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0), double %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %19 = load double, double* %cellspernet.addr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), double %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %21 = load double, double* @CC, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), double %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i32 0, i32 0))
  %23 = load double, double* %result2, align 8
  %24 = load double, double* %match, align 8
  %sub28 = fsub double %23, %24
  ret double %sub28
}

; Function Attrs: nounwind uwtable
define double @probtree(double %atatime, i32 %N, double %numdraws) #0 {
entry:
  %atatime.addr = alloca double, align 8
  %N.addr = alloca i32, align 4
  %numdraws.addr = alloca double, align 8
  %h = alloca i32, align 4
  %L = alloca i32, align 4
  %res1 = alloca double, align 8
  %res2 = alloca double, align 8
  %res3 = alloca double, align 8
  %res4 = alloca double, align 8
  %result1 = alloca double, align 8
  %result2 = alloca double, align 8
  %fract1 = alloca double, align 8
  %fract2 = alloca double, align 8
  store double %atatime, double* %atatime.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store double %numdraws, double* %numdraws.addr, align 8
  %0 = load double, double* %atatime.addr, align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, i32* %h, align 4
  %1 = load double, double* %numdraws.addr, align 8
  %conv1 = fptosi double %1 to i32
  store i32 %conv1, i32* %L, align 4
  %2 = load double, double* %atatime.addr, align 8
  %3 = load i32, i32* %h, align 4
  %conv2 = sitofp i32 %3 to double
  %sub = fsub double %2, %conv2
  store double %sub, double* %fract1, align 8
  %4 = load double, double* %numdraws.addr, align 8
  %5 = load i32, i32* %L, align 4
  %conv3 = sitofp i32 %5 to double
  %sub4 = fsub double %4, %conv3
  store double %sub4, double* %fract2, align 8
  %6 = load i32, i32* %h, align 4
  %7 = load i32, i32* %L, align 4
  %8 = load i32, i32* %N.addr, align 4
  %call = call double @getptree(i32 %6, i32 %7, i32 %8)
  store double %call, double* %res1, align 8
  %9 = load i32, i32* %h, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %h, align 4
  %10 = load i32, i32* %h, align 4
  %11 = load i32, i32* %L, align 4
  %12 = load i32, i32* %N.addr, align 4
  %call5 = call double @getptree(i32 %10, i32 %11, i32 %12)
  store double %call5, double* %res2, align 8
  %13 = load double, double* %res1, align 8
  %14 = load double, double* %fract1, align 8
  %15 = load double, double* %res2, align 8
  %16 = load double, double* %res1, align 8
  %sub6 = fsub double %15, %16
  %mul = fmul double %14, %sub6
  %add = fadd double %13, %mul
  store double %add, double* %result1, align 8
  %17 = load i32, i32* %h, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %h, align 4
  %18 = load i32, i32* %L, align 4
  %inc7 = add nsw i32 %18, 1
  store i32 %inc7, i32* %L, align 4
  %19 = load i32, i32* %h, align 4
  %20 = load i32, i32* %L, align 4
  %21 = load i32, i32* %N.addr, align 4
  %call8 = call double @getptree(i32 %19, i32 %20, i32 %21)
  store double %call8, double* %res3, align 8
  %22 = load i32, i32* %h, align 4
  %inc9 = add nsw i32 %22, 1
  store i32 %inc9, i32* %h, align 4
  %23 = load i32, i32* %h, align 4
  %24 = load i32, i32* %L, align 4
  %25 = load i32, i32* %N.addr, align 4
  %call10 = call double @getptree(i32 %23, i32 %24, i32 %25)
  store double %call10, double* %res4, align 8
  %26 = load double, double* %res3, align 8
  %27 = load double, double* %fract1, align 8
  %28 = load double, double* %res4, align 8
  %29 = load double, double* %res3, align 8
  %sub11 = fsub double %28, %29
  %mul12 = fmul double %27, %sub11
  %add13 = fadd double %26, %mul12
  store double %add13, double* %result2, align 8
  %30 = load double, double* %result1, align 8
  %31 = load double, double* %fract2, align 8
  %32 = load double, double* %result2, align 8
  %33 = load double, double* %result1, align 8
  %sub14 = fsub double %32, %33
  %mul15 = fmul double %31, %sub14
  %add16 = fadd double %30, %mul15
  ret double %add16
}

; Function Attrs: nounwind uwtable
define void @findratio(double* %res1, double* %res2) #0 {
entry:
  %res1.addr = alloca double*, align 8
  %res2.addr = alloca double*, align 8
  %m = alloca double, align 8
  %k = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %diff = alloca double, align 8
  %N1 = alloca double, align 8
  %N2 = alloca double, align 8
  %D1 = alloca double, align 8
  %D2 = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %now = alloca i32, align 4
  %last = alloca i32, align 4
  %savei = alloca i32, align 4
  %savej = alloca i32, align 4
  %lessThanM = alloca i32, align 4
  store double* %res1, double** %res1.addr, align 8
  store double* %res2, double** %res2.addr, align 8
  %0 = load double, double* @N, align 8
  %call = call double @sqrt(double %0) #3
  store double %call, double* @rootN, align 8
  %1 = load double, double* @rootN, align 8
  %sub = fsub double %1, 1.000000e+00
  store double %sub, double* %m, align 8
  store i32 1, i32* %lessThanM, align 4
  store double 1.000000e+06, double* %diff, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 1000000
  br i1 %cmp, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp eq i32 %3, 0
  %cond = select i1 %cmp1, i32 10, i32 0
  store i32 %cond, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %4, 100
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %i, align 4
  %conv = sitofp i32 %5 to double
  %6 = load i32, i32* %j, align 4
  %conv5 = sitofp i32 %6 to double
  %div = fdiv double %conv5, 1.000000e+02
  %add = fadd double %conv, %div
  store double %add, double* %k, align 8
  %7 = load double, double* %k, align 8
  %8 = load double, double* %m, align 8
  %cmp6 = fcmp ogt double %7, %8
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  store i32 0, i32* %lessThanM, align 4
  %9 = load i32, i32* %i, align 4
  store i32 %9, i32* %savei, align 4
  %10 = load i32, i32* %j, align 4
  store i32 %10, i32* %savej, align 4
  store i32 1000000, i32* %i, align 4
  br label %for.end

if.end:                                           ; preds = %for.body.4
  %11 = load double, double* %k, align 8
  %12 = load double, double* @N, align 8
  %mul = fmul double 6.000000e+00, %12
  %div8 = fdiv double %11, %mul
  %13 = load double, double* %k, align 8
  %14 = load double, double* %k, align 8
  %mul9 = fmul double %13, %14
  %15 = load double, double* %k, align 8
  %mul10 = fmul double %mul9, %15
  %16 = load double, double* @rootN, align 8
  %mul11 = fmul double 8.000000e+00, %16
  %sub12 = fsub double 2.000000e+00, %mul11
  %17 = load double, double* %k, align 8
  %18 = load double, double* %k, align 8
  %mul13 = fmul double %17, %18
  %mul14 = fmul double %sub12, %mul13
  %add15 = fadd double %mul10, %mul14
  %19 = load double, double* @N, align 8
  %mul16 = fmul double 1.200000e+01, %19
  %20 = load double, double* @rootN, align 8
  %mul17 = fmul double 1.200000e+01, %20
  %sub18 = fsub double %mul16, %mul17
  %sub19 = fsub double %sub18, 1.000000e+00
  %21 = load double, double* %k, align 8
  %mul20 = fmul double %sub19, %21
  %add21 = fadd double %add15, %mul20
  %22 = load double, double* @N, align 8
  %mul22 = fmul double 1.200000e+01, %22
  %23 = load double, double* @rootN, align 8
  %mul23 = fmul double 4.000000e+00, %23
  %sub24 = fsub double %mul22, %mul23
  %sub25 = fsub double %sub24, 2.000000e+00
  %add26 = fadd double %add21, %sub25
  %mul27 = fmul double %div8, %add26
  store double %mul27, double* %x, align 8
  %24 = load double, double* %x, align 8
  %25 = load double, double* @CC, align 8
  %cmp28 = fcmp ogt double %24, %25
  %cond30 = select i1 %cmp28, i32 1, i32 -1
  store i32 %cond30, i32* %now, align 4
  %26 = load i32, i32* %i, align 4
  %cmp31 = icmp eq i32 %26, 0
  br i1 %cmp31, label %land.lhs.true, label %if.then.35

land.lhs.true:                                    ; preds = %if.end
  %27 = load i32, i32* %j, align 4
  %cmp33 = icmp eq i32 %27, 10
  br i1 %cmp33, label %if.else.62, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true, %if.end
  %28 = load i32, i32* %now, align 4
  %29 = load i32, i32* %last, align 4
  %cmp36 = icmp ne i32 %28, %29
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.then.35
  %30 = load double, double* %diff, align 8
  %31 = load double, double* %x, align 8
  %32 = load double, double* @CC, align 8
  %sub39 = fsub double %31, %32
  %cmp40 = fcmp oge double %sub39, 0.000000e+00
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.38
  %33 = load double, double* %x, align 8
  %34 = load double, double* @CC, align 8
  %sub42 = fsub double %33, %34
  br label %cond.end

cond.false:                                       ; preds = %if.then.38
  %35 = load double, double* %x, align 8
  %36 = load double, double* @CC, align 8
  %sub43 = fsub double %35, %36
  %sub44 = fsub double -0.000000e+00, %sub43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond45 = phi double [ %sub42, %cond.true ], [ %sub44, %cond.false ]
  %cmp46 = fcmp ole double %30, %cond45
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %cond.end
  %37 = load double, double* %k, align 8
  %sub49 = fsub double %37, 1.000000e-02
  store double %sub49, double* %k, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %cond.end
  store i32 1000000, i32* %i, align 4
  br label %for.end

if.else:                                          ; preds = %if.then.35
  %38 = load i32, i32* %now, align 4
  store i32 %38, i32* %last, align 4
  %39 = load double, double* %x, align 8
  %40 = load double, double* @CC, align 8
  %sub51 = fsub double %39, %40
  %cmp52 = fcmp oge double %sub51, 0.000000e+00
  br i1 %cmp52, label %cond.true.54, label %cond.false.56

cond.true.54:                                     ; preds = %if.else
  %41 = load double, double* %x, align 8
  %42 = load double, double* @CC, align 8
  %sub55 = fsub double %41, %42
  br label %cond.end.59

cond.false.56:                                    ; preds = %if.else
  %43 = load double, double* %x, align 8
  %44 = load double, double* @CC, align 8
  %sub57 = fsub double %43, %44
  %sub58 = fsub double -0.000000e+00, %sub57
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.56, %cond.true.54
  %cond60 = phi double [ %sub55, %cond.true.54 ], [ %sub58, %cond.false.56 ]
  store double %cond60, double* %diff, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end.59
  br label %if.end.63

if.else.62:                                       ; preds = %land.lhs.true
  %45 = load i32, i32* %now, align 4
  store i32 %45, i32* %last, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.end.61
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %46 = load i32, i32* %j, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %if.end.50, %if.then, %for.cond.2
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.end
  %47 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %47, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond

for.end.66:                                       ; preds = %for.cond
  %48 = load i32, i32* %lessThanM, align 4
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.end.185, label %if.then.67

if.then.67:                                       ; preds = %for.end.66
  store double 1.000000e+06, double* %diff, align 8
  %49 = load i32, i32* %savei, align 4
  store i32 %49, i32* %i, align 4
  %50 = load i32, i32* %savej, align 4
  store i32 %50, i32* %j, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.182, %if.then.67
  %51 = load i32, i32* %i, align 4
  %cmp69 = icmp slt i32 %51, 1000000
  br i1 %cmp69, label %for.body.71, label %for.end.184

for.body.71:                                      ; preds = %for.cond.68
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %savei, align 4
  %cmp72 = icmp sgt i32 %52, %53
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %for.body.71
  store i32 0, i32* %j, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %for.body.71
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.179, %if.end.75
  %54 = load i32, i32* %j, align 4
  %cmp77 = icmp slt i32 %54, 100
  br i1 %cmp77, label %for.body.79, label %for.end.181

for.body.79:                                      ; preds = %for.cond.76
  %55 = load i32, i32* %i, align 4
  %conv80 = sitofp i32 %55 to double
  %56 = load i32, i32* %j, align 4
  %conv81 = sitofp i32 %56 to double
  %div82 = fdiv double %conv81, 1.000000e+02
  %add83 = fadd double %conv80, %div82
  store double %add83, double* %k, align 8
  %57 = load double, double* @N, align 8
  %mul84 = fmul double 6.000000e+00, %57
  %div85 = fdiv double 1.000000e+00, %mul84
  %58 = load double, double* %k, align 8
  %59 = load double, double* %k, align 8
  %mul86 = fmul double %58, %59
  %60 = load double, double* %k, align 8
  %mul87 = fmul double %mul86, %60
  %61 = load double, double* %k, align 8
  %mul88 = fmul double %mul87, %61
  %sub89 = fsub double -0.000000e+00, %mul88
  %62 = load double, double* @rootN, align 8
  %mul90 = fmul double 8.000000e+00, %62
  %sub91 = fsub double %mul90, 2.000000e+00
  %63 = load double, double* %k, align 8
  %64 = load double, double* %k, align 8
  %mul92 = fmul double %63, %64
  %65 = load double, double* %k, align 8
  %mul93 = fmul double %mul92, %65
  %mul94 = fmul double %sub91, %mul93
  %add95 = fadd double %sub89, %mul94
  %66 = load double, double* @rootN, align 8
  %mul96 = fmul double 1.200000e+01, %66
  %67 = load double, double* @N, align 8
  %mul97 = fmul double 2.400000e+01, %67
  %sub98 = fsub double %mul96, %mul97
  %add99 = fadd double %sub98, 1.000000e+00
  %68 = load double, double* %k, align 8
  %69 = load double, double* %k, align 8
  %mul100 = fmul double %68, %69
  %mul101 = fmul double %add99, %mul100
  %add102 = fadd double %add95, %mul101
  %70 = load double, double* @N, align 8
  %mul103 = fmul double 3.200000e+01, %70
  %71 = load double, double* @rootN, align 8
  %mul104 = fmul double %mul103, %71
  %72 = load double, double* @N, align 8
  %mul105 = fmul double 2.400000e+01, %72
  %sub106 = fsub double %mul104, %mul105
  %73 = load double, double* @rootN, align 8
  %mul107 = fmul double 4.000000e+00, %73
  %sub108 = fsub double %sub106, %mul107
  %add109 = fadd double %sub108, 2.000000e+00
  %74 = load double, double* %k, align 8
  %mul110 = fmul double %add109, %74
  %add111 = fadd double %add102, %mul110
  %75 = load double, double* %m, align 8
  %76 = load double, double* %m, align 8
  %mul112 = fmul double %75, %76
  %77 = load double, double* %m, align 8
  %mul113 = fmul double %mul112, %77
  %78 = load double, double* %m, align 8
  %mul114 = fmul double %mul113, %78
  %mul115 = fmul double 2.000000e+00, %mul114
  %add116 = fadd double %add111, %mul115
  %79 = load double, double* @rootN, align 8
  %mul117 = fmul double 1.600000e+01, %79
  %sub118 = fsub double %mul117, 4.000000e+00
  %80 = load double, double* %m, align 8
  %81 = load double, double* %m, align 8
  %mul119 = fmul double %80, %81
  %82 = load double, double* %m, align 8
  %mul120 = fmul double %mul119, %82
  %mul121 = fmul double %sub118, %mul120
  %sub122 = fsub double %add116, %mul121
  %83 = load double, double* @rootN, align 8
  %mul123 = fmul double 2.400000e+01, %83
  %84 = load double, double* @N, align 8
  %mul124 = fmul double 3.600000e+01, %84
  %sub125 = fsub double %mul123, %mul124
  %add126 = fadd double %sub125, 2.000000e+00
  %85 = load double, double* %m, align 8
  %86 = load double, double* %m, align 8
  %mul127 = fmul double %85, %86
  %mul128 = fmul double %add126, %mul127
  %sub129 = fsub double %sub122, %mul128
  %87 = load double, double* @N, align 8
  %mul130 = fmul double 3.200000e+01, %87
  %88 = load double, double* @rootN, align 8
  %mul131 = fmul double %mul130, %88
  %89 = load double, double* @N, align 8
  %mul132 = fmul double 3.600000e+01, %89
  %sub133 = fsub double %mul131, %mul132
  %add134 = fadd double %sub133, 4.000000e+00
  %90 = load double, double* %m, align 8
  %mul135 = fmul double %add134, %90
  %sub136 = fsub double %sub129, %mul135
  %mul137 = fmul double %div85, %sub136
  store double %mul137, double* %x, align 8
  %91 = load double, double* %x, align 8
  %92 = load double, double* @CC, align 8
  %cmp138 = fcmp ogt double %91, %92
  %cond140 = select i1 %cmp138, i32 1, i32 -1
  store i32 %cond140, i32* %now, align 4
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %savei, align 4
  %cmp141 = icmp eq i32 %93, %94
  br i1 %cmp141, label %land.lhs.true.143, label %if.then.146

land.lhs.true.143:                                ; preds = %for.body.79
  %95 = load i32, i32* %j, align 4
  %96 = load i32, i32* %savej, align 4
  %cmp144 = icmp eq i32 %95, %96
  br i1 %cmp144, label %if.else.177, label %if.then.146

if.then.146:                                      ; preds = %land.lhs.true.143, %for.body.79
  %97 = load i32, i32* %now, align 4
  %98 = load i32, i32* %last, align 4
  %cmp147 = icmp ne i32 %97, %98
  br i1 %cmp147, label %if.then.149, label %if.else.165

if.then.149:                                      ; preds = %if.then.146
  %99 = load double, double* %diff, align 8
  %100 = load double, double* %x, align 8
  %101 = load double, double* @CC, align 8
  %sub150 = fsub double %100, %101
  %cmp151 = fcmp oge double %sub150, 0.000000e+00
  br i1 %cmp151, label %cond.true.153, label %cond.false.155

cond.true.153:                                    ; preds = %if.then.149
  %102 = load double, double* %x, align 8
  %103 = load double, double* @CC, align 8
  %sub154 = fsub double %102, %103
  br label %cond.end.158

cond.false.155:                                   ; preds = %if.then.149
  %104 = load double, double* %x, align 8
  %105 = load double, double* @CC, align 8
  %sub156 = fsub double %104, %105
  %sub157 = fsub double -0.000000e+00, %sub156
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.155, %cond.true.153
  %cond159 = phi double [ %sub154, %cond.true.153 ], [ %sub157, %cond.false.155 ]
  %cmp160 = fcmp ole double %99, %cond159
  br i1 %cmp160, label %if.then.162, label %if.end.164

if.then.162:                                      ; preds = %cond.end.158
  %106 = load double, double* %k, align 8
  %sub163 = fsub double %106, 1.000000e-02
  store double %sub163, double* %k, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.162, %cond.end.158
  store i32 1000000, i32* %i, align 4
  br label %for.end.181

if.else.165:                                      ; preds = %if.then.146
  %107 = load i32, i32* %now, align 4
  store i32 %107, i32* %last, align 4
  %108 = load double, double* %x, align 8
  %109 = load double, double* @CC, align 8
  %sub166 = fsub double %108, %109
  %cmp167 = fcmp oge double %sub166, 0.000000e+00
  br i1 %cmp167, label %cond.true.169, label %cond.false.171

cond.true.169:                                    ; preds = %if.else.165
  %110 = load double, double* %x, align 8
  %111 = load double, double* @CC, align 8
  %sub170 = fsub double %110, %111
  br label %cond.end.174

cond.false.171:                                   ; preds = %if.else.165
  %112 = load double, double* %x, align 8
  %113 = load double, double* @CC, align 8
  %sub172 = fsub double %112, %113
  %sub173 = fsub double -0.000000e+00, %sub172
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.171, %cond.true.169
  %cond175 = phi double [ %sub170, %cond.true.169 ], [ %sub173, %cond.false.171 ]
  store double %cond175, double* %diff, align 8
  br label %if.end.176

if.end.176:                                       ; preds = %cond.end.174
  br label %if.end.178

if.else.177:                                      ; preds = %land.lhs.true.143
  %114 = load i32, i32* %now, align 4
  store i32 %114, i32* %last, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.177, %if.end.176
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %115 = load i32, i32* %j, align 4
  %inc180 = add nsw i32 %115, 1
  store i32 %inc180, i32* %j, align 4
  br label %for.cond.76

for.end.181:                                      ; preds = %if.end.164, %for.cond.76
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.end.181
  %116 = load i32, i32* %i, align 4
  %inc183 = add nsw i32 %116, 1
  store i32 %inc183, i32* %i, align 4
  br label %for.cond.68

for.end.184:                                      ; preds = %for.cond.68
  br label %if.end.185

if.end.185:                                       ; preds = %for.end.184, %for.end.66
  %117 = load double, double* %k, align 8
  %118 = load double, double* %m, align 8
  %cmp186 = fcmp ole double %117, %118
  br i1 %cmp186, label %if.then.188, label %if.else.219

if.then.188:                                      ; preds = %if.end.185
  %119 = load double, double* %k, align 8
  %120 = load double, double* %k, align 8
  %mul189 = fmul double %119, %120
  %121 = load double, double* %k, align 8
  %mul190 = fmul double %mul189, %121
  %122 = load double, double* %k, align 8
  %mul191 = fmul double %mul190, %122
  %mul192 = fmul double 2.000000e+00, %mul191
  %123 = load double, double* @rootN, align 8
  %mul193 = fmul double 1.500000e+01, %123
  %sub194 = fsub double 5.000000e+00, %mul193
  %124 = load double, double* %k, align 8
  %125 = load double, double* %k, align 8
  %mul195 = fmul double %124, %125
  %126 = load double, double* %k, align 8
  %mul196 = fmul double %mul195, %126
  %mul197 = fmul double %sub194, %mul196
  %add198 = fadd double %mul192, %mul197
  %127 = load double, double* @N, align 8
  %mul199 = fmul double 2.000000e+01, %127
  %128 = load double, double* @rootN, align 8
  %mul200 = fmul double 3.000000e+01, %128
  %sub201 = fsub double %mul199, %mul200
  %129 = load double, double* %k, align 8
  %130 = load double, double* %k, align 8
  %mul202 = fmul double %129, %130
  %mul203 = fmul double %sub201, %mul202
  %add204 = fadd double %add198, %mul203
  %131 = load double, double* @N, align 8
  %mul205 = fmul double 3.000000e+01, %131
  %132 = load double, double* @rootN, align 8
  %mul206 = fmul double 1.500000e+01, %132
  %sub207 = fsub double %mul205, %mul206
  %sub208 = fsub double %sub207, 5.000000e+00
  %133 = load double, double* %k, align 8
  %mul209 = fmul double %sub208, %133
  %add210 = fadd double %add204, %mul209
  %134 = load double, double* @N, align 8
  %mul211 = fmul double 1.000000e+01, %134
  %sub212 = fsub double %mul211, 2.000000e+00
  %add213 = fadd double %add210, %sub212
  %135 = load double, double* @CC, align 8
  %mul214 = fmul double 6.000000e+00, %135
  %136 = load double, double* @N, align 8
  %mul215 = fmul double %mul214, %136
  %137 = load double, double* %k, align 8
  %div216 = fdiv double %mul215, %137
  %div217 = fdiv double %add213, %div216
  %mul218 = fmul double 4.000000e-01, %div217
  store double %mul218, double* %x, align 8
  br label %if.end.301

if.else.219:                                      ; preds = %if.end.185
  %138 = load double, double* %k, align 8
  %139 = load double, double* %k, align 8
  %mul220 = fmul double %138, %139
  %140 = load double, double* %k, align 8
  %mul221 = fmul double %mul220, %140
  %141 = load double, double* %k, align 8
  %mul222 = fmul double %mul221, %141
  %142 = load double, double* %k, align 8
  %mul223 = fmul double %mul222, %142
  %mul224 = fmul double -2.000000e+00, %mul223
  %143 = load double, double* @rootN, align 8
  %mul225 = fmul double 1.500000e+01, %143
  %sub226 = fsub double %mul225, 5.000000e+00
  %144 = load double, double* %k, align 8
  %145 = load double, double* %k, align 8
  %mul227 = fmul double %144, %145
  %146 = load double, double* %k, align 8
  %mul228 = fmul double %mul227, %146
  %147 = load double, double* %k, align 8
  %mul229 = fmul double %mul228, %147
  %mul230 = fmul double %sub226, %mul229
  %add231 = fadd double %mul224, %mul230
  %148 = load double, double* @rootN, align 8
  %mul232 = fmul double 3.000000e+01, %148
  %149 = load double, double* @N, align 8
  %mul233 = fmul double 4.000000e+01, %149
  %sub234 = fsub double %mul232, %mul233
  %150 = load double, double* %k, align 8
  %151 = load double, double* %k, align 8
  %mul235 = fmul double %150, %151
  %152 = load double, double* %k, align 8
  %mul236 = fmul double %mul235, %152
  %mul237 = fmul double %sub234, %mul236
  %add238 = fadd double %add231, %mul237
  %153 = load double, double* @N, align 8
  %mul239 = fmul double 4.000000e+01, %153
  %154 = load double, double* @rootN, align 8
  %mul240 = fmul double %mul239, %154
  %155 = load double, double* @N, align 8
  %mul241 = fmul double 6.000000e+01, %155
  %sub242 = fsub double %mul240, %mul241
  %156 = load double, double* @rootN, align 8
  %mul243 = fmul double 5.000000e+00, %156
  %add244 = fadd double %sub242, %mul243
  %add245 = fadd double %add244, 5.000000e+00
  %157 = load double, double* %k, align 8
  %158 = load double, double* %k, align 8
  %mul246 = fmul double %157, %158
  %mul247 = fmul double %add245, %mul246
  %add248 = fadd double %add238, %mul247
  %159 = load double, double* @N, align 8
  %mul249 = fmul double 4.000000e+01, %159
  %160 = load double, double* @rootN, align 8
  %mul250 = fmul double %mul249, %160
  %161 = load double, double* @N, align 8
  %mul251 = fmul double 2.000000e+01, %161
  %sub252 = fsub double %mul250, %mul251
  %162 = load double, double* @rootN, align 8
  %mul253 = fmul double 1.000000e+01, %162
  %sub254 = fsub double %sub252, %mul253
  %add255 = fadd double %sub254, 2.000000e+00
  %163 = load double, double* %k, align 8
  %mul256 = fmul double %add255, %163
  %add257 = fadd double %add248, %mul256
  store double %add257, double* %x, align 8
  %164 = load double, double* %m, align 8
  %165 = load double, double* %m, align 8
  %mul258 = fmul double %164, %165
  %166 = load double, double* %m, align 8
  %mul259 = fmul double %mul258, %166
  %167 = load double, double* %m, align 8
  %mul260 = fmul double %mul259, %167
  %168 = load double, double* %m, align 8
  %mul261 = fmul double %mul260, %168
  %mul262 = fmul double 4.000000e+00, %mul261
  %169 = load double, double* @rootN, align 8
  %mul263 = fmul double 3.000000e+01, %169
  %sub264 = fsub double %mul263, 1.000000e+01
  %170 = load double, double* %m, align 8
  %171 = load double, double* %m, align 8
  %mul265 = fmul double %170, %171
  %172 = load double, double* %m, align 8
  %mul266 = fmul double %mul265, %172
  %173 = load double, double* %m, align 8
  %mul267 = fmul double %mul266, %173
  %mul268 = fmul double %sub264, %mul267
  %sub269 = fsub double %mul262, %mul268
  %174 = load double, double* @rootN, align 8
  %mul270 = fmul double 6.000000e+01, %174
  %175 = load double, double* @N, align 8
  %mul271 = fmul double 6.000000e+01, %175
  %sub272 = fsub double %mul270, %mul271
  %176 = load double, double* %m, align 8
  %177 = load double, double* %m, align 8
  %mul273 = fmul double %176, %177
  %178 = load double, double* %m, align 8
  %mul274 = fmul double %mul273, %178
  %mul275 = fmul double %sub272, %mul274
  %sub276 = fsub double %sub269, %mul275
  %179 = load double, double* @N, align 8
  %mul277 = fmul double 4.000000e+01, %179
  %180 = load double, double* @rootN, align 8
  %mul278 = fmul double %mul277, %180
  %181 = load double, double* @N, align 8
  %mul279 = fmul double 9.000000e+01, %181
  %sub280 = fsub double %mul278, %mul279
  %182 = load double, double* @rootN, align 8
  %mul281 = fmul double 2.000000e+01, %182
  %add282 = fadd double %sub280, %mul281
  %add283 = fadd double %add282, 1.000000e+01
  %183 = load double, double* %m, align 8
  %184 = load double, double* %m, align 8
  %mul284 = fmul double %183, %184
  %mul285 = fmul double %add283, %mul284
  %sub286 = fsub double %sub276, %mul285
  %185 = load double, double* @N, align 8
  %mul287 = fmul double 4.000000e+01, %185
  %186 = load double, double* @rootN, align 8
  %mul288 = fmul double %mul287, %186
  %187 = load double, double* @N, align 8
  %mul289 = fmul double 3.000000e+01, %187
  %sub290 = fsub double %mul288, %mul289
  %188 = load double, double* @rootN, align 8
  %mul291 = fmul double 1.000000e+01, %188
  %sub292 = fsub double %sub290, %mul291
  %add293 = fadd double %sub292, 4.000000e+00
  %189 = load double, double* %m, align 8
  %mul294 = fmul double %add293, %189
  %sub295 = fsub double %sub286, %mul294
  %190 = load double, double* %x, align 8
  %add296 = fadd double %190, %sub295
  store double %add296, double* %x, align 8
  %191 = load double, double* %x, align 8
  %mul297 = fmul double 4.000000e-01, %191
  %192 = load double, double* @CC, align 8
  %mul298 = fmul double 6.000000e+00, %192
  %193 = load double, double* @N, align 8
  %mul299 = fmul double %mul298, %193
  %div300 = fdiv double %mul297, %mul299
  store double %div300, double* %x, align 8
  br label %if.end.301

if.end.301:                                       ; preds = %if.else.219, %if.then.188
  %194 = load double, double* @N, align 8
  %call302 = call double @sqrt(double %194) #3
  %mul303 = fmul double 0x3FE5555555555555, %call302
  store double %mul303, double* %y, align 8
  %195 = load double, double* %y, align 8
  %196 = load double, double* %x, align 8
  %div304 = fdiv double %195, %196
  %197 = load double*, double** %res1.addr, align 8
  store double %div304, double* %197, align 8
  %198 = load double, double* @a, align 8
  %199 = load double, double* @bb, align 8
  %add305 = fadd double %198, %199
  store double %add305, double* @c, align 8
  %200 = load double, double* %k, align 8
  %201 = load double, double* %m, align 8
  %cmp306 = fcmp ogt double %200, %201
  br i1 %cmp306, label %if.then.308, label %if.else.343

if.then.308:                                      ; preds = %if.end.301
  %202 = load double, double* %m, align 8
  %call309 = call double @Nterm1(double %202)
  %call310 = call double @Nterm1(double 1.000000e+00)
  %sub311 = fsub double %call309, %call310
  %203 = load double, double* %m, align 8
  %call312 = call double @Nterm2(double %203)
  %add313 = fadd double %sub311, %call312
  %call314 = call double @Nterm2(double 1.000000e+00)
  %sub315 = fsub double %add313, %call314
  %204 = load double, double* %m, align 8
  %call316 = call double @Nterm3(double %204)
  %add317 = fadd double %sub315, %call316
  %call318 = call double @Nterm3(double 1.000000e+00)
  %sub319 = fsub double %add317, %call318
  %205 = load double, double* %m, align 8
  %call320 = call double @Nterm4(double %205)
  %add321 = fadd double %sub319, %call320
  %call322 = call double @Nterm4(double 1.000000e+00)
  %sub323 = fsub double %add321, %call322
  %206 = load double, double* %m, align 8
  %call324 = call double @Nterm5(double %206)
  %add325 = fadd double %sub323, %call324
  %call326 = call double @Nterm5(double 1.000000e+00)
  %sub327 = fsub double %add325, %call326
  store double %sub327, double* %N1, align 8
  %207 = load double, double* %m, align 8
  %call328 = call double @Dterm1(double %207)
  %call329 = call double @Dterm1(double 1.000000e+00)
  %sub330 = fsub double %call328, %call329
  %208 = load double, double* %m, align 8
  %call331 = call double @Dterm2(double %208)
  %add332 = fadd double %sub330, %call331
  %call333 = call double @Dterm2(double 1.000000e+00)
  %sub334 = fsub double %add332, %call333
  %209 = load double, double* %m, align 8
  %call335 = call double @Dterm3(double %209)
  %add336 = fadd double %sub334, %call335
  %call337 = call double @Dterm3(double 1.000000e+00)
  %sub338 = fsub double %add336, %call337
  %210 = load double, double* %m, align 8
  %call339 = call double @Dterm4(double %210)
  %add340 = fadd double %sub338, %call339
  %call341 = call double @Dterm4(double 1.000000e+00)
  %sub342 = fsub double %add340, %call341
  store double %sub342, double* %D1, align 8
  br label %if.end.378

if.else.343:                                      ; preds = %if.end.301
  %211 = load double, double* %k, align 8
  %call344 = call double @Nterm1(double %211)
  %call345 = call double @Nterm1(double 1.000000e+00)
  %sub346 = fsub double %call344, %call345
  %212 = load double, double* %k, align 8
  %call347 = call double @Nterm2(double %212)
  %add348 = fadd double %sub346, %call347
  %call349 = call double @Nterm2(double 1.000000e+00)
  %sub350 = fsub double %add348, %call349
  %213 = load double, double* %k, align 8
  %call351 = call double @Nterm3(double %213)
  %add352 = fadd double %sub350, %call351
  %call353 = call double @Nterm3(double 1.000000e+00)
  %sub354 = fsub double %add352, %call353
  %214 = load double, double* %k, align 8
  %call355 = call double @Nterm4(double %214)
  %add356 = fadd double %sub354, %call355
  %call357 = call double @Nterm4(double 1.000000e+00)
  %sub358 = fsub double %add356, %call357
  %215 = load double, double* %k, align 8
  %call359 = call double @Nterm5(double %215)
  %add360 = fadd double %sub358, %call359
  %call361 = call double @Nterm5(double 1.000000e+00)
  %sub362 = fsub double %add360, %call361
  store double %sub362, double* %N1, align 8
  %216 = load double, double* %k, align 8
  %call363 = call double @Dterm1(double %216)
  %call364 = call double @Dterm1(double 1.000000e+00)
  %sub365 = fsub double %call363, %call364
  %217 = load double, double* %k, align 8
  %call366 = call double @Dterm2(double %217)
  %add367 = fadd double %sub365, %call366
  %call368 = call double @Dterm2(double 1.000000e+00)
  %sub369 = fsub double %add367, %call368
  %218 = load double, double* %k, align 8
  %call370 = call double @Dterm3(double %218)
  %add371 = fadd double %sub369, %call370
  %call372 = call double @Dterm3(double 1.000000e+00)
  %sub373 = fsub double %add371, %call372
  %219 = load double, double* %k, align 8
  %call374 = call double @Dterm4(double %219)
  %add375 = fadd double %sub373, %call374
  %call376 = call double @Dterm4(double 1.000000e+00)
  %sub377 = fsub double %add375, %call376
  store double %sub377, double* %D1, align 8
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.343, %if.then.308
  %220 = load double, double* %k, align 8
  %221 = load double, double* %m, align 8
  %cmp379 = fcmp ogt double %220, %221
  br i1 %cmp379, label %if.then.381, label %if.else.419

if.then.381:                                      ; preds = %if.end.378
  %222 = load double, double* %k, align 8
  %call382 = call double @NNterm1(double %222)
  %223 = load double, double* %m, align 8
  %call383 = call double @NNterm1(double %223)
  %sub384 = fsub double %call382, %call383
  %224 = load double, double* %k, align 8
  %call385 = call double @NNterm2(double %224)
  %add386 = fadd double %sub384, %call385
  %225 = load double, double* %m, align 8
  %call387 = call double @NNterm2(double %225)
  %sub388 = fsub double %add386, %call387
  %226 = load double, double* %k, align 8
  %call389 = call double @NNterm3(double %226)
  %add390 = fadd double %sub388, %call389
  %227 = load double, double* %m, align 8
  %call391 = call double @NNterm3(double %227)
  %sub392 = fsub double %add390, %call391
  %228 = load double, double* %k, align 8
  %call393 = call double @NNterm4(double %228)
  %add394 = fadd double %sub392, %call393
  %229 = load double, double* %m, align 8
  %call395 = call double @NNterm4(double %229)
  %sub396 = fsub double %add394, %call395
  %230 = load double, double* %k, align 8
  %call397 = call double @NNterm5(double %230)
  %add398 = fadd double %sub396, %call397
  %231 = load double, double* %m, align 8
  %call399 = call double @NNterm5(double %231)
  %sub400 = fsub double %add398, %call399
  store double %sub400, double* %N2, align 8
  %232 = load double, double* %k, align 8
  %call401 = call double @DDterm1(double %232)
  %233 = load double, double* %m, align 8
  %call402 = call double @DDterm1(double %233)
  %sub403 = fsub double %call401, %call402
  %234 = load double, double* %k, align 8
  %call404 = call double @DDterm2(double %234)
  %add405 = fadd double %sub403, %call404
  %235 = load double, double* %m, align 8
  %call406 = call double @DDterm2(double %235)
  %sub407 = fsub double %add405, %call406
  %236 = load double, double* %k, align 8
  %call408 = call double @DDterm3(double %236)
  %add409 = fadd double %sub407, %call408
  %237 = load double, double* %m, align 8
  %call410 = call double @DDterm3(double %237)
  %sub411 = fsub double %add409, %call410
  %238 = load double, double* %k, align 8
  %call412 = call double @DDterm4(double %238)
  %add413 = fadd double %sub411, %call412
  %239 = load double, double* %m, align 8
  %call414 = call double @DDterm4(double %239)
  %sub415 = fsub double %add413, %call414
  store double %sub415, double* %D2, align 8
  %240 = load double, double* %N1, align 8
  %241 = load double, double* %N2, align 8
  %add416 = fadd double %240, %241
  %242 = load double, double* %D1, align 8
  %243 = load double, double* %D2, align 8
  %add417 = fadd double %242, %243
  %div418 = fdiv double %add416, %add417
  store double %div418, double* %x, align 8
  br label %if.end.421

if.else.419:                                      ; preds = %if.end.378
  %244 = load double, double* %N1, align 8
  %245 = load double, double* %D1, align 8
  %div420 = fdiv double %244, %245
  store double %div420, double* %x, align 8
  br label %if.end.421

if.end.421:                                       ; preds = %if.else.419, %if.then.381
  %246 = load double, double* %y, align 8
  %247 = load double, double* %x, align 8
  %div422 = fdiv double %246, %247
  %248 = load double*, double** %res2.addr, align 8
  store double %div422, double* %248, align 8
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define double @Nterm1(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %k.addr, align 8
  %mul8 = fmul double %4, %5
  %6 = load double, double* %k.addr, align 8
  %mul9 = fmul double %mul8, %6
  %7 = load double, double* %k.addr, align 8
  %mul10 = fmul double %mul9, %7
  %div = fdiv double %mul10, 6.000000e+00
  %8 = load double, double* %exa, align 8
  %9 = load double, double* @a, align 8
  %div11 = fdiv double %8, %9
  %10 = load double, double* %exc, align 8
  %11 = load double, double* @c, align 8
  %div12 = fdiv double %10, %11
  %sub13 = fsub double %div11, %div12
  %mul14 = fmul double %div, %sub13
  ret double %mul14
}

; Function Attrs: nounwind uwtable
define double @Nterm2(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %k.addr, align 8
  %mul8 = fmul double %4, %5
  %6 = load double, double* %k.addr, align 8
  %mul9 = fmul double %mul8, %6
  %7 = load double, double* %exa, align 8
  %8 = load double, double* @a, align 8
  %9 = load double, double* @a, align 8
  %mul10 = fmul double %8, %9
  %div = fdiv double %7, %mul10
  %10 = load double, double* %exc, align 8
  %11 = load double, double* @c, align 8
  %12 = load double, double* @c, align 8
  %mul11 = fmul double %11, %12
  %div12 = fdiv double %10, %mul11
  %sub13 = fsub double %div, %div12
  %mul14 = fmul double 0x3FE5555555555555, %sub13
  %13 = load double, double* @rootN, align 8
  %14 = load double, double* %exa, align 8
  %15 = load double, double* @a, align 8
  %div15 = fdiv double %14, %15
  %16 = load double, double* %exc, align 8
  %17 = load double, double* @c, align 8
  %div16 = fdiv double %16, %17
  %sub17 = fsub double %div15, %div16
  %mul18 = fmul double %13, %sub17
  %sub19 = fsub double %mul14, %mul18
  %mul20 = fmul double %mul9, %sub19
  ret double %mul20
}

; Function Attrs: nounwind uwtable
define double @Nterm3(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %k.addr, align 8
  %mul8 = fmul double %4, %5
  %6 = load double, double* %exa, align 8
  %7 = load double, double* @a, align 8
  %8 = load double, double* @a, align 8
  %mul9 = fmul double %7, %8
  %9 = load double, double* @a, align 8
  %mul10 = fmul double %mul9, %9
  %div = fdiv double %6, %mul10
  %10 = load double, double* %exc, align 8
  %11 = load double, double* @c, align 8
  %12 = load double, double* @c, align 8
  %mul11 = fmul double %11, %12
  %13 = load double, double* @c, align 8
  %mul12 = fmul double %mul11, %13
  %div13 = fdiv double %10, %mul12
  %sub14 = fsub double %div, %div13
  %mul15 = fmul double 2.000000e+00, %sub14
  %14 = load double, double* @rootN, align 8
  %mul16 = fmul double 3.000000e+00, %14
  %15 = load double, double* %exa, align 8
  %16 = load double, double* @a, align 8
  %17 = load double, double* @a, align 8
  %mul17 = fmul double %16, %17
  %div18 = fdiv double %15, %mul17
  %18 = load double, double* %exc, align 8
  %19 = load double, double* @c, align 8
  %20 = load double, double* @c, align 8
  %mul19 = fmul double %19, %20
  %div20 = fdiv double %18, %mul19
  %sub21 = fsub double %div18, %div20
  %mul22 = fmul double %mul16, %sub21
  %sub23 = fsub double %mul15, %mul22
  %21 = load double, double* @N, align 8
  %22 = load double, double* %exa, align 8
  %23 = load double, double* @a, align 8
  %div24 = fdiv double %22, %23
  %24 = load double, double* %exc, align 8
  %25 = load double, double* @c, align 8
  %div25 = fdiv double %24, %25
  %sub26 = fsub double %div24, %div25
  %mul27 = fmul double %21, %sub26
  %add = fadd double %sub23, %mul27
  %mul28 = fmul double %mul8, %add
  ret double %mul28
}

; Function Attrs: nounwind uwtable
define double @Nterm4(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %exa, align 8
  %6 = load double, double* @a, align 8
  %7 = load double, double* @a, align 8
  %mul8 = fmul double %6, %7
  %8 = load double, double* @a, align 8
  %mul9 = fmul double %mul8, %8
  %9 = load double, double* @a, align 8
  %mul10 = fmul double %mul9, %9
  %div = fdiv double %5, %mul10
  %10 = load double, double* %exc, align 8
  %11 = load double, double* @c, align 8
  %12 = load double, double* @c, align 8
  %mul11 = fmul double %11, %12
  %13 = load double, double* @c, align 8
  %mul12 = fmul double %mul11, %13
  %14 = load double, double* @c, align 8
  %mul13 = fmul double %mul12, %14
  %div14 = fdiv double %10, %mul13
  %sub15 = fsub double %div, %div14
  %mul16 = fmul double 4.000000e+00, %sub15
  %15 = load double, double* @rootN, align 8
  %mul17 = fmul double 6.000000e+00, %15
  %16 = load double, double* %exa, align 8
  %17 = load double, double* @a, align 8
  %18 = load double, double* @a, align 8
  %mul18 = fmul double %17, %18
  %19 = load double, double* @a, align 8
  %mul19 = fmul double %mul18, %19
  %div20 = fdiv double %16, %mul19
  %20 = load double, double* %exc, align 8
  %21 = load double, double* @c, align 8
  %22 = load double, double* @c, align 8
  %mul21 = fmul double %21, %22
  %23 = load double, double* @c, align 8
  %mul22 = fmul double %mul21, %23
  %div23 = fdiv double %20, %mul22
  %sub24 = fsub double %div20, %div23
  %mul25 = fmul double %mul17, %sub24
  %sub26 = fsub double %mul16, %mul25
  %24 = load double, double* @N, align 8
  %mul27 = fmul double 2.000000e+00, %24
  %25 = load double, double* %exa, align 8
  %26 = load double, double* @a, align 8
  %27 = load double, double* @a, align 8
  %mul28 = fmul double %26, %27
  %div29 = fdiv double %25, %mul28
  %28 = load double, double* %exc, align 8
  %29 = load double, double* @c, align 8
  %30 = load double, double* @c, align 8
  %mul30 = fmul double %29, %30
  %div31 = fdiv double %28, %mul30
  %sub32 = fsub double %div29, %div31
  %mul33 = fmul double %mul27, %sub32
  %add = fadd double %sub26, %mul33
  %mul34 = fmul double %4, %add
  ret double %mul34
}

; Function Attrs: nounwind uwtable
define double @Nterm5(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %exa, align 8
  %5 = load double, double* @a, align 8
  %6 = load double, double* @a, align 8
  %mul8 = fmul double %5, %6
  %7 = load double, double* @a, align 8
  %mul9 = fmul double %mul8, %7
  %8 = load double, double* @a, align 8
  %mul10 = fmul double %mul9, %8
  %9 = load double, double* @a, align 8
  %mul11 = fmul double %mul10, %9
  %div = fdiv double %4, %mul11
  %10 = load double, double* %exc, align 8
  %11 = load double, double* @c, align 8
  %12 = load double, double* @c, align 8
  %mul12 = fmul double %11, %12
  %13 = load double, double* @c, align 8
  %mul13 = fmul double %mul12, %13
  %14 = load double, double* @c, align 8
  %mul14 = fmul double %mul13, %14
  %15 = load double, double* @c, align 8
  %mul15 = fmul double %mul14, %15
  %div16 = fdiv double %10, %mul15
  %sub17 = fsub double %div, %div16
  %mul18 = fmul double 4.000000e+00, %sub17
  %16 = load double, double* @rootN, align 8
  %mul19 = fmul double 6.000000e+00, %16
  %17 = load double, double* %exa, align 8
  %18 = load double, double* @a, align 8
  %19 = load double, double* @a, align 8
  %mul20 = fmul double %18, %19
  %20 = load double, double* @a, align 8
  %mul21 = fmul double %mul20, %20
  %21 = load double, double* @a, align 8
  %mul22 = fmul double %mul21, %21
  %div23 = fdiv double %17, %mul22
  %22 = load double, double* %exc, align 8
  %23 = load double, double* @c, align 8
  %24 = load double, double* @c, align 8
  %mul24 = fmul double %23, %24
  %25 = load double, double* @c, align 8
  %mul25 = fmul double %mul24, %25
  %26 = load double, double* @c, align 8
  %mul26 = fmul double %mul25, %26
  %div27 = fdiv double %22, %mul26
  %sub28 = fsub double %div23, %div27
  %mul29 = fmul double %mul19, %sub28
  %sub30 = fsub double %mul18, %mul29
  %27 = load double, double* @N, align 8
  %mul31 = fmul double 2.000000e+00, %27
  %28 = load double, double* %exa, align 8
  %29 = load double, double* @a, align 8
  %30 = load double, double* @a, align 8
  %mul32 = fmul double %29, %30
  %31 = load double, double* @a, align 8
  %mul33 = fmul double %mul32, %31
  %div34 = fdiv double %28, %mul33
  %32 = load double, double* %exc, align 8
  %33 = load double, double* @c, align 8
  %34 = load double, double* @c, align 8
  %mul35 = fmul double %33, %34
  %35 = load double, double* @c, align 8
  %mul36 = fmul double %mul35, %35
  %div37 = fdiv double %32, %mul36
  %sub38 = fsub double %div34, %div37
  %mul39 = fmul double %mul31, %sub38
  %add = fadd double %sub30, %mul39
  ret double %add
}

; Function Attrs: nounwind uwtable
define double @Dterm1(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %k.addr, align 8
  %mul8 = fmul double %4, %5
  %6 = load double, double* %k.addr, align 8
  %mul9 = fmul double %mul8, %6
  %div = fdiv double %mul9, 6.000000e+00
  %7 = load double, double* %exa, align 8
  %8 = load double, double* @a, align 8
  %div10 = fdiv double %7, %8
  %9 = load double, double* %exc, align 8
  %10 = load double, double* @c, align 8
  %div11 = fdiv double %9, %10
  %sub12 = fsub double %div10, %div11
  %mul13 = fmul double %div, %sub12
  ret double %mul13
}

; Function Attrs: nounwind uwtable
define double @Dterm2(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %k.addr, align 8
  %mul8 = fmul double %4, %5
  %6 = load double, double* %exa, align 8
  %7 = load double, double* @a, align 8
  %8 = load double, double* @a, align 8
  %mul9 = fmul double %7, %8
  %div = fdiv double %6, %mul9
  %9 = load double, double* %exc, align 8
  %10 = load double, double* @c, align 8
  %11 = load double, double* @c, align 8
  %mul10 = fmul double %10, %11
  %div11 = fdiv double %9, %mul10
  %sub12 = fsub double %div, %div11
  %mul13 = fmul double 5.000000e-01, %sub12
  %12 = load double, double* @rootN, align 8
  %13 = load double, double* %exa, align 8
  %14 = load double, double* @a, align 8
  %div14 = fdiv double %13, %14
  %15 = load double, double* %exc, align 8
  %16 = load double, double* @c, align 8
  %div15 = fdiv double %15, %16
  %sub16 = fsub double %div14, %div15
  %mul17 = fmul double %12, %sub16
  %sub18 = fsub double %mul13, %mul17
  %mul19 = fmul double %mul8, %sub18
  ret double %mul19
}

; Function Attrs: nounwind uwtable
define double @Dterm3(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %exa, align 8
  %6 = load double, double* @a, align 8
  %7 = load double, double* @a, align 8
  %mul8 = fmul double %6, %7
  %8 = load double, double* @a, align 8
  %mul9 = fmul double %mul8, %8
  %div = fdiv double %5, %mul9
  %9 = load double, double* %exc, align 8
  %10 = load double, double* @c, align 8
  %11 = load double, double* @c, align 8
  %mul10 = fmul double %10, %11
  %12 = load double, double* @c, align 8
  %mul11 = fmul double %mul10, %12
  %div12 = fdiv double %9, %mul11
  %sub13 = fsub double %div, %div12
  %13 = load double, double* @rootN, align 8
  %mul14 = fmul double 2.000000e+00, %13
  %14 = load double, double* %exa, align 8
  %15 = load double, double* @a, align 8
  %16 = load double, double* @a, align 8
  %mul15 = fmul double %15, %16
  %div16 = fdiv double %14, %mul15
  %17 = load double, double* %exc, align 8
  %18 = load double, double* @c, align 8
  %19 = load double, double* @c, align 8
  %mul17 = fmul double %18, %19
  %div18 = fdiv double %17, %mul17
  %sub19 = fsub double %div16, %div18
  %mul20 = fmul double %mul14, %sub19
  %sub21 = fsub double %sub13, %mul20
  %20 = load double, double* @N, align 8
  %21 = load double, double* %exa, align 8
  %22 = load double, double* @a, align 8
  %div22 = fdiv double %21, %22
  %23 = load double, double* %exc, align 8
  %24 = load double, double* @c, align 8
  %div23 = fdiv double %23, %24
  %sub24 = fsub double %div22, %div23
  %mul25 = fmul double %20, %sub24
  %add = fadd double %sub21, %mul25
  %mul26 = fmul double %4, %add
  ret double %mul26
}

; Function Attrs: nounwind uwtable
define double @Dterm4(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %exa, align 8
  %5 = load double, double* @a, align 8
  %6 = load double, double* @a, align 8
  %mul8 = fmul double %5, %6
  %7 = load double, double* @a, align 8
  %mul9 = fmul double %mul8, %7
  %8 = load double, double* @a, align 8
  %mul10 = fmul double %mul9, %8
  %div = fdiv double %4, %mul10
  %9 = load double, double* %exc, align 8
  %10 = load double, double* @c, align 8
  %11 = load double, double* @c, align 8
  %mul11 = fmul double %10, %11
  %12 = load double, double* @c, align 8
  %mul12 = fmul double %mul11, %12
  %13 = load double, double* @c, align 8
  %mul13 = fmul double %mul12, %13
  %div14 = fdiv double %9, %mul13
  %sub15 = fsub double %div, %div14
  %14 = load double, double* @rootN, align 8
  %mul16 = fmul double 2.000000e+00, %14
  %15 = load double, double* %exa, align 8
  %16 = load double, double* @a, align 8
  %17 = load double, double* @a, align 8
  %mul17 = fmul double %16, %17
  %18 = load double, double* @a, align 8
  %mul18 = fmul double %mul17, %18
  %div19 = fdiv double %15, %mul18
  %19 = load double, double* %exc, align 8
  %20 = load double, double* @c, align 8
  %21 = load double, double* @c, align 8
  %mul20 = fmul double %20, %21
  %22 = load double, double* @c, align 8
  %mul21 = fmul double %mul20, %22
  %div22 = fdiv double %19, %mul21
  %sub23 = fsub double %div19, %div22
  %mul24 = fmul double %mul16, %sub23
  %sub25 = fsub double %sub15, %mul24
  %23 = load double, double* @N, align 8
  %24 = load double, double* %exa, align 8
  %25 = load double, double* @a, align 8
  %26 = load double, double* @a, align 8
  %mul26 = fmul double %25, %26
  %div27 = fdiv double %24, %mul26
  %27 = load double, double* %exc, align 8
  %28 = load double, double* @c, align 8
  %29 = load double, double* @c, align 8
  %mul28 = fmul double %28, %29
  %div29 = fdiv double %27, %mul28
  %sub30 = fsub double %div27, %div29
  %mul31 = fmul double %23, %sub30
  %add = fadd double %sub25, %mul31
  ret double %add
}

; Function Attrs: nounwind uwtable
define double @NNterm1(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %k.addr, align 8
  %mul8 = fmul double %4, %5
  %6 = load double, double* %k.addr, align 8
  %mul9 = fmul double %mul8, %6
  %7 = load double, double* %k.addr, align 8
  %mul10 = fmul double %mul9, %7
  %div = fdiv double %mul10, -6.000000e+00
  %8 = load double, double* %exa, align 8
  %9 = load double, double* @a, align 8
  %div11 = fdiv double %8, %9
  %10 = load double, double* %exc, align 8
  %11 = load double, double* @c, align 8
  %div12 = fdiv double %10, %11
  %sub13 = fsub double %div11, %div12
  %mul14 = fmul double %div, %sub13
  ret double %mul14
}

; Function Attrs: nounwind uwtable
define double @NNterm2(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %k.addr, align 8
  %mul8 = fmul double %4, %5
  %6 = load double, double* %k.addr, align 8
  %mul9 = fmul double %mul8, %6
  %7 = load double, double* %exa, align 8
  %8 = load double, double* @a, align 8
  %9 = load double, double* @a, align 8
  %mul10 = fmul double %8, %9
  %div = fdiv double %7, %mul10
  %10 = load double, double* %exc, align 8
  %11 = load double, double* @c, align 8
  %12 = load double, double* @c, align 8
  %mul11 = fmul double %11, %12
  %div12 = fdiv double %10, %mul11
  %sub13 = fsub double %div, %div12
  %mul14 = fmul double 0xBFE5555555555555, %sub13
  %13 = load double, double* @rootN, align 8
  %14 = load double, double* %exa, align 8
  %15 = load double, double* @a, align 8
  %div15 = fdiv double %14, %15
  %16 = load double, double* %exc, align 8
  %17 = load double, double* @c, align 8
  %div16 = fdiv double %16, %17
  %sub17 = fsub double %div15, %div16
  %mul18 = fmul double %13, %sub17
  %add = fadd double %mul14, %mul18
  %mul19 = fmul double %mul9, %add
  ret double %mul19
}

; Function Attrs: nounwind uwtable
define double @NNterm3(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %k.addr, align 8
  %mul8 = fmul double %4, %5
  %6 = load double, double* %exa, align 8
  %7 = load double, double* @a, align 8
  %8 = load double, double* @a, align 8
  %mul9 = fmul double %7, %8
  %9 = load double, double* @a, align 8
  %mul10 = fmul double %mul9, %9
  %div = fdiv double %6, %mul10
  %10 = load double, double* %exc, align 8
  %11 = load double, double* @c, align 8
  %12 = load double, double* @c, align 8
  %mul11 = fmul double %11, %12
  %13 = load double, double* @c, align 8
  %mul12 = fmul double %mul11, %13
  %div13 = fdiv double %10, %mul12
  %sub14 = fsub double %div, %div13
  %mul15 = fmul double -2.000000e+00, %sub14
  %14 = load double, double* @rootN, align 8
  %mul16 = fmul double 3.000000e+00, %14
  %15 = load double, double* %exa, align 8
  %16 = load double, double* @a, align 8
  %17 = load double, double* @a, align 8
  %mul17 = fmul double %16, %17
  %div18 = fdiv double %15, %mul17
  %18 = load double, double* %exc, align 8
  %19 = load double, double* @c, align 8
  %20 = load double, double* @c, align 8
  %mul19 = fmul double %19, %20
  %div20 = fdiv double %18, %mul19
  %sub21 = fsub double %div18, %div20
  %mul22 = fmul double %mul16, %sub21
  %add = fadd double %mul15, %mul22
  %21 = load double, double* @N, align 8
  %mul23 = fmul double 2.000000e+00, %21
  %22 = load double, double* %exa, align 8
  %23 = load double, double* @a, align 8
  %div24 = fdiv double %22, %23
  %24 = load double, double* %exc, align 8
  %25 = load double, double* @c, align 8
  %div25 = fdiv double %24, %25
  %sub26 = fsub double %div24, %div25
  %mul27 = fmul double %mul23, %sub26
  %sub28 = fsub double %add, %mul27
  %mul29 = fmul double %mul8, %sub28
  ret double %mul29
}

; Function Attrs: nounwind uwtable
define double @NNterm4(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %exa, align 8
  %6 = load double, double* @a, align 8
  %7 = load double, double* @a, align 8
  %mul8 = fmul double %6, %7
  %8 = load double, double* @a, align 8
  %mul9 = fmul double %mul8, %8
  %9 = load double, double* @a, align 8
  %mul10 = fmul double %mul9, %9
  %div = fdiv double %5, %mul10
  %10 = load double, double* %exc, align 8
  %11 = load double, double* @c, align 8
  %12 = load double, double* @c, align 8
  %mul11 = fmul double %11, %12
  %13 = load double, double* @c, align 8
  %mul12 = fmul double %mul11, %13
  %14 = load double, double* @c, align 8
  %mul13 = fmul double %mul12, %14
  %div14 = fdiv double %10, %mul13
  %sub15 = fsub double %div, %div14
  %mul16 = fmul double -4.000000e+00, %sub15
  %15 = load double, double* @rootN, align 8
  %mul17 = fmul double 6.000000e+00, %15
  %16 = load double, double* %exa, align 8
  %17 = load double, double* @a, align 8
  %18 = load double, double* @a, align 8
  %mul18 = fmul double %17, %18
  %19 = load double, double* @a, align 8
  %mul19 = fmul double %mul18, %19
  %div20 = fdiv double %16, %mul19
  %20 = load double, double* %exc, align 8
  %21 = load double, double* @c, align 8
  %22 = load double, double* @c, align 8
  %mul21 = fmul double %21, %22
  %23 = load double, double* @c, align 8
  %mul22 = fmul double %mul21, %23
  %div23 = fdiv double %20, %mul22
  %sub24 = fsub double %div20, %div23
  %mul25 = fmul double %mul17, %sub24
  %add = fadd double %mul16, %mul25
  %24 = load double, double* @N, align 8
  %mul26 = fmul double 4.000000e+00, %24
  %25 = load double, double* %exa, align 8
  %26 = load double, double* @a, align 8
  %27 = load double, double* @a, align 8
  %mul27 = fmul double %26, %27
  %div28 = fdiv double %25, %mul27
  %28 = load double, double* %exc, align 8
  %29 = load double, double* @c, align 8
  %30 = load double, double* @c, align 8
  %mul29 = fmul double %29, %30
  %div30 = fdiv double %28, %mul29
  %sub31 = fsub double %div28, %div30
  %mul32 = fmul double %mul26, %sub31
  %sub33 = fsub double %add, %mul32
  %31 = load double, double* @N, align 8
  %mul34 = fmul double 0x3FF5555555555555, %31
  %32 = load double, double* @rootN, align 8
  %mul35 = fmul double %mul34, %32
  %33 = load double, double* %exa, align 8
  %34 = load double, double* @a, align 8
  %div36 = fdiv double %33, %34
  %35 = load double, double* %exc, align 8
  %36 = load double, double* @c, align 8
  %div37 = fdiv double %35, %36
  %sub38 = fsub double %div36, %div37
  %mul39 = fmul double %mul35, %sub38
  %add40 = fadd double %sub33, %mul39
  %mul41 = fmul double %4, %add40
  ret double %mul41
}

; Function Attrs: nounwind uwtable
define double @NNterm5(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %exa, align 8
  %5 = load double, double* @a, align 8
  %6 = load double, double* @a, align 8
  %mul8 = fmul double %5, %6
  %7 = load double, double* @a, align 8
  %mul9 = fmul double %mul8, %7
  %8 = load double, double* @a, align 8
  %mul10 = fmul double %mul9, %8
  %9 = load double, double* @a, align 8
  %mul11 = fmul double %mul10, %9
  %div = fdiv double %4, %mul11
  %10 = load double, double* %exc, align 8
  %11 = load double, double* @c, align 8
  %12 = load double, double* @c, align 8
  %mul12 = fmul double %11, %12
  %13 = load double, double* @c, align 8
  %mul13 = fmul double %mul12, %13
  %14 = load double, double* @c, align 8
  %mul14 = fmul double %mul13, %14
  %15 = load double, double* @c, align 8
  %mul15 = fmul double %mul14, %15
  %div16 = fdiv double %10, %mul15
  %sub17 = fsub double %div, %div16
  %mul18 = fmul double -4.000000e+00, %sub17
  %16 = load double, double* @rootN, align 8
  %mul19 = fmul double 6.000000e+00, %16
  %17 = load double, double* %exa, align 8
  %18 = load double, double* @a, align 8
  %19 = load double, double* @a, align 8
  %mul20 = fmul double %18, %19
  %20 = load double, double* @a, align 8
  %mul21 = fmul double %mul20, %20
  %21 = load double, double* @a, align 8
  %mul22 = fmul double %mul21, %21
  %div23 = fdiv double %17, %mul22
  %22 = load double, double* %exc, align 8
  %23 = load double, double* @c, align 8
  %24 = load double, double* @c, align 8
  %mul24 = fmul double %23, %24
  %25 = load double, double* @c, align 8
  %mul25 = fmul double %mul24, %25
  %26 = load double, double* @c, align 8
  %mul26 = fmul double %mul25, %26
  %div27 = fdiv double %22, %mul26
  %sub28 = fsub double %div23, %div27
  %mul29 = fmul double %mul19, %sub28
  %add = fadd double %mul18, %mul29
  %27 = load double, double* @N, align 8
  %mul30 = fmul double 4.000000e+00, %27
  %28 = load double, double* %exa, align 8
  %29 = load double, double* @a, align 8
  %30 = load double, double* @a, align 8
  %mul31 = fmul double %29, %30
  %31 = load double, double* @a, align 8
  %mul32 = fmul double %mul31, %31
  %div33 = fdiv double %28, %mul32
  %32 = load double, double* %exc, align 8
  %33 = load double, double* @c, align 8
  %34 = load double, double* @c, align 8
  %mul34 = fmul double %33, %34
  %35 = load double, double* @c, align 8
  %mul35 = fmul double %mul34, %35
  %div36 = fdiv double %32, %mul35
  %sub37 = fsub double %div33, %div36
  %mul38 = fmul double %mul30, %sub37
  %sub39 = fsub double %add, %mul38
  %36 = load double, double* @N, align 8
  %mul40 = fmul double 0x3FF5555555555555, %36
  %37 = load double, double* @rootN, align 8
  %mul41 = fmul double %mul40, %37
  %38 = load double, double* %exa, align 8
  %39 = load double, double* @a, align 8
  %40 = load double, double* @a, align 8
  %mul42 = fmul double %39, %40
  %div43 = fdiv double %38, %mul42
  %41 = load double, double* %exc, align 8
  %42 = load double, double* @c, align 8
  %43 = load double, double* @c, align 8
  %mul44 = fmul double %42, %43
  %div45 = fdiv double %41, %mul44
  %sub46 = fsub double %div43, %div45
  %mul47 = fmul double %mul41, %sub46
  %add48 = fadd double %sub39, %mul47
  ret double %add48
}

; Function Attrs: nounwind uwtable
define double @DDterm1(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %k.addr, align 8
  %mul8 = fmul double %4, %5
  %6 = load double, double* %k.addr, align 8
  %mul9 = fmul double %mul8, %6
  %div = fdiv double %mul9, -6.000000e+00
  %7 = load double, double* %exa, align 8
  %8 = load double, double* @a, align 8
  %div10 = fdiv double %7, %8
  %9 = load double, double* %exc, align 8
  %10 = load double, double* @c, align 8
  %div11 = fdiv double %9, %10
  %sub12 = fsub double %div10, %div11
  %mul13 = fmul double %div, %sub12
  ret double %mul13
}

; Function Attrs: nounwind uwtable
define double @DDterm2(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %k.addr, align 8
  %mul8 = fmul double %4, %5
  %6 = load double, double* %exa, align 8
  %7 = load double, double* @a, align 8
  %8 = load double, double* @a, align 8
  %mul9 = fmul double %7, %8
  %div = fdiv double %6, %mul9
  %9 = load double, double* %exc, align 8
  %10 = load double, double* @c, align 8
  %11 = load double, double* @c, align 8
  %mul10 = fmul double %10, %11
  %div11 = fdiv double %9, %mul10
  %sub12 = fsub double %div, %div11
  %mul13 = fmul double -5.000000e-01, %sub12
  %12 = load double, double* @rootN, align 8
  %13 = load double, double* %exa, align 8
  %14 = load double, double* @a, align 8
  %div14 = fdiv double %13, %14
  %15 = load double, double* %exc, align 8
  %16 = load double, double* @c, align 8
  %div15 = fdiv double %15, %16
  %sub16 = fsub double %div14, %div15
  %mul17 = fmul double %12, %sub16
  %add = fadd double %mul13, %mul17
  %mul18 = fmul double %mul8, %add
  ret double %mul18
}

; Function Attrs: nounwind uwtable
define double @DDterm3(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %k.addr, align 8
  %5 = load double, double* %exa, align 8
  %6 = load double, double* @a, align 8
  %7 = load double, double* @a, align 8
  %mul8 = fmul double %6, %7
  %8 = load double, double* @a, align 8
  %mul9 = fmul double %mul8, %8
  %div = fdiv double %5, %mul9
  %9 = load double, double* %exc, align 8
  %10 = load double, double* @c, align 8
  %11 = load double, double* @c, align 8
  %mul10 = fmul double %10, %11
  %12 = load double, double* @c, align 8
  %mul11 = fmul double %mul10, %12
  %div12 = fdiv double %9, %mul11
  %sub13 = fsub double %div, %div12
  %sub14 = fsub double -0.000000e+00, %sub13
  %13 = load double, double* @rootN, align 8
  %mul15 = fmul double 2.000000e+00, %13
  %14 = load double, double* %exa, align 8
  %15 = load double, double* @a, align 8
  %16 = load double, double* @a, align 8
  %mul16 = fmul double %15, %16
  %div17 = fdiv double %14, %mul16
  %17 = load double, double* %exc, align 8
  %18 = load double, double* @c, align 8
  %19 = load double, double* @c, align 8
  %mul18 = fmul double %18, %19
  %div19 = fdiv double %17, %mul18
  %sub20 = fsub double %div17, %div19
  %mul21 = fmul double %mul15, %sub20
  %add = fadd double %sub14, %mul21
  %20 = load double, double* @N, align 8
  %mul22 = fmul double 2.000000e+00, %20
  %21 = load double, double* %exa, align 8
  %22 = load double, double* @a, align 8
  %div23 = fdiv double %21, %22
  %23 = load double, double* %exc, align 8
  %24 = load double, double* @c, align 8
  %div24 = fdiv double %23, %24
  %sub25 = fsub double %div23, %div24
  %mul26 = fmul double %mul22, %sub25
  %sub27 = fsub double %add, %mul26
  %mul28 = fmul double %4, %sub27
  ret double %mul28
}

; Function Attrs: nounwind uwtable
define double @DDterm4(double %k) #0 {
entry:
  %k.addr = alloca double, align 8
  %exa = alloca double, align 8
  %exc = alloca double, align 8
  store double %k, double* %k.addr, align 8
  %0 = load double, double* @a, align 8
  %1 = load double, double* %k.addr, align 8
  %sub = fsub double %1, 1.000000e+00
  %mul = fmul double %0, %sub
  %sub1 = fsub double -0.000000e+00, %mul
  %call = call double @exp(double %sub1) #3
  %sub2 = fsub double -0.000000e+00, %call
  store double %sub2, double* %exa, align 8
  %2 = load double, double* @c, align 8
  %3 = load double, double* %k.addr, align 8
  %sub3 = fsub double %3, 1.000000e+00
  %mul4 = fmul double %2, %sub3
  %sub5 = fsub double -0.000000e+00, %mul4
  %call6 = call double @exp(double %sub5) #3
  %sub7 = fsub double -0.000000e+00, %call6
  store double %sub7, double* %exc, align 8
  %4 = load double, double* %exa, align 8
  %5 = load double, double* @a, align 8
  %6 = load double, double* @a, align 8
  %mul8 = fmul double %5, %6
  %7 = load double, double* @a, align 8
  %mul9 = fmul double %mul8, %7
  %8 = load double, double* @a, align 8
  %mul10 = fmul double %mul9, %8
  %div = fdiv double %4, %mul10
  %9 = load double, double* %exc, align 8
  %10 = load double, double* @c, align 8
  %11 = load double, double* @c, align 8
  %mul11 = fmul double %10, %11
  %12 = load double, double* @c, align 8
  %mul12 = fmul double %mul11, %12
  %13 = load double, double* @c, align 8
  %mul13 = fmul double %mul12, %13
  %div14 = fdiv double %9, %mul13
  %sub15 = fsub double %div, %div14
  %sub16 = fsub double -0.000000e+00, %sub15
  %14 = load double, double* @rootN, align 8
  %mul17 = fmul double 2.000000e+00, %14
  %15 = load double, double* %exa, align 8
  %16 = load double, double* @a, align 8
  %17 = load double, double* @a, align 8
  %mul18 = fmul double %16, %17
  %18 = load double, double* @a, align 8
  %mul19 = fmul double %mul18, %18
  %div20 = fdiv double %15, %mul19
  %19 = load double, double* %exc, align 8
  %20 = load double, double* @c, align 8
  %21 = load double, double* @c, align 8
  %mul21 = fmul double %20, %21
  %22 = load double, double* @c, align 8
  %mul22 = fmul double %mul21, %22
  %div23 = fdiv double %19, %mul22
  %sub24 = fsub double %div20, %div23
  %mul25 = fmul double %mul17, %sub24
  %add = fadd double %sub16, %mul25
  %23 = load double, double* @N, align 8
  %mul26 = fmul double 2.000000e+00, %23
  %24 = load double, double* %exa, align 8
  %25 = load double, double* @a, align 8
  %26 = load double, double* @a, align 8
  %mul27 = fmul double %25, %26
  %div28 = fdiv double %24, %mul27
  %27 = load double, double* %exc, align 8
  %28 = load double, double* @c, align 8
  %29 = load double, double* @c, align 8
  %mul29 = fmul double %28, %29
  %div30 = fdiv double %27, %mul29
  %sub31 = fsub double %div28, %div30
  %mul32 = fmul double %mul26, %sub31
  %sub33 = fsub double %add, %mul32
  %30 = load double, double* @N, align 8
  %mul34 = fmul double 0x3FF5555555555555, %30
  %31 = load double, double* @rootN, align 8
  %mul35 = fmul double %mul34, %31
  %32 = load double, double* %exa, align 8
  %33 = load double, double* @a, align 8
  %div36 = fdiv double %32, %33
  %34 = load double, double* %exc, align 8
  %35 = load double, double* @c, align 8
  %div37 = fdiv double %34, %35
  %sub38 = fsub double %div36, %div37
  %mul39 = fmul double %mul35, %sub38
  %add40 = fadd double %sub33, %mul39
  ret double %add40
}

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind uwtable
define double @getptree(i32 %h, i32 %L, i32 %N) #0 {
entry:
  %retval = alloca double, align 8
  %h.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %array = alloca %struct.array3d*, align 8
  %bound = alloca i32, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %target = alloca i32, align 4
  %j = alloca i32, align 4
  %numerator = alloca double, align 8
  %denominator = alloca double, align 8
  store i32 %h, i32* %h.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 1, i32* %bound, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %L.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %h.addr, align 4
  %add = add nsw i32 %2, 1
  %3 = load i32, i32* %bound, align 4
  %mul = mul nsw i32 %3, %add
  store i32 %mul, i32* %bound, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %bound, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load i32, i32* %h.addr, align 4
  %div = sdiv i32 %sub, %6
  store i32 %div, i32* %bound, align 4
  store i32 1, i32* %start, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %L.addr, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %h.addr, align 4
  %add4 = add nsw i32 %9, 1
  %10 = load i32, i32* %start, align 4
  %mul5 = mul nsw i32 %10, %add4
  store i32 %mul5, i32* %start, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %11 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  %12 = load i32, i32* %start, align 4
  %sub9 = sub nsw i32 %12, 1
  %13 = load i32, i32* %h.addr, align 4
  %div10 = sdiv i32 %sub9, %13
  %add11 = add nsw i32 %div10, 1
  store i32 %add11, i32* %start, align 4
  %14 = load i32, i32* %bound, align 4
  %add12 = add nsw i32 1, %14
  %conv = sext i32 %add12 to i64
  %mul13 = mul i64 %conv, 16
  %call = call noalias i8* @malloc(i64 %mul13) #3
  %15 = bitcast i8* %call to %struct.array3d*
  store %struct.array3d* %15, %struct.array3d** %array, align 8
  %16 = load i32, i32* %h.addr, align 4
  %17 = load %struct.array3d*, %struct.array3d** %array, align 8
  %arrayidx = getelementptr inbounds %struct.array3d, %struct.array3d* %17, i64 1
  %value = getelementptr inbounds %struct.array3d, %struct.array3d* %arrayidx, i32 0, i32 0
  store i32 %16, i32* %value, align 4
  %18 = load %struct.array3d*, %struct.array3d** %array, align 8
  %arrayidx14 = getelementptr inbounds %struct.array3d, %struct.array3d* %18, i64 1
  %prob = getelementptr inbounds %struct.array3d, %struct.array3d* %arrayidx14, i32 0, i32 1
  store double 1.000000e+00, double* %prob, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.49, %for.end.8
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %start, align 4
  %sub16 = sub nsw i32 %20, 1
  %cmp17 = icmp sle i32 %19, %sub16
  br i1 %cmp17, label %for.body.19, label %for.end.51

for.body.19:                                      ; preds = %for.cond.15
  %21 = load i32, i32* %h.addr, align 4
  %add20 = add nsw i32 %21, 1
  %22 = load i32, i32* %i, align 4
  %mul21 = mul nsw i32 %add20, %22
  %23 = load i32, i32* %h.addr, align 4
  %sub22 = sub nsw i32 %23, 1
  %sub23 = sub nsw i32 %mul21, %sub22
  store i32 %sub23, i32* %target, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.45, %for.body.19
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %h.addr, align 4
  %cmp25 = icmp sle i32 %24, %25
  br i1 %cmp25, label %for.body.27, label %for.end.48

for.body.27:                                      ; preds = %for.cond.24
  %26 = load i32, i32* %i, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.array3d*, %struct.array3d** %array, align 8
  %arrayidx28 = getelementptr inbounds %struct.array3d, %struct.array3d* %27, i64 %idxprom
  %value29 = getelementptr inbounds %struct.array3d, %struct.array3d* %arrayidx28, i32 0, i32 0
  %28 = load i32, i32* %value29, align 4
  %29 = load i32, i32* %j, align 4
  %add30 = add nsw i32 %28, %29
  %30 = load i32, i32* %target, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load %struct.array3d*, %struct.array3d** %array, align 8
  %arrayidx32 = getelementptr inbounds %struct.array3d, %struct.array3d* %31, i64 %idxprom31
  %value33 = getelementptr inbounds %struct.array3d, %struct.array3d* %arrayidx32, i32 0, i32 0
  store i32 %add30, i32* %value33, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %32 to i64
  %33 = load %struct.array3d*, %struct.array3d** %array, align 8
  %arrayidx35 = getelementptr inbounds %struct.array3d, %struct.array3d* %33, i64 %idxprom34
  %prob36 = getelementptr inbounds %struct.array3d, %struct.array3d* %arrayidx35, i32 0, i32 1
  %34 = load double, double* %prob36, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %35 to i64
  %36 = load %struct.array3d*, %struct.array3d** %array, align 8
  %arrayidx38 = getelementptr inbounds %struct.array3d, %struct.array3d* %36, i64 %idxprom37
  %value39 = getelementptr inbounds %struct.array3d, %struct.array3d* %arrayidx38, i32 0, i32 0
  %37 = load i32, i32* %value39, align 4
  %38 = load i32, i32* %h.addr, align 4
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %N.addr, align 4
  %call40 = call double @probability(i32 %37, i32 %38, i32 %39, i32 %40)
  %mul41 = fmul double %34, %call40
  %41 = load i32, i32* %target, align 4
  %idxprom42 = sext i32 %41 to i64
  %42 = load %struct.array3d*, %struct.array3d** %array, align 8
  %arrayidx43 = getelementptr inbounds %struct.array3d, %struct.array3d* %42, i64 %idxprom42
  %prob44 = getelementptr inbounds %struct.array3d, %struct.array3d* %arrayidx43, i32 0, i32 1
  store double %mul41, double* %prob44, align 8
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.27
  %43 = load i32, i32* %j, align 4
  %inc46 = add nsw i32 %43, 1
  store i32 %inc46, i32* %j, align 4
  %44 = load i32, i32* %target, align 4
  %inc47 = add nsw i32 %44, 1
  store i32 %inc47, i32* %target, align 4
  br label %for.cond.24

for.end.48:                                       ; preds = %for.cond.24
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %45 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %45, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.15

for.end.51:                                       ; preds = %for.cond.15
  store double 0.000000e+00, double* %numerator, align 8
  store double 0.000000e+00, double* %denominator, align 8
  %46 = load i32, i32* %start, align 4
  store i32 %46, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.65, %for.end.51
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %bound, align 4
  %cmp53 = icmp sle i32 %47, %48
  br i1 %cmp53, label %for.body.55, label %for.end.67

for.body.55:                                      ; preds = %for.cond.52
  %49 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %49 to i64
  %50 = load %struct.array3d*, %struct.array3d** %array, align 8
  %arrayidx57 = getelementptr inbounds %struct.array3d, %struct.array3d* %50, i64 %idxprom56
  %value58 = getelementptr inbounds %struct.array3d, %struct.array3d* %arrayidx57, i32 0, i32 0
  %51 = load i32, i32* %value58, align 4
  %conv59 = sitofp i32 %51 to double
  %52 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %52 to i64
  %53 = load %struct.array3d*, %struct.array3d** %array, align 8
  %arrayidx61 = getelementptr inbounds %struct.array3d, %struct.array3d* %53, i64 %idxprom60
  %prob62 = getelementptr inbounds %struct.array3d, %struct.array3d* %arrayidx61, i32 0, i32 1
  %54 = load double, double* %prob62, align 8
  %mul63 = fmul double %conv59, %54
  %55 = load double, double* %numerator, align 8
  %add64 = fadd double %55, %mul63
  store double %add64, double* %numerator, align 8
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.55
  %56 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %56, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.52

for.end.67:                                       ; preds = %for.cond.52
  %57 = load i32, i32* %start, align 4
  store i32 %57, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.76, %for.end.67
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %bound, align 4
  %cmp69 = icmp sle i32 %58, %59
  br i1 %cmp69, label %for.body.71, label %for.end.78

for.body.71:                                      ; preds = %for.cond.68
  %60 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %60 to i64
  %61 = load %struct.array3d*, %struct.array3d** %array, align 8
  %arrayidx73 = getelementptr inbounds %struct.array3d, %struct.array3d* %61, i64 %idxprom72
  %prob74 = getelementptr inbounds %struct.array3d, %struct.array3d* %arrayidx73, i32 0, i32 1
  %62 = load double, double* %prob74, align 8
  %63 = load double, double* %denominator, align 8
  %add75 = fadd double %63, %62
  store double %add75, double* %denominator, align 8
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.71
  %64 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %64, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond.68

for.end.78:                                       ; preds = %for.cond.68
  %65 = load %struct.array3d*, %struct.array3d** %array, align 8
  %66 = bitcast %struct.array3d* %65 to i8*
  call void @free(i8* %66) #3
  %67 = load double, double* %numerator, align 8
  %cmp79 = fcmp olt double %67, 1.000000e-06
  br i1 %cmp79, label %if.then, label %if.else

if.then:                                          ; preds = %for.end.78
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %for.end.78
  %68 = load double, double* %numerator, align 8
  %69 = load double, double* %denominator, align 8
  %div81 = fdiv double %68, %69
  store double %div81, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %70 = load double, double* %retval
  ret double %70
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define double @probability(i32 %k, i32 %h, i32 %i, i32 %N) #0 {
entry:
  %retval = alloca double, align 8
  %k.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  store i32 %k, i32* %k.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %1 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32, i32* %N.addr, align 4
  %cmp = icmp sgt i32 %add, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %k.addr, align 4
  %4 = load i32, i32* %h.addr, align 4
  %5 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %4, %5
  %call = call double @combination(i32 %3, i32 %sub)
  %6 = load i32, i32* %N.addr, align 4
  %7 = load i32, i32* %k.addr, align 4
  %sub1 = sub nsw i32 %6, %7
  %8 = load i32, i32* %i.addr, align 4
  %call2 = call double @combination(i32 %sub1, i32 %8)
  %mul = fmul double %call, %call2
  store double %mul, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load double, double* %retval
  ret double %9
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define double @combination(i32 %n, i32 %k) #0 {
entry:
  %retval = alloca double, align 8
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %result = alloca double, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  store double 1.000000e+00, double* %result, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %k.addr, align 4
  %sub = sub nsw i32 %0, %1
  %2 = load i32, i32* %k.addr, align 4
  %cmp = icmp sgt i32 %sub, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %k.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %cmp2 = icmp sle i32 %3, %sub1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* %i, align 4
  %sub3 = sub nsw i32 %5, %6
  %conv = sitofp i32 %sub3 to double
  %7 = load double, double* %result, align 8
  %mul = fmul double %7, %conv
  store double %mul, double* %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load double, double* %result, align 8
  %10 = load i32, i32* %k.addr, align 4
  %call = call double @factorial(i32 %10)
  %div = fdiv double %9, %call
  store double %div, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %n.addr, align 4
  store i32 %11, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.10, %if.else
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %k.addr, align 4
  %add = add nsw i32 %13, 1
  %cmp5 = icmp sge i32 %12, %add
  br i1 %cmp5, label %for.body.7, label %for.end.11

for.body.7:                                       ; preds = %for.cond.4
  %14 = load i32, i32* %i, align 4
  %conv8 = sitofp i32 %14 to double
  %15 = load double, double* %result, align 8
  %mul9 = fmul double %15, %conv8
  store double %mul9, double* %result, align 8
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.7
  %16 = load i32, i32* %i, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.4

for.end.11:                                       ; preds = %for.cond.4
  %17 = load double, double* %result, align 8
  %18 = load i32, i32* %n.addr, align 4
  %19 = load i32, i32* %k.addr, align 4
  %sub12 = sub nsw i32 %18, %19
  %call13 = call double @factorial(i32 %sub12)
  %div14 = fdiv double %17, %call13
  store double %div14, double* %retval
  br label %return

return:                                           ; preds = %for.end.11, %for.end
  %20 = load double, double* %retval
  ret double %20
}

; Function Attrs: nounwind uwtable
define double @factorial(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %result = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double 1.000000e+00, double* %result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %1 to double
  %2 = load double, double* %result, align 8
  %mul = fmul double %2, %conv
  store double %mul, double* %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load double, double* %result, align 8
  ret double %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
