; ModuleID = './MultiSource.Benchmarks.MallocBench/120.cfrac.pcfrac.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SolnStruc = type { %struct.SolnStruc*, i16*, i16*, i16*, i8* }
%struct.EasEntry = type { i32*, i16* }

@cfracNabort = global i32 0, align 4
@cfracTsolns = global i32 0, align 4
@cfracPsolns = global i32 0, align 4
@cfracT2solns = global i32 0, align 4
@cfracFsolns = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" %u^%u\00", align 1
@pone = external global i16*, align 8
@primes = external global [0 x i16], align 2
@primesize = external global i32, align 4
@verbose = external global i32, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c" Abort %u on p = %u (>=%u) and q > \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@pcfrac_k = internal global i32 1, align 4
@pcfrac_m = internal global i32 0, align 4
@pcfrac_aborts = internal global i32 3, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"pcfrac\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"factorBase[%u]: \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@pzero = external global i16*, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"cycle encountered; pick bigger k\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"Partial: \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" -->\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"PartSum: \00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Full:    \00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c" -->\0AFullSum: \00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c" -->\0ASquare:  \00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"x,y:     \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Error!  Degenerate solution:\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"x,y:   \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: nounwind uwtable
define void @setBit(i8* %bv, i32 %bno, i32 %value) #0 {
entry:
  %bv.addr = alloca i8*, align 8
  %bno.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i8* %bv, i8** %bv.addr, align 8
  store i32 %bno, i32* %bno.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %bno.addr, align 4
  %conv = zext i32 %0 to i64
  %div = udiv i64 %conv, 8
  %1 = load i8*, i8** %bv.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %div
  store i8* %add.ptr, i8** %bv.addr, align 8
  %2 = load i32, i32* %bno.addr, align 4
  %conv1 = zext i32 %2 to i64
  %rem = urem i64 %conv1, 8
  %conv2 = trunc i64 %rem to i32
  store i32 %conv2, i32* %bno.addr, align 4
  %3 = load i32, i32* %value.addr, align 4
  %cmp = icmp ne i32 %3, 0
  %conv3 = zext i1 %cmp to i32
  %4 = load i32, i32* %bno.addr, align 4
  %shl = shl i32 %conv3, %4
  %5 = load i8*, i8** %bv.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = zext i8 %6 to i32
  %or = or i32 %conv4, %shl
  %conv5 = trunc i32 %or to i8
  store i8 %conv5, i8* %5, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getBit(i8* %bv, i32 %bno) #0 {
entry:
  %bv.addr = alloca i8*, align 8
  %bno.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i8* %bv, i8** %bv.addr, align 8
  store i32 %bno, i32* %bno.addr, align 4
  %0 = load i32, i32* %bno.addr, align 4
  %conv = zext i32 %0 to i64
  %div = udiv i64 %conv, 8
  %1 = load i8*, i8** %bv.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %div
  store i8* %add.ptr, i8** %bv.addr, align 8
  %2 = load i32, i32* %bno.addr, align 4
  %conv1 = zext i32 %2 to i64
  %rem = urem i64 %conv1, 8
  %conv2 = trunc i64 %rem to i32
  store i32 %conv2, i32* %bno.addr, align 4
  %3 = load i8*, i8** %bv.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv3 = zext i8 %4 to i32
  %5 = load i32, i32* %bno.addr, align 4
  %shr = ashr i32 %conv3, %5
  %and = and i32 %shr, 1
  store i32 %and, i32* %res, align 4
  %6 = load i32, i32* %res, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i8* @newBitVector(i8* %value, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %res = alloca i8*, align 8
  %vp = alloca i8*, align 8
  %msize = alloca i32, align 4
  store i8* %value, i8** %value.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %vp, align 8
  %2 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %2 to i64
  %add = add i64 %conv, 8
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 8
  %mul = mul i64 %div, 1
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %msize, align 4
  %3 = load i32, i32* %msize, align 4
  %conv2 = zext i32 %3 to i64
  %call = call noalias i8* @malloc(i64 %conv2) #2
  store i8* %call, i8** %res, align 8
  %4 = load i8*, i8** %res, align 8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %res, align 8
  store i8* %5, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %res, align 8
  %7 = load i32, i32* %msize, align 4
  %conv4 = zext i32 %7 to i64
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %conv4, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %8 = load i8*, i8** %vp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 -1
  store i8* %incdec.ptr, i8** %vp, align 8
  %9 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %do.body
  %10 = load i8*, i8** %res, align 8
  %11 = load i8*, i8** %vp, align 8
  %12 = load i8*, i8** %value.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv6 = trunc i64 %sub.ptr.sub to i32
  %13 = load i8*, i8** %vp, align 8
  %14 = load i8, i8* %13, align 1
  %conv7 = zext i8 %14 to i32
  call void @setBit(i8* %10, i32 %conv6, i32 %conv7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  %15 = load i8*, i8** %vp, align 8
  %16 = load i8*, i8** %value.addr, align 8
  %cmp9 = icmp ne i8* %15, %16
  br i1 %cmp9, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load i8*, i8** %res, align 8
  store i8* %17, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @printSoln(%struct._IO_FILE* %stream, i8* %prefix, i8* %suffix, i32* %pm, i32 %m, i16* %p, i16* %t, i8* %e) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %prefix.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %pm.addr = alloca i32*, align 8
  %m.addr = alloca i32, align 4
  %p.addr = alloca i16*, align 8
  %t.addr = alloca i16*, align 8
  %e.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  store i32* %pm, i32** %pm.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i16* %p, i16** %p.addr, align 8
  store i16* %t, i16** %t.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  store i32 0, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i8*, i8** %e.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 0
  %conv2 = zext i1 %cmp1 to i32
  %5 = load i32, i32* %j, align 4
  %add = add i32 %5, %conv2
  store i32 %add, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %prefix.addr, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fputs(i8* %7, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %10 = load i16*, i16** %p.addr, align 8
  %cmp3 = icmp ne i16* %10, null
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end
  %11 = load i16*, i16** %p.addr, align 8
  %12 = load i16, i16* %11, align 2
  %inc5 = add i16 %12, 1
  store i16 %inc5, i16* %11, align 2
  %conv6 = zext i16 %12 to i32
  %tobool = icmp ne i32 %conv6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %13 = phi i1 [ false, %for.end ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  %14 = load i16*, i16** %p.addr, align 8
  %call7 = call i32 @fputp(%struct._IO_FILE* %9, i16* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %15)
  %16 = load i8*, i8** %e.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv9 = zext i8 %17 to i32
  %and = and i32 %conv9, 1
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call11 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %18)
  br label %if.end

if.else:                                          ; preds = %land.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call12 = call i32 @_IO_putc(i32 43, %struct._IO_FILE* %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %21 = load i16*, i16** %t.addr, align 8
  %cmp13 = icmp ne i16* %21, null
  br i1 %cmp13, label %land.rhs.15, label %land.end.19

land.rhs.15:                                      ; preds = %if.end
  %22 = load i16*, i16** %t.addr, align 8
  %23 = load i16, i16* %22, align 2
  %inc16 = add i16 %23, 1
  store i16 %inc16, i16* %22, align 2
  %conv17 = zext i16 %23 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.15, %if.end
  %24 = phi i1 [ false, %if.end ], [ %tobool18, %land.rhs.15 ]
  %land.ext20 = zext i1 %24 to i32
  %25 = load i16*, i16** %t.addr, align 8
  %call21 = call i32 @fputp(%struct._IO_FILE* %20, i16* %25)
  %26 = load i32, i32* %j, align 4
  %cmp22 = icmp uge i32 %26, 1
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %land.end.19
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call25 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %land.end.19
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.26
  %28 = load i8*, i8** %e.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %e.addr, align 8
  %29 = load i8*, i8** %e.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv27 = zext i8 %30 to i32
  switch i32 %conv27, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %do.body
  br label %sw.epilog

sw.bb.28:                                         ; preds = %do.body
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %32 = load i32*, i32** %pm.addr, align 8
  %33 = load i32, i32* %32, align 4
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %33)
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %35 = load i32*, i32** %pm.addr, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %e.addr, align 8
  %38 = load i8, i8* %37, align 1
  %conv30 = zext i8 %38 to i32
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %36, i32 %conv30)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.28, %sw.bb
  %39 = load i32*, i32** %pm.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %incdec.ptr32, i32** %pm.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %40 = load i32, i32* %m.addr, align 4
  %dec = add i32 %40, -1
  store i32 %dec, i32* %m.addr, align 4
  %tobool33 = icmp ne i32 %dec, 0
  br i1 %tobool33, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %41 = load i8*, i8** %suffix.addr, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call34 = call i32 @fputs(i8* %41, %struct._IO_FILE* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call35 = call i32 @fflush(%struct._IO_FILE* %43)
  %44 = load i16*, i16** %p.addr, align 8
  %cmp36 = icmp ne i16* %44, null
  br i1 %cmp36, label %land.lhs.true, label %land.end.45

land.lhs.true:                                    ; preds = %do.end
  %45 = load i16*, i16** %p.addr, align 8
  %46 = load i16, i16* %45, align 2
  %dec38 = add i16 %46, -1
  store i16 %dec38, i16* %45, align 2
  %conv39 = zext i16 %dec38 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %land.rhs.42, label %land.end.45

land.rhs.42:                                      ; preds = %land.lhs.true
  %47 = load i16*, i16** %p.addr, align 8
  %call43 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %47)
  %tobool44 = icmp ne i32 %call43, 0
  br label %land.end.45

land.end.45:                                      ; preds = %land.rhs.42, %land.lhs.true, %do.end
  %48 = phi i1 [ false, %land.lhs.true ], [ false, %do.end ], [ %tobool44, %land.rhs.42 ]
  %land.ext46 = zext i1 %48 to i32
  %49 = load i16*, i16** %t.addr, align 8
  %cmp47 = icmp ne i16* %49, null
  br i1 %cmp47, label %land.lhs.true.49, label %land.end.57

land.lhs.true.49:                                 ; preds = %land.end.45
  %50 = load i16*, i16** %t.addr, align 8
  %51 = load i16, i16* %50, align 2
  %dec50 = add i16 %51, -1
  store i16 %dec50, i16* %50, align 2
  %conv51 = zext i16 %dec50 to i32
  %cmp52 = icmp eq i32 %conv51, 0
  br i1 %cmp52, label %land.rhs.54, label %land.end.57

land.rhs.54:                                      ; preds = %land.lhs.true.49
  %52 = load i16*, i16** %t.addr, align 8
  %call55 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %52)
  %tobool56 = icmp ne i32 %call55, 0
  br label %land.end.57

land.end.57:                                      ; preds = %land.rhs.54, %land.lhs.true.49, %land.end.45
  %53 = phi i1 [ false, %land.lhs.true.49 ], [ false, %land.end.45 ], [ %tobool56, %land.rhs.54 ]
  %land.ext58 = zext i1 %53 to i32
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

declare i32 @fputp(%struct._IO_FILE*, i16*) #3

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fflush(%struct._IO_FILE*) #3

declare i32 @pfree(...) #3

; Function Attrs: nounwind uwtable
define void @combineSoln(i16** %x, i16** %t, i8* %e, i32* %pm, i32 %m, i16* %n, %struct.SolnStruc* %bp) #0 {
entry:
  %x.addr = alloca i16**, align 8
  %t.addr = alloca i16**, align 8
  %e.addr = alloca i8*, align 8
  %pm.addr = alloca i32*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i16*, align 8
  %bp.addr = alloca %struct.SolnStruc*, align 8
  %j = alloca i32, align 4
  store i16** %x, i16*** %x.addr, align 8
  store i16** %t, i16*** %t.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  store i32* %pm, i32** %pm.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i16* %n, i16** %n.addr, align 8
  store %struct.SolnStruc* %bp, %struct.SolnStruc** %bp.addr, align 8
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
  %5 = load %struct.SolnStruc*, %struct.SolnStruc** %bp.addr, align 8
  %cmp1 = icmp ne %struct.SolnStruc* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %6 = load i16**, i16*** %x.addr, align 8
  %7 = load %struct.SolnStruc*, %struct.SolnStruc** %bp.addr, align 8
  %x3 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %7, i32 0, i32 1
  %8 = load i16*, i16** %x3, align 8
  %9 = load i16**, i16*** %x.addr, align 8
  %10 = load i16*, i16** %9, align 8
  %call = call i16* @pmul(i16* %8, i16* %10)
  %11 = load i16*, i16** %n.addr, align 8
  %call4 = call i16* @pdivmod(i16* %call, i16* %11, i16** null, i16** inttoptr (i64 -1 to i16**))
  %call5 = call i16* @psetq(i16** %6, i16* %call4)
  %12 = load i16**, i16*** %t.addr, align 8
  %13 = load %struct.SolnStruc*, %struct.SolnStruc** %bp.addr, align 8
  %t6 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %13, i32 0, i32 2
  %14 = load i16*, i16** %t6, align 8
  %15 = load i16**, i16*** %t.addr, align 8
  %16 = load i16*, i16** %15, align 8
  %call7 = call i16* @pmul(i16* %14, i16* %16)
  %17 = load i16*, i16** %n.addr, align 8
  %call8 = call i16* @pdivmod(i16* %call7, i16* %17, i16** null, i16** inttoptr (i64 -1 to i16**))
  %call9 = call i16* @psetq(i16** %12, i16* %call8)
  %18 = load i16**, i16*** %t.addr, align 8
  %19 = load %struct.SolnStruc*, %struct.SolnStruc** %bp.addr, align 8
  %r = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %19, i32 0, i32 3
  %20 = load i16*, i16** %r, align 8
  %21 = load i16**, i16*** %t.addr, align 8
  %22 = load i16*, i16** %21, align 8
  %call10 = call i16* @pmul(i16* %20, i16* %22)
  %23 = load i16*, i16** %n.addr, align 8
  %call11 = call i16* @pdivmod(i16* %call10, i16* %23, i16** null, i16** inttoptr (i64 -1 to i16**))
  %call12 = call i16* @psetq(i16** %18, i16* %call11)
  %24 = load %struct.SolnStruc*, %struct.SolnStruc** %bp.addr, align 8
  %e13 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %24, i32 0, i32 4
  %25 = load i8*, i8** %e13, align 8
  %call14 = call i32 @getBit(i8* %25, i32 0)
  %26 = load i8*, i8** %e.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx, align 1
  %conv15 = zext i8 %27 to i32
  %add = add i32 %conv15, %call14
  %conv16 = trunc i32 %add to i8
  store i8 %conv16, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %28 = load i8*, i8** %e.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %29 to i32
  %and = and i32 %conv18, 1
  %conv19 = trunc i32 %and to i8
  store i8 %conv19, i8* %arrayidx17, align 1
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %m.addr, align 4
  %cmp20 = icmp ule i32 %30, %31
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.SolnStruc*, %struct.SolnStruc** %bp.addr, align 8
  %cmp22 = icmp ne %struct.SolnStruc* %32, null
  br i1 %cmp22, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %for.body
  %33 = load %struct.SolnStruc*, %struct.SolnStruc** %bp.addr, align 8
  %e25 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %33, i32 0, i32 4
  %34 = load i8*, i8** %e25, align 8
  %35 = load i32, i32* %j, align 4
  %call26 = call i32 @getBit(i8* %34, i32 %35)
  %36 = load i32, i32* %j, align 4
  %idxprom = zext i32 %36 to i64
  %37 = load i8*, i8** %e.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %37, i64 %idxprom
  %38 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %38 to i32
  %add29 = add i32 %conv28, %call26
  %conv30 = trunc i32 %add29 to i8
  store i8 %conv30, i8* %arrayidx27, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.24, %for.body
  %39 = load i32, i32* %j, align 4
  %idxprom32 = zext i32 %39 to i64
  %40 = load i8*, i8** %e.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %40, i64 %idxprom32
  %41 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %41 to i32
  %cmp35 = icmp sgt i32 %conv34, 2
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end.31
  %42 = load i16**, i16*** %t.addr, align 8
  %43 = load i16**, i16*** %t.addr, align 8
  %44 = load i16*, i16** %43, align 8
  %45 = load i32, i32* %j, align 4
  %sub = sub i32 %45, 1
  %idxprom38 = zext i32 %sub to i64
  %46 = load i32*, i32** %pm.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %46, i64 %idxprom38
  %47 = load i32, i32* %arrayidx39, align 4
  %call40 = call i16* @utop(i32 %47)
  %48 = load i32, i32* %j, align 4
  %idxprom41 = zext i32 %48 to i64
  %49 = load i8*, i8** %e.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %49, i64 %idxprom41
  %50 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %50 to i32
  %shr = lshr i32 %conv43, 1
  %call44 = call i16* @utop(i32 %shr)
  %51 = load i16*, i16** %n.addr, align 8
  %call45 = call i16* @ppowmod(i16* %call40, i16* %call44, i16* %51)
  %call46 = call i16* @pmul(i16* %44, i16* %call45)
  %52 = load i16*, i16** %n.addr, align 8
  %call47 = call i16* @pdivmod(i16* %call46, i16* %52, i16** null, i16** inttoptr (i64 -1 to i16**))
  %call48 = call i16* @psetq(i16** %42, i16* %call47)
  %53 = load i32, i32* %j, align 4
  %idxprom49 = zext i32 %53 to i64
  %54 = load i8*, i8** %e.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %54, i64 %idxprom49
  %55 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %55 to i32
  %and52 = and i32 %conv51, 1
  %conv53 = trunc i32 %and52 to i8
  store i8 %conv53, i8* %arrayidx50, align 1
  br label %if.end.70

if.else:                                          ; preds = %if.end.31
  %56 = load i32, i32* %j, align 4
  %idxprom54 = zext i32 %56 to i64
  %57 = load i8*, i8** %e.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %57, i64 %idxprom54
  %58 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %58 to i32
  %cmp57 = icmp eq i32 %conv56, 2
  br i1 %cmp57, label %if.then.59, label %if.end.69

if.then.59:                                       ; preds = %if.else
  %59 = load i16**, i16*** %t.addr, align 8
  %60 = load i16**, i16*** %t.addr, align 8
  %61 = load i16*, i16** %60, align 8
  %62 = load i32, i32* %j, align 4
  %sub60 = sub i32 %62, 1
  %idxprom61 = zext i32 %sub60 to i64
  %63 = load i32*, i32** %pm.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %63, i64 %idxprom61
  %64 = load i32, i32* %arrayidx62, align 4
  %call63 = call i16* @utop(i32 %64)
  %call64 = call i16* @pmul(i16* %61, i16* %call63)
  %65 = load i16*, i16** %n.addr, align 8
  %call65 = call i16* @pdivmod(i16* %call64, i16* %65, i16** null, i16** inttoptr (i64 -1 to i16**))
  %call66 = call i16* @psetq(i16** %59, i16* %call65)
  %66 = load i32, i32* %j, align 4
  %idxprom67 = zext i32 %66 to i64
  %67 = load i8*, i8** %e.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %67, i64 %idxprom67
  store i8 0, i8* %arrayidx68, align 1
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.59, %if.else
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %68 = load i32, i32* %j, align 4
  %inc71 = add i32 %68, 1
  store i32 %inc71, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %69 = load i16*, i16** %n.addr, align 8
  %cmp72 = icmp ne i16* %69, null
  br i1 %cmp72, label %land.lhs.true, label %land.end.80

land.lhs.true:                                    ; preds = %for.end
  %70 = load i16*, i16** %n.addr, align 8
  %71 = load i16, i16* %70, align 2
  %dec = add i16 %71, -1
  store i16 %dec, i16* %70, align 2
  %conv74 = zext i16 %dec to i32
  %cmp75 = icmp eq i32 %conv74, 0
  br i1 %cmp75, label %land.rhs.77, label %land.end.80

land.rhs.77:                                      ; preds = %land.lhs.true
  %72 = load i16*, i16** %n.addr, align 8
  %call78 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %72)
  %tobool79 = icmp ne i32 %call78, 0
  br label %land.end.80

