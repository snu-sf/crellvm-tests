; ModuleID = './MultiSource.Benchmarks.MallocBench/123.cfrac.cfrac.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@verbose = global i32 0, align 4
@debug = global i32 0, align 4
@pone = external global i16*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"f(%u,\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"d) = %9.7f\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"kN = \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"couldn't compute factor base in findk\0A\00", align 1
@primes = external global [0 x i16], align 2
@.str.4 = private unnamed_addr constant [10 x i8] c"%u: %5.2f\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" log(k)/2=%5.2f\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@progName = common global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"a:k:i:dv\00", align 1
@optarg = external global i8*, align 8
@.str.8 = private unnamed_addr constant [69 x i8] c"usage: %s [-dv] [-a aborts ] [-k maxk ] [-i maxCount ] n [[ m ] k ]\0A\00", align 1
@optind = external global i32, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"maxk = %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"k = %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Iterations     : %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Early Aborts   : %u\0A\00", align 1
@cfracNabort = external global i32, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"Total Partials : %u\0A\00", align 1
@cfracTsolns = external global i32, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Used  Partials : %u\0A\00", align 1
@cfracT2solns = external global i32, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"Full Solutions : %u\0A\00", align 1
@cfracPsolns = external global i32, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"Factor Attempts: %u\0A\00", align 1
@cfracFsolns = external global i32, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" * \00", align 1

; Function Attrs: nounwind uwtable
define float @pfKnuthEx28(i32 %p, i16* %d) #0 {
entry:
  %p.addr = alloca i32, align 4
  %d.addr = alloca i16*, align 8
  %res = alloca float, align 4
  %k = alloca i16*, align 8
  store i32 %p, i32* %p.addr, align 4
  store i16* %d, i16** %d.addr, align 8
  store i16* null, i16** %k, align 8
  %0 = load i16*, i16** %d.addr, align 8
  %cmp = icmp ne i16* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i16*, i16** %d.addr, align 8
  %2 = load i16, i16* %1, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* %1, align 2
  %conv = zext i16 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  %4 = load i16*, i16** %d.addr, align 8
  %5 = load i32, i32* %p.addr, align 4
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %if.then, label %if.else.28