land.end.80:                                      ; preds = %land.rhs.77, %land.lhs.true, %for.end
  %73 = phi i1 [ false, %land.lhs.true ], [ false, %for.end ], [ %tobool79, %land.rhs.77 ]
  %land.ext81 = zext i1 %73 to i32
  ret void
}

declare i16* @psetq(i16**, i16*) #3

declare i16* @pdivmod(i16*, i16*, i16**, i16**) #3

declare i16* @pmul(i16*, i16*) #3

declare i16* @ppowmod(i16*, i16*, i16*) #3

declare i16* @utop(i32) #3

; Function Attrs: nounwind uwtable
define %struct.SolnStruc* @newSoln(i16* %n, i32* %pm, i32 %m, %struct.SolnStruc* %next, i16* %x, i16* %t, i8* %e) #0 {
entry:
  %n.addr = alloca i16*, align 8
  %pm.addr = alloca i32*, align 8
  %m.addr = alloca i32, align 4
  %next.addr = alloca %struct.SolnStruc*, align 8
  %x.addr = alloca i16*, align 8
  %t.addr = alloca i16*, align 8
  %e.addr = alloca i8*, align 8
  %bp = alloca %struct.SolnStruc*, align 8
  store i16* %n, i16** %n.addr, align 8
  store i32* %pm, i32** %pm.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store %struct.SolnStruc* %next, %struct.SolnStruc** %next.addr, align 8
  store i16* %x, i16** %x.addr, align 8
  store i16* %t, i16** %t.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  %call = call noalias i8* @malloc(i64 40) #2
  %0 = bitcast i8* %call to %struct.SolnStruc*
  store %struct.SolnStruc* %0, %struct.SolnStruc** %bp, align 8
  %1 = load %struct.SolnStruc*, %struct.SolnStruc** %bp, align 8
  %cmp = icmp ne %struct.SolnStruc* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.SolnStruc*, %struct.SolnStruc** %next.addr, align 8
  %3 = load %struct.SolnStruc*, %struct.SolnStruc** %bp, align 8
  %next1 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %3, i32 0, i32 0
  store %struct.SolnStruc* %2, %struct.SolnStruc** %next1, align 8
  %4 = load i16*, i16** %x.addr, align 8
  %call2 = call i16* @pnew(i16* %4)
  %5 = load %struct.SolnStruc*, %struct.SolnStruc** %bp, align 8
  %x3 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %5, i32 0, i32 1
  store i16* %call2, i16** %x3, align 8
  %6 = load i16*, i16** %t.addr, align 8
  %call4 = call i16* @pnew(i16* %6)
  %7 = load %struct.SolnStruc*, %struct.SolnStruc** %bp, align 8
  %t5 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %7, i32 0, i32 2
  store i16* %call4, i16** %t5, align 8
  %8 = load i16*, i16** @pone, align 8
  %call6 = call i16* @pnew(i16* %8)
  %9 = load %struct.SolnStruc*, %struct.SolnStruc** %bp, align 8
  %r = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %9, i32 0, i32 3
  store i16* %call6, i16** %r, align 8
  %10 = load %struct.SolnStruc*, %struct.SolnStruc** %bp, align 8
  %x7 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %10, i32 0, i32 1
  %11 = load %struct.SolnStruc*, %struct.SolnStruc** %bp, align 8
  %r8 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %11, i32 0, i32 3
  %12 = load i8*, i8** %e.addr, align 8
  %13 = load i32*, i32** %pm.addr, align 8
  %14 = load i32, i32* %m.addr, align 4
  %15 = load i16*, i16** %n.addr, align 8
  %cmp9 = icmp ne i16* %15, null
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %16 = load i16*, i16** %n.addr, align 8
  %17 = load i16, i16* %16, align 2
  %inc = add i16 %17, 1
  store i16 %inc, i16* %16, align 2
  %conv = zext i16 %17 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %18 = phi i1 [ false, %if.then ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  %19 = load i16*, i16** %n.addr, align 8
  call void @combineSoln(i16** %x7, i16** %r8, i8* %12, i32* %13, i32 %14, i16* %19, %struct.SolnStruc* null)
  %20 = load i8*, i8** %e.addr, align 8
  %21 = load i32, i32* %m.addr, align 4
  %add = add i32 %21, 1
  %call10 = call i8* @newBitVector(i8* %20, i32 %add)
  %22 = load %struct.SolnStruc*, %struct.SolnStruc** %bp, align 8
  %e11 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %22, i32 0, i32 4
  store i8* %call10, i8** %e11, align 8
  br label %if.end

if.end:                                           ; preds = %land.end, %entry
  %23 = load i16*, i16** %n.addr, align 8
  %cmp12 = icmp ne i16* %23, null
  br i1 %cmp12, label %land.lhs.true, label %land.end.20

land.lhs.true:                                    ; preds = %if.end
  %24 = load i16*, i16** %n.addr, align 8
  %25 = load i16, i16* %24, align 2
  %dec = add i16 %25, -1
  store i16 %dec, i16* %24, align 2
  %conv14 = zext i16 %dec to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %land.rhs.17, label %land.end.20

land.rhs.17:                                      ; preds = %land.lhs.true
  %26 = load i16*, i16** %n.addr, align 8
  %call18 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %26)
  %tobool19 = icmp ne i32 %call18, 0
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.17, %land.lhs.true, %if.end
  %27 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %tobool19, %land.rhs.17 ]
  %land.ext21 = zext i1 %27 to i32
  %28 = load %struct.SolnStruc*, %struct.SolnStruc** %bp, align 8
  ret %struct.SolnStruc* %28
}

declare i16* @pnew(i16*) #3

; Function Attrs: nounwind uwtable
define void @freeSoln(%struct.SolnStruc* %p) #0 {
entry:
  %p.addr = alloca %struct.SolnStruc*, align 8
  store %struct.SolnStruc* %p, %struct.SolnStruc** %p.addr, align 8
  %0 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %cmp = icmp ne %struct.SolnStruc* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %x = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %1, i32 0, i32 1
  %2 = load i16*, i16** %x, align 8
  %cmp1 = icmp ne i16* %2, null
  br i1 %cmp1, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then
  %3 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %x2 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %3, i32 0, i32 1
  %4 = load i16*, i16** %x2, align 8
  %5 = load i16, i16* %4, align 2
  %dec = add i16 %5, -1
  store i16 %dec, i16* %4, align 2
  %conv = zext i16 %dec to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %x5 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %6, i32 0, i32 1
  %7 = load i16*, i16** %x5, align 8
  %call = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %7)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %if.then ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  %9 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %t = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %9, i32 0, i32 2
  %10 = load i16*, i16** %t, align 8
  %cmp6 = icmp ne i16* %10, null
  br i1 %cmp6, label %land.lhs.true.8, label %land.end.18

land.lhs.true.8:                                  ; preds = %land.end
  %11 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %t9 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %11, i32 0, i32 2
  %12 = load i16*, i16** %t9, align 8
  %13 = load i16, i16* %12, align 2
  %dec10 = add i16 %13, -1
  store i16 %dec10, i16* %12, align 2
  %conv11 = zext i16 %dec10 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %land.rhs.14, label %land.end.18

land.rhs.14:                                      ; preds = %land.lhs.true.8
  %14 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %t15 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %14, i32 0, i32 2
  %15 = load i16*, i16** %t15, align 8
  %call16 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %15)
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end.18

land.end.18:                                      ; preds = %land.rhs.14, %land.lhs.true.8, %land.end
  %16 = phi i1 [ false, %land.lhs.true.8 ], [ false, %land.end ], [ %tobool17, %land.rhs.14 ]
  %land.ext19 = zext i1 %16 to i32
  %17 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %r = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %17, i32 0, i32 3
  %18 = load i16*, i16** %r, align 8
  %cmp20 = icmp ne i16* %18, null
  br i1 %cmp20, label %land.lhs.true.22, label %land.end.32

land.lhs.true.22:                                 ; preds = %land.end.18
  %19 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %r23 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %19, i32 0, i32 3
  %20 = load i16*, i16** %r23, align 8
  %21 = load i16, i16* %20, align 2
  %dec24 = add i16 %21, -1
  store i16 %dec24, i16* %20, align 2
  %conv25 = zext i16 %dec24 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %land.rhs.28, label %land.end.32

land.rhs.28:                                      ; preds = %land.lhs.true.22
  %22 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %r29 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %22, i32 0, i32 3
  %23 = load i16*, i16** %r29, align 8
  %call30 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %23)
  %tobool31 = icmp ne i32 %call30, 0
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.28, %land.lhs.true.22, %land.end.18
  %24 = phi i1 [ false, %land.lhs.true.22 ], [ false, %land.end.18 ], [ %tobool31, %land.rhs.28 ]
  %land.ext33 = zext i1 %24 to i32
  %25 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %e = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %25, i32 0, i32 4
  %26 = load i8*, i8** %e, align 8
  call void @free(i8* %26) #2
  %27 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %28 = bitcast %struct.SolnStruc* %27 to i8*
  call void @free(i8* %28) #2
  br label %if.end

if.end:                                           ; preds = %land.end.32, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @freeSolns(%struct.SolnStruc* %p) #0 {
entry:
  %p.addr = alloca %struct.SolnStruc*, align 8
  %l = alloca %struct.SolnStruc*, align 8
  store %struct.SolnStruc* %p, %struct.SolnStruc** %p.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %cmp = icmp ne %struct.SolnStruc* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  store %struct.SolnStruc* %1, %struct.SolnStruc** %l, align 8
  %2 = load %struct.SolnStruc*, %struct.SolnStruc** %p.addr, align 8
  %next = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %2, i32 0, i32 0
  %3 = load %struct.SolnStruc*, %struct.SolnStruc** %next, align 8
  store %struct.SolnStruc* %3, %struct.SolnStruc** %p.addr, align 8
  %4 = load %struct.SolnStruc*, %struct.SolnStruc** %l, align 8
  call void @freeSoln(%struct.SolnStruc* %4)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.SolnStruc* @findSoln(%struct.SolnStruc* %sp, i16* %t) #0 {
entry:
  %sp.addr = alloca %struct.SolnStruc*, align 8
  %t.addr = alloca i16*, align 8
  store %struct.SolnStruc* %sp, %struct.SolnStruc** %sp.addr, align 8
  store i16* %t, i16** %t.addr, align 8
  %0 = load i16*, i16** %t.addr, align 8
  %cmp = icmp ne i16* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i16*, i16** %t.addr, align 8
  %2 = load i16, i16* %1, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* %1, align 2
  %conv = zext i16 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  %4 = load i16*, i16** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %land.end
  %5 = load %struct.SolnStruc*, %struct.SolnStruc** %sp.addr, align 8
  %cmp1 = icmp ne %struct.SolnStruc* %5, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.SolnStruc*, %struct.SolnStruc** %sp.addr, align 8
  %t3 = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %6, i32 0, i32 2
  %7 = load i16*, i16** %t3, align 8
  %8 = load i16*, i16** %t.addr, align 8
  %call = call i32 @pcmp(i16* %7, i16* %8)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = load %struct.SolnStruc*, %struct.SolnStruc** %sp.addr, align 8
  %next = getelementptr inbounds %struct.SolnStruc, %struct.SolnStruc* %9, i32 0, i32 0
  %10 = load %struct.SolnStruc*, %struct.SolnStruc** %next, align 8
  store %struct.SolnStruc* %10, %struct.SolnStruc** %sp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %11 = load i16*, i16** %t.addr, align 8
  %cmp6 = icmp ne i16* %11, null
  br i1 %cmp6, label %land.lhs.true, label %land.end.14

land.lhs.true:                                    ; preds = %while.end
  %12 = load i16*, i16** %t.addr, align 8
  %13 = load i16, i16* %12, align 2
  %dec = add i16 %13, -1
  store i16 %dec, i16* %12, align 2
  %conv8 = zext i16 %dec to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %land.rhs.11, label %land.end.14

land.rhs.11:                                      ; preds = %land.lhs.true
  %14 = load i16*, i16** %t.addr, align 8
  %call12 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %14)
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end.14

land.end.14:                                      ; preds = %land.rhs.11, %land.lhs.true, %while.end
  %15 = phi i1 [ false, %land.lhs.true ], [ false, %while.end ], [ %tobool13, %land.rhs.11 ]
  %land.ext15 = zext i1 %15 to i32
  %16 = load %struct.SolnStruc*, %struct.SolnStruc** %sp.addr, align 8
  ret %struct.SolnStruc* %16
}

declare i32 @pcmp(i16*, i16*) #3

; Function Attrs: nounwind uwtable
define void @freeEas(%struct.EasEntry* %eas) #0 {
entry:
  %eas.addr = alloca %struct.EasEntry*, align 8
  %ep = alloca %struct.EasEntry*, align 8
  store %struct.EasEntry* %eas, %struct.EasEntry** %eas.addr, align 8
  %0 = load %struct.EasEntry*, %struct.EasEntry** %eas.addr, align 8
  store %struct.EasEntry* %0, %struct.EasEntry** %ep, align 8
  %1 = load %struct.EasEntry*, %struct.EasEntry** %ep, align 8
  %cmp = icmp ne %struct.EasEntry* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %land.end, %if.then
  %2 = load %struct.EasEntry*, %struct.EasEntry** %ep, align 8
  %pm = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %2, i32 0, i32 0
  %3 = load i32*, i32** %pm, align 8
  %cmp1 = icmp ne i32* %3, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.EasEntry*, %struct.EasEntry** %ep, align 8
  %bound = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %4, i32 0, i32 1
  %5 = load i16*, i16** %bound, align 8
  %cmp2 = icmp ne i16* %5, null
  br i1 %cmp2, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct.EasEntry*, %struct.EasEntry** %ep, align 8
  %bound3 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %6, i32 0, i32 1
  %7 = load i16*, i16** %bound3, align 8
  %8 = load i16, i16* %7, align 2
  %dec = add i16 %8, -1
  store i16 %dec, i16* %7, align 2
  %conv = zext i16 %dec to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load %struct.EasEntry*, %struct.EasEntry** %ep, align 8
  %bound6 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %9, i32 0, i32 1
  %10 = load i16*, i16** %bound6, align 8
  %call = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %10)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.body
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.body ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  %12 = load %struct.EasEntry*, %struct.EasEntry** %ep, align 8
  %incdec.ptr = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %12, i32 1
  store %struct.EasEntry* %incdec.ptr, %struct.EasEntry** %ep, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct.EasEntry*, %struct.EasEntry** %eas.addr, align 8
  %14 = bitcast %struct.EasEntry* %13 to i8*
  call void @free(i8* %14) #2
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define double @pomeranceLpow(double %n, double %y) #0 {
entry:
  %n.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %lnN = alloca double, align 8
  %res = alloca double, align 8
  store double %n, double* %n.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %n.addr, align 8
  %call = call double @log(double %0) #2
  store double %call, double* %lnN, align 8
  %1 = load double, double* %y.addr, align 8
  %2 = load double, double* %lnN, align 8
  %3 = load double, double* %lnN, align 8
  %call1 = call double @log(double %3) #2
  %mul = fmul double %2, %call1
  %call2 = call double @sqrt(double %mul) #2
  %mul3 = fmul double %1, %call2
  %call4 = call double @exp(double %mul3) #2
  store double %call4, double* %res, align 8
  %4 = load double, double* %res, align 8
  ret double %4
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define double @cfracA(double %n, i32 %aborts) #0 {
entry:
  %n.addr = alloca double, align 8
  %aborts.addr = alloca i32, align 4
  store double %n, double* %n.addr, align 8
  store i32 %aborts, i32* %aborts.addr, align 4
  %0 = load i32, i32* %aborts.addr, align 4
  %conv = uitofp i32 %0 to double
  %add = fadd double %conv, 1.000000e+00
  %div = fdiv double 2.000000e+00, %add
  %add1 = fadd double 6.000000e+00, %div
  %call = call double @sqrt(double %add1) #2
  %div2 = fdiv double 1.000000e+00, %call
  ret double %div2
}

; Function Attrs: nounwind uwtable
define i32* @pfactorbase(i16* %n, i32 %k, i32* %m, i32 %aborts) #0 {
entry:
  %n.addr = alloca i16*, align 8
  %k.addr = alloca i32, align 4
  %m.addr = alloca i32*, align 8
  %aborts.addr = alloca i32, align 4
  %dn = alloca double, align 8
  %a = alloca double, align 8
  %primePtr = alloca i16*, align 8
  %count = alloca i32, align 4
  %maxpm = alloca i32, align 4
  %res = alloca i32*, align 8
  %pm = alloca i32*, align 8
  %nk = alloca i16*, align 8
  store i16* %n, i16** %n.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  store i32* %m, i32** %m.addr, align 8
  store i32 %aborts, i32* %aborts.addr, align 4
  store i16* getelementptr inbounds ([0 x i16], [0 x i16]* @primes, i32 0, i32 0), i16** %primePtr, align 8
  %0 = load i32*, i32** %m.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %count, align 4
  %2 = load i32, i32* @primesize, align 4
  %sub = sub i32 %2, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [0 x i16], [0 x i16]* @primes, i32 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  store i32 %conv, i32* %maxpm, align 4
  store i32* null, i32** %res, align 8
  %4 = load i16*, i16** %n.addr, align 8
  %cmp = icmp ne i16* %4, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load i16*, i16** %n.addr, align 8
  %6 = load i16, i16* %5, align 2
  %inc = add i16 %6, 1
  store i16 %inc, i16* %5, align 2
  %conv2 = zext i16 %6 to i32
  %tobool = icmp ne i32 %conv2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  %8 = load i16*, i16** %n.addr, align 8
  %9 = load i32, i32* %k.addr, align 4
  %call = call i16* @utop(i32 %9)
  %call3 = call i16* @pmul(i16* %8, i16* %call)
  %call4 = call i16* @pnew(i16* %call3)
  store i16* %call4, i16** %nk, align 8
  %10 = load i32*, i32** %m.addr, align 8
  %11 = load i32, i32* %10, align 4
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %if.then, label %if.end.19

if.then:                                          ; preds = %land.end
  %12 = load i16*, i16** %nk, align 8
  %call7 = call double @ptod(i16* %12)
  store double %call7, double* %dn, align 8
  %13 = load double, double* %dn, align 8
  %14 = load i32, i32* %aborts.addr, align 4
  %call8 = call double @cfracA(double %13, i32 %14)
  store double %call8, double* %a, align 8
  %15 = load double, double* %dn, align 8
  %16 = load double, double* %a, align 8
  %call9 = call double @pomeranceLpow(double %15, double %16)
  %add = fadd double %call9, 5.000000e-01
  %conv10 = fptoui double %add to i32
  store i32 %conv10, i32* %maxpm, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %17 = load i16*, i16** %primePtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %incdec.ptr, i16** %primePtr, align 8
  %18 = load i16, i16* %17, align 2
  %conv11 = zext i16 %18 to i32
  %19 = load i32, i32* %maxpm, align 4
  %cmp12 = icmp uge i32 %conv11, %19
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %20 = load i16*, i16** %primePtr, align 8
  %21 = load i16, i16* %20, align 2
  %conv15 = zext i16 %21 to i32
  %cmp16 = icmp ne i32 %conv15, 1
  br i1 %cmp16, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.14
  %22 = load i16*, i16** %primePtr, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([0 x i16]* @primes to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv18 = trunc i64 %sub.ptr.div to i32
  store i32 %conv18, i32* %count, align 4
  store i16* getelementptr inbounds ([0 x i16], [0 x i16]* @primes, i32 0, i32 0), i16** %primePtr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %land.end
  %23 = load i32, i32* %count, align 4
  %conv20 = zext i32 %23 to i64
  %mul = mul i64 %conv20, 4
  %call21 = call noalias i8* @malloc(i64 %mul) #2
  %24 = bitcast i8* %call21 to i32*
  store i32* %24, i32** %res, align 8
  %25 = load i32*, i32** %res, align 8
  %cmp22 = icmp eq i32* %25, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  br label %doneMk

if.end.25:                                        ; preds = %if.end.19
  %26 = load i32*, i32** %res, align 8
  store i32* %26, i32** %pm, align 8
  %27 = load i16*, i16** %primePtr, align 8
  %incdec.ptr26 = getelementptr inbounds i16, i16* %27, i32 1
  store i16* %incdec.ptr26, i16** %primePtr, align 8
  %28 = load i16, i16* %27, align 2
  %conv27 = zext i16 %28 to i32
  %29 = load i32*, i32** %pm, align 8
  %incdec.ptr28 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %incdec.ptr28, i32** %pm, align 8
  store i32 %conv27, i32* %29, align 4
  store i32 1, i32* %count, align 4
  %30 = load i32, i32* %count, align 4
  %31 = load i32*, i32** %m.addr, align 8
  %32 = load i32, i32* %31, align 4
  %cmp29 = icmp ne i32 %30, %32
  br i1 %cmp29, label %if.then.31, label %if.end.63

if.then.31:                                       ; preds = %if.end.25
  br label %do.body.32

do.body.32:                                       ; preds = %do.cond.58, %if.then.31
  %33 = load i16*, i16** %nk, align 8
  %34 = load i16*, i16** %primePtr, align 8
  %35 = load i16, i16* %34, align 2
  %conv33 = zext i16 %35 to i32
  %call34 = call i16* @utop(i32 %conv33)
  %36 = load i16*, i16** @pone, align 8
  %call35 = call i16* @psub(i16* %call34, i16* %36)
  %call36 = call i16* @phalf(i16* %call35)
  %37 = load i16*, i16** %primePtr, align 8
  %38 = load i16, i16* %37, align 2
  %conv37 = zext i16 %38 to i32
  %call38 = call i16* @utop(i32 %conv37)
  %call39 = call i16* @ppowmod(i16* %33, i16* %call36, i16* %call38)
  %call40 = call i32 @picmp(i16* %call39, i32 1)
  %cmp41 = icmp sle i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.56

if.then.43:                                       ; preds = %do.body.32
  %39 = load i16*, i16** %primePtr, align 8
  %40 = load i16, i16* %39, align 2
  %conv44 = zext i16 %40 to i32
  %41 = load i32*, i32** %pm, align 8
  %incdec.ptr45 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %incdec.ptr45, i32** %pm, align 8
  store i32 %conv44, i32* %41, align 4
  %42 = load i32, i32* %count, align 4
  %inc46 = add i32 %42, 1
  store i32 %inc46, i32* %count, align 4
  %43 = load i32, i32* %count, align 4
  %44 = load i32*, i32** %m.addr, align 8
  %45 = load i32, i32* %44, align 4
  %cmp47 = icmp eq i32 %43, %45
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.43
  br label %do.end.62

if.end.50:                                        ; preds = %if.then.43
  %46 = load i16*, i16** %primePtr, align 8
  %47 = load i16, i16* %46, align 2
  %conv51 = zext i16 %47 to i32
  %48 = load i32, i32* %maxpm, align 4
  %cmp52 = icmp uge i32 %conv51, %48
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.50
  br label %do.end.62

if.end.55:                                        ; preds = %if.end.50
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %do.body.32
  %49 = load i16*, i16** %primePtr, align 8
  %incdec.ptr57 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %incdec.ptr57, i16** %primePtr, align 8
  br label %do.cond.58

do.cond.58:                                       ; preds = %if.end.56
  %50 = load i16*, i16** %primePtr, align 8
  %51 = load i16, i16* %50, align 2
  %conv59 = zext i16 %51 to i32
  %cmp60 = icmp ne i32 %conv59, 1
  br i1 %cmp60, label %do.body.32, label %do.end.62

do.end.62:                                        ; preds = %do.cond.58, %if.then.54, %if.then.49
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %if.end.25
  %52 = load i32, i32* %count, align 4
  %53 = load i32*, i32** %m.addr, align 8
  store i32 %52, i32* %53, align 4
  br label %doneMk

doneMk:                                           ; preds = %if.end.63, %if.then.24
  %54 = load i16*, i16** %nk, align 8
  %cmp64 = icmp ne i16* %54, null
  br i1 %cmp64, label %land.lhs.true, label %land.end.72

land.lhs.true:                                    ; preds = %doneMk
  %55 = load i16*, i16** %nk, align 8
  %56 = load i16, i16* %55, align 2
  %dec = add i16 %56, -1
  store i16 %dec, i16* %55, align 2
  %conv66 = zext i16 %dec to i32
  %cmp67 = icmp eq i32 %conv66, 0
  br i1 %cmp67, label %land.rhs.69, label %land.end.72

land.rhs.69:                                      ; preds = %land.lhs.true
  %57 = load i16*, i16** %nk, align 8
  %call70 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %57)
  %tobool71 = icmp ne i32 %call70, 0
  br label %land.end.72