if.then:                                          ; preds = %land.end
  %6 = load i16*, i16** %d.addr, align 8
  %call = call i32 @podd(i16* %6)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.else.13, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %7 = load i16*, i16** %d.addr, align 8
  %call5 = call i16* @phalf(i16* %7)
  %call6 = call i16* @psetq(i16** %k, i16* %call5)
  %8 = load i16*, i16** %k, align 8
  %call7 = call i32 @podd(i16* %8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.then.4
  %9 = load i16*, i16** %k, align 8
  %call10 = call float @pfKnuthEx28(i32 2, i16* %9)
  %conv11 = fpext float %call10 to double
  %div = fdiv double %conv11, 2.000000e+00
  %add = fadd double 0x3FE5555555555555, %div
  %conv12 = fptrunc double %add to float
  store float %conv12, float* %res, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.4
  store float 0x3FD5555560000000, float* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.27

if.else.13:                                       ; preds = %if.then
  %10 = load i16*, i16** %d.addr, align 8
  %call14 = call i16* @phalf(i16* %10)
  %call15 = call i16* @psetq(i16** %k, i16* %call14)
  %11 = load i16*, i16** %k, align 8
  %call16 = call i32 @podd(i16* %11)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.13
  store float 0x3FD5555560000000, float* %res, align 4
  br label %if.end.26

if.else.19:                                       ; preds = %if.else.13
  %12 = load i16*, i16** %k, align 8
  %call20 = call i16* @phalf(i16* %12)
  %call21 = call i32 @podd(i16* %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.19
  store float 0x3FE5555560000000, float* %res, align 4
  br label %if.end.25

if.else.24:                                       ; preds = %if.else.19
  store float 0x3FF5555560000000, float* %res, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end
  br label %if.end.48

if.else.28:                                       ; preds = %land.end
  %13 = load i32, i32* %p.addr, align 4
  %call29 = call i16* @utop(i32 %13)
  %call30 = call i16* @psetq(i16** %k, i16* %call29)
  %14 = load i16*, i16** %d.addr, align 8
  %15 = load i16*, i16** %k, align 8
  %16 = load i16*, i16** @pone, align 8
  %call31 = call i16* @psub(i16* %15, i16* %16)
  %call32 = call i16* @phalf(i16* %call31)
  %17 = load i16*, i16** %k, align 8
  %call33 = call i16* @ppowmod(i16* %14, i16* %call32, i16* %17)
  %18 = load i16*, i16** @pone, align 8
  %call34 = call i32 @pcmp(i16* %call33, i16* %18)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.else.46

if.then.37:                                       ; preds = %if.else.28
  %19 = load i32, i32* %p.addr, align 4
  %20 = load i32, i32* %p.addr, align 4
  %add38 = add i32 %19, %20
  %conv39 = uitofp i32 %add38 to float
  %conv40 = fpext float %conv39 to double
  %21 = load i32, i32* %p.addr, align 4
  %conv41 = uitofp i32 %21 to float
  %22 = load i32, i32* %p.addr, align 4
  %conv42 = uitofp i32 %22 to float
  %mul = fmul float %conv41, %conv42
  %conv43 = fpext float %mul to double
  %sub = fsub double %conv43, 1.000000e+00
  %div44 = fdiv double %conv40, %sub
  %conv45 = fptrunc double %div44 to float
  store float %conv45, float* %res, align 4
  br label %if.end.47

if.else.46:                                       ; preds = %if.else.28
  store float 0.000000e+00, float* %res, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.then.37
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.27
  %23 = load i16*, i16** %k, align 8
  %cmp49 = icmp ne i16* %23, null
  br i1 %cmp49, label %land.lhs.true, label %land.end.57

land.lhs.true:                                    ; preds = %if.end.48
  %24 = load i16*, i16** %k, align 8
  %25 = load i16, i16* %24, align 2
  %dec = add i16 %25, -1
  store i16 %dec, i16* %24, align 2
  %conv51 = zext i16 %dec to i32
  %cmp52 = icmp eq i32 %conv51, 0
  br i1 %cmp52, label %land.rhs.54, label %land.end.57

land.rhs.54:                                      ; preds = %land.lhs.true
  %26 = load i16*, i16** %k, align 8
  %call55 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %26)
  %tobool56 = icmp ne i32 %call55, 0
  br label %land.end.57

land.end.57:                                      ; preds = %land.rhs.54, %land.lhs.true, %if.end.48
  %27 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.48 ], [ %tobool56, %land.rhs.54 ]
  %land.ext58 = zext i1 %27 to i32
  %28 = load i16*, i16** %d.addr, align 8
  %cmp59 = icmp ne i16* %28, null
  br i1 %cmp59, label %land.lhs.true.61, label %land.end.69

land.lhs.true.61:                                 ; preds = %land.end.57
  %29 = load i16*, i16** %d.addr, align 8
  %30 = load i16, i16* %29, align 2
  %dec62 = add i16 %30, -1
  store i16 %dec62, i16* %29, align 2
  %conv63 = zext i16 %dec62 to i32
  %cmp64 = icmp eq i32 %conv63, 0
  br i1 %cmp64, label %land.rhs.66, label %land.end.69

land.rhs.66:                                      ; preds = %land.lhs.true.61
  %31 = load i16*, i16** %d.addr, align 8
  %call67 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %31)
  %tobool68 = icmp ne i32 %call67, 0
  br label %land.end.69

land.end.69:                                      ; preds = %land.rhs.66, %land.lhs.true.61, %land.end.57
  %32 = phi i1 [ false, %land.lhs.true.61 ], [ false, %land.end.57 ], [ %tobool68, %land.rhs.66 ]
  %land.ext70 = zext i1 %32 to i32
  %33 = load i32, i32* @debug, align 4
  %cmp71 = icmp sgt i32 %33, 1
  br i1 %cmp71, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %land.end.69
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = load i32, i32* %p.addr, align 4
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %37 = load float, float* %res, align 4
  %conv75 = fpext float %37 to double
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), double %conv75)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %land.end.69
  %38 = load float, float* %res, align 4
  ret float %38
}

declare i32 @podd(i16*) #1

declare i16* @psetq(i16**, i16*) #1

declare i16* @phalf(i16*) #1

declare i16* @utop(i32) #1

declare i32 @pcmp(i16*, i16*) #1

declare i16* @ppowmod(i16*, i16*, i16*) #1

declare i16* @psub(i16*, i16*) #1

declare i32 @pfree(...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define float @logf_(i32 %p, i16* %n, i32 %k) #0 {
entry:
  %p.addr = alloca i32, align 4
  %n.addr = alloca i16*, align 8
  %k.addr = alloca i32, align 4
  %res = alloca float, align 4
  store i32 %p, i32* %p.addr, align 4
  store i16* %n, i16** %n.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  %0 = load i16*, i16** %n.addr, align 8
  %cmp = icmp ne i16* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i16*, i16** %n.addr, align 8
  %2 = load i16, i16* %1, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* %1, align 2
  %conv = zext i16 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  %4 = load i16*, i16** %n.addr, align 8
  %5 = load i32, i32* %p.addr, align 4
  %6 = load i32, i32* %k.addr, align 4
  %call = call i16* @itop(i32 %6)
  %7 = load i16*, i16** %n.addr, align 8
  %call1 = call i16* @pmul(i16* %call, i16* %7)
  %call2 = call float @pfKnuthEx28(i32 %5, i16* %call1)
  %conv3 = fpext float %call2 to double
  %8 = load i32, i32* %p.addr, align 4
  %conv4 = uitofp i32 %8 to double
  %call5 = call double @log(double %conv4) #5
  %mul = fmul double %conv3, %call5
  %conv6 = fptrunc double %mul to float
  store float %conv6, float* %res, align 4
  %9 = load i16*, i16** %n.addr, align 8
  %cmp7 = icmp ne i16* %9, null
  br i1 %cmp7, label %land.lhs.true, label %land.end.15

land.lhs.true:                                    ; preds = %land.end
  %10 = load i16*, i16** %n.addr, align 8
  %11 = load i16, i16* %10, align 2
  %dec = add i16 %11, -1
  store i16 %dec, i16* %10, align 2
  %conv9 = zext i16 %dec to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %land.rhs.12, label %land.end.15

land.rhs.12:                                      ; preds = %land.lhs.true
  %12 = load i16*, i16** %n.addr, align 8
  %call13 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %12)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.12, %land.lhs.true, %land.end
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %land.end ], [ %tobool14, %land.rhs.12 ]
  %land.ext16 = zext i1 %13 to i32
  %14 = load float, float* %res, align 4
  ret float %14
}

declare i16* @pmul(i16*, i16*) #1