land.end.72:                                      ; preds = %land.rhs.69, %land.lhs.true, %doneMk
  %58 = phi i1 [ false, %land.lhs.true ], [ false, %doneMk ], [ %tobool71, %land.rhs.69 ]
  %land.ext73 = zext i1 %58 to i32
  %59 = load i16*, i16** %n.addr, align 8
  %cmp74 = icmp ne i16* %59, null
  br i1 %cmp74, label %land.lhs.true.76, label %land.end.84

land.lhs.true.76:                                 ; preds = %land.end.72
  %60 = load i16*, i16** %n.addr, align 8
  %61 = load i16, i16* %60, align 2
  %dec77 = add i16 %61, -1
  store i16 %dec77, i16* %60, align 2
  %conv78 = zext i16 %dec77 to i32
  %cmp79 = icmp eq i32 %conv78, 0
  br i1 %cmp79, label %land.rhs.81, label %land.end.84

land.rhs.81:                                      ; preds = %land.lhs.true.76
  %62 = load i16*, i16** %n.addr, align 8
  %call82 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %62)
  %tobool83 = icmp ne i32 %call82, 0
  br label %land.end.84

land.end.84:                                      ; preds = %land.rhs.81, %land.lhs.true.76, %land.end.72
  %63 = phi i1 [ false, %land.lhs.true.76 ], [ false, %land.end.72 ], [ %tobool83, %land.rhs.81 ]
  %land.ext85 = zext i1 %63 to i32
  %64 = load i32*, i32** %res, align 8
  ret i32* %64
}

declare double @ptod(i16*) #3

declare i32 @picmp(i16*, i32) #3

declare i16* @phalf(i16*) #3

declare i16* @psub(i16*, i16*) #3

; Function Attrs: nounwind uwtable
define %struct.EasEntry* @getEas(i16* %n, i32 %k, i32* %pm, i32 %m, i32 %aborts) #0 {
entry:
  %retval = alloca %struct.EasEntry*, align 8
  %n.addr = alloca i16*, align 8
  %k.addr = alloca i32, align 4
  %pm.addr = alloca i32*, align 8
  %m.addr = alloca i32, align 4
  %aborts.addr = alloca i32, align 4
  %x = alloca double, align 8
  %a = alloca double, align 8
  %ax = alloca double, align 8
  %csum = alloca double, align 8
  %tia = alloca double, align 8
  %dn = alloca double, align 8
  %dpval = alloca double, align 8
  %dbound = alloca double, align 8
  %ci = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pval = alloca i32, align 4
  %bound = alloca i16*, align 8
  %eas = alloca %struct.EasEntry*, align 8
  store i16* %n, i16** %n.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  store i32* %pm, i32** %pm.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %aborts, i32* %aborts.addr, align 4
  %0 = load i32, i32* %aborts.addr, align 4
  %conv = uitofp i32 %0 to double
  %add = fadd double %conv, 1.000000e+00
  %div = fdiv double 1.000000e+00, %add
  store double %div, double* %x, align 8
  %1 = load double, double* %x, align 8
  %mul = fmul double 2.000000e+00, %1
  %add1 = fadd double 6.000000e+00, %mul
  %call = call double @sqrt(double %add1) #2
  %div2 = fdiv double 1.000000e+00, %call
  store double %div2, double* %a, align 8
  %2 = load double, double* %a, align 8
  %3 = load double, double* %x, align 8
  %mul3 = fmul double %2, %3
  store double %mul3, double* %ax, align 8
  store double 1.000000e+00, double* %csum, align 8
  store double 0.000000e+00, double* %tia, align 8
  store i16* null, i16** %bound, align 8
  %4 = load i32, i32* %aborts.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.EasEntry* null, %struct.EasEntry** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %aborts.addr, align 4
  %add5 = add i32 %5, 1
  %conv6 = zext i32 %add5 to i64
  %mul7 = mul i64 %conv6, 16
  %call8 = call noalias i8* @malloc(i64 %mul7) #2
  %6 = bitcast i8* %call8 to %struct.EasEntry*
  store %struct.EasEntry* %6, %struct.EasEntry** %eas, align 8
  %7 = load %struct.EasEntry*, %struct.EasEntry** %eas, align 8
  %cmp9 = icmp eq %struct.EasEntry* %7, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %8 = load %struct.EasEntry*, %struct.EasEntry** %eas, align 8
  store %struct.EasEntry* %8, %struct.EasEntry** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %9 = load i32, i32* %k.addr, align 4
  %call13 = call i16* @utop(i32 %9)
  %10 = load i16*, i16** %n.addr, align 8
  %cmp14 = icmp ne i16* %10, null
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.12
  %11 = load i16*, i16** %n.addr, align 8
  %12 = load i16, i16* %11, align 2
  %inc = add i16 %12, 1
  store i16 %inc, i16* %11, align 2
  %conv16 = zext i16 %12 to i32
  %tobool = icmp ne i32 %conv16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.12
  %13 = phi i1 [ false, %if.end.12 ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  %14 = load i16*, i16** %n.addr, align 8
  %call17 = call i16* @pmul(i16* %call13, i16* %14)
  %call18 = call double @ptod(i16* %call17)
  store double %call18, double* %dn, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %land.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %aborts.addr, align 4
  %cmp19 = icmp ule i32 %15, %16
  br i1 %cmp19, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %sub = sub i32 %17, 1
  %idxprom = zext i32 %sub to i64
  %18 = load %struct.EasEntry*, %struct.EasEntry** %eas, align 8
  %arrayidx = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %18, i64 %idxprom
  %pm21 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %arrayidx, i32 0, i32 0
  store i32* null, i32** %pm21, align 8
  %19 = load i32, i32* %i, align 4
  %sub22 = sub i32 %19, 1
  %idxprom23 = zext i32 %sub22 to i64
  %20 = load %struct.EasEntry*, %struct.EasEntry** %eas, align 8
  %arrayidx24 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %20, i64 %idxprom23
  %bound25 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %arrayidx24, i32 0, i32 1
  store i16* null, i16** %bound25, align 8
  %21 = load double, double* %ax, align 8
  %22 = load double, double* %tia, align 8
  %add26 = fadd double %22, %21
  store double %add26, double* %tia, align 8
  %23 = load double, double* %tia, align 8
  %mul27 = fmul double 4.000000e+00, %23
  %24 = load double, double* %tia, align 8
  %mul28 = fmul double %mul27, %24
  %25 = load i32, i32* %i, align 4
  %conv29 = uitofp i32 %25 to double
  %div30 = fdiv double %mul28, %conv29
  store double %div30, double* %ci, align 8
  %26 = load double, double* %ci, align 8
  %27 = load double, double* %csum, align 8
  %sub31 = fsub double %27, %26
  store double %sub31, double* %csum, align 8
  %28 = load double, double* %dn, align 8
  %29 = load double, double* %tia, align 8
  %call32 = call double @pomeranceLpow(double %28, double %29)
  store double %call32, double* %dpval, align 8
  %30 = load double, double* %dn, align 8
  %31 = load double, double* %csum, align 8
  %mul33 = fmul double 5.000000e-01, %31
  %call34 = call double @pow(double %30, double %mul33) #2
  store double %call34, double* %dbound, align 8
  %32 = load double, double* %dpval, align 8
  %add35 = fadd double %32, 5.000000e-01
  %conv36 = fptoui double %add35 to i32
  store i32 %conv36, i32* %pval, align 4
  %33 = load double, double* %dbound, align 8
  %call37 = call i16* @dtop(double %33)
  %call38 = call i16* @psetq(i16** %bound, i16* %call37)
  store i32 0, i32* %j, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %for.body
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %m.addr, align 4
  %cmp40 = icmp ult i32 %34, %35
  br i1 %cmp40, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.39
  %36 = load i32, i32* %j, align 4
  %idxprom43 = zext i32 %36 to i64
  %37 = load i32*, i32** %pm.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %37, i64 %idxprom43
  %38 = load i32, i32* %arrayidx44, align 4
  %39 = load i32, i32* %pval, align 4
  %cmp45 = icmp uge i32 %38, %39
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.body.42
  br label %foundpm

if.end.48:                                        ; preds = %for.body.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %40 = load i32, i32* %j, align 4
  %inc49 = add i32 %40, 1
  store i32 %inc49, i32* %j, align 4
  br label %for.cond.39

for.end:                                          ; preds = %for.cond.39
  br label %for.end.73

foundpm:                                          ; preds = %if.then.47
  %41 = load i32, i32* @verbose, align 4
  %cmp50 = icmp sgt i32 %41, 1
  br i1 %cmp50, label %if.then.52, label %if.end.59

if.then.52:                                       ; preds = %foundpm
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %j, align 4
  %idxprom53 = zext i32 %43 to i64
  %44 = load i32*, i32** %pm.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %44, i64 %idxprom53
  %45 = load i32, i32* %arrayidx54, align 4
  %46 = load i32, i32* %pval, align 4
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i32 %42, i32 %45, i32 %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = load i16*, i16** %bound, align 8
  %call56 = call i32 @fputp(%struct._IO_FILE* %47, i16* %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call57 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call58 = call i32 @fflush(%struct._IO_FILE* %50)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.52, %foundpm
  %51 = load i32, i32* %j, align 4
  %idxprom60 = zext i32 %51 to i64
  %52 = load i32*, i32** %pm.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %52, i64 %idxprom60
  %53 = load i32, i32* %i, align 4
  %sub62 = sub i32 %53, 1
  %idxprom63 = zext i32 %sub62 to i64
  %54 = load %struct.EasEntry*, %struct.EasEntry** %eas, align 8
  %arrayidx64 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %54, i64 %idxprom63
  %pm65 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %arrayidx64, i32 0, i32 0
  store i32* %arrayidx61, i32** %pm65, align 8
  %55 = load i32, i32* %i, align 4
  %sub66 = sub i32 %55, 1
  %idxprom67 = zext i32 %sub66 to i64
  %56 = load %struct.EasEntry*, %struct.EasEntry** %eas, align 8
  %arrayidx68 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %56, i64 %idxprom67
  %bound69 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %arrayidx68, i32 0, i32 1
  %57 = load i16*, i16** %bound, align 8
  %call70 = call i16* @psetq(i16** %bound69, i16* %57)
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.59
  %58 = load i32, i32* %i, align 4
  %inc72 = add i32 %58, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond

for.end.73:                                       ; preds = %for.end, %for.cond
  %59 = load i32, i32* %i, align 4
  %sub74 = sub i32 %59, 1
  %idxprom75 = zext i32 %sub74 to i64
  %60 = load %struct.EasEntry*, %struct.EasEntry** %eas, align 8
  %arrayidx76 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %60, i64 %idxprom75
  %pm77 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %arrayidx76, i32 0, i32 0
  store i32* null, i32** %pm77, align 8
  %61 = load i32, i32* %i, align 4
  %sub78 = sub i32 %61, 1
  %idxprom79 = zext i32 %sub78 to i64
  %62 = load %struct.EasEntry*, %struct.EasEntry** %eas, align 8
  %arrayidx80 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %62, i64 %idxprom79
  %bound81 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %arrayidx80, i32 0, i32 1
  store i16* null, i16** %bound81, align 8
  %63 = load i16*, i16** %bound, align 8
  %cmp82 = icmp ne i16* %63, null
  br i1 %cmp82, label %land.lhs.true, label %land.end.90

land.lhs.true:                                    ; preds = %for.end.73
  %64 = load i16*, i16** %bound, align 8
  %65 = load i16, i16* %64, align 2
  %dec = add i16 %65, -1
  store i16 %dec, i16* %64, align 2
  %conv84 = zext i16 %dec to i32
  %cmp85 = icmp eq i32 %conv84, 0
  br i1 %cmp85, label %land.rhs.87, label %land.end.90

land.rhs.87:                                      ; preds = %land.lhs.true
  %66 = load i16*, i16** %bound, align 8
  %call88 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %66)
  %tobool89 = icmp ne i32 %call88, 0
  br label %land.end.90

land.end.90:                                      ; preds = %land.rhs.87, %land.lhs.true, %for.end.73
  %67 = phi i1 [ false, %land.lhs.true ], [ false, %for.end.73 ], [ %tobool89, %land.rhs.87 ]
  %land.ext91 = zext i1 %67 to i32
  %68 = load i16*, i16** %n.addr, align 8
  %cmp92 = icmp ne i16* %68, null
  br i1 %cmp92, label %land.lhs.true.94, label %land.end.102

land.lhs.true.94:                                 ; preds = %land.end.90
  %69 = load i16*, i16** %n.addr, align 8
  %70 = load i16, i16* %69, align 2
  %dec95 = add i16 %70, -1
  store i16 %dec95, i16* %69, align 2
  %conv96 = zext i16 %dec95 to i32
  %cmp97 = icmp eq i32 %conv96, 0
  br i1 %cmp97, label %land.rhs.99, label %land.end.102

land.rhs.99:                                      ; preds = %land.lhs.true.94
  %71 = load i16*, i16** %n.addr, align 8
  %call100 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %71)
  %tobool101 = icmp ne i32 %call100, 0
  br label %land.end.102