declare i16* @itop(i32) #1

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define i32 @findk(i16* %n, i32* %m, i32 %aborts, i32 %maxk) #0 {
entry:
  %n.addr = alloca i16*, align 8
  %m.addr = alloca i32*, align 8
  %aborts.addr = alloca i32, align 4
  %maxk.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %bestk = alloca i32, align 4
  %count = alloca i32, align 4
  %bestcount = alloca i32, align 4
  %maxpm = alloca i32, align 4
  %sum = alloca float, align 4
  %max = alloca float, align 4
  %p = alloca i32*, align 8
  %i = alloca i32, align 4
  %primePtr = alloca i16*, align 8
  store i16* %n, i16** %n.addr, align 8
  store i32* %m, i32** %m.addr, align 8
  store i32 %aborts, i32* %aborts.addr, align 4
  store i32 %maxk, i32* %maxk.addr, align 4
  store i32 0, i32* %bestk, align 4
  store i32 0, i32* %bestcount, align 4
  store float 0xC30C6BF520000000, float* %max, align 4
  %0 = load i16*, i16** %n.addr, align 8
  %cmp = icmp ne i16* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i16*, i16** %n.addr, align 8
  %2 = load i16, i16* %1, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* %1, align 2
  %conv = zext i16 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  %4 = load i16*, i16** %n.addr, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %maxk.addr, align 4
  %cmp1 = icmp ult i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* @debug, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = load i32, i32* %k, align 4
  %call4 = call i16* @utop(i32 %10)
  %11 = load i16*, i16** %n.addr, align 8
  %call5 = call i16* @pmul(i16* %call4, i16* %11)
  %call6 = call i32 @fputp(%struct._IO_FILE* %9, i16* %call5)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i32*, i32** %m.addr, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %count, align 4
  %15 = load i16*, i16** %n.addr, align 8
  %16 = load i32, i32* %k, align 4
  %17 = load i32, i32* %aborts.addr, align 4
  %call8 = call i32* @pfactorbase(i16* %15, i32 %16, i32* %count, i32 %17)
  store i32* %call8, i32** %p, align 8
  %18 = load i32*, i32** %p, align 8
  %cmp9 = icmp eq i32* %18, null
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.13:                                        ; preds = %if.end
  %20 = load i32, i32* %count, align 4
  %sub = sub i32 %20, 1
  %idxprom = zext i32 %sub to i64
  %21 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  store i32 %22, i32* %maxpm, align 4
  store float 0.000000e+00, float* %sum, align 4
  store i16* getelementptr inbounds ([0 x i16], [0 x i16]* @primes, i32 0, i32 0), i16** %primePtr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.13
  %23 = load i16*, i16** %primePtr, align 8
  %24 = load i16, i16* %23, align 2
  %conv14 = zext i16 %24 to i32
  %25 = load i32, i32* %maxpm, align 4
  %cmp15 = icmp ule i32 %conv14, %25
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i16*, i16** %primePtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %incdec.ptr, i16** %primePtr, align 8
  %27 = load i16, i16* %26, align 2
  %conv17 = zext i16 %27 to i32
  %28 = load i16*, i16** %n.addr, align 8
  %29 = load i32, i32* %k, align 4
  %call18 = call float @logf_(i32 %conv17, i16* %28, i32 %29)
  %30 = load float, float* %sum, align 4
  %add = fadd float %30, %call18
  store float %add, float* %sum, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load i32, i32* %k, align 4
  %conv19 = uitofp i32 %31 to double
  %call20 = call double @log(double %conv19) #5
  %mul = fmul double %call20, 5.000000e-01
  %32 = load float, float* %sum, align 4
  %conv21 = fpext float %32 to double
  %sub22 = fsub double %conv21, %mul
  %conv23 = fptrunc double %sub22 to float
  store float %conv23, float* %sum, align 4
  %33 = load i32, i32* @verbose, align 4
  %cmp24 = icmp sgt i32 %33, 2
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %while.end
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = load i32, i32* %k, align 4
  %36 = load float, float* %sum, align 4
  %conv27 = fpext float %36 to double
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 %35, double %conv27)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %while.end
  %37 = load i32, i32* @debug, align 4
  %tobool30 = icmp ne i32 %37, 0
  br i1 %tobool30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.end.29
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = load i32, i32* %k, align 4
  %conv32 = uitofp i32 %39 to double
  %call33 = call double @log(double %conv32) #5
  %mul34 = fmul double %call33, 5.000000e-01
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), double %mul34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %if.end.29
  %40 = load i32, i32* @verbose, align 4
  %cmp37 = icmp sgt i32 %40, 2
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.36
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call40 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call41 = call i32 @fflush(%struct._IO_FILE* %42)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.36
  %43 = load float, float* %sum, align 4
  %44 = load float, float* %max, align 4
  %cmp43 = fcmp ogt float %43, %44
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  %45 = load float, float* %sum, align 4
  store float %45, float* %max, align 4
  %46 = load i32, i32* %k, align 4
  store i32 %46, i32* %bestk, align 4
  %47 = load i32, i32* %count, align 4
  store i32 %47, i32* %bestcount, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %48 = load i32*, i32** %p, align 8
  %49 = bitcast i32* %48 to i8*
  call void @free(i8* %49) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %50 = load i32, i32* %k, align 4
  %inc47 = add i32 %50, 1
  store i32 %inc47, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %bestcount, align 4
  %52 = load i32*, i32** %m.addr, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i16*, i16** %n.addr, align 8
  %cmp48 = icmp ne i16* %53, null
  br i1 %cmp48, label %land.lhs.true, label %land.end.56

land.lhs.true:                                    ; preds = %for.end
  %54 = load i16*, i16** %n.addr, align 8
  %55 = load i16, i16* %54, align 2
  %dec = add i16 %55, -1
  store i16 %dec, i16* %54, align 2
  %conv50 = zext i16 %dec to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %land.rhs.53, label %land.end.56

land.rhs.53:                                      ; preds = %land.lhs.true
  %56 = load i16*, i16** %n.addr, align 8
  %call54 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %56)
  %tobool55 = icmp ne i32 %call54, 0
  br label %land.end.56

land.end.56:                                      ; preds = %land.rhs.53, %land.lhs.true, %for.end
  %57 = phi i1 [ false, %land.lhs.true ], [ false, %for.end ], [ %tobool55, %land.rhs.53 ]
  %land.ext57 = zext i1 %57 to i32
  %58 = load i32, i32* %bestk, align 4
  ret i32 %58
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fputp(%struct._IO_FILE*, i16*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32* @pfactorbase(i16*, i32, i32*, i32) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %maxCount = alloca i32, align 4
  %count = alloca i32, align 4
  %maxk = alloca i32, align 4
  %ch = alloca i32, align 4
  %n = alloca i16*, align 8
  %f = alloca i16*, align 8
  %aborts = alloca i32, align 4
  %p = alloca i32*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %m, align 4
  store i32 0, i32* %k, align 4
  store i32 1073741824, i32* %maxCount, align 4
  store i32 0, i32* %maxk, align 4
  store i16* null, i16** %n, align 8
  store i16* null, i16** %f, align 8
  store i32 3, i32* %aborts, align 4
  %0 = load i8**, i8*** %argv.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** @progName, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i32, i32* %argc.addr, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 (i32, i8**, i8*, ...) bitcast (i32 (...)* @getopt to i32 (i32, i8**, i8*, ...)*)(i32 %2, i8** %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  store i32 %call, i32* %ch, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %ch, align 4
  switch i32 %4, label %sw.default [
    i32 97, label %sw.bb
    i32 107, label %sw.bb.2
    i32 105, label %sw.bb.4
    i32 100, label %sw.bb.6
    i32 118, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %while.body
  %5 = load i8*, i8** @optarg, align 8
  %call1 = call i32 @atoi(i8* %5) #7
  store i32 %call1, i32* %aborts, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  %6 = load i8*, i8** @optarg, align 8
  %call3 = call i32 @atoi(i8* %6) #7
  store i32 %call3, i32* %maxk, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  %7 = load i8*, i8** @optarg, align 8
  %call5 = call i32 @atoi(i8* %7) #7
  store i32 %call5, i32* %maxCount, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  %8 = load i32, i32* @debug, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @debug, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  %9 = load i32, i32* @verbose, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* @verbose, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %usage

usage:                                            ; preds = %if.then, %sw.default
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** @progName, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i32 0, i32 0), i8* %11)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.7, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* @optind, align 4
  %13 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %13, %12
  store i32 %sub, i32* %argc.addr, align 4
  %14 = load i32, i32* @optind, align 4
  %15 = load i8**, i8*** %argv.addr, align 8
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %15, i64 %idx.ext
  store i8** %add.ptr, i8*** %argv.addr, align 8
  %16 = load i32, i32* %argc.addr, align 4
  %cmp10 = icmp slt i32 %16, 1
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %17 = load i32, i32* %argc.addr, align 4
  %cmp11 = icmp sgt i32 %17, 3
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  br label %usage

if.end:                                           ; preds = %lor.lhs.false
  %18 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %call12 = call i16* @atop(i8* %19)
  %call13 = call i16* @psetq(i16** %n, i16* %call12)
  %20 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %argc.addr, align 4
  %21 = load i32, i32* %argc.addr, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end
  %22 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %incdec.ptr15, i8*** %argv.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %call16 = call i32 @atoi(i8* %23) #7
  store i32 %call16, i32* %m, align 4
  %24 = load i32, i32* %argc.addr, align 4
  %dec17 = add nsw i32 %24, -1
  store i32 %dec17, i32* %argc.addr, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %if.end
  %25 = load i32, i32* %argc.addr, align 4
  %tobool19 = icmp ne i32 %25, 0
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.18
  %26 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr21, i8*** %argv.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %call22 = call i32 @atoi(i8* %27) #7
  store i32 %call22, i32* %k, align 4
  %28 = load i32, i32* %argc.addr, align 4
  %dec23 = add nsw i32 %28, -1
  store i32 %dec23, i32* %argc.addr, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.18
  %29 = load i32, i32* %k, align 4
  %cmp25 = icmp eq i32 %29, 0
  br i1 %cmp25, label %if.then.26, label %if.end.39

if.then.26:                                       ; preds = %if.end.24
  %30 = load i32, i32* %maxk, align 4
  %cmp27 = icmp eq i32 %30, 0
  br i1 %cmp27, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %if.then.26
  %31 = load i32, i32* %m, align 4
  %div = udiv i32 %31, 2
  %add = add i32 %div, 5
  store i32 %add, i32* %maxk, align 4
  %32 = load i32, i32* @verbose, align 4
  %tobool29 = icmp ne i32 %32, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.28
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = load i32, i32* %maxk, align 4
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 %34)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.26
  %35 = load i16*, i16** %n, align 8
  %36 = load i32, i32* %aborts, align 4
  %37 = load i32, i32* %maxk, align 4
  %call34 = call i32 @findk(i16* %35, i32* %m, i32 %36, i32 %37)
  store i32 %call34, i32* %k, align 4
  %38 = load i32, i32* @verbose, align 4
  %tobool35 = icmp ne i32 %38, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.33
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = load i32, i32* %k, align 4
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 %40)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.33
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.24
  %41 = load i32, i32* %maxCount, align 4
  store i32 %41, i32* %count, align 4
  %42 = load i32, i32* %m, align 4
  %43 = load i32, i32* %k, align 4
  %44 = load i32, i32* %aborts, align 4
  %call40 = call i32 @pcfracInit(i32 %42, i32 %43, i32 %44)
  %45 = load i16*, i16** %n, align 8
  %call41 = call i16* @pcfrac(i16* %45, i32* %count)
  %call42 = call i16* @psetq(i16** %f, i16* %call41)
  %46 = load i32, i32* %maxCount, align 4
  %47 = load i32, i32* %count, align 4
  %sub43 = sub i32 %46, %47
  store i32 %sub43, i32* %count, align 4
  %48 = load i32, i32* @verbose, align 4
  %tobool44 = icmp ne i32 %48, 0
  br i1 %tobool44, label %if.then.45, label %if.end.53