land.end.102:                                     ; preds = %land.rhs.99, %land.lhs.true.94, %land.end.90
  %72 = phi i1 [ false, %land.lhs.true.94 ], [ false, %land.end.90 ], [ %tobool101, %land.rhs.99 ]
  %land.ext103 = zext i1 %72 to i32
  %73 = load %struct.EasEntry*, %struct.EasEntry** %eas, align 8
  store %struct.EasEntry* %73, %struct.EasEntry** %retval
  br label %return

return:                                           ; preds = %land.end.102, %if.then.11, %if.then
  %74 = load %struct.EasEntry*, %struct.EasEntry** %retval
  ret %struct.EasEntry* %74
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

declare i16* @dtop(double) #3

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @pfactorQ(i16** %f, i16* %t, i32* %pm, i8* %e, i32 %m, %struct.EasEntry* %eas) #0 {
entry:
  %f.addr = alloca i16**, align 8
  %t.addr = alloca i16*, align 8
  %pm.addr = alloca i32*, align 8
  %e.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %eas.addr = alloca %struct.EasEntry*, align 8
  %maxp = alloca i16*, align 8
  %maxpm = alloca i32, align 4
  %res = alloca i32, align 4
  %pp = alloca i32*, align 8
  store i16** %f, i16*** %f.addr, align 8
  store i16* %t, i16** %t.addr, align 8
  store i32* %pm, i32** %pm.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store %struct.EasEntry* %eas, %struct.EasEntry** %eas.addr, align 8
  store i16* null, i16** %maxp, align 8
  %0 = load i32, i32* %m.addr, align 4
  %sub = sub i32 %0, 1
  %idxprom = zext i32 %sub to i64
  %1 = load i32*, i32** %pm.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %maxpm, align 4
  store i32 0, i32* %res, align 4
  store i32* null, i32** %pp, align 8
  %3 = load i16*, i16** %t.addr, align 8
  %cmp = icmp ne i16* %3, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load i16*, i16** %t.addr, align 8
  %5 = load i16, i16* %4, align 2
  %inc = add i16 %5, 1
  store i16 %inc, i16* %4, align 2
  %conv = zext i16 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  %7 = load i16*, i16** %t.addr, align 8
  %8 = load %struct.EasEntry*, %struct.EasEntry** %eas.addr, align 8
  %cmp1 = icmp ne %struct.EasEntry* %8, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %9 = load %struct.EasEntry*, %struct.EasEntry** %eas.addr, align 8
  %pm3 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %9, i32 0, i32 0
  %10 = load i32*, i32** %pm3, align 8
  store i32* %10, i32** %pp, align 8
  %11 = load %struct.EasEntry*, %struct.EasEntry** %eas.addr, align 8
  %bound = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %11, i32 0, i32 1
  %12 = load i16*, i16** %bound, align 8
  %call = call i16* @psetq(i16** %maxp, i16* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %13 = load i8*, i8** %e.addr, align 8
  %14 = load i32, i32* %m.addr, align 4
  %conv4 = zext i32 %14 to i64
  %mul = mul i64 %conv4, 1
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %mul, i32 1, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %15 = load i16*, i16** %t.addr, align 8
  %call5 = call i32 @podd(i16* %15)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i16*, i16** %t.addr, align 8
  %call7 = call i16* @phalf(i16* %16)
  %call8 = call i16* @psetq(i16** %t.addr, i16* %call7)
  %17 = load i8*, i8** %e.addr, align 8
  %18 = load i8, i8* %17, align 1
  %inc9 = add i8 %18, 1
  store i8 %inc9, i8* %17, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %m.addr, align 4
  %dec = add i32 %19, -1
  store i32 %dec, i32* %m.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %20 = load i8*, i8** %e.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %e.addr, align 8
  %21 = load i32*, i32** %pm.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %incdec.ptr10, i32** %pm.addr, align 8
  %22 = load i32*, i32** %pm.addr, align 8
  %23 = load i32*, i32** %pp, align 8
  %cmp11 = icmp eq i32* %22, %23
  br i1 %cmp11, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %do.body
  %24 = load i16*, i16** %t.addr, align 8
  %25 = load i16*, i16** %maxp, align 8
  %call14 = call i32 @pcmp(i16* %24, i16* %25)
  %cmp15 = icmp sgt i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.13
  store i32 -2, i32* %res, align 4
  br label %gotSoln

if.end.18:                                        ; preds = %if.then.13
  %26 = load %struct.EasEntry*, %struct.EasEntry** %eas.addr, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %26, i32 1
  store %struct.EasEntry* %incdec.ptr19, %struct.EasEntry** %eas.addr, align 8
  %27 = load %struct.EasEntry*, %struct.EasEntry** %eas.addr, align 8
  %pm20 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %27, i32 0, i32 0
  %28 = load i32*, i32** %pm20, align 8
  store i32* %28, i32** %pp, align 8
  %29 = load %struct.EasEntry*, %struct.EasEntry** %eas.addr, align 8
  %bound21 = getelementptr inbounds %struct.EasEntry, %struct.EasEntry* %29, i32 0, i32 1
  %30 = load i16*, i16** %bound21, align 8
  %call22 = call i16* @psetq(i16** %maxp, i16* %30)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.18, %do.body
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.28, %if.end.23
  %31 = load i16*, i16** %t.addr, align 8
  %32 = load i32*, i32** %pm.addr, align 8
  %33 = load i32, i32* %32, align 4
  %call25 = call i32 @pimod(i16* %31, i32 %33)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %while.body.28, label %while.end.32

while.body.28:                                    ; preds = %while.cond.24
  %34 = load i16*, i16** %t.addr, align 8
  %35 = load i32*, i32** %pm.addr, align 8
  %36 = load i32, i32* %35, align 4
  %call29 = call i16* @pidiv(i16* %34, i32 %36)
  %call30 = call i16* @psetq(i16** %t.addr, i16* %call29)
  %37 = load i8*, i8** %e.addr, align 8
  %38 = load i8, i8* %37, align 1
  %inc31 = add i8 %38, 1
  store i8 %inc31, i8* %37, align 1
  br label %while.cond.24

while.end.32:                                     ; preds = %while.cond.24
  br label %do.cond

do.cond:                                          ; preds = %while.end.32
  %39 = load i32, i32* %m.addr, align 4
  %dec33 = add i32 %39, -1
  store i32 %dec33, i32* %m.addr, align 4
  %cmp34 = icmp ne i32 %dec33, 0
  br i1 %cmp34, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %res, align 4
  %40 = load i16*, i16** %t.addr, align 8
  %call36 = call i32 @picmp(i16* %40, i32 1)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %do.end
  store i32 1, i32* %res, align 4
  br label %if.end.46

if.else:                                          ; preds = %do.end
  %41 = load i16*, i16** %t.addr, align 8
  %42 = load i32*, i32** %pm.addr, align 8
  %43 = load i32, i32* %42, align 4
  %call40 = call i16* @pidiv(i16* %41, i32 %43)
  %44 = load i32, i32* %maxpm, align 4
  %call41 = call i32 @picmp(i16* %call40, i32 %44)
  %cmp42 = icmp sle i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else
  store i32 0, i32* %res, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.39
  br label %gotSoln

gotSoln:                                          ; preds = %if.end.46, %if.then.17
  %45 = load i16**, i16*** %f.addr, align 8
  %46 = load i16*, i16** %t.addr, align 8
  %call47 = call i16* @psetq(i16** %45, i16* %46)
  %47 = load i16*, i16** %t.addr, align 8
  %cmp48 = icmp ne i16* %47, null
  br i1 %cmp48, label %land.lhs.true, label %land.end.57

land.lhs.true:                                    ; preds = %gotSoln
  %48 = load i16*, i16** %t.addr, align 8
  %49 = load i16, i16* %48, align 2
  %dec50 = add i16 %49, -1
  store i16 %dec50, i16* %48, align 2
  %conv51 = zext i16 %dec50 to i32
  %cmp52 = icmp eq i32 %conv51, 0
  br i1 %cmp52, label %land.rhs.54, label %land.end.57

land.rhs.54:                                      ; preds = %land.lhs.true
  %50 = load i16*, i16** %t.addr, align 8
  %call55 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %50)
  %tobool56 = icmp ne i32 %call55, 0
  br label %land.end.57

land.end.57:                                      ; preds = %land.rhs.54, %land.lhs.true, %gotSoln
  %51 = phi i1 [ false, %land.lhs.true ], [ false, %gotSoln ], [ %tobool56, %land.rhs.54 ]
  %land.ext58 = zext i1 %51 to i32
  %52 = load i16*, i16** %maxp, align 8
  %cmp59 = icmp ne i16* %52, null
  br i1 %cmp59, label %land.lhs.true.61, label %land.end.69

land.lhs.true.61:                                 ; preds = %land.end.57
  %53 = load i16*, i16** %maxp, align 8
  %54 = load i16, i16* %53, align 2
  %dec62 = add i16 %54, -1
  store i16 %dec62, i16* %53, align 2
  %conv63 = zext i16 %dec62 to i32
  %cmp64 = icmp eq i32 %conv63, 0
  br i1 %cmp64, label %land.rhs.66, label %land.end.69

land.rhs.66:                                      ; preds = %land.lhs.true.61
  %55 = load i16*, i16** %maxp, align 8
  %call67 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %55)
  %tobool68 = icmp ne i32 %call67, 0
  br label %land.end.69

land.end.69:                                      ; preds = %land.rhs.66, %land.lhs.true.61, %land.end.57
  %56 = phi i1 [ false, %land.lhs.true.61 ], [ false, %land.end.57 ], [ %tobool68, %land.rhs.66 ]
  %land.ext70 = zext i1 %56 to i32
  %57 = load i32, i32* %res, align 4
  ret i32 %57
}

declare i32 @podd(i16*) #3

declare i32 @pimod(i16*, i32) #3

declare i16* @pidiv(i16*, i32) #3

; Function Attrs: nounwind uwtable
define i16* @pcfrac(i16* %n, i32* %maxCount) #0 {
entry:
  %n.addr = alloca i16*, align 8
  %maxCount.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %aborts = alloca i32, align 4
  %oddt = alloca %struct.SolnStruc*, align 8
  %sp = alloca %struct.SolnStruc*, align 8
  %bp = alloca %struct.SolnStruc*, align 8
  %b = alloca %struct.SolnStruc**, align 8
  %eas = alloca %struct.EasEntry*, align 8
  %pm = alloca i32*, align 8
  %e = alloca i8*, align 8
  %bsize = alloca i32, align 4
  %s = alloca i32, align 4
  %count = alloca i32, align 4
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i16*, align 8
  %r = alloca i16*, align 8
  %twog = alloca i16*, align 8
  %u = alloca i16*, align 8
  %lastU = alloca i16*, align 8
  %Qn = alloca i16*, align 8
  %lastQn = alloca i16*, align 8
  %An = alloca i16*, align 8
  %lastAn = alloca i16*, align 8
  %x = alloca i16*, align 8
  %y = alloca i16*, align 8
  %qn = alloca i16*, align 8
  %rn = alloca i16*, align 8
  %res = alloca i16*, align 8
  store i16* %n, i16** %n.addr, align 8
  store i32* %maxCount, i32** %maxCount.addr, align 8
  %0 = load i32, i32* @pcfrac_k, align 4
  store i32 %0, i32* %k, align 4
  %1 = load i32, i32* @pcfrac_m, align 4
  store i32 %1, i32* %m, align 4
  %2 = load i32, i32* @pcfrac_aborts, align 4
  store i32 %2, i32* %aborts, align 4
  store %struct.SolnStruc* null, %struct.SolnStruc** %oddt, align 8
  store %struct.EasEntry* null, %struct.EasEntry** %eas, align 8
  store i32* null, i32** %pm, align 8
  store i8* null, i8** %e, align 8
  store i32 0, i32* %s, align 4
  store i32 0, i32* %count, align 4
  store i16* null, i16** %t, align 8
  store i16* null, i16** %r, align 8
  store i16* null, i16** %twog, align 8
  store i16* null, i16** %u, align 8
  store i16* null, i16** %lastU, align 8
  store i16* null, i16** %Qn, align 8
  store i16* null, i16** %lastQn, align 8
  store i16* null, i16** %An, align 8
  store i16* null, i16** %lastAn, align 8
  store i16* null, i16** %x, align 8
  store i16* null, i16** %y, align 8
  store i16* null, i16** %qn, align 8
  store i16* null, i16** %rn, align 8
  %3 = load i16*, i16** %n.addr, align 8
  %cmp = icmp ne i16* %3, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load i16*, i16** %n.addr, align 8
  %5 = load i16, i16* %4, align 2
  %inc = add i16 %5, 1
  store i16 %inc, i16* %4, align 2
  %conv = zext i16 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  %7 = load i16*, i16** %n.addr, align 8
  %call = call i16* @pnew(i16* %7)
  store i16* %call, i16** %res, align 8
  %8 = load i16*, i16** %n.addr, align 8
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %aborts, align 4
  %call1 = call i32* @pfactorbase(i16* %8, i32 %9, i32* %m, i32 %10)
  store i32* %call1, i32** %pm, align 8
  %11 = load i32, i32* %m, align 4
  %add = add i32 %11, 2
  %conv2 = zext i32 %add to i64
  %mul = mul i64 %conv2, 8
  %conv3 = trunc i64 %mul to i32
  store i32 %conv3, i32* %bsize, align 4
  %12 = load i32, i32* %bsize, align 4
  %conv4 = zext i32 %12 to i64
  %call5 = call noalias i8* @malloc(i64 %conv4) #2
  %13 = bitcast i8* %call5 to %struct.SolnStruc**
  store %struct.SolnStruc** %13, %struct.SolnStruc*** %b, align 8
  %14 = load %struct.SolnStruc**, %struct.SolnStruc*** %b, align 8
  %cmp6 = icmp eq %struct.SolnStruc** %14, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  br label %nomem