if.then.45:                                       ; preds = %if.end.39
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call46 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %51 = load i32, i32* %count, align 4
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = load i32, i32* @cfracNabort, align 4
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i32 %53)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %55 = load i32, i32* @cfracTsolns, align 4
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 %55)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %57 = load i32, i32* @cfracT2solns, align 4
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i32 %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = load i32, i32* @cfracPsolns, align 4
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32 %59)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %61 = load i32, i32* @cfracFsolns, align 4
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i32 %61)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.45, %if.end.39
  %62 = load i16*, i16** %f, align 8
  %cmp54 = icmp ne i16* %62, null
  br i1 %cmp54, label %if.then.55, label %if.end.63

if.then.55:                                       ; preds = %if.end.53
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %64 = load i16*, i16** %n, align 8
  %call56 = call i32 @fputp(%struct._IO_FILE* %63, i16* %64)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call57 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %67 = load i16*, i16** %f, align 8
  %call58 = call i32 @fputp(%struct._IO_FILE* %66, i16* %67)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call59 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %68)
  %69 = load i16*, i16** %n, align 8
  %70 = load i16*, i16** %f, align 8
  %call60 = call i16* @pdivmod(i16* %69, i16* %70, i16** %n, i16** null)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %72 = load i16*, i16** %n, align 8
  %call61 = call i32 @fputp(%struct._IO_FILE* %71, i16* %72)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call62 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %73)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.55, %if.end.53
  %74 = load i16*, i16** %f, align 8
  %cmp64 = icmp ne i16* %74, null
  br i1 %cmp64, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end.63
  %75 = load i16*, i16** %f, align 8
  %76 = load i16, i16* %75, align 2
  %dec65 = add i16 %76, -1
  store i16 %dec65, i16* %75, align 2
  %conv = zext i16 %dec65 to i32
  %cmp66 = icmp eq i32 %conv, 0
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %77 = load i16*, i16** %f, align 8
  %call68 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %77)
  %tobool69 = icmp ne i32 %call68, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end.63
  %78 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.63 ], [ %tobool69, %land.rhs ]
  %land.ext = zext i1 %78 to i32
  %79 = load i16*, i16** %n, align 8
  %cmp70 = icmp ne i16* %79, null
  br i1 %cmp70, label %land.lhs.true.72, label %land.end.80

land.lhs.true.72:                                 ; preds = %land.end
  %80 = load i16*, i16** %n, align 8
  %81 = load i16, i16* %80, align 2
  %dec73 = add i16 %81, -1
  store i16 %dec73, i16* %80, align 2
  %conv74 = zext i16 %dec73 to i32
  %cmp75 = icmp eq i32 %conv74, 0
  br i1 %cmp75, label %land.rhs.77, label %land.end.80

land.rhs.77:                                      ; preds = %land.lhs.true.72
  %82 = load i16*, i16** %n, align 8
  %call78 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %82)
  %tobool79 = icmp ne i32 %call78, 0
  br label %land.end.80

land.end.80:                                      ; preds = %land.rhs.77, %land.lhs.true.72, %land.end
  %83 = phi i1 [ false, %land.lhs.true.72 ], [ false, %land.end ], [ %tobool79, %land.rhs.77 ]
  %land.ext81 = zext i1 %83 to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %land.end.80, %usage
  %84 = load i32, i32* %retval
  ret i32 %84
}

declare i32 @getopt(...) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare i16* @atop(i8*) #1

declare i32 @pcfracInit(i32, i32, i32) #1

declare i16* @pcfrac(i16*, i32*) #1

declare i16* @pdivmod(i16*, i16*, i16**, i16**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