if.end:                                           ; preds = %land.end
  %15 = load i32, i32* %m, align 4
  %add8 = add i32 %15, 1
  %conv9 = zext i32 %add8 to i64
  %mul10 = mul i64 %conv9, 1
  %call11 = call noalias i8* @malloc(i64 %mul10) #2
  store i8* %call11, i8** %e, align 8
  %16 = load i8*, i8** %e, align 8
  %cmp12 = icmp eq i8* %16, null
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  br label %nomem

nomem:                                            ; preds = %if.then.14, %if.then
  %call15 = call i16* @errorp(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %bail

if.end.16:                                        ; preds = %if.end
  %17 = load %struct.SolnStruc**, %struct.SolnStruc*** %b, align 8
  %18 = bitcast %struct.SolnStruc** %17 to i8*
  %19 = load i32, i32* %bsize, align 4
  %conv17 = zext i32 %19 to i64
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 %conv17, i32 8, i1 false)
  %20 = load i32*, i32** %maxCount.addr, align 8
  %cmp18 = icmp ne i32* %20, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  %21 = load i32*, i32** %maxCount.addr, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %count, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.16
  store i32 0, i32* @cfracNabort, align 4
  store i32 0, i32* @cfracFsolns, align 4
  store i32 0, i32* @cfracT2solns, align 4
  store i32 0, i32* @cfracPsolns, align 4
  store i32 0, i32* @cfracTsolns, align 4
  %23 = load i16*, i16** %n.addr, align 8
  %24 = load i32, i32* %k, align 4
  %25 = load i32*, i32** %pm, align 8
  %26 = load i32, i32* %m, align 4
  %27 = load i32, i32* %aborts, align 4
  %call22 = call %struct.EasEntry* @getEas(i16* %23, i32 %24, i32* %25, i32 %26, i32 %27)
  store %struct.EasEntry* %call22, %struct.EasEntry** %eas, align 8
  %28 = load i32, i32* @verbose, align 4
  %cmp23 = icmp sgt i32 %28, 1
  br i1 %cmp23, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.end.21
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = load i32, i32* %m, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 %30)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.25
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %m, align 4
  %cmp27 = icmp ult i32 %31, %32
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom = zext i32 %34 to i64
  %35 = load i32*, i32** %pm, align 8
  %arrayidx = getelementptr inbounds i32, i32* %35, i64 %idxprom
  %36 = load i32, i32* %arrayidx, align 4
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 %36)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %j, align 4
  %inc30 = add i32 %37, 1
  store i32 %inc30, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call31 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call32 = call i32 @fflush(%struct._IO_FILE* %39)
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %if.end.21
  %40 = load i32, i32* %k, align 4
  %call34 = call i16* @utop(i32 %40)
  %41 = load i16*, i16** %n.addr, align 8
  %call35 = call i16* @pmul(i16* %call34, i16* %41)
  %call36 = call i16* @psetq(i16** %t, i16* %call35)
  %42 = load i16*, i16** %t, align 8
  %call37 = call i16* @psqrt(i16* %42)
  %call38 = call i16* @psetq(i16** %r, i16* %call37)
  %43 = load i16*, i16** %r, align 8
  %44 = load i16*, i16** %r, align 8
  %call39 = call i16* @padd(i16* %43, i16* %44)
  %call40 = call i16* @psetq(i16** %twog, i16* %call39)
  %45 = load i16*, i16** %twog, align 8
  %call41 = call i16* @psetq(i16** %u, i16* %45)
  %46 = load i16*, i16** %twog, align 8
  %call42 = call i16* @psetq(i16** %lastU, i16* %46)
  %47 = load i16*, i16** @pone, align 8
  %call43 = call i16* @psetq(i16** %Qn, i16* %47)
  %48 = load i16*, i16** %t, align 8
  %49 = load i16*, i16** %r, align 8
  %50 = load i16*, i16** %r, align 8
  %call44 = call i16* @pmul(i16* %49, i16* %50)
  %call45 = call i16* @psub(i16* %48, i16* %call44)
  %call46 = call i16* @psetq(i16** %lastQn, i16* %call45)
  %51 = load i16*, i16** @pone, align 8
  %call47 = call i16* @psetq(i16** %An, i16* %51)
  %52 = load i16*, i16** %r, align 8
  %call48 = call i16* @psetq(i16** %lastAn, i16* %52)
  %53 = load i16*, i16** @pzero, align 8
  %call49 = call i16* @psetq(i16** %qn, i16* %53)
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end.33
  br label %F2

F2:                                               ; preds = %if.end.159, %if.end.112, %do.body
  br label %do.body.50

do.body.50:                                       ; preds = %do.cond, %F2
  %54 = load i32, i32* %count, align 4
  %dec = add i32 %54, -1
  store i32 %dec, i32* %count, align 4
  %cmp51 = icmp eq i32 %dec, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %do.body.50
  br label %bail

if.end.54:                                        ; preds = %do.body.50
  %55 = load i16*, i16** %An, align 8
  %call55 = call i16* @psetq(i16** %t, i16* %55)
  %56 = load i16*, i16** %qn, align 8
  %57 = load i16*, i16** %An, align 8
  %call56 = call i16* @pmul(i16* %56, i16* %57)
  %58 = load i16*, i16** %lastAn, align 8
  %call57 = call i16* @padd(i16* %call56, i16* %58)
  %59 = load i16*, i16** %n.addr, align 8
  %call58 = call i16* @pdivmod(i16* %call57, i16* %59, i16** null, i16** %An)
  %60 = load i16*, i16** %t, align 8
  %call59 = call i16* @psetq(i16** %lastAn, i16* %60)
  %61 = load i16*, i16** %Qn, align 8
  %call60 = call i16* @psetq(i16** %t, i16* %61)
  %62 = load i16*, i16** %qn, align 8
  %63 = load i16*, i16** %lastU, align 8
  %64 = load i16*, i16** %u, align 8
  %call61 = call i16* @psub(i16* %63, i16* %64)
  %call62 = call i16* @pmul(i16* %62, i16* %call61)
  %65 = load i16*, i16** %lastQn, align 8
  %call63 = call i16* @padd(i16* %call62, i16* %65)
  %call64 = call i16* @psetq(i16** %Qn, i16* %call63)
  %66 = load i16*, i16** %t, align 8
  %call65 = call i16* @psetq(i16** %lastQn, i16* %66)
  %67 = load i16*, i16** %u, align 8
  %call66 = call i16* @psetq(i16** %lastU, i16* %67)
  %68 = load i16*, i16** @pone, align 8
  %call67 = call i16* @psetq(i16** %qn, i16* %68)
  %69 = load i16*, i16** %u, align 8
  %70 = load i16*, i16** %Qn, align 8
  %call68 = call i16* @psub(i16* %69, i16* %70)
  %call69 = call i16* @psetq(i16** %rn, i16* %call68)
  %71 = load i16*, i16** %rn, align 8
  %72 = load i16*, i16** %Qn, align 8
  %call70 = call i32 @pcmp(i16* %71, i16* %72)
  %cmp71 = icmp sge i32 %call70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.54
  %73 = load i16*, i16** %u, align 8
  %74 = load i16*, i16** %Qn, align 8
  %call74 = call i16* @pdivmod(i16* %73, i16* %74, i16** %qn, i16** %rn)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.54
  %75 = load i16*, i16** %twog, align 8
  %76 = load i16*, i16** %rn, align 8
  %call76 = call i16* @psub(i16* %75, i16* %76)
  %call77 = call i16* @psetq(i16** %u, i16* %call76)
  %77 = load i32, i32* %s, align 4
  %sub = sub i32 1, %77
  store i32 %sub, i32* %s, align 4
  %78 = load i32, i32* %s, align 4
  %conv78 = trunc i32 %78 to i8
  %79 = load i8*, i8** %e, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 %conv78, i8* %arrayidx79, align 1
  %80 = load i16*, i16** %Qn, align 8
  %81 = load i32*, i32** %pm, align 8
  %82 = load i8*, i8** %e, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %82, i64 1
  %83 = load i32, i32* %m, align 4
  %84 = load %struct.EasEntry*, %struct.EasEntry** %eas, align 8
  %call81 = call i32 @pfactorQ(i16** %t, i16* %80, i32* %81, i8* %arrayidx80, i32 %83, %struct.EasEntry* %84)
  store i32 %call81, i32* %i, align 4
  %85 = load i32, i32* %i, align 4
  %cmp82 = icmp slt i32 %85, -1
  br i1 %cmp82, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.end.75
  %86 = load i32, i32* @cfracNabort, align 4
  %inc85 = add i32 %86, 1
  store i32 %inc85, i32* @cfracNabort, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.end.75
  %87 = load i16*, i16** %Qn, align 8
  %call87 = call i32 @picmp(i16* %87, i32 1)
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.end.86
  %call91 = call i16* @errorp(i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0))
  br label %bail

if.end.92:                                        ; preds = %if.end.86
  br label %do.cond

do.cond:                                          ; preds = %if.end.92
  %88 = load i32, i32* %i, align 4
  %cmp93 = icmp slt i32 %88, 0
  br i1 %cmp93, label %do.body.50, label %do.end

do.end:                                           ; preds = %do.cond
  %89 = load i16*, i16** %An, align 8
  %call95 = call i16* @psetq(i16** %x, i16* %89)
  %90 = load i32, i32* %i, align 4
  %cmp96 = icmp eq i32 %90, 0
  br i1 %cmp96, label %if.then.98, label %if.else

if.then.98:                                       ; preds = %do.end
  %91 = load %struct.SolnStruc*, %struct.SolnStruc** %oddt, align 8
  %92 = load i16*, i16** %t, align 8
  %call99 = call %struct.SolnStruc* @findSoln(%struct.SolnStruc* %91, i16* %92)
  store %struct.SolnStruc* %call99, %struct.SolnStruc** %sp, align 8
  %cmp100 = icmp eq %struct.SolnStruc* %call99, null
  br i1 %cmp100, label %if.then.102, label %if.end.114

if.then.102:                                      ; preds = %if.then.98
  %93 = load i32, i32* @cfracTsolns, align 4
  %inc103 = add i32 %93, 1
  store i32 %inc103, i32* @cfracTsolns, align 4
  %94 = load i32, i32* @verbose, align 4
  %cmp104 = icmp sge i32 %94, 2
  br i1 %cmp104, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.then.102
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call107 = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %95)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.then.102
  %96 = load i32, i32* @verbose, align 4
  %cmp109 = icmp sgt i32 %96, 3
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.108
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %98 = load i32*, i32** %pm, align 8
  %99 = load i32, i32* %m, align 4
  %100 = load i16*, i16** %x, align 8
  %101 = load i16*, i16** %t, align 8
  %102 = load i8*, i8** %e, align 8
  call void @printSoln(%struct._IO_FILE* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i32* %98, i32 %99, i16* %100, i16* %101, i8* %102)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.end.108
  %103 = load i16*, i16** %n.addr, align 8
  %104 = load i32*, i32** %pm, align 8
  %105 = load i32, i32* %m, align 4
  %106 = load %struct.SolnStruc*, %struct.SolnStruc** %oddt, align 8
  %107 = load i16*, i16** %x, align 8
  %108 = load i16*, i16** %t, align 8
  %109 = load i8*, i8** %e, align 8
  %call113 = call %struct.SolnStruc* @newSoln(i16* %103, i32* %104, i32 %105, %struct.SolnStruc* %106, i16* %107, i16* %108, i8* %109)
  store %struct.SolnStruc* %call113, %struct.SolnStruc** %oddt, align 8
  br label %F2

if.end.114:                                       ; preds = %if.then.98
  %110 = load i32, i32* @verbose, align 4
  %cmp115 = icmp sgt i32 %110, 3
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.114
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %112 = load i32*, i32** %pm, align 8
  %113 = load i32, i32* %m, align 4
  %114 = load i16*, i16** %x, align 8
  %115 = load i16*, i16** %t, align 8
  %116 = load i8*, i8** %e, align 8
  call void @printSoln(%struct._IO_FILE* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32* %112, i32 %113, i16* %114, i16* %115, i8* %116)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.end.114
  %117 = load i16*, i16** @pone, align 8
  %call119 = call i16* @psetq(i16** %t, i16* %117)
  %118 = load i8*, i8** %e, align 8
  %119 = load i32*, i32** %pm, align 8
  %120 = load i32, i32* %m, align 4
  %121 = load i16*, i16** %n.addr, align 8
  %122 = load %struct.SolnStruc*, %struct.SolnStruc** %sp, align 8
  call void @combineSoln(i16** %x, i16** %t, i8* %118, i32* %119, i32 %120, i16* %121, %struct.SolnStruc* %122)
  %123 = load i32, i32* @cfracT2solns, align 4
  %inc120 = add i32 %123, 1
  store i32 %inc120, i32* @cfracT2solns, align 4
  %124 = load i32, i32* @verbose, align 4
  %tobool121 = icmp ne i32 %124, 0
  br i1 %tobool121, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %if.end.118
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call123 = call i32 @_IO_putc(i32 35, %struct._IO_FILE* %125)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.end.118
  %126 = load i32, i32* @verbose, align 4
  %cmp125 = icmp sgt i32 %126, 2
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.124
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %128 = load i32*, i32** %pm, align 8
  %129 = load i32, i32* %m, align 4
  %130 = load i16*, i16** %x, align 8
  %131 = load i16*, i16** %t, align 8
  %132 = load i8*, i8** %e, align 8
  call void @printSoln(%struct._IO_FILE* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i32* %128, i32 %129, i16* %130, i16* %131, i8* %132)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %if.end.124
  br label %if.end.138

if.else:                                          ; preds = %do.end
  %133 = load i8*, i8** %e, align 8
  %134 = load i32*, i32** %pm, align 8
  %135 = load i32, i32* %m, align 4
  %136 = load i16*, i16** %n.addr, align 8
  call void @combineSoln(i16** %x, i16** %t, i8* %133, i32* %134, i32 %135, i16* %136, %struct.SolnStruc* null)
  %137 = load i32, i32* @cfracPsolns, align 4
  %inc129 = add i32 %137, 1
  store i32 %inc129, i32* @cfracPsolns, align 4
  %138 = load i32, i32* @verbose, align 4
  %tobool130 = icmp ne i32 %138, 0
  br i1 %tobool130, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %if.else
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call132 = call i32 @_IO_putc(i32 42, %struct._IO_FILE* %139)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %if.else
  %140 = load i32, i32* @verbose, align 4
  %cmp134 = icmp sgt i32 %140, 2
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.133
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %142 = load i32*, i32** %pm, align 8
  %143 = load i32, i32* %m, align 4
  %144 = load i16*, i16** %x, align 8
  %145 = load i16*, i16** %t, align 8
  %146 = load i8*, i8** %e, align 8
  call void @printSoln(%struct._IO_FILE* %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i32* %142, i32 %143, i16* %144, i16* %145, i8* %146)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.end.133
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.128
  %147 = load i32, i32* %m, align 4
  %add139 = add i32 %147, 1
  store i32 %add139, i32* %h, align 4
  br label %do.body.140

do.body.140:                                      ; preds = %do.cond.165, %if.end.138
  %148 = load i32, i32* %h, align 4
  %dec141 = add i32 %148, -1
  store i32 %dec141, i32* %h, align 4
  %149 = load i32, i32* %h, align 4
  %idxprom142 = zext i32 %149 to i64
  %150 = load i8*, i8** %e, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %150, i64 %idxprom142
  %151 = load i8, i8* %arrayidx143, align 1
  %tobool144 = icmp ne i8 %151, 0
  br i1 %tobool144, label %if.then.145, label %if.end.164

if.then.145:                                      ; preds = %do.body.140
  %152 = load i32, i32* %h, align 4
  %idxprom146 = zext i32 %152 to i64
  %153 = load %struct.SolnStruc**, %struct.SolnStruc*** %b, align 8
  %arrayidx147 = getelementptr inbounds %struct.SolnStruc*, %struct.SolnStruc** %153, i64 %idxprom146
  %154 = load %struct.SolnStruc*, %struct.SolnStruc** %arrayidx147, align 8
  store %struct.SolnStruc* %154, %struct.SolnStruc** %bp, align 8
  %155 = load %struct.SolnStruc*, %struct.SolnStruc** %bp, align 8
  %cmp148 = icmp eq %struct.SolnStruc* %155, null
  br i1 %cmp148, label %if.then.150, label %if.end.163

if.then.150:                                      ; preds = %if.then.145
  %156 = load i32, i32* @verbose, align 4
  %cmp151 = icmp sgt i32 %156, 3
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.then.150
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %158 = load i32*, i32** %pm, align 8
  %159 = load i32, i32* %m, align 4
  %160 = load i16*, i16** %x, align 8
  %161 = load i16*, i16** %t, align 8
  %162 = load i8*, i8** %e, align 8
  call void @printSoln(%struct._IO_FILE* %157, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i32* %158, i32 %159, i16* %160, i16* %161, i8* %162)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %if.then.150
  %163 = load i32, i32* @verbose, align 4
  %cmp155 = icmp sgt i32 %163, 2
  br i1 %cmp155, label %if.then.157, label %if.end.159

if.then.157:                                      ; preds = %if.end.154
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call158 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %164)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.157, %if.end.154
  %165 = load i16*, i16** %n.addr, align 8
  %166 = load i32*, i32** %pm, align 8
  %167 = load i32, i32* %m, align 4
  %168 = load %struct.SolnStruc*, %struct.SolnStruc** %bp, align 8
  %169 = load i16*, i16** %x, align 8
  %170 = load i16*, i16** %t, align 8
  %171 = load i8*, i8** %e, align 8
  %call160 = call %struct.SolnStruc* @newSoln(i16* %165, i32* %166, i32 %167, %struct.SolnStruc* %168, i16* %169, i16* %170, i8* %171)
  %172 = load i32, i32* %h, align 4
  %idxprom161 = zext i32 %172 to i64
  %173 = load %struct.SolnStruc**, %struct.SolnStruc*** %b, align 8
  %arrayidx162 = getelementptr inbounds %struct.SolnStruc*, %struct.SolnStruc** %173, i64 %idxprom161
  store %struct.SolnStruc* %call160, %struct.SolnStruc** %arrayidx162, align 8
  br label %F2

if.end.163:                                       ; preds = %if.then.145
  %174 = load i8*, i8** %e, align 8
  %175 = load i32*, i32** %pm, align 8
  %176 = load i32, i32* %m, align 4
  %177 = load i16*, i16** %n.addr, align 8
  %178 = load %struct.SolnStruc*, %struct.SolnStruc** %bp, align 8
  call void @combineSoln(i16** %x, i16** %t, i8* %174, i32* %175, i32 %176, i16* %177, %struct.SolnStruc* %178)
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %do.body.140
  br label %do.cond.165

do.cond.165:                                      ; preds = %if.end.164
  %179 = load i32, i32* %h, align 4
  %cmp166 = icmp ne i32 %179, 0
  br i1 %cmp166, label %do.body.140, label %do.end.168

do.end.168:                                       ; preds = %do.cond.165
  %180 = load i32, i32* @cfracFsolns, align 4
  %inc169 = add i32 %180, 1
  store i32 %inc169, i32* @cfracFsolns, align 4
  %181 = load i16*, i16** %t, align 8
  %call170 = call i16* @psetq(i16** %y, i16* %181)
  %182 = load i32, i32* @verbose, align 4
  switch i32 %182, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.171
    i32 2, label %sw.bb.173
  ]

sw.bb:                                            ; preds = %do.end.168
  br label %sw.epilog

sw.bb.171:                                        ; preds = %do.end.168
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call172 = call i32 @_IO_putc(i32 47, %struct._IO_FILE* %183)
  br label %sw.epilog

sw.bb.173:                                        ; preds = %do.end.168
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call174 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %184)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.168
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call175 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %185)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %187 = load i32*, i32** %pm, align 8
  %188 = load i32, i32* %m, align 4
  %189 = load i16*, i16** %x, align 8
  %190 = load i16*, i16** %t, align 8
  %191 = load i8*, i8** %e, align 8
  call void @printSoln(%struct._IO_FILE* %186, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i32* %187, i32 %188, i16* %189, i16* %190, i8* %191)
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call176 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %192)
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %194 = load i16*, i16** %x, align 8
  %call177 = call i32 @fputp(%struct._IO_FILE* %193, i16* %194)
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call178 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %195)
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %197 = load i16*, i16** %y, align 8
  %call179 = call i32 @fputp(%struct._IO_FILE* %196, i16* %197)
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call180 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %198)
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call181 = call i32 @fflush(%struct._IO_FILE* %199)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.173, %sw.bb.171, %sw.bb
  br label %do.cond.182

do.cond.182:                                      ; preds = %sw.epilog
  %200 = load i16*, i16** %x, align 8
  %201 = load i16*, i16** %y, align 8
  %call183 = call i32 @pcmp(i16* %200, i16* %201)
  %cmp184 = icmp eq i32 %call183, 0
  br i1 %cmp184, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond.182
  %202 = load i16*, i16** %x, align 8
  %203 = load i16*, i16** %y, align 8
  %call186 = call i16* @padd(i16* %202, i16* %203)
  %204 = load i16*, i16** %n.addr, align 8
  %call187 = call i32 @pcmp(i16* %call186, i16* %204)
  %cmp188 = icmp eq i32 %call187, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond.182
  %205 = phi i1 [ true, %do.cond.182 ], [ %cmp188, %lor.rhs ]
  br i1 %205, label %do.body, label %do.end.190

do.end.190:                                       ; preds = %lor.end
  %206 = load i16*, i16** %x, align 8
  %207 = load i16*, i16** %y, align 8
  %call191 = call i16* @padd(i16* %206, i16* %207)
  %208 = load i16*, i16** %n.addr, align 8
  %call192 = call i16* @pgcd(i16* %call191, i16* %208)
  %call193 = call i16* @psetq(i16** %res, i16* %call192)
  %209 = load i16*, i16** %res, align 8
  %210 = load i16*, i16** @pone, align 8
  %call194 = call i32 @pcmp(i16* %209, i16* %210)
  %cmp195 = icmp eq i32 %call194, 0
  br i1 %cmp195, label %if.then.200, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.190
  %211 = load i16*, i16** %res, align 8
  %212 = load i16*, i16** %n.addr, align 8
  %call197 = call i32 @pcmp(i16* %211, i16* %212)
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %if.then.200, label %if.end.208

if.then.200:                                      ; preds = %lor.lhs.false, %do.end.190
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call201 = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %213)
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call202 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %214)
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %216 = load i16*, i16** %x, align 8
  %call203 = call i32 @fputp(%struct._IO_FILE* %215, i16* %216)
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call204 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %217)
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %219 = load i16*, i16** %y, align 8
  %call205 = call i32 @fputp(%struct._IO_FILE* %218, i16* %219)
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call206 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %220)
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call207 = call i32 @fflush(%struct._IO_FILE* %221)
  call void @abort() #5
  unreachable

if.end.208:                                       ; preds = %lor.lhs.false
  br label %bail

bail:                                             ; preds = %if.end.208, %if.then.90, %if.then.53, %nomem
  %222 = load i32*, i32** %maxCount.addr, align 8
  %cmp209 = icmp ne i32* %222, null
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %bail
  %223 = load i32, i32* %count, align 4
  %224 = load i32*, i32** %maxCount.addr, align 8
  store i32 %223, i32* %224, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.211, %bail
  %225 = load %struct.SolnStruc**, %struct.SolnStruc*** %b, align 8
  %cmp213 = icmp ne %struct.SolnStruc** %225, null
  br i1 %cmp213, label %if.then.215, label %if.end.225

if.then.215:                                      ; preds = %if.end.212
  store i32 0, i32* %j, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.222, %if.then.215
  %226 = load i32, i32* %j, align 4
  %227 = load i32, i32* %m, align 4
  %cmp217 = icmp ule i32 %226, %227
  br i1 %cmp217, label %for.body.219, label %for.end.224

for.body.219:                                     ; preds = %for.cond.216
  %228 = load i32, i32* %j, align 4
  %idxprom220 = zext i32 %228 to i64
  %229 = load %struct.SolnStruc**, %struct.SolnStruc*** %b, align 8
  %arrayidx221 = getelementptr inbounds %struct.SolnStruc*, %struct.SolnStruc** %229, i64 %idxprom220
  %230 = load %struct.SolnStruc*, %struct.SolnStruc** %arrayidx221, align 8
  call void @freeSoln(%struct.SolnStruc* %230)
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body.219
  %231 = load i32, i32* %j, align 4
  %inc223 = add i32 %231, 1
  store i32 %inc223, i32* %j, align 4
  br label %for.cond.216

for.end.224:                                      ; preds = %for.cond.216
  br label %if.end.225

if.end.225:                                       ; preds = %for.end.224, %if.end.212
  %232 = load %struct.EasEntry*, %struct.EasEntry** %eas, align 8
  call void @freeEas(%struct.EasEntry* %232)
  %233 = load %struct.SolnStruc*, %struct.SolnStruc** %oddt, align 8
  call void @freeSolns(%struct.SolnStruc* %233)
  %234 = load i8*, i8** %e, align 8
  call void @free(i8* %234) #2
  %235 = load i32*, i32** %pm, align 8
  %236 = bitcast i32* %235 to i8*
  call void @free(i8* %236) #2
  %237 = load i16*, i16** %r, align 8
  %cmp226 = icmp ne i16* %237, null
  br i1 %cmp226, label %land.lhs.true, label %land.end.235

land.lhs.true:                                    ; preds = %if.end.225
  %238 = load i16*, i16** %r, align 8
  %239 = load i16, i16* %238, align 2
  %dec228 = add i16 %239, -1
  store i16 %dec228, i16* %238, align 2
  %conv229 = zext i16 %dec228 to i32
  %cmp230 = icmp eq i32 %conv229, 0
  br i1 %cmp230, label %land.rhs.232, label %land.end.235

land.rhs.232:                                     ; preds = %land.lhs.true
  %240 = load i16*, i16** %r, align 8
  %call233 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %240)
  %tobool234 = icmp ne i32 %call233, 0
  br label %land.end.235

land.end.235:                                     ; preds = %land.rhs.232, %land.lhs.true, %if.end.225
  %241 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.225 ], [ %tobool234, %land.rhs.232 ]
  %land.ext236 = zext i1 %241 to i32
  %242 = load i16*, i16** %twog, align 8
  %cmp237 = icmp ne i16* %242, null
  br i1 %cmp237, label %land.lhs.true.239, label %land.end.247

land.lhs.true.239:                                ; preds = %land.end.235
  %243 = load i16*, i16** %twog, align 8
  %244 = load i16, i16* %243, align 2
  %dec240 = add i16 %244, -1
  store i16 %dec240, i16* %243, align 2
  %conv241 = zext i16 %dec240 to i32
  %cmp242 = icmp eq i32 %conv241, 0
  br i1 %cmp242, label %land.rhs.244, label %land.end.247

land.rhs.244:                                     ; preds = %land.lhs.true.239
  %245 = load i16*, i16** %twog, align 8
  %call245 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %245)
  %tobool246 = icmp ne i32 %call245, 0
  br label %land.end.247

land.end.247:                                     ; preds = %land.rhs.244, %land.lhs.true.239, %land.end.235
  %246 = phi i1 [ false, %land.lhs.true.239 ], [ false, %land.end.235 ], [ %tobool246, %land.rhs.244 ]
  %land.ext248 = zext i1 %246 to i32
  %247 = load i16*, i16** %u, align 8
  %cmp249 = icmp ne i16* %247, null
  br i1 %cmp249, label %land.lhs.true.251, label %land.end.259

land.lhs.true.251:                                ; preds = %land.end.247
  %248 = load i16*, i16** %u, align 8
  %249 = load i16, i16* %248, align 2
  %dec252 = add i16 %249, -1
  store i16 %dec252, i16* %248, align 2
  %conv253 = zext i16 %dec252 to i32
  %cmp254 = icmp eq i32 %conv253, 0
  br i1 %cmp254, label %land.rhs.256, label %land.end.259

land.rhs.256:                                     ; preds = %land.lhs.true.251
  %250 = load i16*, i16** %u, align 8
  %call257 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %250)
  %tobool258 = icmp ne i32 %call257, 0
  br label %land.end.259

land.end.259:                                     ; preds = %land.rhs.256, %land.lhs.true.251, %land.end.247
  %251 = phi i1 [ false, %land.lhs.true.251 ], [ false, %land.end.247 ], [ %tobool258, %land.rhs.256 ]
  %land.ext260 = zext i1 %251 to i32
  %252 = load i16*, i16** %lastU, align 8
  %cmp261 = icmp ne i16* %252, null
  br i1 %cmp261, label %land.lhs.true.263, label %land.end.271

land.lhs.true.263:                                ; preds = %land.end.259
  %253 = load i16*, i16** %lastU, align 8
  %254 = load i16, i16* %253, align 2
  %dec264 = add i16 %254, -1
  store i16 %dec264, i16* %253, align 2
  %conv265 = zext i16 %dec264 to i32
  %cmp266 = icmp eq i32 %conv265, 0
  br i1 %cmp266, label %land.rhs.268, label %land.end.271

land.rhs.268:                                     ; preds = %land.lhs.true.263
  %255 = load i16*, i16** %lastU, align 8
  %call269 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %255)
  %tobool270 = icmp ne i32 %call269, 0
  br label %land.end.271

land.end.271:                                     ; preds = %land.rhs.268, %land.lhs.true.263, %land.end.259
  %256 = phi i1 [ false, %land.lhs.true.263 ], [ false, %land.end.259 ], [ %tobool270, %land.rhs.268 ]
  %land.ext272 = zext i1 %256 to i32
  %257 = load i16*, i16** %Qn, align 8
  %cmp273 = icmp ne i16* %257, null
  br i1 %cmp273, label %land.lhs.true.275, label %land.end.283

land.lhs.true.275:                                ; preds = %land.end.271
  %258 = load i16*, i16** %Qn, align 8
  %259 = load i16, i16* %258, align 2
  %dec276 = add i16 %259, -1
  store i16 %dec276, i16* %258, align 2
  %conv277 = zext i16 %dec276 to i32
  %cmp278 = icmp eq i32 %conv277, 0
  br i1 %cmp278, label %land.rhs.280, label %land.end.283

land.rhs.280:                                     ; preds = %land.lhs.true.275
  %260 = load i16*, i16** %Qn, align 8
  %call281 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %260)
  %tobool282 = icmp ne i32 %call281, 0
  br label %land.end.283

land.end.283:                                     ; preds = %land.rhs.280, %land.lhs.true.275, %land.end.271
  %261 = phi i1 [ false, %land.lhs.true.275 ], [ false, %land.end.271 ], [ %tobool282, %land.rhs.280 ]
  %land.ext284 = zext i1 %261 to i32
  %262 = load i16*, i16** %lastQn, align 8
  %cmp285 = icmp ne i16* %262, null
  br i1 %cmp285, label %land.lhs.true.287, label %land.end.295

land.lhs.true.287:                                ; preds = %land.end.283
  %263 = load i16*, i16** %lastQn, align 8
  %264 = load i16, i16* %263, align 2
  %dec288 = add i16 %264, -1
  store i16 %dec288, i16* %263, align 2
  %conv289 = zext i16 %dec288 to i32
  %cmp290 = icmp eq i32 %conv289, 0
  br i1 %cmp290, label %land.rhs.292, label %land.end.295

land.rhs.292:                                     ; preds = %land.lhs.true.287
  %265 = load i16*, i16** %lastQn, align 8
  %call293 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %265)
  %tobool294 = icmp ne i32 %call293, 0
  br label %land.end.295

land.end.295:                                     ; preds = %land.rhs.292, %land.lhs.true.287, %land.end.283
  %266 = phi i1 [ false, %land.lhs.true.287 ], [ false, %land.end.283 ], [ %tobool294, %land.rhs.292 ]
  %land.ext296 = zext i1 %266 to i32
  %267 = load i16*, i16** %An, align 8
  %cmp297 = icmp ne i16* %267, null
  br i1 %cmp297, label %land.lhs.true.299, label %land.end.307

land.lhs.true.299:                                ; preds = %land.end.295
  %268 = load i16*, i16** %An, align 8
  %269 = load i16, i16* %268, align 2
  %dec300 = add i16 %269, -1
  store i16 %dec300, i16* %268, align 2
  %conv301 = zext i16 %dec300 to i32
  %cmp302 = icmp eq i32 %conv301, 0
  br i1 %cmp302, label %land.rhs.304, label %land.end.307

land.rhs.304:                                     ; preds = %land.lhs.true.299
  %270 = load i16*, i16** %An, align 8
  %call305 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %270)
  %tobool306 = icmp ne i32 %call305, 0
  br label %land.end.307

land.end.307:                                     ; preds = %land.rhs.304, %land.lhs.true.299, %land.end.295
  %271 = phi i1 [ false, %land.lhs.true.299 ], [ false, %land.end.295 ], [ %tobool306, %land.rhs.304 ]
  %land.ext308 = zext i1 %271 to i32
  %272 = load i16*, i16** %lastAn, align 8
  %cmp309 = icmp ne i16* %272, null
  br i1 %cmp309, label %land.lhs.true.311, label %land.end.319

land.lhs.true.311:                                ; preds = %land.end.307
  %273 = load i16*, i16** %lastAn, align 8
  %274 = load i16, i16* %273, align 2
  %dec312 = add i16 %274, -1
  store i16 %dec312, i16* %273, align 2
  %conv313 = zext i16 %dec312 to i32
  %cmp314 = icmp eq i32 %conv313, 0
  br i1 %cmp314, label %land.rhs.316, label %land.end.319

land.rhs.316:                                     ; preds = %land.lhs.true.311
  %275 = load i16*, i16** %lastAn, align 8
  %call317 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %275)
  %tobool318 = icmp ne i32 %call317, 0
  br label %land.end.319

land.end.319:                                     ; preds = %land.rhs.316, %land.lhs.true.311, %land.end.307
  %276 = phi i1 [ false, %land.lhs.true.311 ], [ false, %land.end.307 ], [ %tobool318, %land.rhs.316 ]
  %land.ext320 = zext i1 %276 to i32
  %277 = load i16*, i16** %x, align 8
  %cmp321 = icmp ne i16* %277, null
  br i1 %cmp321, label %land.lhs.true.323, label %land.end.331

land.lhs.true.323:                                ; preds = %land.end.319
  %278 = load i16*, i16** %x, align 8
  %279 = load i16, i16* %278, align 2
  %dec324 = add i16 %279, -1
  store i16 %dec324, i16* %278, align 2
  %conv325 = zext i16 %dec324 to i32
  %cmp326 = icmp eq i32 %conv325, 0
  br i1 %cmp326, label %land.rhs.328, label %land.end.331

land.rhs.328:                                     ; preds = %land.lhs.true.323
  %280 = load i16*, i16** %x, align 8
  %call329 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %280)
  %tobool330 = icmp ne i32 %call329, 0
  br label %land.end.331

land.end.331:                                     ; preds = %land.rhs.328, %land.lhs.true.323, %land.end.319
  %281 = phi i1 [ false, %land.lhs.true.323 ], [ false, %land.end.319 ], [ %tobool330, %land.rhs.328 ]
  %land.ext332 = zext i1 %281 to i32
  %282 = load i16*, i16** %y, align 8
  %cmp333 = icmp ne i16* %282, null
  br i1 %cmp333, label %land.lhs.true.335, label %land.end.343

land.lhs.true.335:                                ; preds = %land.end.331
  %283 = load i16*, i16** %y, align 8
  %284 = load i16, i16* %283, align 2
  %dec336 = add i16 %284, -1
  store i16 %dec336, i16* %283, align 2
  %conv337 = zext i16 %dec336 to i32
  %cmp338 = icmp eq i32 %conv337, 0
  br i1 %cmp338, label %land.rhs.340, label %land.end.343

land.rhs.340:                                     ; preds = %land.lhs.true.335
  %285 = load i16*, i16** %y, align 8
  %call341 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %285)
  %tobool342 = icmp ne i32 %call341, 0
  br label %land.end.343

land.end.343:                                     ; preds = %land.rhs.340, %land.lhs.true.335, %land.end.331
  %286 = phi i1 [ false, %land.lhs.true.335 ], [ false, %land.end.331 ], [ %tobool342, %land.rhs.340 ]
  %land.ext344 = zext i1 %286 to i32
  %287 = load i16*, i16** %qn, align 8
  %cmp345 = icmp ne i16* %287, null
  br i1 %cmp345, label %land.lhs.true.347, label %land.end.355

land.lhs.true.347:                                ; preds = %land.end.343
  %288 = load i16*, i16** %qn, align 8
  %289 = load i16, i16* %288, align 2
  %dec348 = add i16 %289, -1
  store i16 %dec348, i16* %288, align 2
  %conv349 = zext i16 %dec348 to i32
  %cmp350 = icmp eq i32 %conv349, 0
  br i1 %cmp350, label %land.rhs.352, label %land.end.355

land.rhs.352:                                     ; preds = %land.lhs.true.347
  %290 = load i16*, i16** %qn, align 8
  %call353 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %290)
  %tobool354 = icmp ne i32 %call353, 0
  br label %land.end.355

land.end.355:                                     ; preds = %land.rhs.352, %land.lhs.true.347, %land.end.343
  %291 = phi i1 [ false, %land.lhs.true.347 ], [ false, %land.end.343 ], [ %tobool354, %land.rhs.352 ]
  %land.ext356 = zext i1 %291 to i32
  %292 = load i16*, i16** %rn, align 8
  %cmp357 = icmp ne i16* %292, null
  br i1 %cmp357, label %land.lhs.true.359, label %land.end.367

land.lhs.true.359:                                ; preds = %land.end.355
  %293 = load i16*, i16** %rn, align 8
  %294 = load i16, i16* %293, align 2
  %dec360 = add i16 %294, -1
  store i16 %dec360, i16* %293, align 2
  %conv361 = zext i16 %dec360 to i32
  %cmp362 = icmp eq i32 %conv361, 0
  br i1 %cmp362, label %land.rhs.364, label %land.end.367

land.rhs.364:                                     ; preds = %land.lhs.true.359
  %295 = load i16*, i16** %rn, align 8
  %call365 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %295)
  %tobool366 = icmp ne i32 %call365, 0
  br label %land.end.367

land.end.367:                                     ; preds = %land.rhs.364, %land.lhs.true.359, %land.end.355
  %296 = phi i1 [ false, %land.lhs.true.359 ], [ false, %land.end.355 ], [ %tobool366, %land.rhs.364 ]
  %land.ext368 = zext i1 %296 to i32
  %297 = load i16*, i16** %t, align 8
  %cmp369 = icmp ne i16* %297, null
  br i1 %cmp369, label %land.lhs.true.371, label %land.end.379

land.lhs.true.371:                                ; preds = %land.end.367
  %298 = load i16*, i16** %t, align 8
  %299 = load i16, i16* %298, align 2
  %dec372 = add i16 %299, -1
  store i16 %dec372, i16* %298, align 2
  %conv373 = zext i16 %dec372 to i32
  %cmp374 = icmp eq i32 %conv373, 0
  br i1 %cmp374, label %land.rhs.376, label %land.end.379

land.rhs.376:                                     ; preds = %land.lhs.true.371
  %300 = load i16*, i16** %t, align 8
  %call377 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %300)
  %tobool378 = icmp ne i32 %call377, 0
  br label %land.end.379

land.end.379:                                     ; preds = %land.rhs.376, %land.lhs.true.371, %land.end.367
  %301 = phi i1 [ false, %land.lhs.true.371 ], [ false, %land.end.367 ], [ %tobool378, %land.rhs.376 ]
  %land.ext380 = zext i1 %301 to i32
  %302 = load i16*, i16** %n.addr, align 8
  %cmp381 = icmp ne i16* %302, null
  br i1 %cmp381, label %land.lhs.true.383, label %land.end.391

land.lhs.true.383:                                ; preds = %land.end.379
  %303 = load i16*, i16** %n.addr, align 8
  %304 = load i16, i16* %303, align 2
  %dec384 = add i16 %304, -1
  store i16 %dec384, i16* %303, align 2
  %conv385 = zext i16 %dec384 to i32
  %cmp386 = icmp eq i32 %conv385, 0
  br i1 %cmp386, label %land.rhs.388, label %land.end.391

land.rhs.388:                                     ; preds = %land.lhs.true.383
  %305 = load i16*, i16** %n.addr, align 8
  %call389 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %305)
  %tobool390 = icmp ne i32 %call389, 0
  br label %land.end.391

land.end.391:                                     ; preds = %land.rhs.388, %land.lhs.true.383, %land.end.379
  %306 = phi i1 [ false, %land.lhs.true.383 ], [ false, %land.end.379 ], [ %tobool390, %land.rhs.388 ]
  %land.ext392 = zext i1 %306 to i32
  %307 = load i16*, i16** %res, align 8
  %call393 = call i16* @presult(i16* %307)
  ret i16* %call393
}

declare i16* @errorp(i32, i8*, i8*) #3

declare i16* @psqrt(i16*) #3

declare i16* @padd(i16*, i16*) #3

declare i16* @pgcd(i16*, i16*) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

declare i16* @presult(i16*) #3

; Function Attrs: nounwind uwtable
define i32 @pcfracInit(i32 %m, i32 %k, i32 %aborts) #0 {
entry:
  %m.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %aborts.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  store i32 %aborts, i32* %aborts.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  store i32 %0, i32* @pcfrac_m, align 4
  %1 = load i32, i32* %k.addr, align 4
  store i32 %1, i32* @pcfrac_k, align 4
  %2 = load i32, i32* %aborts.addr, align 4
  store i32 %2, i32* @pcfrac_aborts, align 4
  ret i32 1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
