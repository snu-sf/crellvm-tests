; ModuleID = 'blocksort.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.EState = type { %struct.bz_stream*, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i8*, i16*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [38 x i8] c"      %d work, %d block, ratio %5.2f\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"    too repetitive; using fallback sorting algorithm\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"        bucket sorting ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"        depth %6d has \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%6d unresolved strings\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"        reconstructing block ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"        main sort initialise ...\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"        qsort [0x%x, 0x%x]   done %d   this %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"        %d pointers, %d sorted, %d scanned\0A\00", align 1
@incs = internal global [14 x i32] [i32 1, i32 4, i32 13, i32 40, i32 121, i32 364, i32 1093, i32 3280, i32 9841, i32 29524, i32 88573, i32 265720, i32 797161, i32 2391484], align 16

; Function Attrs: nounwind uwtable
define void @BZ2_blockSort(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %ptr = alloca i32*, align 8
  %block = alloca i8*, align 8
  %ftab = alloca i32*, align 8
  %nblock = alloca i32, align 4
  %verb = alloca i32, align 4
  %wfact = alloca i32, align 4
  %quadrant = alloca i16*, align 8
  %budget = alloca i32, align 4
  %budgetInit = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %ptr1 = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 8
  %1 = load i32*, i32** %ptr1, align 8
  store i32* %1, i32** %ptr, align 8
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block2 = getelementptr inbounds %struct.EState, %struct.EState* %2, i32 0, i32 9
  %3 = load i8*, i8** %block2, align 8
  store i8* %3, i8** %block, align 8
  %4 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %ftab3 = getelementptr inbounds %struct.EState, %struct.EState* %4, i32 0, i32 6
  %5 = load i32*, i32** %ftab3, align 8
  store i32* %5, i32** %ftab, align 8
  %6 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock4 = getelementptr inbounds %struct.EState, %struct.EState* %6, i32 0, i32 17
  %7 = load i32, i32* %nblock4, align 4
  store i32 %7, i32* %nblock, align 4
  %8 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %verbosity = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 28
  %9 = load i32, i32* %verbosity, align 4
  store i32 %9, i32* %verb, align 4
  %10 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %workFactor = getelementptr inbounds %struct.EState, %struct.EState* %10, i32 0, i32 12
  %11 = load i32, i32* %workFactor, align 4
  store i32 %11, i32* %wfact, align 4
  %12 = load i32, i32* %nblock, align 4
  %cmp = icmp slt i32 %12, 10000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %arr1 = getelementptr inbounds %struct.EState, %struct.EState* %13, i32 0, i32 4
  %14 = load i32*, i32** %arr1, align 8
  %15 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %arr2 = getelementptr inbounds %struct.EState, %struct.EState* %15, i32 0, i32 5
  %16 = load i32*, i32** %arr2, align 8
  %17 = load i32*, i32** %ftab, align 8
  %18 = load i32, i32* %nblock, align 4
  %19 = load i32, i32* %verb, align 4
  call void @fallbackSort(i32* %14, i32* %16, i32* %17, i32 %18, i32 %19)
  br label %if.end.33

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %nblock, align 4
  %add = add nsw i32 %20, 34
  store i32 %add, i32* %i, align 4
  %21 = load i32, i32* %i, align 4
  %and = and i32 %21, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i8*, i8** %block, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = bitcast i8* %arrayidx to i16*
  store i16* %25, i16** %quadrant, align 8
  %26 = load i32, i32* %wfact, align 4
  %cmp6 = icmp slt i32 %26, 1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 1, i32* %wfact, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %27 = load i32, i32* %wfact, align 4
  %cmp9 = icmp sgt i32 %27, 100
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i32 100, i32* %wfact, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %28 = load i32, i32* %nblock, align 4
  %29 = load i32, i32* %wfact, align 4
  %sub = sub nsw i32 %29, 1
  %div = sdiv i32 %sub, 3
  %mul = mul nsw i32 %28, %div
  store i32 %mul, i32* %budgetInit, align 4
  %30 = load i32, i32* %budgetInit, align 4
  store i32 %30, i32* %budget, align 4
  %31 = load i32*, i32** %ptr, align 8
  %32 = load i8*, i8** %block, align 8
  %33 = load i16*, i16** %quadrant, align 8
  %34 = load i32*, i32** %ftab, align 8
  %35 = load i32, i32* %nblock, align 4
  %36 = load i32, i32* %verb, align 4
  call void @mainSort(i32* %31, i8* %32, i16* %33, i32* %34, i32 %35, i32 %36, i32* %budget)
  %37 = load i32, i32* %verb, align 4
  %cmp12 = icmp sge i32 %37, 3
  br i1 %cmp12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end.11
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load i32, i32* %budgetInit, align 4
  %40 = load i32, i32* %budget, align 4
  %sub14 = sub nsw i32 %39, %40
  %41 = load i32, i32* %nblock, align 4
  %42 = load i32, i32* %budgetInit, align 4
  %43 = load i32, i32* %budget, align 4
  %sub15 = sub nsw i32 %42, %43
  %conv = sitofp i32 %sub15 to float
  %44 = load i32, i32* %nblock, align 4
  %cmp16 = icmp eq i32 %44, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.13
  br label %cond.end

cond.false:                                       ; preds = %if.then.13
  %45 = load i32, i32* %nblock, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %45, %cond.false ]
  %conv18 = sitofp i32 %cond to float
  %div19 = fdiv float %conv, %conv18
  %conv20 = fpext float %div19 to double
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %sub14, i32 %41, double %conv20)
  br label %if.end.21

if.end.21:                                        ; preds = %cond.end, %if.end.11
  %46 = load i32, i32* %budget, align 4
  %cmp22 = icmp slt i32 %46, 0
  br i1 %cmp22, label %if.then.24, label %if.end.32

if.then.24:                                       ; preds = %if.end.21
  %47 = load i32, i32* %verb, align 4
  %cmp25 = icmp sge i32 %47, 2
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.24
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.24
  %49 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %arr130 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 4
  %50 = load i32*, i32** %arr130, align 8
  %51 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %arr231 = getelementptr inbounds %struct.EState, %struct.EState* %51, i32 0, i32 5
  %52 = load i32*, i32** %arr231, align 8
  %53 = load i32*, i32** %ftab, align 8
  %54 = load i32, i32* %nblock, align 4
  %55 = load i32, i32* %verb, align 4
  call void @fallbackSort(i32* %50, i32* %52, i32* %53, i32 %54, i32 %55)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.29, %if.end.21
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  %56 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %origPtr = getelementptr inbounds %struct.EState, %struct.EState* %56, i32 0, i32 7
  store i32 -1, i32* %origPtr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %57 = load i32, i32* %i, align 4
  %58 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock34 = getelementptr inbounds %struct.EState, %struct.EState* %58, i32 0, i32 17
  %59 = load i32, i32* %nblock34, align 4
  %cmp35 = icmp slt i32 %57, %59
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %60 to i64
  %61 = load i32*, i32** %ptr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %61, i64 %idxprom37
  %62 = load i32, i32* %arrayidx38, align 4
  %cmp39 = icmp eq i32 %62, 0
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %for.body
  %63 = load i32, i32* %i, align 4
  %64 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %origPtr42 = getelementptr inbounds %struct.EState, %struct.EState* %64, i32 0, i32 7
  store i32 %63, i32* %origPtr42, align 4
  br label %for.end

if.end.43:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %65 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %65, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.41, %for.cond
  %66 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %origPtr45 = getelementptr inbounds %struct.EState, %struct.EState* %66, i32 0, i32 7
  %67 = load i32, i32* %origPtr45, align 4
  %cmp46 = icmp ne i32 %67, -1
  br i1 %cmp46, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %for.end
  call void @BZ2_bz__AssertH__fail(i32 1003)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fallbackSort(i32* %fmap, i32* %eclass, i32* %bhtab, i32 %nblock, i32 %verb) #0 {
entry:
  %fmap.addr = alloca i32*, align 8
  %eclass.addr = alloca i32*, align 8
  %bhtab.addr = alloca i32*, align 8
  %nblock.addr = alloca i32, align 4
  %verb.addr = alloca i32, align 4
  %ftab = alloca [257 x i32], align 16
  %ftabCopy = alloca [256 x i32], align 16
  %H = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %cc = alloca i32, align 4
  %cc1 = alloca i32, align 4
  %nNotDone = alloca i32, align 4
  %nBhtab = alloca i32, align 4
  %eclass8 = alloca i8*, align 8
  store i32* %fmap, i32** %fmap.addr, align 8
  store i32* %eclass, i32** %eclass.addr, align 8
  store i32* %bhtab, i32** %bhtab.addr, align 8
  store i32 %nblock, i32* %nblock.addr, align 4
  store i32 %verb, i32* %verb.addr, align 4
  %0 = load i32*, i32** %eclass.addr, align 8
  %1 = bitcast i32* %0 to i8*
  store i8* %1, i8** %eclass8, align 8
  %2 = load i32, i32* %verb.addr, align 4
  %cmp = icmp sge i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %4, 257
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.10, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %nblock.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body.4, label %for.end.12

for.body.4:                                       ; preds = %for.cond.2
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i8*, i8** %eclass8, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8, i8* %arrayidx6, align 1
  %idxprom7 = zext i8 %11 to i64
  %arrayidx8 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, i32* %arrayidx8, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.4
  %13 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.2

for.end.12:                                       ; preds = %for.cond.2
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.20, %for.end.12
  %14 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %14, 256
  br i1 %cmp14, label %for.body.15, label %for.end.22

for.body.15:                                      ; preds = %for.cond.13
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i32 0, i64 %idxprom16
  %16 = load i32, i32* %arrayidx17, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* %ftabCopy, i32 0, i64 %idxprom18
  store i32 %16, i32* %arrayidx19, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.15
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.13

for.end.22:                                       ; preds = %for.cond.13
  store i32 1, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.30, %for.end.22
  %19 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %19, 257
  br i1 %cmp24, label %for.body.25, label %for.end.32

for.body.25:                                      ; preds = %for.cond.23
  %20 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %20, 1
  %idxprom26 = sext i32 %sub to i64
  %arrayidx27 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i32 0, i64 %idxprom26
  %21 = load i32, i32* %arrayidx27, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i32 0, i64 %idxprom28
  %23 = load i32, i32* %arrayidx29, align 4
  %add = add nsw i32 %23, %21
  store i32 %add, i32* %arrayidx29, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.25
  %24 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %24, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.23

for.end.32:                                       ; preds = %for.cond.23
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.45, %for.end.32
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %nblock.addr, align 4
  %cmp34 = icmp slt i32 %25, %26
  br i1 %cmp34, label %for.body.35, label %for.end.47

for.body.35:                                      ; preds = %for.cond.33
  %27 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %27 to i64
  %28 = load i8*, i8** %eclass8, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %28, i64 %idxprom36
  %29 = load i8, i8* %arrayidx37, align 1
  %conv = zext i8 %29 to i32
  store i32 %conv, i32* %j, align 4
  %30 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %30 to i64
  %arrayidx39 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i32 0, i64 %idxprom38
  %31 = load i32, i32* %arrayidx39, align 4
  %sub40 = sub nsw i32 %31, 1
  store i32 %sub40, i32* %k, align 4
  %32 = load i32, i32* %k, align 4
  %33 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %33 to i64
  %arrayidx42 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i32 0, i64 %idxprom41
  store i32 %32, i32* %arrayidx42, align 4
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load i32*, i32** %fmap.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %36, i64 %idxprom43
  store i32 %34, i32* %arrayidx44, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.35
  %37 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %37, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.33

for.end.47:                                       ; preds = %for.cond.33
  %38 = load i32, i32* %nblock.addr, align 4
  %div = sdiv i32 %38, 32
  %add48 = add nsw i32 2, %div
  store i32 %add48, i32* %nBhtab, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.55, %for.end.47
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %nBhtab, align 4
  %cmp50 = icmp slt i32 %39, %40
  br i1 %cmp50, label %for.body.52, label %for.end.57

for.body.52:                                      ; preds = %for.cond.49
  %41 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %41 to i64
  %42 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %42, i64 %idxprom53
  store i32 0, i32* %arrayidx54, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.52
  %43 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %43, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.49

for.end.57:                                       ; preds = %for.cond.49
  store i32 0, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.68, %for.end.57
  %44 = load i32, i32* %i, align 4
  %cmp59 = icmp slt i32 %44, 256
  br i1 %cmp59, label %for.body.61, label %for.end.70

for.body.61:                                      ; preds = %for.cond.58
  %45 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %45 to i64
  %arrayidx63 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i32 0, i64 %idxprom62
  %46 = load i32, i32* %arrayidx63, align 4
  %and = and i32 %46, 31
  %shl = shl i32 1, %and
  %47 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %47 to i64
  %arrayidx65 = getelementptr inbounds [257 x i32], [257 x i32]* %ftab, i32 0, i64 %idxprom64
  %48 = load i32, i32* %arrayidx65, align 4
  %shr = ashr i32 %48, 5
  %idxprom66 = sext i32 %shr to i64
  %49 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %49, i64 %idxprom66
  %50 = load i32, i32* %arrayidx67, align 4
  %or = or i32 %50, %shl
  store i32 %or, i32* %arrayidx67, align 4
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.61
  %51 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %51, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond.58

for.end.70:                                       ; preds = %for.cond.58
  store i32 0, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.96, %for.end.70
  %52 = load i32, i32* %i, align 4
  %cmp72 = icmp slt i32 %52, 32
  br i1 %cmp72, label %for.body.74, label %for.end.98

for.body.74:                                      ; preds = %for.cond.71
  %53 = load i32, i32* %nblock.addr, align 4
  %54 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %54
  %add75 = add nsw i32 %53, %mul
  %and76 = and i32 %add75, 31
  %shl77 = shl i32 1, %and76
  %55 = load i32, i32* %nblock.addr, align 4
  %56 = load i32, i32* %i, align 4
  %mul78 = mul nsw i32 2, %56
  %add79 = add nsw i32 %55, %mul78
  %shr80 = ashr i32 %add79, 5
  %idxprom81 = sext i32 %shr80 to i64
  %57 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %57, i64 %idxprom81
  %58 = load i32, i32* %arrayidx82, align 4
  %or83 = or i32 %58, %shl77
  store i32 %or83, i32* %arrayidx82, align 4
  %59 = load i32, i32* %nblock.addr, align 4
  %60 = load i32, i32* %i, align 4
  %mul84 = mul nsw i32 2, %60
  %add85 = add nsw i32 %59, %mul84
  %add86 = add nsw i32 %add85, 1
  %and87 = and i32 %add86, 31
  %shl88 = shl i32 1, %and87
  %neg = xor i32 %shl88, -1
  %61 = load i32, i32* %nblock.addr, align 4
  %62 = load i32, i32* %i, align 4
  %mul89 = mul nsw i32 2, %62
  %add90 = add nsw i32 %61, %mul89
  %add91 = add nsw i32 %add90, 1
  %shr92 = ashr i32 %add91, 5
  %idxprom93 = sext i32 %shr92 to i64
  %63 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %63, i64 %idxprom93
  %64 = load i32, i32* %arrayidx94, align 4
  %and95 = and i32 %64, %neg
  store i32 %and95, i32* %arrayidx94, align 4
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.74
  %65 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %65, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.71

for.end.98:                                       ; preds = %for.cond.71
  store i32 1, i32* %H, align 4
  br label %while.body

while.body:                                       ; preds = %for.end.98, %if.end.267
  %66 = load i32, i32* %verb.addr, align 4
  %cmp99 = icmp sge i32 %66, 4
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %while.body
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %68 = load i32, i32* %H, align 4
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 %68)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %while.body
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.126, %if.end.103
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %nblock.addr, align 4
  %cmp105 = icmp slt i32 %69, %70
  br i1 %cmp105, label %for.body.107, label %for.end.128

for.body.107:                                     ; preds = %for.cond.104
  %71 = load i32, i32* %i, align 4
  %shr108 = ashr i32 %71, 5
  %idxprom109 = sext i32 %shr108 to i64
  %72 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %72, i64 %idxprom109
  %73 = load i32, i32* %arrayidx110, align 4
  %74 = load i32, i32* %i, align 4
  %and111 = and i32 %74, 31
  %shl112 = shl i32 1, %and111
  %and113 = and i32 %73, %shl112
  %tobool = icmp ne i32 %and113, 0
  br i1 %tobool, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %for.body.107
  %75 = load i32, i32* %i, align 4
  store i32 %75, i32* %j, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %for.body.107
  %76 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %76 to i64
  %77 = load i32*, i32** %fmap.addr, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %77, i64 %idxprom116
  %78 = load i32, i32* %arrayidx117, align 4
  %79 = load i32, i32* %H, align 4
  %sub118 = sub i32 %78, %79
  store i32 %sub118, i32* %k, align 4
  %80 = load i32, i32* %k, align 4
  %cmp119 = icmp slt i32 %80, 0
  br i1 %cmp119, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.end.115
  %81 = load i32, i32* %nblock.addr, align 4
  %82 = load i32, i32* %k, align 4
  %add122 = add nsw i32 %82, %81
  store i32 %add122, i32* %k, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.end.115
  %83 = load i32, i32* %j, align 4
  %84 = load i32, i32* %k, align 4
  %idxprom124 = sext i32 %84 to i64
  %85 = load i32*, i32** %eclass.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %85, i64 %idxprom124
  store i32 %83, i32* %arrayidx125, align 4
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.123
  %86 = load i32, i32* %i, align 4
  %inc127 = add nsw i32 %86, 1
  store i32 %inc127, i32* %i, align 4
  br label %for.cond.104

for.end.128:                                      ; preds = %for.cond.104
  store i32 0, i32* %nNotDone, align 4
  store i32 -1, i32* %r, align 4
  br label %while.body.130

while.body.130:                                   ; preds = %for.end.128, %if.end.254
  %87 = load i32, i32* %r, align 4
  %add131 = add nsw i32 %87, 1
  store i32 %add131, i32* %k, align 4
  br label %while.cond.132

while.cond.132:                                   ; preds = %while.body.142, %while.body.130
  %88 = load i32, i32* %k, align 4
  %shr133 = ashr i32 %88, 5
  %idxprom134 = sext i32 %shr133 to i64
  %89 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %89, i64 %idxprom134
  %90 = load i32, i32* %arrayidx135, align 4
  %91 = load i32, i32* %k, align 4
  %and136 = and i32 %91, 31
  %shl137 = shl i32 1, %and136
  %and138 = and i32 %90, %shl137
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.132
  %92 = load i32, i32* %k, align 4
  %and140 = and i32 %92, 31
  %tobool141 = icmp ne i32 %and140, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.132
  %93 = phi i1 [ false, %while.cond.132 ], [ %tobool141, %land.rhs ]
  br i1 %93, label %while.body.142, label %while.end

while.body.142:                                   ; preds = %land.end
  %94 = load i32, i32* %k, align 4
  %inc143 = add nsw i32 %94, 1
  store i32 %inc143, i32* %k, align 4
  br label %while.cond.132

while.end:                                        ; preds = %land.end
  %95 = load i32, i32* %k, align 4
  %shr144 = ashr i32 %95, 5
  %idxprom145 = sext i32 %shr144 to i64
  %96 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %96, i64 %idxprom145
  %97 = load i32, i32* %arrayidx146, align 4
  %98 = load i32, i32* %k, align 4
  %and147 = and i32 %98, 31
  %shl148 = shl i32 1, %and147
  %and149 = and i32 %97, %shl148
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %if.then.151, label %if.end.172

if.then.151:                                      ; preds = %while.end
  br label %while.cond.152

while.cond.152:                                   ; preds = %while.body.158, %if.then.151
  %99 = load i32, i32* %k, align 4
  %shr153 = ashr i32 %99, 5
  %idxprom154 = sext i32 %shr153 to i64
  %100 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %100, i64 %idxprom154
  %101 = load i32, i32* %arrayidx155, align 4
  %cmp156 = icmp eq i32 %101, -1
  br i1 %cmp156, label %while.body.158, label %while.end.160

while.body.158:                                   ; preds = %while.cond.152
  %102 = load i32, i32* %k, align 4
  %add159 = add nsw i32 %102, 32
  store i32 %add159, i32* %k, align 4
  br label %while.cond.152

while.end.160:                                    ; preds = %while.cond.152
  br label %while.cond.161

while.cond.161:                                   ; preds = %while.body.169, %while.end.160
  %103 = load i32, i32* %k, align 4
  %shr162 = ashr i32 %103, 5
  %idxprom163 = sext i32 %shr162 to i64
  %104 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %104, i64 %idxprom163
  %105 = load i32, i32* %arrayidx164, align 4
  %106 = load i32, i32* %k, align 4
  %and165 = and i32 %106, 31
  %shl166 = shl i32 1, %and165
  %and167 = and i32 %105, %shl166
  %tobool168 = icmp ne i32 %and167, 0
  br i1 %tobool168, label %while.body.169, label %while.end.171

while.body.169:                                   ; preds = %while.cond.161
  %107 = load i32, i32* %k, align 4
  %inc170 = add nsw i32 %107, 1
  store i32 %inc170, i32* %k, align 4
  br label %while.cond.161

while.end.171:                                    ; preds = %while.cond.161
  br label %if.end.172

if.end.172:                                       ; preds = %while.end.171, %while.end
  %108 = load i32, i32* %k, align 4
  %sub173 = sub nsw i32 %108, 1
  store i32 %sub173, i32* %l, align 4
  %109 = load i32, i32* %l, align 4
  %110 = load i32, i32* %nblock.addr, align 4
  %cmp174 = icmp sge i32 %109, %110
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.end.172
  br label %while.end.255

if.end.177:                                       ; preds = %if.end.172
  br label %while.cond.178

while.cond.178:                                   ; preds = %while.body.190, %if.end.177
  %111 = load i32, i32* %k, align 4
  %shr179 = ashr i32 %111, 5
  %idxprom180 = sext i32 %shr179 to i64
  %112 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %112, i64 %idxprom180
  %113 = load i32, i32* %arrayidx181, align 4
  %114 = load i32, i32* %k, align 4
  %and182 = and i32 %114, 31
  %shl183 = shl i32 1, %and182
  %and184 = and i32 %113, %shl183
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %land.end.189, label %land.rhs.186

land.rhs.186:                                     ; preds = %while.cond.178
  %115 = load i32, i32* %k, align 4
  %and187 = and i32 %115, 31
  %tobool188 = icmp ne i32 %and187, 0
  br label %land.end.189

land.end.189:                                     ; preds = %land.rhs.186, %while.cond.178
  %116 = phi i1 [ false, %while.cond.178 ], [ %tobool188, %land.rhs.186 ]
  br i1 %116, label %while.body.190, label %while.end.192

while.body.190:                                   ; preds = %land.end.189
  %117 = load i32, i32* %k, align 4
  %inc191 = add nsw i32 %117, 1
  store i32 %inc191, i32* %k, align 4
  br label %while.cond.178

while.end.192:                                    ; preds = %land.end.189
  %118 = load i32, i32* %k, align 4
  %shr193 = ashr i32 %118, 5
  %idxprom194 = sext i32 %shr193 to i64
  %119 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %119, i64 %idxprom194
  %120 = load i32, i32* %arrayidx195, align 4
  %121 = load i32, i32* %k, align 4
  %and196 = and i32 %121, 31
  %shl197 = shl i32 1, %and196
  %and198 = and i32 %120, %shl197
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.end.221, label %if.then.200

if.then.200:                                      ; preds = %while.end.192
  br label %while.cond.201

while.cond.201:                                   ; preds = %while.body.207, %if.then.200
  %122 = load i32, i32* %k, align 4
  %shr202 = ashr i32 %122, 5
  %idxprom203 = sext i32 %shr202 to i64
  %123 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx204 = getelementptr inbounds i32, i32* %123, i64 %idxprom203
  %124 = load i32, i32* %arrayidx204, align 4
  %cmp205 = icmp eq i32 %124, 0
  br i1 %cmp205, label %while.body.207, label %while.end.209

while.body.207:                                   ; preds = %while.cond.201
  %125 = load i32, i32* %k, align 4
  %add208 = add nsw i32 %125, 32
  store i32 %add208, i32* %k, align 4
  br label %while.cond.201

while.end.209:                                    ; preds = %while.cond.201
  br label %while.cond.210

while.cond.210:                                   ; preds = %while.body.218, %while.end.209
  %126 = load i32, i32* %k, align 4
  %shr211 = ashr i32 %126, 5
  %idxprom212 = sext i32 %shr211 to i64
  %127 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx213 = getelementptr inbounds i32, i32* %127, i64 %idxprom212
  %128 = load i32, i32* %arrayidx213, align 4
  %129 = load i32, i32* %k, align 4
  %and214 = and i32 %129, 31
  %shl215 = shl i32 1, %and214
  %and216 = and i32 %128, %shl215
  %tobool217 = icmp ne i32 %and216, 0
  %lnot = xor i1 %tobool217, true
  br i1 %lnot, label %while.body.218, label %while.end.220

while.body.218:                                   ; preds = %while.cond.210
  %130 = load i32, i32* %k, align 4
  %inc219 = add nsw i32 %130, 1
  store i32 %inc219, i32* %k, align 4
  br label %while.cond.210

while.end.220:                                    ; preds = %while.cond.210
  br label %if.end.221

if.end.221:                                       ; preds = %while.end.220, %while.end.192
  %131 = load i32, i32* %k, align 4
  %sub222 = sub nsw i32 %131, 1
  store i32 %sub222, i32* %r, align 4
  %132 = load i32, i32* %r, align 4
  %133 = load i32, i32* %nblock.addr, align 4
  %cmp223 = icmp sge i32 %132, %133
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %if.end.221
  br label %while.end.255

if.end.226:                                       ; preds = %if.end.221
  %134 = load i32, i32* %r, align 4
  %135 = load i32, i32* %l, align 4
  %cmp227 = icmp sgt i32 %134, %135
  br i1 %cmp227, label %if.then.229, label %if.end.254

if.then.229:                                      ; preds = %if.end.226
  %136 = load i32, i32* %r, align 4
  %137 = load i32, i32* %l, align 4
  %sub230 = sub nsw i32 %136, %137
  %add231 = add nsw i32 %sub230, 1
  %138 = load i32, i32* %nNotDone, align 4
  %add232 = add nsw i32 %138, %add231
  store i32 %add232, i32* %nNotDone, align 4
  %139 = load i32*, i32** %fmap.addr, align 8
  %140 = load i32*, i32** %eclass.addr, align 8
  %141 = load i32, i32* %l, align 4
  %142 = load i32, i32* %r, align 4
  call void @fallbackQSort3(i32* %139, i32* %140, i32 %141, i32 %142)
  store i32 -1, i32* %cc, align 4
  %143 = load i32, i32* %l, align 4
  store i32 %143, i32* %i, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.251, %if.then.229
  %144 = load i32, i32* %i, align 4
  %145 = load i32, i32* %r, align 4
  %cmp234 = icmp sle i32 %144, %145
  br i1 %cmp234, label %for.body.236, label %for.end.253

for.body.236:                                     ; preds = %for.cond.233
  %146 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %146 to i64
  %147 = load i32*, i32** %fmap.addr, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %147, i64 %idxprom237
  %148 = load i32, i32* %arrayidx238, align 4
  %idxprom239 = zext i32 %148 to i64
  %149 = load i32*, i32** %eclass.addr, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %149, i64 %idxprom239
  %150 = load i32, i32* %arrayidx240, align 4
  store i32 %150, i32* %cc1, align 4
  %151 = load i32, i32* %cc, align 4
  %152 = load i32, i32* %cc1, align 4
  %cmp241 = icmp ne i32 %151, %152
  br i1 %cmp241, label %if.then.243, label %if.end.250

if.then.243:                                      ; preds = %for.body.236
  %153 = load i32, i32* %i, align 4
  %and244 = and i32 %153, 31
  %shl245 = shl i32 1, %and244
  %154 = load i32, i32* %i, align 4
  %shr246 = ashr i32 %154, 5
  %idxprom247 = sext i32 %shr246 to i64
  %155 = load i32*, i32** %bhtab.addr, align 8
  %arrayidx248 = getelementptr inbounds i32, i32* %155, i64 %idxprom247
  %156 = load i32, i32* %arrayidx248, align 4
  %or249 = or i32 %156, %shl245
  store i32 %or249, i32* %arrayidx248, align 4
  %157 = load i32, i32* %cc1, align 4
  store i32 %157, i32* %cc, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.243, %for.body.236
  br label %for.inc.251

for.inc.251:                                      ; preds = %if.end.250
  %158 = load i32, i32* %i, align 4
  %inc252 = add nsw i32 %158, 1
  store i32 %inc252, i32* %i, align 4
  br label %for.cond.233

for.end.253:                                      ; preds = %for.cond.233
  br label %if.end.254

if.end.254:                                       ; preds = %for.end.253, %if.end.226
  br label %while.body.130

while.end.255:                                    ; preds = %if.then.225, %if.then.176
  %159 = load i32, i32* %verb.addr, align 4
  %cmp256 = icmp sge i32 %159, 4
  br i1 %cmp256, label %if.then.258, label %if.end.260

if.then.258:                                      ; preds = %while.end.255
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %161 = load i32, i32* %nNotDone, align 4
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32 %161)
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.258, %while.end.255
  %162 = load i32, i32* %H, align 4
  %mul261 = mul nsw i32 %162, 2
  store i32 %mul261, i32* %H, align 4
  %163 = load i32, i32* %H, align 4
  %164 = load i32, i32* %nblock.addr, align 4
  %cmp262 = icmp sgt i32 %163, %164
  br i1 %cmp262, label %if.then.266, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.260
  %165 = load i32, i32* %nNotDone, align 4
  %cmp264 = icmp eq i32 %165, 0
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %lor.lhs.false, %if.end.260
  br label %while.end.268

if.end.267:                                       ; preds = %lor.lhs.false
  br label %while.body

while.end.268:                                    ; preds = %if.then.266
  %166 = load i32, i32* %verb.addr, align 4
  %cmp269 = icmp sge i32 %166, 4
  br i1 %cmp269, label %if.then.271, label %if.end.273

if.then.271:                                      ; preds = %while.end.268
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %167, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.271, %while.end.268
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.292, %if.end.273
  %168 = load i32, i32* %i, align 4
  %169 = load i32, i32* %nblock.addr, align 4
  %cmp275 = icmp slt i32 %168, %169
  br i1 %cmp275, label %for.body.277, label %for.end.294

for.body.277:                                     ; preds = %for.cond.274
  br label %while.cond

while.cond:                                       ; preds = %while.body.282, %for.body.277
  %170 = load i32, i32* %j, align 4
  %idxprom278 = sext i32 %170 to i64
  %arrayidx279 = getelementptr inbounds [256 x i32], [256 x i32]* %ftabCopy, i32 0, i64 %idxprom278
  %171 = load i32, i32* %arrayidx279, align 4
  %cmp280 = icmp eq i32 %171, 0
  br i1 %cmp280, label %while.body.282, label %while.end.284

while.body.282:                                   ; preds = %while.cond
  %172 = load i32, i32* %j, align 4
  %inc283 = add nsw i32 %172, 1
  store i32 %inc283, i32* %j, align 4
  br label %while.cond

while.end.284:                                    ; preds = %while.cond
  %173 = load i32, i32* %j, align 4
  %idxprom285 = sext i32 %173 to i64
  %arrayidx286 = getelementptr inbounds [256 x i32], [256 x i32]* %ftabCopy, i32 0, i64 %idxprom285
  %174 = load i32, i32* %arrayidx286, align 4
  %dec = add nsw i32 %174, -1
  store i32 %dec, i32* %arrayidx286, align 4
  %175 = load i32, i32* %j, align 4
  %conv287 = trunc i32 %175 to i8
  %176 = load i32, i32* %i, align 4
  %idxprom288 = sext i32 %176 to i64
  %177 = load i32*, i32** %fmap.addr, align 8
  %arrayidx289 = getelementptr inbounds i32, i32* %177, i64 %idxprom288
  %178 = load i32, i32* %arrayidx289, align 4
  %idxprom290 = zext i32 %178 to i64
  %179 = load i8*, i8** %eclass8, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %179, i64 %idxprom290
  store i8 %conv287, i8* %arrayidx291, align 1
  br label %for.inc.292

for.inc.292:                                      ; preds = %while.end.284
  %180 = load i32, i32* %i, align 4
  %inc293 = add nsw i32 %180, 1
  store i32 %inc293, i32* %i, align 4
  br label %for.cond.274

for.end.294:                                      ; preds = %for.cond.274
  %181 = load i32, i32* %j, align 4
  %cmp295 = icmp slt i32 %181, 256
  br i1 %cmp295, label %if.end.298, label %if.then.297

if.then.297:                                      ; preds = %for.end.294
  call void @BZ2_bz__AssertH__fail(i32 1005)
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.297, %for.end.294
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mainSort(i32* %ptr, i8* %block, i16* %quadrant, i32* %ftab, i32 %nblock, i32 %verb, i32* %budget) #0 {
entry:
  %ptr.addr = alloca i32*, align 8
  %block.addr = alloca i8*, align 8
  %quadrant.addr = alloca i16*, align 8
  %ftab.addr = alloca i32*, align 8
  %nblock.addr = alloca i32, align 4
  %verb.addr = alloca i32, align 4
  %budget.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ss = alloca i32, align 4
  %sb = alloca i32, align 4
  %runningOrder = alloca [256 x i32], align 16
  %bigDone = alloca [256 x i8], align 16
  %copyStart = alloca [256 x i32], align 16
  %copyEnd = alloca [256 x i32], align 16
  %c1 = alloca i8, align 1
  %numQSorted = alloca i32, align 4
  %s = alloca i16, align 2
  %vv = alloca i32, align 4
  %h = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %bbStart = alloca i32, align 4
  %bbSize = alloca i32, align 4
  %shifts = alloca i32, align 4
  %a2update = alloca i32, align 4
  %qVal = alloca i16, align 2
  store i32* %ptr, i32** %ptr.addr, align 8
  store i8* %block, i8** %block.addr, align 8
  store i16* %quadrant, i16** %quadrant.addr, align 8
  store i32* %ftab, i32** %ftab.addr, align 8
  store i32 %nblock, i32* %nblock.addr, align 4
  store i32 %verb, i32* %verb.addr, align 4
  store i32* %budget, i32** %budget.addr, align 8
  %0 = load i32, i32* %verb.addr, align 4
  %cmp = icmp sge i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 65536, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp sge i32 %2, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %ftab.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i8*, i8** %block.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %7 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, i32* %j, align 4
  %8 = load i32, i32* %nblock.addr, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.58, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp4 = icmp sge i32 %9, 3
  br i1 %cmp4, label %for.body.6, label %for.end.60

for.body.6:                                       ; preds = %for.cond.3
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %11, i64 %idxprom7
  store i16 0, i16* %arrayidx8, align 2
  %12 = load i32, i32* %j, align 4
  %shr = ashr i32 %12, 8
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i8*, i8** %block.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  %15 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %15 to i16
  %conv12 = zext i16 %conv11 to i32
  %shl13 = shl i32 %conv12, 8
  %or = or i32 %shr, %shl13
  store i32 %or, i32* %j, align 4
  %16 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load i32*, i32** %ftab.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %17, i64 %idxprom14
  %18 = load i32, i32* %arrayidx15, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %arrayidx15, align 4
  %19 = load i32, i32* %i, align 4
  %sub16 = sub nsw i32 %19, 1
  %idxprom17 = sext i32 %sub16 to i64
  %20 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %20, i64 %idxprom17
  store i16 0, i16* %arrayidx18, align 2
  %21 = load i32, i32* %j, align 4
  %shr19 = ashr i32 %21, 8
  %22 = load i32, i32* %i, align 4
  %sub20 = sub nsw i32 %22, 1
  %idxprom21 = sext i32 %sub20 to i64
  %23 = load i8*, i8** %block.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %23, i64 %idxprom21
  %24 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %24 to i16
  %conv24 = zext i16 %conv23 to i32
  %shl25 = shl i32 %conv24, 8
  %or26 = or i32 %shr19, %shl25
  store i32 %or26, i32* %j, align 4
  %25 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load i32*, i32** %ftab.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %26, i64 %idxprom27
  %27 = load i32, i32* %arrayidx28, align 4
  %inc29 = add i32 %27, 1
  store i32 %inc29, i32* %arrayidx28, align 4
  %28 = load i32, i32* %i, align 4
  %sub30 = sub nsw i32 %28, 2
  %idxprom31 = sext i32 %sub30 to i64
  %29 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %29, i64 %idxprom31
  store i16 0, i16* %arrayidx32, align 2
  %30 = load i32, i32* %j, align 4
  %shr33 = ashr i32 %30, 8
  %31 = load i32, i32* %i, align 4
  %sub34 = sub nsw i32 %31, 2
  %idxprom35 = sext i32 %sub34 to i64
  %32 = load i8*, i8** %block.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %32, i64 %idxprom35
  %33 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %33 to i16
  %conv38 = zext i16 %conv37 to i32
  %shl39 = shl i32 %conv38, 8
  %or40 = or i32 %shr33, %shl39
  store i32 %or40, i32* %j, align 4
  %34 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %34 to i64
  %35 = load i32*, i32** %ftab.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %35, i64 %idxprom41
  %36 = load i32, i32* %arrayidx42, align 4
  %inc43 = add i32 %36, 1
  store i32 %inc43, i32* %arrayidx42, align 4
  %37 = load i32, i32* %i, align 4
  %sub44 = sub nsw i32 %37, 3
  %idxprom45 = sext i32 %sub44 to i64
  %38 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %38, i64 %idxprom45
  store i16 0, i16* %arrayidx46, align 2
  %39 = load i32, i32* %j, align 4
  %shr47 = ashr i32 %39, 8
  %40 = load i32, i32* %i, align 4
  %sub48 = sub nsw i32 %40, 3
  %idxprom49 = sext i32 %sub48 to i64
  %41 = load i8*, i8** %block.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %41, i64 %idxprom49
  %42 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %42 to i16
  %conv52 = zext i16 %conv51 to i32
  %shl53 = shl i32 %conv52, 8
  %or54 = or i32 %shr47, %shl53
  store i32 %or54, i32* %j, align 4
  %43 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %43 to i64
  %44 = load i32*, i32** %ftab.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %44, i64 %idxprom55
  %45 = load i32, i32* %arrayidx56, align 4
  %inc57 = add i32 %45, 1
  store i32 %inc57, i32* %arrayidx56, align 4
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.6
  %46 = load i32, i32* %i, align 4
  %sub59 = sub nsw i32 %46, 4
  store i32 %sub59, i32* %i, align 4
  br label %for.cond.3

for.end.60:                                       ; preds = %for.cond.3
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.77, %for.end.60
  %47 = load i32, i32* %i, align 4
  %cmp62 = icmp sge i32 %47, 0
  br i1 %cmp62, label %for.body.64, label %for.end.79

for.body.64:                                      ; preds = %for.cond.61
  %48 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %48 to i64
  %49 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx66 = getelementptr inbounds i16, i16* %49, i64 %idxprom65
  store i16 0, i16* %arrayidx66, align 2
  %50 = load i32, i32* %j, align 4
  %shr67 = ashr i32 %50, 8
  %51 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %51 to i64
  %52 = load i8*, i8** %block.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %52, i64 %idxprom68
  %53 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %53 to i16
  %conv71 = zext i16 %conv70 to i32
  %shl72 = shl i32 %conv71, 8
  %or73 = or i32 %shr67, %shl72
  store i32 %or73, i32* %j, align 4
  %54 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %54 to i64
  %55 = load i32*, i32** %ftab.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %55, i64 %idxprom74
  %56 = load i32, i32* %arrayidx75, align 4
  %inc76 = add i32 %56, 1
  store i32 %inc76, i32* %arrayidx75, align 4
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.64
  %57 = load i32, i32* %i, align 4
  %dec78 = add nsw i32 %57, -1
  store i32 %dec78, i32* %i, align 4
  br label %for.cond.61

for.end.79:                                       ; preds = %for.cond.61
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.91, %for.end.79
  %58 = load i32, i32* %i, align 4
  %cmp81 = icmp slt i32 %58, 34
  br i1 %cmp81, label %for.body.83, label %for.end.93

for.body.83:                                      ; preds = %for.cond.80
  %59 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %59 to i64
  %60 = load i8*, i8** %block.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %60, i64 %idxprom84
  %61 = load i8, i8* %arrayidx85, align 1
  %62 = load i32, i32* %nblock.addr, align 4
  %63 = load i32, i32* %i, align 4
  %add = add nsw i32 %62, %63
  %idxprom86 = sext i32 %add to i64
  %64 = load i8*, i8** %block.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %64, i64 %idxprom86
  store i8 %61, i8* %arrayidx87, align 1
  %65 = load i32, i32* %nblock.addr, align 4
  %66 = load i32, i32* %i, align 4
  %add88 = add nsw i32 %65, %66
  %idxprom89 = sext i32 %add88 to i64
  %67 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx90 = getelementptr inbounds i16, i16* %67, i64 %idxprom89
  store i16 0, i16* %arrayidx90, align 2
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.83
  %68 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %68, 1
  store i32 %inc92, i32* %i, align 4
  br label %for.cond.80

for.end.93:                                       ; preds = %for.cond.80
  %69 = load i32, i32* %verb.addr, align 4
  %cmp94 = icmp sge i32 %69, 4
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %for.end.93
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %for.end.93
  store i32 1, i32* %i, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.109, %if.end.98
  %71 = load i32, i32* %i, align 4
  %cmp100 = icmp sle i32 %71, 65536
  br i1 %cmp100, label %for.body.102, label %for.end.111

for.body.102:                                     ; preds = %for.cond.99
  %72 = load i32, i32* %i, align 4
  %sub103 = sub nsw i32 %72, 1
  %idxprom104 = sext i32 %sub103 to i64
  %73 = load i32*, i32** %ftab.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %73, i64 %idxprom104
  %74 = load i32, i32* %arrayidx105, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %75 to i64
  %76 = load i32*, i32** %ftab.addr, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %76, i64 %idxprom106
  %77 = load i32, i32* %arrayidx107, align 4
  %add108 = add i32 %77, %74
  store i32 %add108, i32* %arrayidx107, align 4
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.102
  %78 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %78, 1
  store i32 %inc110, i32* %i, align 4
  br label %for.cond.99

for.end.111:                                      ; preds = %for.cond.99
  %79 = load i8*, i8** %block.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %79, i64 0
  %80 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %80 to i32
  %shl114 = shl i32 %conv113, 8
  %conv115 = trunc i32 %shl114 to i16
  store i16 %conv115, i16* %s, align 2
  %81 = load i32, i32* %nblock.addr, align 4
  %sub116 = sub nsw i32 %81, 1
  store i32 %sub116, i32* %i, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.187, %for.end.111
  %82 = load i32, i32* %i, align 4
  %cmp118 = icmp sge i32 %82, 3
  br i1 %cmp118, label %for.body.120, label %for.end.189

for.body.120:                                     ; preds = %for.cond.117
  %83 = load i16, i16* %s, align 2
  %conv121 = zext i16 %83 to i32
  %shr122 = ashr i32 %conv121, 8
  %84 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %84 to i64
  %85 = load i8*, i8** %block.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %85, i64 %idxprom123
  %86 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %86 to i32
  %shl126 = shl i32 %conv125, 8
  %or127 = or i32 %shr122, %shl126
  %conv128 = trunc i32 %or127 to i16
  store i16 %conv128, i16* %s, align 2
  %87 = load i16, i16* %s, align 2
  %idxprom129 = zext i16 %87 to i64
  %88 = load i32*, i32** %ftab.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %88, i64 %idxprom129
  %89 = load i32, i32* %arrayidx130, align 4
  %sub131 = sub i32 %89, 1
  store i32 %sub131, i32* %j, align 4
  %90 = load i32, i32* %j, align 4
  %91 = load i16, i16* %s, align 2
  %idxprom132 = zext i16 %91 to i64
  %92 = load i32*, i32** %ftab.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %92, i64 %idxprom132
  store i32 %90, i32* %arrayidx133, align 4
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %94 to i64
  %95 = load i32*, i32** %ptr.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %95, i64 %idxprom134
  store i32 %93, i32* %arrayidx135, align 4
  %96 = load i16, i16* %s, align 2
  %conv136 = zext i16 %96 to i32
  %shr137 = ashr i32 %conv136, 8
  %97 = load i32, i32* %i, align 4
  %sub138 = sub nsw i32 %97, 1
  %idxprom139 = sext i32 %sub138 to i64
  %98 = load i8*, i8** %block.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %98, i64 %idxprom139
  %99 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %99 to i32
  %shl142 = shl i32 %conv141, 8
  %or143 = or i32 %shr137, %shl142
  %conv144 = trunc i32 %or143 to i16
  store i16 %conv144, i16* %s, align 2
  %100 = load i16, i16* %s, align 2
  %idxprom145 = zext i16 %100 to i64
  %101 = load i32*, i32** %ftab.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %101, i64 %idxprom145
  %102 = load i32, i32* %arrayidx146, align 4
  %sub147 = sub i32 %102, 1
  store i32 %sub147, i32* %j, align 4
  %103 = load i32, i32* %j, align 4
  %104 = load i16, i16* %s, align 2
  %idxprom148 = zext i16 %104 to i64
  %105 = load i32*, i32** %ftab.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %105, i64 %idxprom148
  store i32 %103, i32* %arrayidx149, align 4
  %106 = load i32, i32* %i, align 4
  %sub150 = sub nsw i32 %106, 1
  %107 = load i32, i32* %j, align 4
  %idxprom151 = sext i32 %107 to i64
  %108 = load i32*, i32** %ptr.addr, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %108, i64 %idxprom151
  store i32 %sub150, i32* %arrayidx152, align 4
  %109 = load i16, i16* %s, align 2
  %conv153 = zext i16 %109 to i32
  %shr154 = ashr i32 %conv153, 8
  %110 = load i32, i32* %i, align 4
  %sub155 = sub nsw i32 %110, 2
  %idxprom156 = sext i32 %sub155 to i64
  %111 = load i8*, i8** %block.addr, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %111, i64 %idxprom156
  %112 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %112 to i32
  %shl159 = shl i32 %conv158, 8
  %or160 = or i32 %shr154, %shl159
  %conv161 = trunc i32 %or160 to i16
  store i16 %conv161, i16* %s, align 2
  %113 = load i16, i16* %s, align 2
  %idxprom162 = zext i16 %113 to i64
  %114 = load i32*, i32** %ftab.addr, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %114, i64 %idxprom162
  %115 = load i32, i32* %arrayidx163, align 4
  %sub164 = sub i32 %115, 1
  store i32 %sub164, i32* %j, align 4
  %116 = load i32, i32* %j, align 4
  %117 = load i16, i16* %s, align 2
  %idxprom165 = zext i16 %117 to i64
  %118 = load i32*, i32** %ftab.addr, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %118, i64 %idxprom165
  store i32 %116, i32* %arrayidx166, align 4
  %119 = load i32, i32* %i, align 4
  %sub167 = sub nsw i32 %119, 2
  %120 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %120 to i64
  %121 = load i32*, i32** %ptr.addr, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %121, i64 %idxprom168
  store i32 %sub167, i32* %arrayidx169, align 4
  %122 = load i16, i16* %s, align 2
  %conv170 = zext i16 %122 to i32
  %shr171 = ashr i32 %conv170, 8
  %123 = load i32, i32* %i, align 4
  %sub172 = sub nsw i32 %123, 3
  %idxprom173 = sext i32 %sub172 to i64
  %124 = load i8*, i8** %block.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %124, i64 %idxprom173
  %125 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %125 to i32
  %shl176 = shl i32 %conv175, 8
  %or177 = or i32 %shr171, %shl176
  %conv178 = trunc i32 %or177 to i16
  store i16 %conv178, i16* %s, align 2
  %126 = load i16, i16* %s, align 2
  %idxprom179 = zext i16 %126 to i64
  %127 = load i32*, i32** %ftab.addr, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %127, i64 %idxprom179
  %128 = load i32, i32* %arrayidx180, align 4
  %sub181 = sub i32 %128, 1
  store i32 %sub181, i32* %j, align 4
  %129 = load i32, i32* %j, align 4
  %130 = load i16, i16* %s, align 2
  %idxprom182 = zext i16 %130 to i64
  %131 = load i32*, i32** %ftab.addr, align 8
  %arrayidx183 = getelementptr inbounds i32, i32* %131, i64 %idxprom182
  store i32 %129, i32* %arrayidx183, align 4
  %132 = load i32, i32* %i, align 4
  %sub184 = sub nsw i32 %132, 3
  %133 = load i32, i32* %j, align 4
  %idxprom185 = sext i32 %133 to i64
  %134 = load i32*, i32** %ptr.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %134, i64 %idxprom185
  store i32 %sub184, i32* %arrayidx186, align 4
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.body.120
  %135 = load i32, i32* %i, align 4
  %sub188 = sub nsw i32 %135, 4
  store i32 %sub188, i32* %i, align 4
  br label %for.cond.117

for.end.189:                                      ; preds = %for.cond.117
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.209, %for.end.189
  %136 = load i32, i32* %i, align 4
  %cmp191 = icmp sge i32 %136, 0
  br i1 %cmp191, label %for.body.193, label %for.end.211

for.body.193:                                     ; preds = %for.cond.190
  %137 = load i16, i16* %s, align 2
  %conv194 = zext i16 %137 to i32
  %shr195 = ashr i32 %conv194, 8
  %138 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %138 to i64
  %139 = load i8*, i8** %block.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %139, i64 %idxprom196
  %140 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %140 to i32
  %shl199 = shl i32 %conv198, 8
  %or200 = or i32 %shr195, %shl199
  %conv201 = trunc i32 %or200 to i16
  store i16 %conv201, i16* %s, align 2
  %141 = load i16, i16* %s, align 2
  %idxprom202 = zext i16 %141 to i64
  %142 = load i32*, i32** %ftab.addr, align 8
  %arrayidx203 = getelementptr inbounds i32, i32* %142, i64 %idxprom202
  %143 = load i32, i32* %arrayidx203, align 4
  %sub204 = sub i32 %143, 1
  store i32 %sub204, i32* %j, align 4
  %144 = load i32, i32* %j, align 4
  %145 = load i16, i16* %s, align 2
  %idxprom205 = zext i16 %145 to i64
  %146 = load i32*, i32** %ftab.addr, align 8
  %arrayidx206 = getelementptr inbounds i32, i32* %146, i64 %idxprom205
  store i32 %144, i32* %arrayidx206, align 4
  %147 = load i32, i32* %i, align 4
  %148 = load i32, i32* %j, align 4
  %idxprom207 = sext i32 %148 to i64
  %149 = load i32*, i32** %ptr.addr, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %149, i64 %idxprom207
  store i32 %147, i32* %arrayidx208, align 4
  br label %for.inc.209

for.inc.209:                                      ; preds = %for.body.193
  %150 = load i32, i32* %i, align 4
  %dec210 = add nsw i32 %150, -1
  store i32 %dec210, i32* %i, align 4
  br label %for.cond.190

for.end.211:                                      ; preds = %for.cond.190
  store i32 0, i32* %i, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.220, %for.end.211
  %151 = load i32, i32* %i, align 4
  %cmp213 = icmp sle i32 %151, 255
  br i1 %cmp213, label %for.body.215, label %for.end.222

for.body.215:                                     ; preds = %for.cond.212
  %152 = load i32, i32* %i, align 4
  %idxprom216 = sext i32 %152 to i64
  %arrayidx217 = getelementptr inbounds [256 x i8], [256 x i8]* %bigDone, i32 0, i64 %idxprom216
  store i8 0, i8* %arrayidx217, align 1
  %153 = load i32, i32* %i, align 4
  %154 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %154 to i64
  %arrayidx219 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i32 0, i64 %idxprom218
  store i32 %153, i32* %arrayidx219, align 4
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.body.215
  %155 = load i32, i32* %i, align 4
  %inc221 = add nsw i32 %155, 1
  store i32 %inc221, i32* %i, align 4
  br label %for.cond.212

for.end.222:                                      ; preds = %for.cond.212
  store i32 1, i32* %h, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.222
  %156 = load i32, i32* %h, align 4
  %mul = mul nsw i32 3, %156
  %add223 = add nsw i32 %mul, 1
  store i32 %add223, i32* %h, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %157 = load i32, i32* %h, align 4
  %cmp224 = icmp sle i32 %157, 256
  br i1 %cmp224, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.226

do.body.226:                                      ; preds = %do.cond.273, %do.end
  %158 = load i32, i32* %h, align 4
  %div = sdiv i32 %158, 3
  store i32 %div, i32* %h, align 4
  %159 = load i32, i32* %h, align 4
  store i32 %159, i32* %i, align 4
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.270, %do.body.226
  %160 = load i32, i32* %i, align 4
  %cmp228 = icmp sle i32 %160, 255
  br i1 %cmp228, label %for.body.230, label %for.end.272

for.body.230:                                     ; preds = %for.cond.227
  %161 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %161 to i64
  %arrayidx232 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i32 0, i64 %idxprom231
  %162 = load i32, i32* %arrayidx232, align 4
  store i32 %162, i32* %vv, align 4
  %163 = load i32, i32* %i, align 4
  store i32 %163, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.267, %for.body.230
  %164 = load i32, i32* %j, align 4
  %165 = load i32, i32* %h, align 4
  %sub233 = sub nsw i32 %164, %165
  %idxprom234 = sext i32 %sub233 to i64
  %arrayidx235 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i32 0, i64 %idxprom234
  %166 = load i32, i32* %arrayidx235, align 4
  %add236 = add nsw i32 %166, 1
  %shl237 = shl i32 %add236, 8
  %idxprom238 = sext i32 %shl237 to i64
  %167 = load i32*, i32** %ftab.addr, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %167, i64 %idxprom238
  %168 = load i32, i32* %arrayidx239, align 4
  %169 = load i32, i32* %j, align 4
  %170 = load i32, i32* %h, align 4
  %sub240 = sub nsw i32 %169, %170
  %idxprom241 = sext i32 %sub240 to i64
  %arrayidx242 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i32 0, i64 %idxprom241
  %171 = load i32, i32* %arrayidx242, align 4
  %shl243 = shl i32 %171, 8
  %idxprom244 = sext i32 %shl243 to i64
  %172 = load i32*, i32** %ftab.addr, align 8
  %arrayidx245 = getelementptr inbounds i32, i32* %172, i64 %idxprom244
  %173 = load i32, i32* %arrayidx245, align 4
  %sub246 = sub i32 %168, %173
  %174 = load i32, i32* %vv, align 4
  %add247 = add nsw i32 %174, 1
  %shl248 = shl i32 %add247, 8
  %idxprom249 = sext i32 %shl248 to i64
  %175 = load i32*, i32** %ftab.addr, align 8
  %arrayidx250 = getelementptr inbounds i32, i32* %175, i64 %idxprom249
  %176 = load i32, i32* %arrayidx250, align 4
  %177 = load i32, i32* %vv, align 4
  %shl251 = shl i32 %177, 8
  %idxprom252 = sext i32 %shl251 to i64
  %178 = load i32*, i32** %ftab.addr, align 8
  %arrayidx253 = getelementptr inbounds i32, i32* %178, i64 %idxprom252
  %179 = load i32, i32* %arrayidx253, align 4
  %sub254 = sub i32 %176, %179
  %cmp255 = icmp ugt i32 %sub246, %sub254
  br i1 %cmp255, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %180 = load i32, i32* %j, align 4
  %181 = load i32, i32* %h, align 4
  %sub257 = sub nsw i32 %180, %181
  %idxprom258 = sext i32 %sub257 to i64
  %arrayidx259 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i32 0, i64 %idxprom258
  %182 = load i32, i32* %arrayidx259, align 4
  %183 = load i32, i32* %j, align 4
  %idxprom260 = sext i32 %183 to i64
  %arrayidx261 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i32 0, i64 %idxprom260
  store i32 %182, i32* %arrayidx261, align 4
  %184 = load i32, i32* %j, align 4
  %185 = load i32, i32* %h, align 4
  %sub262 = sub nsw i32 %184, %185
  store i32 %sub262, i32* %j, align 4
  %186 = load i32, i32* %j, align 4
  %187 = load i32, i32* %h, align 4
  %sub263 = sub nsw i32 %187, 1
  %cmp264 = icmp sle i32 %186, %sub263
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %while.body
  br label %zero

if.end.267:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %zero

zero:                                             ; preds = %while.end, %if.then.266
  %188 = load i32, i32* %vv, align 4
  %189 = load i32, i32* %j, align 4
  %idxprom268 = sext i32 %189 to i64
  %arrayidx269 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i32 0, i64 %idxprom268
  store i32 %188, i32* %arrayidx269, align 4
  br label %for.inc.270

for.inc.270:                                      ; preds = %zero
  %190 = load i32, i32* %i, align 4
  %inc271 = add nsw i32 %190, 1
  store i32 %inc271, i32* %i, align 4
  br label %for.cond.227

for.end.272:                                      ; preds = %for.cond.227
  br label %do.cond.273

do.cond.273:                                      ; preds = %for.end.272
  %191 = load i32, i32* %h, align 4
  %cmp274 = icmp ne i32 %191, 1
  br i1 %cmp274, label %do.body.226, label %do.end.276

do.end.276:                                       ; preds = %do.cond.273
  store i32 0, i32* %numQSorted, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.277

for.cond.277:                                     ; preds = %for.inc.506, %do.end.276
  %192 = load i32, i32* %i, align 4
  %cmp278 = icmp sle i32 %192, 255
  br i1 %cmp278, label %for.body.280, label %for.end.508

for.body.280:                                     ; preds = %for.cond.277
  %193 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %193 to i64
  %arrayidx282 = getelementptr inbounds [256 x i32], [256 x i32]* %runningOrder, i32 0, i64 %idxprom281
  %194 = load i32, i32* %arrayidx282, align 4
  store i32 %194, i32* %ss, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.283

for.cond.283:                                     ; preds = %for.inc.326, %for.body.280
  %195 = load i32, i32* %j, align 4
  %cmp284 = icmp sle i32 %195, 255
  br i1 %cmp284, label %for.body.286, label %for.end.328

for.body.286:                                     ; preds = %for.cond.283
  %196 = load i32, i32* %j, align 4
  %197 = load i32, i32* %ss, align 4
  %cmp287 = icmp ne i32 %196, %197
  br i1 %cmp287, label %if.then.289, label %if.end.325

if.then.289:                                      ; preds = %for.body.286
  %198 = load i32, i32* %ss, align 4
  %shl290 = shl i32 %198, 8
  %199 = load i32, i32* %j, align 4
  %add291 = add nsw i32 %shl290, %199
  store i32 %add291, i32* %sb, align 4
  %200 = load i32, i32* %sb, align 4
  %idxprom292 = sext i32 %200 to i64
  %201 = load i32*, i32** %ftab.addr, align 8
  %arrayidx293 = getelementptr inbounds i32, i32* %201, i64 %idxprom292
  %202 = load i32, i32* %arrayidx293, align 4
  %and = and i32 %202, 2097152
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.321, label %if.then.294

if.then.294:                                      ; preds = %if.then.289
  %203 = load i32, i32* %sb, align 4
  %idxprom295 = sext i32 %203 to i64
  %204 = load i32*, i32** %ftab.addr, align 8
  %arrayidx296 = getelementptr inbounds i32, i32* %204, i64 %idxprom295
  %205 = load i32, i32* %arrayidx296, align 4
  %and297 = and i32 %205, -2097153
  store i32 %and297, i32* %lo, align 4
  %206 = load i32, i32* %sb, align 4
  %add298 = add nsw i32 %206, 1
  %idxprom299 = sext i32 %add298 to i64
  %207 = load i32*, i32** %ftab.addr, align 8
  %arrayidx300 = getelementptr inbounds i32, i32* %207, i64 %idxprom299
  %208 = load i32, i32* %arrayidx300, align 4
  %and301 = and i32 %208, -2097153
  %sub302 = sub i32 %and301, 1
  store i32 %sub302, i32* %hi, align 4
  %209 = load i32, i32* %hi, align 4
  %210 = load i32, i32* %lo, align 4
  %cmp303 = icmp sgt i32 %209, %210
  br i1 %cmp303, label %if.then.305, label %if.end.320

if.then.305:                                      ; preds = %if.then.294
  %211 = load i32, i32* %verb.addr, align 4
  %cmp306 = icmp sge i32 %211, 4
  br i1 %cmp306, label %if.then.308, label %if.end.312

if.then.308:                                      ; preds = %if.then.305
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %213 = load i32, i32* %ss, align 4
  %214 = load i32, i32* %j, align 4
  %215 = load i32, i32* %numQSorted, align 4
  %216 = load i32, i32* %hi, align 4
  %217 = load i32, i32* %lo, align 4
  %sub309 = sub nsw i32 %216, %217
  %add310 = add nsw i32 %sub309, 1
  %call311 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %212, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0), i32 %213, i32 %214, i32 %215, i32 %add310)
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.308, %if.then.305
  %218 = load i32*, i32** %ptr.addr, align 8
  %219 = load i8*, i8** %block.addr, align 8
  %220 = load i16*, i16** %quadrant.addr, align 8
  %221 = load i32, i32* %nblock.addr, align 4
  %222 = load i32, i32* %lo, align 4
  %223 = load i32, i32* %hi, align 4
  %224 = load i32*, i32** %budget.addr, align 8
  call void @mainQSort3(i32* %218, i8* %219, i16* %220, i32 %221, i32 %222, i32 %223, i32 2, i32* %224)
  %225 = load i32, i32* %hi, align 4
  %226 = load i32, i32* %lo, align 4
  %sub313 = sub nsw i32 %225, %226
  %add314 = add nsw i32 %sub313, 1
  %227 = load i32, i32* %numQSorted, align 4
  %add315 = add nsw i32 %227, %add314
  store i32 %add315, i32* %numQSorted, align 4
  %228 = load i32*, i32** %budget.addr, align 8
  %229 = load i32, i32* %228, align 4
  %cmp316 = icmp slt i32 %229, 0
  br i1 %cmp316, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %if.end.312
  br label %if.end.514

if.end.319:                                       ; preds = %if.end.312
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.then.294
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.then.289
  %230 = load i32, i32* %sb, align 4
  %idxprom322 = sext i32 %230 to i64
  %231 = load i32*, i32** %ftab.addr, align 8
  %arrayidx323 = getelementptr inbounds i32, i32* %231, i64 %idxprom322
  %232 = load i32, i32* %arrayidx323, align 4
  %or324 = or i32 %232, 2097152
  store i32 %or324, i32* %arrayidx323, align 4
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.321, %for.body.286
  br label %for.inc.326

for.inc.326:                                      ; preds = %if.end.325
  %233 = load i32, i32* %j, align 4
  %inc327 = add nsw i32 %233, 1
  store i32 %inc327, i32* %j, align 4
  br label %for.cond.283

for.end.328:                                      ; preds = %for.cond.283
  %234 = load i32, i32* %ss, align 4
  %idxprom329 = sext i32 %234 to i64
  %arrayidx330 = getelementptr inbounds [256 x i8], [256 x i8]* %bigDone, i32 0, i64 %idxprom329
  %235 = load i8, i8* %arrayidx330, align 1
  %tobool331 = icmp ne i8 %235, 0
  br i1 %tobool331, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %for.end.328
  call void @BZ2_bz__AssertH__fail(i32 1006)
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.332, %for.end.328
  store i32 0, i32* %j, align 4
  br label %for.cond.334

for.cond.334:                                     ; preds = %for.inc.354, %if.end.333
  %236 = load i32, i32* %j, align 4
  %cmp335 = icmp sle i32 %236, 255
  br i1 %cmp335, label %for.body.337, label %for.end.356

for.body.337:                                     ; preds = %for.cond.334
  %237 = load i32, i32* %j, align 4
  %shl338 = shl i32 %237, 8
  %238 = load i32, i32* %ss, align 4
  %add339 = add nsw i32 %shl338, %238
  %idxprom340 = sext i32 %add339 to i64
  %239 = load i32*, i32** %ftab.addr, align 8
  %arrayidx341 = getelementptr inbounds i32, i32* %239, i64 %idxprom340
  %240 = load i32, i32* %arrayidx341, align 4
  %and342 = and i32 %240, -2097153
  %241 = load i32, i32* %j, align 4
  %idxprom343 = sext i32 %241 to i64
  %arrayidx344 = getelementptr inbounds [256 x i32], [256 x i32]* %copyStart, i32 0, i64 %idxprom343
  store i32 %and342, i32* %arrayidx344, align 4
  %242 = load i32, i32* %j, align 4
  %shl345 = shl i32 %242, 8
  %243 = load i32, i32* %ss, align 4
  %add346 = add nsw i32 %shl345, %243
  %add347 = add nsw i32 %add346, 1
  %idxprom348 = sext i32 %add347 to i64
  %244 = load i32*, i32** %ftab.addr, align 8
  %arrayidx349 = getelementptr inbounds i32, i32* %244, i64 %idxprom348
  %245 = load i32, i32* %arrayidx349, align 4
  %and350 = and i32 %245, -2097153
  %sub351 = sub i32 %and350, 1
  %246 = load i32, i32* %j, align 4
  %idxprom352 = sext i32 %246 to i64
  %arrayidx353 = getelementptr inbounds [256 x i32], [256 x i32]* %copyEnd, i32 0, i64 %idxprom352
  store i32 %sub351, i32* %arrayidx353, align 4
  br label %for.inc.354

for.inc.354:                                      ; preds = %for.body.337
  %247 = load i32, i32* %j, align 4
  %inc355 = add nsw i32 %247, 1
  store i32 %inc355, i32* %j, align 4
  br label %for.cond.334

for.end.356:                                      ; preds = %for.cond.334
  %248 = load i32, i32* %ss, align 4
  %shl357 = shl i32 %248, 8
  %idxprom358 = sext i32 %shl357 to i64
  %249 = load i32*, i32** %ftab.addr, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %249, i64 %idxprom358
  %250 = load i32, i32* %arrayidx359, align 4
  %and360 = and i32 %250, -2097153
  store i32 %and360, i32* %j, align 4
  br label %for.cond.361

for.cond.361:                                     ; preds = %for.inc.387, %for.end.356
  %251 = load i32, i32* %j, align 4
  %252 = load i32, i32* %ss, align 4
  %idxprom362 = sext i32 %252 to i64
  %arrayidx363 = getelementptr inbounds [256 x i32], [256 x i32]* %copyStart, i32 0, i64 %idxprom362
  %253 = load i32, i32* %arrayidx363, align 4
  %cmp364 = icmp slt i32 %251, %253
  br i1 %cmp364, label %for.body.366, label %for.end.389

for.body.366:                                     ; preds = %for.cond.361
  %254 = load i32, i32* %j, align 4
  %idxprom367 = sext i32 %254 to i64
  %255 = load i32*, i32** %ptr.addr, align 8
  %arrayidx368 = getelementptr inbounds i32, i32* %255, i64 %idxprom367
  %256 = load i32, i32* %arrayidx368, align 4
  %sub369 = sub i32 %256, 1
  store i32 %sub369, i32* %k, align 4
  %257 = load i32, i32* %k, align 4
  %cmp370 = icmp slt i32 %257, 0
  br i1 %cmp370, label %if.then.372, label %if.end.374

if.then.372:                                      ; preds = %for.body.366
  %258 = load i32, i32* %nblock.addr, align 4
  %259 = load i32, i32* %k, align 4
  %add373 = add nsw i32 %259, %258
  store i32 %add373, i32* %k, align 4
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.372, %for.body.366
  %260 = load i32, i32* %k, align 4
  %idxprom375 = sext i32 %260 to i64
  %261 = load i8*, i8** %block.addr, align 8
  %arrayidx376 = getelementptr inbounds i8, i8* %261, i64 %idxprom375
  %262 = load i8, i8* %arrayidx376, align 1
  store i8 %262, i8* %c1, align 1
  %263 = load i8, i8* %c1, align 1
  %idxprom377 = zext i8 %263 to i64
  %arrayidx378 = getelementptr inbounds [256 x i8], [256 x i8]* %bigDone, i32 0, i64 %idxprom377
  %264 = load i8, i8* %arrayidx378, align 1
  %tobool379 = icmp ne i8 %264, 0
  br i1 %tobool379, label %if.end.386, label %if.then.380

if.then.380:                                      ; preds = %if.end.374
  %265 = load i32, i32* %k, align 4
  %266 = load i8, i8* %c1, align 1
  %idxprom381 = zext i8 %266 to i64
  %arrayidx382 = getelementptr inbounds [256 x i32], [256 x i32]* %copyStart, i32 0, i64 %idxprom381
  %267 = load i32, i32* %arrayidx382, align 4
  %inc383 = add nsw i32 %267, 1
  store i32 %inc383, i32* %arrayidx382, align 4
  %idxprom384 = sext i32 %267 to i64
  %268 = load i32*, i32** %ptr.addr, align 8
  %arrayidx385 = getelementptr inbounds i32, i32* %268, i64 %idxprom384
  store i32 %265, i32* %arrayidx385, align 4
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.380, %if.end.374
  br label %for.inc.387

for.inc.387:                                      ; preds = %if.end.386
  %269 = load i32, i32* %j, align 4
  %inc388 = add nsw i32 %269, 1
  store i32 %inc388, i32* %j, align 4
  br label %for.cond.361

for.end.389:                                      ; preds = %for.cond.361
  %270 = load i32, i32* %ss, align 4
  %add390 = add nsw i32 %270, 1
  %shl391 = shl i32 %add390, 8
  %idxprom392 = sext i32 %shl391 to i64
  %271 = load i32*, i32** %ftab.addr, align 8
  %arrayidx393 = getelementptr inbounds i32, i32* %271, i64 %idxprom392
  %272 = load i32, i32* %arrayidx393, align 4
  %and394 = and i32 %272, -2097153
  %sub395 = sub i32 %and394, 1
  store i32 %sub395, i32* %j, align 4
  br label %for.cond.396

for.cond.396:                                     ; preds = %for.inc.422, %for.end.389
  %273 = load i32, i32* %j, align 4
  %274 = load i32, i32* %ss, align 4
  %idxprom397 = sext i32 %274 to i64
  %arrayidx398 = getelementptr inbounds [256 x i32], [256 x i32]* %copyEnd, i32 0, i64 %idxprom397
  %275 = load i32, i32* %arrayidx398, align 4
  %cmp399 = icmp sgt i32 %273, %275
  br i1 %cmp399, label %for.body.401, label %for.end.424

for.body.401:                                     ; preds = %for.cond.396
  %276 = load i32, i32* %j, align 4
  %idxprom402 = sext i32 %276 to i64
  %277 = load i32*, i32** %ptr.addr, align 8
  %arrayidx403 = getelementptr inbounds i32, i32* %277, i64 %idxprom402
  %278 = load i32, i32* %arrayidx403, align 4
  %sub404 = sub i32 %278, 1
  store i32 %sub404, i32* %k, align 4
  %279 = load i32, i32* %k, align 4
  %cmp405 = icmp slt i32 %279, 0
  br i1 %cmp405, label %if.then.407, label %if.end.409

if.then.407:                                      ; preds = %for.body.401
  %280 = load i32, i32* %nblock.addr, align 4
  %281 = load i32, i32* %k, align 4
  %add408 = add nsw i32 %281, %280
  store i32 %add408, i32* %k, align 4
  br label %if.end.409

if.end.409:                                       ; preds = %if.then.407, %for.body.401
  %282 = load i32, i32* %k, align 4
  %idxprom410 = sext i32 %282 to i64
  %283 = load i8*, i8** %block.addr, align 8
  %arrayidx411 = getelementptr inbounds i8, i8* %283, i64 %idxprom410
  %284 = load i8, i8* %arrayidx411, align 1
  store i8 %284, i8* %c1, align 1
  %285 = load i8, i8* %c1, align 1
  %idxprom412 = zext i8 %285 to i64
  %arrayidx413 = getelementptr inbounds [256 x i8], [256 x i8]* %bigDone, i32 0, i64 %idxprom412
  %286 = load i8, i8* %arrayidx413, align 1
  %tobool414 = icmp ne i8 %286, 0
  br i1 %tobool414, label %if.end.421, label %if.then.415

if.then.415:                                      ; preds = %if.end.409
  %287 = load i32, i32* %k, align 4
  %288 = load i8, i8* %c1, align 1
  %idxprom416 = zext i8 %288 to i64
  %arrayidx417 = getelementptr inbounds [256 x i32], [256 x i32]* %copyEnd, i32 0, i64 %idxprom416
  %289 = load i32, i32* %arrayidx417, align 4
  %dec418 = add nsw i32 %289, -1
  store i32 %dec418, i32* %arrayidx417, align 4
  %idxprom419 = sext i32 %289 to i64
  %290 = load i32*, i32** %ptr.addr, align 8
  %arrayidx420 = getelementptr inbounds i32, i32* %290, i64 %idxprom419
  store i32 %287, i32* %arrayidx420, align 4
  br label %if.end.421

if.end.421:                                       ; preds = %if.then.415, %if.end.409
  br label %for.inc.422

for.inc.422:                                      ; preds = %if.end.421
  %291 = load i32, i32* %j, align 4
  %dec423 = add nsw i32 %291, -1
  store i32 %dec423, i32* %j, align 4
  br label %for.cond.396

for.end.424:                                      ; preds = %for.cond.396
  %292 = load i32, i32* %ss, align 4
  %idxprom425 = sext i32 %292 to i64
  %arrayidx426 = getelementptr inbounds [256 x i32], [256 x i32]* %copyStart, i32 0, i64 %idxprom425
  %293 = load i32, i32* %arrayidx426, align 4
  %sub427 = sub nsw i32 %293, 1
  %294 = load i32, i32* %ss, align 4
  %idxprom428 = sext i32 %294 to i64
  %arrayidx429 = getelementptr inbounds [256 x i32], [256 x i32]* %copyEnd, i32 0, i64 %idxprom428
  %295 = load i32, i32* %arrayidx429, align 4
  %cmp430 = icmp eq i32 %sub427, %295
  br i1 %cmp430, label %if.end.442, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.424
  %296 = load i32, i32* %ss, align 4
  %idxprom432 = sext i32 %296 to i64
  %arrayidx433 = getelementptr inbounds [256 x i32], [256 x i32]* %copyStart, i32 0, i64 %idxprom432
  %297 = load i32, i32* %arrayidx433, align 4
  %cmp434 = icmp eq i32 %297, 0
  br i1 %cmp434, label %land.lhs.true, label %if.then.441

land.lhs.true:                                    ; preds = %lor.lhs.false
  %298 = load i32, i32* %ss, align 4
  %idxprom436 = sext i32 %298 to i64
  %arrayidx437 = getelementptr inbounds [256 x i32], [256 x i32]* %copyEnd, i32 0, i64 %idxprom436
  %299 = load i32, i32* %arrayidx437, align 4
  %300 = load i32, i32* %nblock.addr, align 4
  %sub438 = sub nsw i32 %300, 1
  %cmp439 = icmp eq i32 %299, %sub438
  br i1 %cmp439, label %if.end.442, label %if.then.441

if.then.441:                                      ; preds = %land.lhs.true, %lor.lhs.false
  call void @BZ2_bz__AssertH__fail(i32 1007)
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.441, %land.lhs.true, %for.end.424
  store i32 0, i32* %j, align 4
  br label %for.cond.443

for.cond.443:                                     ; preds = %for.inc.452, %if.end.442
  %301 = load i32, i32* %j, align 4
  %cmp444 = icmp sle i32 %301, 255
  br i1 %cmp444, label %for.body.446, label %for.end.454

for.body.446:                                     ; preds = %for.cond.443
  %302 = load i32, i32* %j, align 4
  %shl447 = shl i32 %302, 8
  %303 = load i32, i32* %ss, align 4
  %add448 = add nsw i32 %shl447, %303
  %idxprom449 = sext i32 %add448 to i64
  %304 = load i32*, i32** %ftab.addr, align 8
  %arrayidx450 = getelementptr inbounds i32, i32* %304, i64 %idxprom449
  %305 = load i32, i32* %arrayidx450, align 4
  %or451 = or i32 %305, 2097152
  store i32 %or451, i32* %arrayidx450, align 4
  br label %for.inc.452

for.inc.452:                                      ; preds = %for.body.446
  %306 = load i32, i32* %j, align 4
  %inc453 = add nsw i32 %306, 1
  store i32 %inc453, i32* %j, align 4
  br label %for.cond.443

for.end.454:                                      ; preds = %for.cond.443
  %307 = load i32, i32* %ss, align 4
  %idxprom455 = sext i32 %307 to i64
  %arrayidx456 = getelementptr inbounds [256 x i8], [256 x i8]* %bigDone, i32 0, i64 %idxprom455
  store i8 1, i8* %arrayidx456, align 1
  %308 = load i32, i32* %i, align 4
  %cmp457 = icmp slt i32 %308, 255
  br i1 %cmp457, label %if.then.459, label %if.end.505

if.then.459:                                      ; preds = %for.end.454
  %309 = load i32, i32* %ss, align 4
  %shl460 = shl i32 %309, 8
  %idxprom461 = sext i32 %shl460 to i64
  %310 = load i32*, i32** %ftab.addr, align 8
  %arrayidx462 = getelementptr inbounds i32, i32* %310, i64 %idxprom461
  %311 = load i32, i32* %arrayidx462, align 4
  %and463 = and i32 %311, -2097153
  store i32 %and463, i32* %bbStart, align 4
  %312 = load i32, i32* %ss, align 4
  %add464 = add nsw i32 %312, 1
  %shl465 = shl i32 %add464, 8
  %idxprom466 = sext i32 %shl465 to i64
  %313 = load i32*, i32** %ftab.addr, align 8
  %arrayidx467 = getelementptr inbounds i32, i32* %313, i64 %idxprom466
  %314 = load i32, i32* %arrayidx467, align 4
  %and468 = and i32 %314, -2097153
  %315 = load i32, i32* %bbStart, align 4
  %sub469 = sub i32 %and468, %315
  store i32 %sub469, i32* %bbSize, align 4
  store i32 0, i32* %shifts, align 4
  br label %while.cond.470

while.cond.470:                                   ; preds = %while.body.474, %if.then.459
  %316 = load i32, i32* %bbSize, align 4
  %317 = load i32, i32* %shifts, align 4
  %shr471 = ashr i32 %316, %317
  %cmp472 = icmp sgt i32 %shr471, 65534
  br i1 %cmp472, label %while.body.474, label %while.end.476

while.body.474:                                   ; preds = %while.cond.470
  %318 = load i32, i32* %shifts, align 4
  %inc475 = add nsw i32 %318, 1
  store i32 %inc475, i32* %shifts, align 4
  br label %while.cond.470

while.end.476:                                    ; preds = %while.cond.470
  %319 = load i32, i32* %bbSize, align 4
  %sub477 = sub nsw i32 %319, 1
  store i32 %sub477, i32* %j, align 4
  br label %for.cond.478

for.cond.478:                                     ; preds = %for.inc.496, %while.end.476
  %320 = load i32, i32* %j, align 4
  %cmp479 = icmp sge i32 %320, 0
  br i1 %cmp479, label %for.body.481, label %for.end.498

for.body.481:                                     ; preds = %for.cond.478
  %321 = load i32, i32* %bbStart, align 4
  %322 = load i32, i32* %j, align 4
  %add482 = add nsw i32 %321, %322
  %idxprom483 = sext i32 %add482 to i64
  %323 = load i32*, i32** %ptr.addr, align 8
  %arrayidx484 = getelementptr inbounds i32, i32* %323, i64 %idxprom483
  %324 = load i32, i32* %arrayidx484, align 4
  store i32 %324, i32* %a2update, align 4
  %325 = load i32, i32* %j, align 4
  %326 = load i32, i32* %shifts, align 4
  %shr485 = ashr i32 %325, %326
  %conv486 = trunc i32 %shr485 to i16
  store i16 %conv486, i16* %qVal, align 2
  %327 = load i16, i16* %qVal, align 2
  %328 = load i32, i32* %a2update, align 4
  %idxprom487 = sext i32 %328 to i64
  %329 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx488 = getelementptr inbounds i16, i16* %329, i64 %idxprom487
  store i16 %327, i16* %arrayidx488, align 2
  %330 = load i32, i32* %a2update, align 4
  %cmp489 = icmp slt i32 %330, 34
  br i1 %cmp489, label %if.then.491, label %if.end.495

if.then.491:                                      ; preds = %for.body.481
  %331 = load i16, i16* %qVal, align 2
  %332 = load i32, i32* %a2update, align 4
  %333 = load i32, i32* %nblock.addr, align 4
  %add492 = add nsw i32 %332, %333
  %idxprom493 = sext i32 %add492 to i64
  %334 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx494 = getelementptr inbounds i16, i16* %334, i64 %idxprom493
  store i16 %331, i16* %arrayidx494, align 2
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.491, %for.body.481
  br label %for.inc.496

for.inc.496:                                      ; preds = %if.end.495
  %335 = load i32, i32* %j, align 4
  %dec497 = add nsw i32 %335, -1
  store i32 %dec497, i32* %j, align 4
  br label %for.cond.478

for.end.498:                                      ; preds = %for.cond.478
  %336 = load i32, i32* %bbSize, align 4
  %sub499 = sub nsw i32 %336, 1
  %337 = load i32, i32* %shifts, align 4
  %shr500 = ashr i32 %sub499, %337
  %cmp501 = icmp sle i32 %shr500, 65535
  br i1 %cmp501, label %if.end.504, label %if.then.503

if.then.503:                                      ; preds = %for.end.498
  call void @BZ2_bz__AssertH__fail(i32 1002)
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.503, %for.end.498
  br label %if.end.505

if.end.505:                                       ; preds = %if.end.504, %for.end.454
  br label %for.inc.506

for.inc.506:                                      ; preds = %if.end.505
  %338 = load i32, i32* %i, align 4
  %inc507 = add nsw i32 %338, 1
  store i32 %inc507, i32* %i, align 4
  br label %for.cond.277

for.end.508:                                      ; preds = %for.cond.277
  %339 = load i32, i32* %verb.addr, align 4
  %cmp509 = icmp sge i32 %339, 4
  br i1 %cmp509, label %if.then.511, label %if.end.514

if.then.511:                                      ; preds = %for.end.508
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %341 = load i32, i32* %nblock.addr, align 4
  %342 = load i32, i32* %numQSorted, align 4
  %343 = load i32, i32* %nblock.addr, align 4
  %344 = load i32, i32* %numQSorted, align 4
  %sub512 = sub nsw i32 %343, %344
  %call513 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %340, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i32 %341, i32 %342, i32 %sub512)
  br label %if.end.514

if.end.514:                                       ; preds = %if.then.318, %if.then.511, %for.end.508
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @BZ2_bz__AssertH__fail(i32) #1

; Function Attrs: nounwind uwtable
define internal void @fallbackQSort3(i32* %fmap, i32* %eclass, i32 %loSt, i32 %hiSt) #0 {
entry:
  %fmap.addr = alloca i32*, align 8
  %eclass.addr = alloca i32*, align 8
  %loSt.addr = alloca i32, align 4
  %hiSt.addr = alloca i32, align 4
  %unLo = alloca i32, align 4
  %unHi = alloca i32, align 4
  %ltLo = alloca i32, align 4
  %gtHi = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %sp = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %med = alloca i32, align 4
  %r = alloca i32, align 4
  %r3 = alloca i32, align 4
  %stackLo = alloca [100 x i32], align 16
  %stackHi = alloca [100 x i32], align 16
  %zztmp = alloca i32, align 4
  %zztmp73 = alloca i32, align 4
  %zztmp93 = alloca i32, align 4
  %yyp1 = alloca i32, align 4
  %yyp2 = alloca i32, align 4
  %yyn = alloca i32, align 4
  %zztmp117 = alloca i32, align 4
  %yyp1139 = alloca i32, align 4
  %yyp2140 = alloca i32, align 4
  %yyn143 = alloca i32, align 4
  %zztmp147 = alloca i32, align 4
  store i32* %fmap, i32** %fmap.addr, align 8
  store i32* %eclass, i32** %eclass.addr, align 8
  store i32 %loSt, i32* %loSt.addr, align 4
  store i32 %hiSt, i32* %hiSt.addr, align 4
  store i32 0, i32* %r, align 4
  store i32 0, i32* %sp, align 4
  %0 = load i32, i32* %loSt.addr, align 4
  %1 = load i32, i32* %sp, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i32 0, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  %2 = load i32, i32* %hiSt.addr, align 4
  %3 = load i32, i32* %sp, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i32 0, i64 %idxprom1
  store i32 %2, i32* %arrayidx2, align 4
  %4 = load i32, i32* %sp, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %sp, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.191, %if.then.106, %if.then.9, %entry
  %5 = load i32, i32* %sp, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end.192

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %sp, align 4
  %cmp3 = icmp slt i32 %6, 100
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @BZ2_bz__AssertH__fail(i32 1004)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i32, i32* %sp, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %sp, align 4
  %8 = load i32, i32* %sp, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  store i32 %9, i32* %lo, align 4
  %10 = load i32, i32* %sp, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i32 0, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  store i32 %11, i32* %hi, align 4
  %12 = load i32, i32* %hi, align 4
  %13 = load i32, i32* %lo, align 4
  %sub = sub nsw i32 %12, %13
  %cmp8 = icmp slt i32 %sub, 10
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %14 = load i32*, i32** %fmap.addr, align 8
  %15 = load i32*, i32** %eclass.addr, align 8
  %16 = load i32, i32* %lo, align 4
  %17 = load i32, i32* %hi, align 4
  call void @fallbackSimpleSort(i32* %14, i32* %15, i32 %16, i32 %17)
  br label %while.cond

if.end.10:                                        ; preds = %if.end
  %18 = load i32, i32* %r, align 4
  %mul = mul i32 %18, 7621
  %add = add i32 %mul, 1
  %rem = urem i32 %add, 32768
  store i32 %rem, i32* %r, align 4
  %19 = load i32, i32* %r, align 4
  %rem11 = urem i32 %19, 3
  store i32 %rem11, i32* %r3, align 4
  %20 = load i32, i32* %r3, align 4
  %cmp12 = icmp eq i32 %20, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  %21 = load i32, i32* %lo, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load i32*, i32** %fmap.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %22, i64 %idxprom14
  %23 = load i32, i32* %arrayidx15, align 4
  %idxprom16 = zext i32 %23 to i64
  %24 = load i32*, i32** %eclass.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  %25 = load i32, i32* %arrayidx17, align 4
  store i32 %25, i32* %med, align 4
  br label %if.end.31

if.else:                                          ; preds = %if.end.10
  %26 = load i32, i32* %r3, align 4
  %cmp18 = icmp eq i32 %26, 1
  br i1 %cmp18, label %if.then.19, label %if.else.25

if.then.19:                                       ; preds = %if.else
  %27 = load i32, i32* %lo, align 4
  %28 = load i32, i32* %hi, align 4
  %add20 = add nsw i32 %27, %28
  %shr = ashr i32 %add20, 1
  %idxprom21 = sext i32 %shr to i64
  %29 = load i32*, i32** %fmap.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %29, i64 %idxprom21
  %30 = load i32, i32* %arrayidx22, align 4
  %idxprom23 = zext i32 %30 to i64
  %31 = load i32*, i32** %eclass.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %31, i64 %idxprom23
  %32 = load i32, i32* %arrayidx24, align 4
  store i32 %32, i32* %med, align 4
  br label %if.end.30

if.else.25:                                       ; preds = %if.else
  %33 = load i32, i32* %hi, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load i32*, i32** %fmap.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %34, i64 %idxprom26
  %35 = load i32, i32* %arrayidx27, align 4
  %idxprom28 = zext i32 %35 to i64
  %36 = load i32*, i32** %eclass.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %36, i64 %idxprom28
  %37 = load i32, i32* %arrayidx29, align 4
  store i32 %37, i32* %med, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.25, %if.then.19
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.13
  %38 = load i32, i32* %lo, align 4
  store i32 %38, i32* %ltLo, align 4
  store i32 %38, i32* %unLo, align 4
  %39 = load i32, i32* %hi, align 4
  store i32 %39, i32* %gtHi, align 4
  store i32 %39, i32* %unHi, align 4
  br label %while.body.33

while.body.33:                                    ; preds = %if.end.31, %if.end.92
  br label %while.body.35

while.body.35:                                    ; preds = %while.body.33, %if.then.45, %if.end.59
  %40 = load i32, i32* %unLo, align 4
  %41 = load i32, i32* %unHi, align 4
  %cmp36 = icmp sgt i32 %40, %41
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %while.body.35
  br label %while.end

if.end.38:                                        ; preds = %while.body.35
  %42 = load i32, i32* %unLo, align 4
  %idxprom39 = sext i32 %42 to i64
  %43 = load i32*, i32** %fmap.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %43, i64 %idxprom39
  %44 = load i32, i32* %arrayidx40, align 4
  %idxprom41 = zext i32 %44 to i64
  %45 = load i32*, i32** %eclass.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %45, i64 %idxprom41
  %46 = load i32, i32* %arrayidx42, align 4
  %47 = load i32, i32* %med, align 4
  %sub43 = sub nsw i32 %46, %47
  store i32 %sub43, i32* %n, align 4
  %48 = load i32, i32* %n, align 4
  %cmp44 = icmp eq i32 %48, 0
  br i1 %cmp44, label %if.then.45, label %if.end.56

if.then.45:                                       ; preds = %if.end.38
  %49 = load i32, i32* %unLo, align 4
  %idxprom46 = sext i32 %49 to i64
  %50 = load i32*, i32** %fmap.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %50, i64 %idxprom46
  %51 = load i32, i32* %arrayidx47, align 4
  store i32 %51, i32* %zztmp, align 4
  %52 = load i32, i32* %ltLo, align 4
  %idxprom48 = sext i32 %52 to i64
  %53 = load i32*, i32** %fmap.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %53, i64 %idxprom48
  %54 = load i32, i32* %arrayidx49, align 4
  %55 = load i32, i32* %unLo, align 4
  %idxprom50 = sext i32 %55 to i64
  %56 = load i32*, i32** %fmap.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %56, i64 %idxprom50
  store i32 %54, i32* %arrayidx51, align 4
  %57 = load i32, i32* %zztmp, align 4
  %58 = load i32, i32* %ltLo, align 4
  %idxprom52 = sext i32 %58 to i64
  %59 = load i32*, i32** %fmap.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %59, i64 %idxprom52
  store i32 %57, i32* %arrayidx53, align 4
  %60 = load i32, i32* %ltLo, align 4
  %inc54 = add nsw i32 %60, 1
  store i32 %inc54, i32* %ltLo, align 4
  %61 = load i32, i32* %unLo, align 4
  %inc55 = add nsw i32 %61, 1
  store i32 %inc55, i32* %unLo, align 4
  br label %while.body.35

if.end.56:                                        ; preds = %if.end.38
  %62 = load i32, i32* %n, align 4
  %cmp57 = icmp sgt i32 %62, 0
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.56
  br label %while.end

if.end.59:                                        ; preds = %if.end.56
  %63 = load i32, i32* %unLo, align 4
  %inc60 = add nsw i32 %63, 1
  store i32 %inc60, i32* %unLo, align 4
  br label %while.body.35

while.end:                                        ; preds = %if.then.58, %if.then.37
  br label %while.body.62

while.body.62:                                    ; preds = %while.end, %if.then.72, %if.end.87
  %64 = load i32, i32* %unLo, align 4
  %65 = load i32, i32* %unHi, align 4
  %cmp63 = icmp sgt i32 %64, %65
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %while.body.62
  br label %while.end.89

if.end.65:                                        ; preds = %while.body.62
  %66 = load i32, i32* %unHi, align 4
  %idxprom66 = sext i32 %66 to i64
  %67 = load i32*, i32** %fmap.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %67, i64 %idxprom66
  %68 = load i32, i32* %arrayidx67, align 4
  %idxprom68 = zext i32 %68 to i64
  %69 = load i32*, i32** %eclass.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %69, i64 %idxprom68
  %70 = load i32, i32* %arrayidx69, align 4
  %71 = load i32, i32* %med, align 4
  %sub70 = sub nsw i32 %70, %71
  store i32 %sub70, i32* %n, align 4
  %72 = load i32, i32* %n, align 4
  %cmp71 = icmp eq i32 %72, 0
  br i1 %cmp71, label %if.then.72, label %if.end.84

if.then.72:                                       ; preds = %if.end.65
  %73 = load i32, i32* %unHi, align 4
  %idxprom74 = sext i32 %73 to i64
  %74 = load i32*, i32** %fmap.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %74, i64 %idxprom74
  %75 = load i32, i32* %arrayidx75, align 4
  store i32 %75, i32* %zztmp73, align 4
  %76 = load i32, i32* %gtHi, align 4
  %idxprom76 = sext i32 %76 to i64
  %77 = load i32*, i32** %fmap.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %77, i64 %idxprom76
  %78 = load i32, i32* %arrayidx77, align 4
  %79 = load i32, i32* %unHi, align 4
  %idxprom78 = sext i32 %79 to i64
  %80 = load i32*, i32** %fmap.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %80, i64 %idxprom78
  store i32 %78, i32* %arrayidx79, align 4
  %81 = load i32, i32* %zztmp73, align 4
  %82 = load i32, i32* %gtHi, align 4
  %idxprom80 = sext i32 %82 to i64
  %83 = load i32*, i32** %fmap.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %83, i64 %idxprom80
  store i32 %81, i32* %arrayidx81, align 4
  %84 = load i32, i32* %gtHi, align 4
  %dec82 = add nsw i32 %84, -1
  store i32 %dec82, i32* %gtHi, align 4
  %85 = load i32, i32* %unHi, align 4
  %dec83 = add nsw i32 %85, -1
  store i32 %dec83, i32* %unHi, align 4
  br label %while.body.62

if.end.84:                                        ; preds = %if.end.65
  %86 = load i32, i32* %n, align 4
  %cmp85 = icmp slt i32 %86, 0
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.84
  br label %while.end.89

if.end.87:                                        ; preds = %if.end.84
  %87 = load i32, i32* %unHi, align 4
  %dec88 = add nsw i32 %87, -1
  store i32 %dec88, i32* %unHi, align 4
  br label %while.body.62

while.end.89:                                     ; preds = %if.then.86, %if.then.64
  %88 = load i32, i32* %unLo, align 4
  %89 = load i32, i32* %unHi, align 4
  %cmp90 = icmp sgt i32 %88, %89
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %while.end.89
  br label %while.end.104

if.end.92:                                        ; preds = %while.end.89
  %90 = load i32, i32* %unLo, align 4
  %idxprom94 = sext i32 %90 to i64
  %91 = load i32*, i32** %fmap.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %91, i64 %idxprom94
  %92 = load i32, i32* %arrayidx95, align 4
  store i32 %92, i32* %zztmp93, align 4
  %93 = load i32, i32* %unHi, align 4
  %idxprom96 = sext i32 %93 to i64
  %94 = load i32*, i32** %fmap.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %94, i64 %idxprom96
  %95 = load i32, i32* %arrayidx97, align 4
  %96 = load i32, i32* %unLo, align 4
  %idxprom98 = sext i32 %96 to i64
  %97 = load i32*, i32** %fmap.addr, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %97, i64 %idxprom98
  store i32 %95, i32* %arrayidx99, align 4
  %98 = load i32, i32* %zztmp93, align 4
  %99 = load i32, i32* %unHi, align 4
  %idxprom100 = sext i32 %99 to i64
  %100 = load i32*, i32** %fmap.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %100, i64 %idxprom100
  store i32 %98, i32* %arrayidx101, align 4
  %101 = load i32, i32* %unLo, align 4
  %inc102 = add nsw i32 %101, 1
  store i32 %inc102, i32* %unLo, align 4
  %102 = load i32, i32* %unHi, align 4
  %dec103 = add nsw i32 %102, -1
  store i32 %dec103, i32* %unHi, align 4
  br label %while.body.33

while.end.104:                                    ; preds = %if.then.91
  %103 = load i32, i32* %gtHi, align 4
  %104 = load i32, i32* %ltLo, align 4
  %cmp105 = icmp slt i32 %103, %104
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %while.end.104
  br label %while.cond

if.end.107:                                       ; preds = %while.end.104
  %105 = load i32, i32* %ltLo, align 4
  %106 = load i32, i32* %lo, align 4
  %sub108 = sub nsw i32 %105, %106
  %107 = load i32, i32* %unLo, align 4
  %108 = load i32, i32* %ltLo, align 4
  %sub109 = sub nsw i32 %107, %108
  %cmp110 = icmp slt i32 %sub108, %sub109
  br i1 %cmp110, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.107
  %109 = load i32, i32* %ltLo, align 4
  %110 = load i32, i32* %lo, align 4
  %sub111 = sub nsw i32 %109, %110
  br label %cond.end

cond.false:                                       ; preds = %if.end.107
  %111 = load i32, i32* %unLo, align 4
  %112 = load i32, i32* %ltLo, align 4
  %sub112 = sub nsw i32 %111, %112
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub111, %cond.true ], [ %sub112, %cond.false ]
  store i32 %cond, i32* %n, align 4
  %113 = load i32, i32* %lo, align 4
  store i32 %113, i32* %yyp1, align 4
  %114 = load i32, i32* %unLo, align 4
  %115 = load i32, i32* %n, align 4
  %sub113 = sub nsw i32 %114, %115
  store i32 %sub113, i32* %yyp2, align 4
  %116 = load i32, i32* %n, align 4
  store i32 %116, i32* %yyn, align 4
  br label %while.cond.114

while.cond.114:                                   ; preds = %while.body.116, %cond.end
  %117 = load i32, i32* %yyn, align 4
  %cmp115 = icmp sgt i32 %117, 0
  br i1 %cmp115, label %while.body.116, label %while.end.129

while.body.116:                                   ; preds = %while.cond.114
  %118 = load i32, i32* %yyp1, align 4
  %idxprom118 = sext i32 %118 to i64
  %119 = load i32*, i32** %fmap.addr, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %119, i64 %idxprom118
  %120 = load i32, i32* %arrayidx119, align 4
  store i32 %120, i32* %zztmp117, align 4
  %121 = load i32, i32* %yyp2, align 4
  %idxprom120 = sext i32 %121 to i64
  %122 = load i32*, i32** %fmap.addr, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %122, i64 %idxprom120
  %123 = load i32, i32* %arrayidx121, align 4
  %124 = load i32, i32* %yyp1, align 4
  %idxprom122 = sext i32 %124 to i64
  %125 = load i32*, i32** %fmap.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %125, i64 %idxprom122
  store i32 %123, i32* %arrayidx123, align 4
  %126 = load i32, i32* %zztmp117, align 4
  %127 = load i32, i32* %yyp2, align 4
  %idxprom124 = sext i32 %127 to i64
  %128 = load i32*, i32** %fmap.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %128, i64 %idxprom124
  store i32 %126, i32* %arrayidx125, align 4
  %129 = load i32, i32* %yyp1, align 4
  %inc126 = add nsw i32 %129, 1
  store i32 %inc126, i32* %yyp1, align 4
  %130 = load i32, i32* %yyp2, align 4
  %inc127 = add nsw i32 %130, 1
  store i32 %inc127, i32* %yyp2, align 4
  %131 = load i32, i32* %yyn, align 4
  %dec128 = add nsw i32 %131, -1
  store i32 %dec128, i32* %yyn, align 4
  br label %while.cond.114

while.end.129:                                    ; preds = %while.cond.114
  %132 = load i32, i32* %hi, align 4
  %133 = load i32, i32* %gtHi, align 4
  %sub130 = sub nsw i32 %132, %133
  %134 = load i32, i32* %gtHi, align 4
  %135 = load i32, i32* %unHi, align 4
  %sub131 = sub nsw i32 %134, %135
  %cmp132 = icmp slt i32 %sub130, %sub131
  br i1 %cmp132, label %cond.true.133, label %cond.false.135

cond.true.133:                                    ; preds = %while.end.129
  %136 = load i32, i32* %hi, align 4
  %137 = load i32, i32* %gtHi, align 4
  %sub134 = sub nsw i32 %136, %137
  br label %cond.end.137

cond.false.135:                                   ; preds = %while.end.129
  %138 = load i32, i32* %gtHi, align 4
  %139 = load i32, i32* %unHi, align 4
  %sub136 = sub nsw i32 %138, %139
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.135, %cond.true.133
  %cond138 = phi i32 [ %sub134, %cond.true.133 ], [ %sub136, %cond.false.135 ]
  store i32 %cond138, i32* %m, align 4
  %140 = load i32, i32* %unLo, align 4
  store i32 %140, i32* %yyp1139, align 4
  %141 = load i32, i32* %hi, align 4
  %142 = load i32, i32* %m, align 4
  %sub141 = sub nsw i32 %141, %142
  %add142 = add nsw i32 %sub141, 1
  store i32 %add142, i32* %yyp2140, align 4
  %143 = load i32, i32* %m, align 4
  store i32 %143, i32* %yyn143, align 4
  br label %while.cond.144

while.cond.144:                                   ; preds = %while.body.146, %cond.end.137
  %144 = load i32, i32* %yyn143, align 4
  %cmp145 = icmp sgt i32 %144, 0
  br i1 %cmp145, label %while.body.146, label %while.end.159

while.body.146:                                   ; preds = %while.cond.144
  %145 = load i32, i32* %yyp1139, align 4
  %idxprom148 = sext i32 %145 to i64
  %146 = load i32*, i32** %fmap.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %146, i64 %idxprom148
  %147 = load i32, i32* %arrayidx149, align 4
  store i32 %147, i32* %zztmp147, align 4
  %148 = load i32, i32* %yyp2140, align 4
  %idxprom150 = sext i32 %148 to i64
  %149 = load i32*, i32** %fmap.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %149, i64 %idxprom150
  %150 = load i32, i32* %arrayidx151, align 4
  %151 = load i32, i32* %yyp1139, align 4
  %idxprom152 = sext i32 %151 to i64
  %152 = load i32*, i32** %fmap.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %152, i64 %idxprom152
  store i32 %150, i32* %arrayidx153, align 4
  %153 = load i32, i32* %zztmp147, align 4
  %154 = load i32, i32* %yyp2140, align 4
  %idxprom154 = sext i32 %154 to i64
  %155 = load i32*, i32** %fmap.addr, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %155, i64 %idxprom154
  store i32 %153, i32* %arrayidx155, align 4
  %156 = load i32, i32* %yyp1139, align 4
  %inc156 = add nsw i32 %156, 1
  store i32 %inc156, i32* %yyp1139, align 4
  %157 = load i32, i32* %yyp2140, align 4
  %inc157 = add nsw i32 %157, 1
  store i32 %inc157, i32* %yyp2140, align 4
  %158 = load i32, i32* %yyn143, align 4
  %dec158 = add nsw i32 %158, -1
  store i32 %dec158, i32* %yyn143, align 4
  br label %while.cond.144

while.end.159:                                    ; preds = %while.cond.144
  %159 = load i32, i32* %lo, align 4
  %160 = load i32, i32* %unLo, align 4
  %add160 = add nsw i32 %159, %160
  %161 = load i32, i32* %ltLo, align 4
  %sub161 = sub nsw i32 %add160, %161
  %sub162 = sub nsw i32 %sub161, 1
  store i32 %sub162, i32* %n, align 4
  %162 = load i32, i32* %hi, align 4
  %163 = load i32, i32* %gtHi, align 4
  %164 = load i32, i32* %unHi, align 4
  %sub163 = sub nsw i32 %163, %164
  %sub164 = sub nsw i32 %162, %sub163
  %add165 = add nsw i32 %sub164, 1
  store i32 %add165, i32* %m, align 4
  %165 = load i32, i32* %n, align 4
  %166 = load i32, i32* %lo, align 4
  %sub166 = sub nsw i32 %165, %166
  %167 = load i32, i32* %hi, align 4
  %168 = load i32, i32* %m, align 4
  %sub167 = sub nsw i32 %167, %168
  %cmp168 = icmp sgt i32 %sub166, %sub167
  br i1 %cmp168, label %if.then.169, label %if.else.180

if.then.169:                                      ; preds = %while.end.159
  %169 = load i32, i32* %lo, align 4
  %170 = load i32, i32* %sp, align 4
  %idxprom170 = sext i32 %170 to i64
  %arrayidx171 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i32 0, i64 %idxprom170
  store i32 %169, i32* %arrayidx171, align 4
  %171 = load i32, i32* %n, align 4
  %172 = load i32, i32* %sp, align 4
  %idxprom172 = sext i32 %172 to i64
  %arrayidx173 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i32 0, i64 %idxprom172
  store i32 %171, i32* %arrayidx173, align 4
  %173 = load i32, i32* %sp, align 4
  %inc174 = add nsw i32 %173, 1
  store i32 %inc174, i32* %sp, align 4
  %174 = load i32, i32* %m, align 4
  %175 = load i32, i32* %sp, align 4
  %idxprom175 = sext i32 %175 to i64
  %arrayidx176 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i32 0, i64 %idxprom175
  store i32 %174, i32* %arrayidx176, align 4
  %176 = load i32, i32* %hi, align 4
  %177 = load i32, i32* %sp, align 4
  %idxprom177 = sext i32 %177 to i64
  %arrayidx178 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i32 0, i64 %idxprom177
  store i32 %176, i32* %arrayidx178, align 4
  %178 = load i32, i32* %sp, align 4
  %inc179 = add nsw i32 %178, 1
  store i32 %inc179, i32* %sp, align 4
  br label %if.end.191

if.else.180:                                      ; preds = %while.end.159
  %179 = load i32, i32* %m, align 4
  %180 = load i32, i32* %sp, align 4
  %idxprom181 = sext i32 %180 to i64
  %arrayidx182 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i32 0, i64 %idxprom181
  store i32 %179, i32* %arrayidx182, align 4
  %181 = load i32, i32* %hi, align 4
  %182 = load i32, i32* %sp, align 4
  %idxprom183 = sext i32 %182 to i64
  %arrayidx184 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i32 0, i64 %idxprom183
  store i32 %181, i32* %arrayidx184, align 4
  %183 = load i32, i32* %sp, align 4
  %inc185 = add nsw i32 %183, 1
  store i32 %inc185, i32* %sp, align 4
  %184 = load i32, i32* %lo, align 4
  %185 = load i32, i32* %sp, align 4
  %idxprom186 = sext i32 %185 to i64
  %arrayidx187 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i32 0, i64 %idxprom186
  store i32 %184, i32* %arrayidx187, align 4
  %186 = load i32, i32* %n, align 4
  %187 = load i32, i32* %sp, align 4
  %idxprom188 = sext i32 %187 to i64
  %arrayidx189 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i32 0, i64 %idxprom188
  store i32 %186, i32* %arrayidx189, align 4
  %188 = load i32, i32* %sp, align 4
  %inc190 = add nsw i32 %188, 1
  store i32 %inc190, i32* %sp, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.180, %if.then.169
  br label %while.cond

while.end.192:                                    ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fallbackSimpleSort(i32* %fmap, i32* %eclass, i32 %lo, i32 %hi) #0 {
entry:
  %fmap.addr = alloca i32*, align 8
  %eclass.addr = alloca i32*, align 8
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ec_tmp = alloca i32, align 4
  store i32* %fmap, i32** %fmap.addr, align 8
  store i32* %eclass, i32** %eclass.addr, align 8
  store i32 %lo, i32* %lo.addr, align 4
  store i32 %hi, i32* %hi.addr, align 4
  %0 = load i32, i32* %lo.addr, align 4
  %1 = load i32, i32* %hi.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.59

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %hi.addr, align 4
  %3 = load i32, i32* %lo.addr, align 4
  %sub = sub nsw i32 %2, %3
  %cmp2 = icmp sgt i32 %sub, 3
  br i1 %cmp2, label %if.then.3, label %if.end.27

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %hi.addr, align 4
  %sub4 = sub nsw i32 %4, 4
  store i32 %sub4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.then.3
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %lo.addr, align 4
  %cmp5 = icmp sge i32 %5, %6
  br i1 %cmp5, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %fmap.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  store i32 %9, i32* %tmp, align 4
  %10 = load i32, i32* %tmp, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32*, i32** %eclass.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  store i32 %12, i32* %ec_tmp, align 4
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 4
  store i32 %add, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %hi.addr, align 4
  %cmp9 = icmp sle i32 %14, %15
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.8
  %16 = load i32, i32* %ec_tmp, align 4
  %17 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i32*, i32** %fmap.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %18, i64 %idxprom10
  %19 = load i32, i32* %arrayidx11, align 4
  %idxprom12 = zext i32 %19 to i64
  %20 = load i32*, i32** %eclass.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 %idxprom12
  %21 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp ugt i32 %16, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.8
  %22 = phi i1 [ false, %for.cond.8 ], [ %cmp14, %land.rhs ]
  br i1 %22, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %land.end
  %23 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load i32*, i32** %fmap.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  %25 = load i32, i32* %arrayidx17, align 4
  %26 = load i32, i32* %j, align 4
  %sub18 = sub nsw i32 %26, 4
  %idxprom19 = sext i32 %sub18 to i64
  %27 = load i32*, i32** %fmap.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %27, i64 %idxprom19
  store i32 %25, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %28 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %28, 4
  store i32 %add21, i32* %j, align 4
  br label %for.cond.8

for.end:                                          ; preds = %land.end
  %29 = load i32, i32* %tmp, align 4
  %30 = load i32, i32* %j, align 4
  %sub22 = sub nsw i32 %30, 4
  %idxprom23 = sext i32 %sub22 to i64
  %31 = load i32*, i32** %fmap.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %31, i64 %idxprom23
  store i32 %29, i32* %arrayidx24, align 4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  br label %if.end.27

if.end.27:                                        ; preds = %for.end.26, %if.end
  %33 = load i32, i32* %hi.addr, align 4
  %sub28 = sub nsw i32 %33, 1
  store i32 %sub28, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.57, %if.end.27
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %lo.addr, align 4
  %cmp30 = icmp sge i32 %34, %35
  br i1 %cmp30, label %for.body.31, label %for.end.59

for.body.31:                                      ; preds = %for.cond.29
  %36 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %36 to i64
  %37 = load i32*, i32** %fmap.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %37, i64 %idxprom32
  %38 = load i32, i32* %arrayidx33, align 4
  store i32 %38, i32* %tmp, align 4
  %39 = load i32, i32* %tmp, align 4
  %idxprom34 = sext i32 %39 to i64
  %40 = load i32*, i32** %eclass.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %40, i64 %idxprom34
  %41 = load i32, i32* %arrayidx35, align 4
  store i32 %41, i32* %ec_tmp, align 4
  %42 = load i32, i32* %i, align 4
  %add36 = add nsw i32 %42, 1
  store i32 %add36, i32* %j, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.52, %for.body.31
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %hi.addr, align 4
  %cmp38 = icmp sle i32 %43, %44
  br i1 %cmp38, label %land.rhs.39, label %land.end.45

land.rhs.39:                                      ; preds = %for.cond.37
  %45 = load i32, i32* %ec_tmp, align 4
  %46 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %46 to i64
  %47 = load i32*, i32** %fmap.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %47, i64 %idxprom40
  %48 = load i32, i32* %arrayidx41, align 4
  %idxprom42 = zext i32 %48 to i64
  %49 = load i32*, i32** %eclass.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %49, i64 %idxprom42
  %50 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp ugt i32 %45, %50
  br label %land.end.45

land.end.45:                                      ; preds = %land.rhs.39, %for.cond.37
  %51 = phi i1 [ false, %for.cond.37 ], [ %cmp44, %land.rhs.39 ]
  br i1 %51, label %for.body.46, label %for.end.53

for.body.46:                                      ; preds = %land.end.45
  %52 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %52 to i64
  %53 = load i32*, i32** %fmap.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %53, i64 %idxprom47
  %54 = load i32, i32* %arrayidx48, align 4
  %55 = load i32, i32* %j, align 4
  %sub49 = sub nsw i32 %55, 1
  %idxprom50 = sext i32 %sub49 to i64
  %56 = load i32*, i32** %fmap.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %56, i64 %idxprom50
  store i32 %54, i32* %arrayidx51, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.46
  %57 = load i32, i32* %j, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.37

for.end.53:                                       ; preds = %land.end.45
  %58 = load i32, i32* %tmp, align 4
  %59 = load i32, i32* %j, align 4
  %sub54 = sub nsw i32 %59, 1
  %idxprom55 = sext i32 %sub54 to i64
  %60 = load i32*, i32** %fmap.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %60, i64 %idxprom55
  store i32 %58, i32* %arrayidx56, align 4
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end.53
  %61 = load i32, i32* %i, align 4
  %dec58 = add nsw i32 %61, -1
  store i32 %dec58, i32* %i, align 4
  br label %for.cond.29

for.end.59:                                       ; preds = %if.then, %for.cond.29
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mainQSort3(i32* %ptr, i8* %block, i16* %quadrant, i32 %nblock, i32 %loSt, i32 %hiSt, i32 %dSt, i32* %budget) #0 {
entry:
  %ptr.addr = alloca i32*, align 8
  %block.addr = alloca i8*, align 8
  %quadrant.addr = alloca i16*, align 8
  %nblock.addr = alloca i32, align 4
  %loSt.addr = alloca i32, align 4
  %hiSt.addr = alloca i32, align 4
  %dSt.addr = alloca i32, align 4
  %budget.addr = alloca i32*, align 8
  %unLo = alloca i32, align 4
  %unHi = alloca i32, align 4
  %ltLo = alloca i32, align 4
  %gtHi = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %med = alloca i32, align 4
  %sp = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %d = alloca i32, align 4
  %stackLo = alloca [100 x i32], align 16
  %stackHi = alloca [100 x i32], align 16
  %stackD = alloca [100 x i32], align 16
  %nextLo = alloca [3 x i32], align 4
  %nextHi = alloca [3 x i32], align 4
  %nextD = alloca [3 x i32], align 4
  %zztmp = alloca i32, align 4
  %zztmp84 = alloca i32, align 4
  %zztmp106 = alloca i32, align 4
  %yyp1 = alloca i32, align 4
  %yyp2 = alloca i32, align 4
  %yyn = alloca i32, align 4
  %zztmp141 = alloca i32, align 4
  %yyp1164 = alloca i32, align 4
  %yyp2165 = alloca i32, align 4
  %yyn168 = alloca i32, align 4
  %zztmp173 = alloca i32, align 4
  %tz = alloca i32, align 4
  %tz235 = alloca i32, align 4
  %tz258 = alloca i32, align 4
  store i32* %ptr, i32** %ptr.addr, align 8
  store i8* %block, i8** %block.addr, align 8
  store i16* %quadrant, i16** %quadrant.addr, align 8
  store i32 %nblock, i32* %nblock.addr, align 4
  store i32 %loSt, i32* %loSt.addr, align 4
  store i32 %hiSt, i32* %hiSt.addr, align 4
  store i32 %dSt, i32* %dSt.addr, align 4
  store i32* %budget, i32** %budget.addr, align 8
  store i32 0, i32* %sp, align 4
  %0 = load i32, i32* %loSt.addr, align 4
  %1 = load i32, i32* %sp, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i32 0, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  %2 = load i32, i32* %hiSt.addr, align 4
  %3 = load i32, i32* %sp, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i32 0, i64 %idxprom1
  store i32 %2, i32* %arrayidx2, align 4
  %4 = load i32, i32* %dSt.addr, align 4
  %5 = load i32, i32* %sp, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* %stackD, i32 0, i64 %idxprom3
  store i32 %4, i32* %arrayidx4, align 4
  %6 = load i32, i32* %sp, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %sp, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.271, %if.then.120, %if.end.17, %entry
  %7 = load i32, i32* %sp, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %while.body, label %while.end.302

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %sp, align 4
  %cmp5 = icmp slt i32 %8, 100
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @BZ2_bz__AssertH__fail(i32 1001)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i32, i32* %sp, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %sp, align 4
  %10 = load i32, i32* %sp, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i32 0, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  store i32 %11, i32* %lo, align 4
  %12 = load i32, i32* %sp, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i32 0, i64 %idxprom8
  %13 = load i32, i32* %arrayidx9, align 4
  store i32 %13, i32* %hi, align 4
  %14 = load i32, i32* %sp, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], [100 x i32]* %stackD, i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  store i32 %15, i32* %d, align 4
  %16 = load i32, i32* %hi, align 4
  %17 = load i32, i32* %lo, align 4
  %sub = sub nsw i32 %16, %17
  %cmp12 = icmp slt i32 %sub, 20
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %18 = load i32, i32* %d, align 4
  %cmp13 = icmp sgt i32 %18, 14
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %lor.lhs.false, %if.end
  %19 = load i32*, i32** %ptr.addr, align 8
  %20 = load i8*, i8** %block.addr, align 8
  %21 = load i16*, i16** %quadrant.addr, align 8
  %22 = load i32, i32* %nblock.addr, align 4
  %23 = load i32, i32* %lo, align 4
  %24 = load i32, i32* %hi, align 4
  %25 = load i32, i32* %d, align 4
  %26 = load i32*, i32** %budget.addr, align 8
  call void @mainSimpleSort(i32* %19, i8* %20, i16* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32* %26)
  %27 = load i32*, i32** %budget.addr, align 8
  %28 = load i32, i32* %27, align 4
  %cmp15 = icmp slt i32 %28, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.14
  br label %while.end.302

if.end.17:                                        ; preds = %if.then.14
  br label %while.cond

if.end.18:                                        ; preds = %lor.lhs.false
  %29 = load i32, i32* %lo, align 4
  %idxprom19 = sext i32 %29 to i64
  %30 = load i32*, i32** %ptr.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %30, i64 %idxprom19
  %31 = load i32, i32* %arrayidx20, align 4
  %32 = load i32, i32* %d, align 4
  %add = add i32 %31, %32
  %idxprom21 = zext i32 %add to i64
  %33 = load i8*, i8** %block.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %33, i64 %idxprom21
  %34 = load i8, i8* %arrayidx22, align 1
  %35 = load i32, i32* %hi, align 4
  %idxprom23 = sext i32 %35 to i64
  %36 = load i32*, i32** %ptr.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %36, i64 %idxprom23
  %37 = load i32, i32* %arrayidx24, align 4
  %38 = load i32, i32* %d, align 4
  %add25 = add i32 %37, %38
  %idxprom26 = zext i32 %add25 to i64
  %39 = load i8*, i8** %block.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %39, i64 %idxprom26
  %40 = load i8, i8* %arrayidx27, align 1
  %41 = load i32, i32* %lo, align 4
  %42 = load i32, i32* %hi, align 4
  %add28 = add nsw i32 %41, %42
  %shr = ashr i32 %add28, 1
  %idxprom29 = sext i32 %shr to i64
  %43 = load i32*, i32** %ptr.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %43, i64 %idxprom29
  %44 = load i32, i32* %arrayidx30, align 4
  %45 = load i32, i32* %d, align 4
  %add31 = add i32 %44, %45
  %idxprom32 = zext i32 %add31 to i64
  %46 = load i8*, i8** %block.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %46, i64 %idxprom32
  %47 = load i8, i8* %arrayidx33, align 1
  %call = call zeroext i8 @mmed3(i8 zeroext %34, i8 zeroext %40, i8 zeroext %47)
  %conv = zext i8 %call to i32
  store i32 %conv, i32* %med, align 4
  %48 = load i32, i32* %lo, align 4
  store i32 %48, i32* %ltLo, align 4
  store i32 %48, i32* %unLo, align 4
  %49 = load i32, i32* %hi, align 4
  store i32 %49, i32* %gtHi, align 4
  store i32 %49, i32* %unHi, align 4
  br label %while.body.35

while.body.35:                                    ; preds = %if.end.18, %if.end.105
  br label %while.body.37

while.body.37:                                    ; preds = %while.body.35, %if.then.51, %if.end.66
  %50 = load i32, i32* %unLo, align 4
  %51 = load i32, i32* %unHi, align 4
  %cmp38 = icmp sgt i32 %50, %51
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %while.body.37
  br label %while.end

if.end.41:                                        ; preds = %while.body.37
  %52 = load i32, i32* %unLo, align 4
  %idxprom42 = sext i32 %52 to i64
  %53 = load i32*, i32** %ptr.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %53, i64 %idxprom42
  %54 = load i32, i32* %arrayidx43, align 4
  %55 = load i32, i32* %d, align 4
  %add44 = add i32 %54, %55
  %idxprom45 = zext i32 %add44 to i64
  %56 = load i8*, i8** %block.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %56, i64 %idxprom45
  %57 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %57 to i32
  %58 = load i32, i32* %med, align 4
  %sub48 = sub nsw i32 %conv47, %58
  store i32 %sub48, i32* %n, align 4
  %59 = load i32, i32* %n, align 4
  %cmp49 = icmp eq i32 %59, 0
  br i1 %cmp49, label %if.then.51, label %if.end.62

if.then.51:                                       ; preds = %if.end.41
  %60 = load i32, i32* %unLo, align 4
  %idxprom52 = sext i32 %60 to i64
  %61 = load i32*, i32** %ptr.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %61, i64 %idxprom52
  %62 = load i32, i32* %arrayidx53, align 4
  store i32 %62, i32* %zztmp, align 4
  %63 = load i32, i32* %ltLo, align 4
  %idxprom54 = sext i32 %63 to i64
  %64 = load i32*, i32** %ptr.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %64, i64 %idxprom54
  %65 = load i32, i32* %arrayidx55, align 4
  %66 = load i32, i32* %unLo, align 4
  %idxprom56 = sext i32 %66 to i64
  %67 = load i32*, i32** %ptr.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %67, i64 %idxprom56
  store i32 %65, i32* %arrayidx57, align 4
  %68 = load i32, i32* %zztmp, align 4
  %69 = load i32, i32* %ltLo, align 4
  %idxprom58 = sext i32 %69 to i64
  %70 = load i32*, i32** %ptr.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %70, i64 %idxprom58
  store i32 %68, i32* %arrayidx59, align 4
  %71 = load i32, i32* %ltLo, align 4
  %inc60 = add nsw i32 %71, 1
  store i32 %inc60, i32* %ltLo, align 4
  %72 = load i32, i32* %unLo, align 4
  %inc61 = add nsw i32 %72, 1
  store i32 %inc61, i32* %unLo, align 4
  br label %while.body.37

if.end.62:                                        ; preds = %if.end.41
  %73 = load i32, i32* %n, align 4
  %cmp63 = icmp sgt i32 %73, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  br label %while.end

if.end.66:                                        ; preds = %if.end.62
  %74 = load i32, i32* %unLo, align 4
  %inc67 = add nsw i32 %74, 1
  store i32 %inc67, i32* %unLo, align 4
  br label %while.body.37

while.end:                                        ; preds = %if.then.65, %if.then.40
  br label %while.body.69

while.body.69:                                    ; preds = %while.end, %if.then.83, %if.end.99
  %75 = load i32, i32* %unLo, align 4
  %76 = load i32, i32* %unHi, align 4
  %cmp70 = icmp sgt i32 %75, %76
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %while.body.69
  br label %while.end.101

if.end.73:                                        ; preds = %while.body.69
  %77 = load i32, i32* %unHi, align 4
  %idxprom74 = sext i32 %77 to i64
  %78 = load i32*, i32** %ptr.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %78, i64 %idxprom74
  %79 = load i32, i32* %arrayidx75, align 4
  %80 = load i32, i32* %d, align 4
  %add76 = add i32 %79, %80
  %idxprom77 = zext i32 %add76 to i64
  %81 = load i8*, i8** %block.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %81, i64 %idxprom77
  %82 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %82 to i32
  %83 = load i32, i32* %med, align 4
  %sub80 = sub nsw i32 %conv79, %83
  store i32 %sub80, i32* %n, align 4
  %84 = load i32, i32* %n, align 4
  %cmp81 = icmp eq i32 %84, 0
  br i1 %cmp81, label %if.then.83, label %if.end.95

if.then.83:                                       ; preds = %if.end.73
  %85 = load i32, i32* %unHi, align 4
  %idxprom85 = sext i32 %85 to i64
  %86 = load i32*, i32** %ptr.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %86, i64 %idxprom85
  %87 = load i32, i32* %arrayidx86, align 4
  store i32 %87, i32* %zztmp84, align 4
  %88 = load i32, i32* %gtHi, align 4
  %idxprom87 = sext i32 %88 to i64
  %89 = load i32*, i32** %ptr.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %89, i64 %idxprom87
  %90 = load i32, i32* %arrayidx88, align 4
  %91 = load i32, i32* %unHi, align 4
  %idxprom89 = sext i32 %91 to i64
  %92 = load i32*, i32** %ptr.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %92, i64 %idxprom89
  store i32 %90, i32* %arrayidx90, align 4
  %93 = load i32, i32* %zztmp84, align 4
  %94 = load i32, i32* %gtHi, align 4
  %idxprom91 = sext i32 %94 to i64
  %95 = load i32*, i32** %ptr.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %95, i64 %idxprom91
  store i32 %93, i32* %arrayidx92, align 4
  %96 = load i32, i32* %gtHi, align 4
  %dec93 = add nsw i32 %96, -1
  store i32 %dec93, i32* %gtHi, align 4
  %97 = load i32, i32* %unHi, align 4
  %dec94 = add nsw i32 %97, -1
  store i32 %dec94, i32* %unHi, align 4
  br label %while.body.69

if.end.95:                                        ; preds = %if.end.73
  %98 = load i32, i32* %n, align 4
  %cmp96 = icmp slt i32 %98, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.95
  br label %while.end.101

if.end.99:                                        ; preds = %if.end.95
  %99 = load i32, i32* %unHi, align 4
  %dec100 = add nsw i32 %99, -1
  store i32 %dec100, i32* %unHi, align 4
  br label %while.body.69

while.end.101:                                    ; preds = %if.then.98, %if.then.72
  %100 = load i32, i32* %unLo, align 4
  %101 = load i32, i32* %unHi, align 4
  %cmp102 = icmp sgt i32 %100, %101
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %while.end.101
  br label %while.end.117

if.end.105:                                       ; preds = %while.end.101
  %102 = load i32, i32* %unLo, align 4
  %idxprom107 = sext i32 %102 to i64
  %103 = load i32*, i32** %ptr.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %103, i64 %idxprom107
  %104 = load i32, i32* %arrayidx108, align 4
  store i32 %104, i32* %zztmp106, align 4
  %105 = load i32, i32* %unHi, align 4
  %idxprom109 = sext i32 %105 to i64
  %106 = load i32*, i32** %ptr.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %106, i64 %idxprom109
  %107 = load i32, i32* %arrayidx110, align 4
  %108 = load i32, i32* %unLo, align 4
  %idxprom111 = sext i32 %108 to i64
  %109 = load i32*, i32** %ptr.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %109, i64 %idxprom111
  store i32 %107, i32* %arrayidx112, align 4
  %110 = load i32, i32* %zztmp106, align 4
  %111 = load i32, i32* %unHi, align 4
  %idxprom113 = sext i32 %111 to i64
  %112 = load i32*, i32** %ptr.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %112, i64 %idxprom113
  store i32 %110, i32* %arrayidx114, align 4
  %113 = load i32, i32* %unLo, align 4
  %inc115 = add nsw i32 %113, 1
  store i32 %inc115, i32* %unLo, align 4
  %114 = load i32, i32* %unHi, align 4
  %dec116 = add nsw i32 %114, -1
  store i32 %dec116, i32* %unHi, align 4
  br label %while.body.35

while.end.117:                                    ; preds = %if.then.104
  %115 = load i32, i32* %gtHi, align 4
  %116 = load i32, i32* %ltLo, align 4
  %cmp118 = icmp slt i32 %115, %116
  br i1 %cmp118, label %if.then.120, label %if.end.129

if.then.120:                                      ; preds = %while.end.117
  %117 = load i32, i32* %lo, align 4
  %118 = load i32, i32* %sp, align 4
  %idxprom121 = sext i32 %118 to i64
  %arrayidx122 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i32 0, i64 %idxprom121
  store i32 %117, i32* %arrayidx122, align 4
  %119 = load i32, i32* %hi, align 4
  %120 = load i32, i32* %sp, align 4
  %idxprom123 = sext i32 %120 to i64
  %arrayidx124 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i32 0, i64 %idxprom123
  store i32 %119, i32* %arrayidx124, align 4
  %121 = load i32, i32* %d, align 4
  %add125 = add nsw i32 %121, 1
  %122 = load i32, i32* %sp, align 4
  %idxprom126 = sext i32 %122 to i64
  %arrayidx127 = getelementptr inbounds [100 x i32], [100 x i32]* %stackD, i32 0, i64 %idxprom126
  store i32 %add125, i32* %arrayidx127, align 4
  %123 = load i32, i32* %sp, align 4
  %inc128 = add nsw i32 %123, 1
  store i32 %inc128, i32* %sp, align 4
  br label %while.cond

if.end.129:                                       ; preds = %while.end.117
  %124 = load i32, i32* %ltLo, align 4
  %125 = load i32, i32* %lo, align 4
  %sub130 = sub nsw i32 %124, %125
  %126 = load i32, i32* %unLo, align 4
  %127 = load i32, i32* %ltLo, align 4
  %sub131 = sub nsw i32 %126, %127
  %cmp132 = icmp slt i32 %sub130, %sub131
  br i1 %cmp132, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.129
  %128 = load i32, i32* %ltLo, align 4
  %129 = load i32, i32* %lo, align 4
  %sub134 = sub nsw i32 %128, %129
  br label %cond.end

cond.false:                                       ; preds = %if.end.129
  %130 = load i32, i32* %unLo, align 4
  %131 = load i32, i32* %ltLo, align 4
  %sub135 = sub nsw i32 %130, %131
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub134, %cond.true ], [ %sub135, %cond.false ]
  store i32 %cond, i32* %n, align 4
  %132 = load i32, i32* %lo, align 4
  store i32 %132, i32* %yyp1, align 4
  %133 = load i32, i32* %unLo, align 4
  %134 = load i32, i32* %n, align 4
  %sub136 = sub nsw i32 %133, %134
  store i32 %sub136, i32* %yyp2, align 4
  %135 = load i32, i32* %n, align 4
  store i32 %135, i32* %yyn, align 4
  br label %while.cond.137

while.cond.137:                                   ; preds = %while.body.140, %cond.end
  %136 = load i32, i32* %yyn, align 4
  %cmp138 = icmp sgt i32 %136, 0
  br i1 %cmp138, label %while.body.140, label %while.end.153

while.body.140:                                   ; preds = %while.cond.137
  %137 = load i32, i32* %yyp1, align 4
  %idxprom142 = sext i32 %137 to i64
  %138 = load i32*, i32** %ptr.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %138, i64 %idxprom142
  %139 = load i32, i32* %arrayidx143, align 4
  store i32 %139, i32* %zztmp141, align 4
  %140 = load i32, i32* %yyp2, align 4
  %idxprom144 = sext i32 %140 to i64
  %141 = load i32*, i32** %ptr.addr, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %141, i64 %idxprom144
  %142 = load i32, i32* %arrayidx145, align 4
  %143 = load i32, i32* %yyp1, align 4
  %idxprom146 = sext i32 %143 to i64
  %144 = load i32*, i32** %ptr.addr, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %144, i64 %idxprom146
  store i32 %142, i32* %arrayidx147, align 4
  %145 = load i32, i32* %zztmp141, align 4
  %146 = load i32, i32* %yyp2, align 4
  %idxprom148 = sext i32 %146 to i64
  %147 = load i32*, i32** %ptr.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %147, i64 %idxprom148
  store i32 %145, i32* %arrayidx149, align 4
  %148 = load i32, i32* %yyp1, align 4
  %inc150 = add nsw i32 %148, 1
  store i32 %inc150, i32* %yyp1, align 4
  %149 = load i32, i32* %yyp2, align 4
  %inc151 = add nsw i32 %149, 1
  store i32 %inc151, i32* %yyp2, align 4
  %150 = load i32, i32* %yyn, align 4
  %dec152 = add nsw i32 %150, -1
  store i32 %dec152, i32* %yyn, align 4
  br label %while.cond.137

while.end.153:                                    ; preds = %while.cond.137
  %151 = load i32, i32* %hi, align 4
  %152 = load i32, i32* %gtHi, align 4
  %sub154 = sub nsw i32 %151, %152
  %153 = load i32, i32* %gtHi, align 4
  %154 = load i32, i32* %unHi, align 4
  %sub155 = sub nsw i32 %153, %154
  %cmp156 = icmp slt i32 %sub154, %sub155
  br i1 %cmp156, label %cond.true.158, label %cond.false.160

cond.true.158:                                    ; preds = %while.end.153
  %155 = load i32, i32* %hi, align 4
  %156 = load i32, i32* %gtHi, align 4
  %sub159 = sub nsw i32 %155, %156
  br label %cond.end.162

cond.false.160:                                   ; preds = %while.end.153
  %157 = load i32, i32* %gtHi, align 4
  %158 = load i32, i32* %unHi, align 4
  %sub161 = sub nsw i32 %157, %158
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.160, %cond.true.158
  %cond163 = phi i32 [ %sub159, %cond.true.158 ], [ %sub161, %cond.false.160 ]
  store i32 %cond163, i32* %m, align 4
  %159 = load i32, i32* %unLo, align 4
  store i32 %159, i32* %yyp1164, align 4
  %160 = load i32, i32* %hi, align 4
  %161 = load i32, i32* %m, align 4
  %sub166 = sub nsw i32 %160, %161
  %add167 = add nsw i32 %sub166, 1
  store i32 %add167, i32* %yyp2165, align 4
  %162 = load i32, i32* %m, align 4
  store i32 %162, i32* %yyn168, align 4
  br label %while.cond.169

while.cond.169:                                   ; preds = %while.body.172, %cond.end.162
  %163 = load i32, i32* %yyn168, align 4
  %cmp170 = icmp sgt i32 %163, 0
  br i1 %cmp170, label %while.body.172, label %while.end.185

while.body.172:                                   ; preds = %while.cond.169
  %164 = load i32, i32* %yyp1164, align 4
  %idxprom174 = sext i32 %164 to i64
  %165 = load i32*, i32** %ptr.addr, align 8
  %arrayidx175 = getelementptr inbounds i32, i32* %165, i64 %idxprom174
  %166 = load i32, i32* %arrayidx175, align 4
  store i32 %166, i32* %zztmp173, align 4
  %167 = load i32, i32* %yyp2165, align 4
  %idxprom176 = sext i32 %167 to i64
  %168 = load i32*, i32** %ptr.addr, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %168, i64 %idxprom176
  %169 = load i32, i32* %arrayidx177, align 4
  %170 = load i32, i32* %yyp1164, align 4
  %idxprom178 = sext i32 %170 to i64
  %171 = load i32*, i32** %ptr.addr, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %171, i64 %idxprom178
  store i32 %169, i32* %arrayidx179, align 4
  %172 = load i32, i32* %zztmp173, align 4
  %173 = load i32, i32* %yyp2165, align 4
  %idxprom180 = sext i32 %173 to i64
  %174 = load i32*, i32** %ptr.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %174, i64 %idxprom180
  store i32 %172, i32* %arrayidx181, align 4
  %175 = load i32, i32* %yyp1164, align 4
  %inc182 = add nsw i32 %175, 1
  store i32 %inc182, i32* %yyp1164, align 4
  %176 = load i32, i32* %yyp2165, align 4
  %inc183 = add nsw i32 %176, 1
  store i32 %inc183, i32* %yyp2165, align 4
  %177 = load i32, i32* %yyn168, align 4
  %dec184 = add nsw i32 %177, -1
  store i32 %dec184, i32* %yyn168, align 4
  br label %while.cond.169

while.end.185:                                    ; preds = %while.cond.169
  %178 = load i32, i32* %lo, align 4
  %179 = load i32, i32* %unLo, align 4
  %add186 = add nsw i32 %178, %179
  %180 = load i32, i32* %ltLo, align 4
  %sub187 = sub nsw i32 %add186, %180
  %sub188 = sub nsw i32 %sub187, 1
  store i32 %sub188, i32* %n, align 4
  %181 = load i32, i32* %hi, align 4
  %182 = load i32, i32* %gtHi, align 4
  %183 = load i32, i32* %unHi, align 4
  %sub189 = sub nsw i32 %182, %183
  %sub190 = sub nsw i32 %181, %sub189
  %add191 = add nsw i32 %sub190, 1
  store i32 %add191, i32* %m, align 4
  %184 = load i32, i32* %lo, align 4
  %arrayidx192 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 0
  store i32 %184, i32* %arrayidx192, align 4
  %185 = load i32, i32* %n, align 4
  %arrayidx193 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 0
  store i32 %185, i32* %arrayidx193, align 4
  %186 = load i32, i32* %d, align 4
  %arrayidx194 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 0
  store i32 %186, i32* %arrayidx194, align 4
  %187 = load i32, i32* %m, align 4
  %arrayidx195 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 1
  store i32 %187, i32* %arrayidx195, align 4
  %188 = load i32, i32* %hi, align 4
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 1
  store i32 %188, i32* %arrayidx196, align 4
  %189 = load i32, i32* %d, align 4
  %arrayidx197 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 1
  store i32 %189, i32* %arrayidx197, align 4
  %190 = load i32, i32* %n, align 4
  %add198 = add nsw i32 %190, 1
  %arrayidx199 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 2
  store i32 %add198, i32* %arrayidx199, align 4
  %191 = load i32, i32* %m, align 4
  %sub200 = sub nsw i32 %191, 1
  %arrayidx201 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 2
  store i32 %sub200, i32* %arrayidx201, align 4
  %192 = load i32, i32* %d, align 4
  %add202 = add nsw i32 %192, 1
  %arrayidx203 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 2
  store i32 %add202, i32* %arrayidx203, align 4
  %arrayidx204 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 0
  %193 = load i32, i32* %arrayidx204, align 4
  %arrayidx205 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 0
  %194 = load i32, i32* %arrayidx205, align 4
  %sub206 = sub nsw i32 %193, %194
  %arrayidx207 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 1
  %195 = load i32, i32* %arrayidx207, align 4
  %arrayidx208 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 1
  %196 = load i32, i32* %arrayidx208, align 4
  %sub209 = sub nsw i32 %195, %196
  %cmp210 = icmp slt i32 %sub206, %sub209
  br i1 %cmp210, label %if.then.212, label %if.end.225

if.then.212:                                      ; preds = %while.end.185
  %arrayidx213 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 0
  %197 = load i32, i32* %arrayidx213, align 4
  store i32 %197, i32* %tz, align 4
  %arrayidx214 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 1
  %198 = load i32, i32* %arrayidx214, align 4
  %arrayidx215 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 0
  store i32 %198, i32* %arrayidx215, align 4
  %199 = load i32, i32* %tz, align 4
  %arrayidx216 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 1
  store i32 %199, i32* %arrayidx216, align 4
  %arrayidx217 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 0
  %200 = load i32, i32* %arrayidx217, align 4
  store i32 %200, i32* %tz, align 4
  %arrayidx218 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 1
  %201 = load i32, i32* %arrayidx218, align 4
  %arrayidx219 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 0
  store i32 %201, i32* %arrayidx219, align 4
  %202 = load i32, i32* %tz, align 4
  %arrayidx220 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 1
  store i32 %202, i32* %arrayidx220, align 4
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 0
  %203 = load i32, i32* %arrayidx221, align 4
  store i32 %203, i32* %tz, align 4
  %arrayidx222 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 1
  %204 = load i32, i32* %arrayidx222, align 4
  %arrayidx223 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 0
  store i32 %204, i32* %arrayidx223, align 4
  %205 = load i32, i32* %tz, align 4
  %arrayidx224 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 1
  store i32 %205, i32* %arrayidx224, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.212, %while.end.185
  %arrayidx226 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 1
  %206 = load i32, i32* %arrayidx226, align 4
  %arrayidx227 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 1
  %207 = load i32, i32* %arrayidx227, align 4
  %sub228 = sub nsw i32 %206, %207
  %arrayidx229 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 2
  %208 = load i32, i32* %arrayidx229, align 4
  %arrayidx230 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 2
  %209 = load i32, i32* %arrayidx230, align 4
  %sub231 = sub nsw i32 %208, %209
  %cmp232 = icmp slt i32 %sub228, %sub231
  br i1 %cmp232, label %if.then.234, label %if.end.248

if.then.234:                                      ; preds = %if.end.225
  %arrayidx236 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 1
  %210 = load i32, i32* %arrayidx236, align 4
  store i32 %210, i32* %tz235, align 4
  %arrayidx237 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 2
  %211 = load i32, i32* %arrayidx237, align 4
  %arrayidx238 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 1
  store i32 %211, i32* %arrayidx238, align 4
  %212 = load i32, i32* %tz235, align 4
  %arrayidx239 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 2
  store i32 %212, i32* %arrayidx239, align 4
  %arrayidx240 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 1
  %213 = load i32, i32* %arrayidx240, align 4
  store i32 %213, i32* %tz235, align 4
  %arrayidx241 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 2
  %214 = load i32, i32* %arrayidx241, align 4
  %arrayidx242 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 1
  store i32 %214, i32* %arrayidx242, align 4
  %215 = load i32, i32* %tz235, align 4
  %arrayidx243 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 2
  store i32 %215, i32* %arrayidx243, align 4
  %arrayidx244 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 1
  %216 = load i32, i32* %arrayidx244, align 4
  store i32 %216, i32* %tz235, align 4
  %arrayidx245 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 2
  %217 = load i32, i32* %arrayidx245, align 4
  %arrayidx246 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 1
  store i32 %217, i32* %arrayidx246, align 4
  %218 = load i32, i32* %tz235, align 4
  %arrayidx247 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 2
  store i32 %218, i32* %arrayidx247, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.234, %if.end.225
  %arrayidx249 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 0
  %219 = load i32, i32* %arrayidx249, align 4
  %arrayidx250 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 0
  %220 = load i32, i32* %arrayidx250, align 4
  %sub251 = sub nsw i32 %219, %220
  %arrayidx252 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 1
  %221 = load i32, i32* %arrayidx252, align 4
  %arrayidx253 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 1
  %222 = load i32, i32* %arrayidx253, align 4
  %sub254 = sub nsw i32 %221, %222
  %cmp255 = icmp slt i32 %sub251, %sub254
  br i1 %cmp255, label %if.then.257, label %if.end.271

if.then.257:                                      ; preds = %if.end.248
  %arrayidx259 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 0
  %223 = load i32, i32* %arrayidx259, align 4
  store i32 %223, i32* %tz258, align 4
  %arrayidx260 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 1
  %224 = load i32, i32* %arrayidx260, align 4
  %arrayidx261 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 0
  store i32 %224, i32* %arrayidx261, align 4
  %225 = load i32, i32* %tz258, align 4
  %arrayidx262 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 1
  store i32 %225, i32* %arrayidx262, align 4
  %arrayidx263 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 0
  %226 = load i32, i32* %arrayidx263, align 4
  store i32 %226, i32* %tz258, align 4
  %arrayidx264 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 1
  %227 = load i32, i32* %arrayidx264, align 4
  %arrayidx265 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 0
  store i32 %227, i32* %arrayidx265, align 4
  %228 = load i32, i32* %tz258, align 4
  %arrayidx266 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 1
  store i32 %228, i32* %arrayidx266, align 4
  %arrayidx267 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 0
  %229 = load i32, i32* %arrayidx267, align 4
  store i32 %229, i32* %tz258, align 4
  %arrayidx268 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 1
  %230 = load i32, i32* %arrayidx268, align 4
  %arrayidx269 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 0
  store i32 %230, i32* %arrayidx269, align 4
  %231 = load i32, i32* %tz258, align 4
  %arrayidx270 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 1
  store i32 %231, i32* %arrayidx270, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.257, %if.end.248
  %arrayidx272 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 0
  %232 = load i32, i32* %arrayidx272, align 4
  %233 = load i32, i32* %sp, align 4
  %idxprom273 = sext i32 %233 to i64
  %arrayidx274 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i32 0, i64 %idxprom273
  store i32 %232, i32* %arrayidx274, align 4
  %arrayidx275 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 0
  %234 = load i32, i32* %arrayidx275, align 4
  %235 = load i32, i32* %sp, align 4
  %idxprom276 = sext i32 %235 to i64
  %arrayidx277 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i32 0, i64 %idxprom276
  store i32 %234, i32* %arrayidx277, align 4
  %arrayidx278 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 0
  %236 = load i32, i32* %arrayidx278, align 4
  %237 = load i32, i32* %sp, align 4
  %idxprom279 = sext i32 %237 to i64
  %arrayidx280 = getelementptr inbounds [100 x i32], [100 x i32]* %stackD, i32 0, i64 %idxprom279
  store i32 %236, i32* %arrayidx280, align 4
  %238 = load i32, i32* %sp, align 4
  %inc281 = add nsw i32 %238, 1
  store i32 %inc281, i32* %sp, align 4
  %arrayidx282 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 1
  %239 = load i32, i32* %arrayidx282, align 4
  %240 = load i32, i32* %sp, align 4
  %idxprom283 = sext i32 %240 to i64
  %arrayidx284 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i32 0, i64 %idxprom283
  store i32 %239, i32* %arrayidx284, align 4
  %arrayidx285 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 1
  %241 = load i32, i32* %arrayidx285, align 4
  %242 = load i32, i32* %sp, align 4
  %idxprom286 = sext i32 %242 to i64
  %arrayidx287 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i32 0, i64 %idxprom286
  store i32 %241, i32* %arrayidx287, align 4
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 1
  %243 = load i32, i32* %arrayidx288, align 4
  %244 = load i32, i32* %sp, align 4
  %idxprom289 = sext i32 %244 to i64
  %arrayidx290 = getelementptr inbounds [100 x i32], [100 x i32]* %stackD, i32 0, i64 %idxprom289
  store i32 %243, i32* %arrayidx290, align 4
  %245 = load i32, i32* %sp, align 4
  %inc291 = add nsw i32 %245, 1
  store i32 %inc291, i32* %sp, align 4
  %arrayidx292 = getelementptr inbounds [3 x i32], [3 x i32]* %nextLo, i32 0, i64 2
  %246 = load i32, i32* %arrayidx292, align 4
  %247 = load i32, i32* %sp, align 4
  %idxprom293 = sext i32 %247 to i64
  %arrayidx294 = getelementptr inbounds [100 x i32], [100 x i32]* %stackLo, i32 0, i64 %idxprom293
  store i32 %246, i32* %arrayidx294, align 4
  %arrayidx295 = getelementptr inbounds [3 x i32], [3 x i32]* %nextHi, i32 0, i64 2
  %248 = load i32, i32* %arrayidx295, align 4
  %249 = load i32, i32* %sp, align 4
  %idxprom296 = sext i32 %249 to i64
  %arrayidx297 = getelementptr inbounds [100 x i32], [100 x i32]* %stackHi, i32 0, i64 %idxprom296
  store i32 %248, i32* %arrayidx297, align 4
  %arrayidx298 = getelementptr inbounds [3 x i32], [3 x i32]* %nextD, i32 0, i64 2
  %250 = load i32, i32* %arrayidx298, align 4
  %251 = load i32, i32* %sp, align 4
  %idxprom299 = sext i32 %251 to i64
  %arrayidx300 = getelementptr inbounds [100 x i32], [100 x i32]* %stackD, i32 0, i64 %idxprom299
  store i32 %250, i32* %arrayidx300, align 4
  %252 = load i32, i32* %sp, align 4
  %inc301 = add nsw i32 %252, 1
  store i32 %inc301, i32* %sp, align 4
  br label %while.cond

while.end.302:                                    ; preds = %if.then.16, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mainSimpleSort(i32* %ptr, i8* %block, i16* %quadrant, i32 %nblock, i32 %lo, i32 %hi, i32 %d, i32* %budget) #0 {
entry:
  %ptr.addr = alloca i32*, align 8
  %block.addr = alloca i8*, align 8
  %quadrant.addr = alloca i16*, align 8
  %nblock.addr = alloca i32, align 4
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %budget.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %bigN = alloca i32, align 4
  %hp = alloca i32, align 4
  %v = alloca i32, align 4
  store i32* %ptr, i32** %ptr.addr, align 8
  store i8* %block, i8** %block.addr, align 8
  store i16* %quadrant, i16** %quadrant.addr, align 8
  store i32 %nblock, i32* %nblock.addr, align 4
  store i32 %lo, i32* %lo.addr, align 4
  store i32 %hi, i32* %hi.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  store i32* %budget, i32** %budget.addr, align 8
  %0 = load i32, i32* %hi.addr, align 4
  %1 = load i32, i32* %lo.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %bigN, align 4
  %2 = load i32, i32* %bigN, align 4
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, i32* %hp, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, i32* %hp, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [14 x i32], [14 x i32]* @incs, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %bigN, align 4
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %hp, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %hp, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %hp, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %hp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %8 = load i32, i32* %hp, align 4
  %cmp2 = icmp sge i32 %8, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %hp, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [14 x i32], [14 x i32]* @incs, i32 0, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  store i32 %10, i32* %h, align 4
  %11 = load i32, i32* %lo.addr, align 4
  %12 = load i32, i32* %h, align 4
  %add5 = add nsw i32 %11, %12
  store i32 %add5, i32* %i, align 4
  br label %while.body.7

while.body.7:                                     ; preds = %for.body, %if.end.95
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %hi.addr, align 4
  %cmp8 = icmp sgt i32 %13, %14
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body.7
  br label %while.end.96

if.end.10:                                        ; preds = %while.body.7
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load i32*, i32** %ptr.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %16, i64 %idxprom11
  %17 = load i32, i32* %arrayidx12, align 4
  store i32 %17, i32* %v, align 4
  %18 = load i32, i32* %i, align 4
  store i32 %18, i32* %j, align 4
  br label %while.cond.13

while.cond.13:                                    ; preds = %if.end.30, %if.end.10
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %h, align 4
  %sub14 = sub nsw i32 %19, %20
  %idxprom15 = sext i32 %sub14 to i64
  %21 = load i32*, i32** %ptr.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %21, i64 %idxprom15
  %22 = load i32, i32* %arrayidx16, align 4
  %23 = load i32, i32* %d.addr, align 4
  %add17 = add i32 %22, %23
  %24 = load i32, i32* %v, align 4
  %25 = load i32, i32* %d.addr, align 4
  %add18 = add i32 %24, %25
  %26 = load i8*, i8** %block.addr, align 8
  %27 = load i16*, i16** %quadrant.addr, align 8
  %28 = load i32, i32* %nblock.addr, align 4
  %29 = load i32*, i32** %budget.addr, align 8
  %call = call zeroext i8 @mainGtU(i32 %add17, i32 %add18, i8* %26, i16* %27, i32 %28, i32* %29)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %while.body.19, label %while.end.31

while.body.19:                                    ; preds = %while.cond.13
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %h, align 4
  %sub20 = sub nsw i32 %30, %31
  %idxprom21 = sext i32 %sub20 to i64
  %32 = load i32*, i32** %ptr.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %32, i64 %idxprom21
  %33 = load i32, i32* %arrayidx22, align 4
  %34 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %34 to i64
  %35 = load i32*, i32** %ptr.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %35, i64 %idxprom23
  store i32 %33, i32* %arrayidx24, align 4
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %h, align 4
  %sub25 = sub nsw i32 %36, %37
  store i32 %sub25, i32* %j, align 4
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %lo.addr, align 4
  %40 = load i32, i32* %h, align 4
  %add26 = add nsw i32 %39, %40
  %sub27 = sub nsw i32 %add26, 1
  %cmp28 = icmp sle i32 %38, %sub27
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %while.body.19
  br label %while.end.31

if.end.30:                                        ; preds = %while.body.19
  br label %while.cond.13

while.end.31:                                     ; preds = %if.then.29, %while.cond.13
  %41 = load i32, i32* %v, align 4
  %42 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %42 to i64
  %43 = load i32*, i32** %ptr.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %43, i64 %idxprom32
  store i32 %41, i32* %arrayidx33, align 4
  %44 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %44, 1
  store i32 %inc34, i32* %i, align 4
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %hi.addr, align 4
  %cmp35 = icmp sgt i32 %45, %46
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %while.end.31
  br label %while.end.96

if.end.37:                                        ; preds = %while.end.31
  %47 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %47 to i64
  %48 = load i32*, i32** %ptr.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %48, i64 %idxprom38
  %49 = load i32, i32* %arrayidx39, align 4
  store i32 %49, i32* %v, align 4
  %50 = load i32, i32* %i, align 4
  store i32 %50, i32* %j, align 4
  br label %while.cond.40

while.cond.40:                                    ; preds = %if.end.59, %if.end.37
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %h, align 4
  %sub41 = sub nsw i32 %51, %52
  %idxprom42 = sext i32 %sub41 to i64
  %53 = load i32*, i32** %ptr.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %53, i64 %idxprom42
  %54 = load i32, i32* %arrayidx43, align 4
  %55 = load i32, i32* %d.addr, align 4
  %add44 = add i32 %54, %55
  %56 = load i32, i32* %v, align 4
  %57 = load i32, i32* %d.addr, align 4
  %add45 = add i32 %56, %57
  %58 = load i8*, i8** %block.addr, align 8
  %59 = load i16*, i16** %quadrant.addr, align 8
  %60 = load i32, i32* %nblock.addr, align 4
  %61 = load i32*, i32** %budget.addr, align 8
  %call46 = call zeroext i8 @mainGtU(i32 %add44, i32 %add45, i8* %58, i16* %59, i32 %60, i32* %61)
  %tobool47 = icmp ne i8 %call46, 0
  br i1 %tobool47, label %while.body.48, label %while.end.60

while.body.48:                                    ; preds = %while.cond.40
  %62 = load i32, i32* %j, align 4
  %63 = load i32, i32* %h, align 4
  %sub49 = sub nsw i32 %62, %63
  %idxprom50 = sext i32 %sub49 to i64
  %64 = load i32*, i32** %ptr.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %64, i64 %idxprom50
  %65 = load i32, i32* %arrayidx51, align 4
  %66 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %66 to i64
  %67 = load i32*, i32** %ptr.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %67, i64 %idxprom52
  store i32 %65, i32* %arrayidx53, align 4
  %68 = load i32, i32* %j, align 4
  %69 = load i32, i32* %h, align 4
  %sub54 = sub nsw i32 %68, %69
  store i32 %sub54, i32* %j, align 4
  %70 = load i32, i32* %j, align 4
  %71 = load i32, i32* %lo.addr, align 4
  %72 = load i32, i32* %h, align 4
  %add55 = add nsw i32 %71, %72
  %sub56 = sub nsw i32 %add55, 1
  %cmp57 = icmp sle i32 %70, %sub56
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %while.body.48
  br label %while.end.60

if.end.59:                                        ; preds = %while.body.48
  br label %while.cond.40

while.end.60:                                     ; preds = %if.then.58, %while.cond.40
  %73 = load i32, i32* %v, align 4
  %74 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %74 to i64
  %75 = load i32*, i32** %ptr.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %75, i64 %idxprom61
  store i32 %73, i32* %arrayidx62, align 4
  %76 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %76, 1
  store i32 %inc63, i32* %i, align 4
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %hi.addr, align 4
  %cmp64 = icmp sgt i32 %77, %78
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %while.end.60
  br label %while.end.96

if.end.66:                                        ; preds = %while.end.60
  %79 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %79 to i64
  %80 = load i32*, i32** %ptr.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %80, i64 %idxprom67
  %81 = load i32, i32* %arrayidx68, align 4
  store i32 %81, i32* %v, align 4
  %82 = load i32, i32* %i, align 4
  store i32 %82, i32* %j, align 4
  br label %while.cond.69

while.cond.69:                                    ; preds = %if.end.88, %if.end.66
  %83 = load i32, i32* %j, align 4
  %84 = load i32, i32* %h, align 4
  %sub70 = sub nsw i32 %83, %84
  %idxprom71 = sext i32 %sub70 to i64
  %85 = load i32*, i32** %ptr.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %85, i64 %idxprom71
  %86 = load i32, i32* %arrayidx72, align 4
  %87 = load i32, i32* %d.addr, align 4
  %add73 = add i32 %86, %87
  %88 = load i32, i32* %v, align 4
  %89 = load i32, i32* %d.addr, align 4
  %add74 = add i32 %88, %89
  %90 = load i8*, i8** %block.addr, align 8
  %91 = load i16*, i16** %quadrant.addr, align 8
  %92 = load i32, i32* %nblock.addr, align 4
  %93 = load i32*, i32** %budget.addr, align 8
  %call75 = call zeroext i8 @mainGtU(i32 %add73, i32 %add74, i8* %90, i16* %91, i32 %92, i32* %93)
  %tobool76 = icmp ne i8 %call75, 0
  br i1 %tobool76, label %while.body.77, label %while.end.89

while.body.77:                                    ; preds = %while.cond.69
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* %h, align 4
  %sub78 = sub nsw i32 %94, %95
  %idxprom79 = sext i32 %sub78 to i64
  %96 = load i32*, i32** %ptr.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %96, i64 %idxprom79
  %97 = load i32, i32* %arrayidx80, align 4
  %98 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %98 to i64
  %99 = load i32*, i32** %ptr.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %99, i64 %idxprom81
  store i32 %97, i32* %arrayidx82, align 4
  %100 = load i32, i32* %j, align 4
  %101 = load i32, i32* %h, align 4
  %sub83 = sub nsw i32 %100, %101
  store i32 %sub83, i32* %j, align 4
  %102 = load i32, i32* %j, align 4
  %103 = load i32, i32* %lo.addr, align 4
  %104 = load i32, i32* %h, align 4
  %add84 = add nsw i32 %103, %104
  %sub85 = sub nsw i32 %add84, 1
  %cmp86 = icmp sle i32 %102, %sub85
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %while.body.77
  br label %while.end.89

if.end.88:                                        ; preds = %while.body.77
  br label %while.cond.69

while.end.89:                                     ; preds = %if.then.87, %while.cond.69
  %105 = load i32, i32* %v, align 4
  %106 = load i32, i32* %j, align 4
  %idxprom90 = sext i32 %106 to i64
  %107 = load i32*, i32** %ptr.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %107, i64 %idxprom90
  store i32 %105, i32* %arrayidx91, align 4
  %108 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %108, 1
  store i32 %inc92, i32* %i, align 4
  %109 = load i32*, i32** %budget.addr, align 8
  %110 = load i32, i32* %109, align 4
  %cmp93 = icmp slt i32 %110, 0
  br i1 %cmp93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %while.end.89
  br label %for.end

if.end.95:                                        ; preds = %while.end.89
  br label %while.body.7

while.end.96:                                     ; preds = %if.then.65, %if.then.36, %if.then.9
  br label %for.inc

for.inc:                                          ; preds = %while.end.96
  %111 = load i32, i32* %hp, align 4
  %dec97 = add nsw i32 %111, -1
  store i32 %dec97, i32* %hp, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.94, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @mmed3(i8 zeroext %a, i8 zeroext %b, i8 zeroext %c) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %c.addr = alloca i8, align 1
  %t = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %a.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %b.addr, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %a.addr, align 1
  store i8 %2, i8* %t, align 1
  %3 = load i8, i8* %b.addr, align 1
  store i8 %3, i8* %a.addr, align 1
  %4 = load i8, i8* %t, align 1
  store i8 %4, i8* %b.addr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* %b.addr, align 1
  %conv3 = zext i8 %5 to i32
  %6 = load i8, i8* %c.addr, align 1
  %conv4 = zext i8 %6 to i32
  %cmp5 = icmp sgt i32 %conv3, %conv4
  br i1 %cmp5, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end
  %7 = load i8, i8* %c.addr, align 1
  store i8 %7, i8* %b.addr, align 1
  %8 = load i8, i8* %a.addr, align 1
  %conv8 = zext i8 %8 to i32
  %9 = load i8, i8* %b.addr, align 1
  %conv9 = zext i8 %9 to i32
  %cmp10 = icmp sgt i32 %conv8, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %10 = load i8, i8* %a.addr, align 1
  store i8 %10, i8* %b.addr, align 1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %11 = load i8, i8* %b.addr, align 1
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @mainGtU(i32 %i1, i32 %i2, i8* %block, i16* %quadrant, i32 %nblock, i32* %budget) #0 {
entry:
  %retval = alloca i8, align 1
  %i1.addr = alloca i32, align 4
  %i2.addr = alloca i32, align 4
  %block.addr = alloca i8*, align 8
  %quadrant.addr = alloca i16*, align 8
  %nblock.addr = alloca i32, align 4
  %budget.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %s1 = alloca i16, align 2
  %s2 = alloca i16, align 2
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %i2, i32* %i2.addr, align 4
  store i8* %block, i8** %block.addr, align 8
  store i16* %quadrant, i16** %quadrant.addr, align 8
  store i32 %nblock, i32* %nblock.addr, align 4
  store i32* %budget, i32** %budget.addr, align 8
  %0 = load i32, i32* %i1.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load i8*, i8** %block.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  store i8 %2, i8* %c1, align 1
  %3 = load i32, i32* %i2.addr, align 4
  %idxprom1 = zext i32 %3 to i64
  %4 = load i8*, i8** %block.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  store i8 %5, i8* %c2, align 1
  %6 = load i8, i8* %c1, align 1
  %conv = zext i8 %6 to i32
  %7 = load i8, i8* %c2, align 1
  %conv3 = zext i8 %7 to i32
  %cmp = icmp ne i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8, i8* %c1, align 1
  %conv5 = zext i8 %8 to i32
  %9 = load i8, i8* %c2, align 1
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp sgt i32 %conv5, %conv6
  %conv8 = zext i1 %cmp7 to i32
  %conv9 = trunc i32 %conv8 to i8
  store i8 %conv9, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %i1.addr, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i1.addr, align 4
  %11 = load i32, i32* %i2.addr, align 4
  %inc10 = add i32 %11, 1
  store i32 %inc10, i32* %i2.addr, align 4
  %12 = load i32, i32* %i1.addr, align 4
  %idxprom11 = zext i32 %12 to i64
  %13 = load i8*, i8** %block.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 %idxprom11
  %14 = load i8, i8* %arrayidx12, align 1
  store i8 %14, i8* %c1, align 1
  %15 = load i32, i32* %i2.addr, align 4
  %idxprom13 = zext i32 %15 to i64
  %16 = load i8*, i8** %block.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 %idxprom13
  %17 = load i8, i8* %arrayidx14, align 1
  store i8 %17, i8* %c2, align 1
  %18 = load i8, i8* %c1, align 1
  %conv15 = zext i8 %18 to i32
  %19 = load i8, i8* %c2, align 1
  %conv16 = zext i8 %19 to i32
  %cmp17 = icmp ne i32 %conv15, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.end
  %20 = load i8, i8* %c1, align 1
  %conv20 = zext i8 %20 to i32
  %21 = load i8, i8* %c2, align 1
  %conv21 = zext i8 %21 to i32
  %cmp22 = icmp sgt i32 %conv20, %conv21
  %conv23 = zext i1 %cmp22 to i32
  %conv24 = trunc i32 %conv23 to i8
  store i8 %conv24, i8* %retval
  br label %return

if.end.25:                                        ; preds = %if.end
  %22 = load i32, i32* %i1.addr, align 4
  %inc26 = add i32 %22, 1
  store i32 %inc26, i32* %i1.addr, align 4
  %23 = load i32, i32* %i2.addr, align 4
  %inc27 = add i32 %23, 1
  store i32 %inc27, i32* %i2.addr, align 4
  %24 = load i32, i32* %i1.addr, align 4
  %idxprom28 = zext i32 %24 to i64
  %25 = load i8*, i8** %block.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %25, i64 %idxprom28
  %26 = load i8, i8* %arrayidx29, align 1
  store i8 %26, i8* %c1, align 1
  %27 = load i32, i32* %i2.addr, align 4
  %idxprom30 = zext i32 %27 to i64
  %28 = load i8*, i8** %block.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %28, i64 %idxprom30
  %29 = load i8, i8* %arrayidx31, align 1
  store i8 %29, i8* %c2, align 1
  %30 = load i8, i8* %c1, align 1
  %conv32 = zext i8 %30 to i32
  %31 = load i8, i8* %c2, align 1
  %conv33 = zext i8 %31 to i32
  %cmp34 = icmp ne i32 %conv32, %conv33
  br i1 %cmp34, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.end.25
  %32 = load i8, i8* %c1, align 1
  %conv37 = zext i8 %32 to i32
  %33 = load i8, i8* %c2, align 1
  %conv38 = zext i8 %33 to i32
  %cmp39 = icmp sgt i32 %conv37, %conv38
  %conv40 = zext i1 %cmp39 to i32
  %conv41 = trunc i32 %conv40 to i8
  store i8 %conv41, i8* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.25
  %34 = load i32, i32* %i1.addr, align 4
  %inc43 = add i32 %34, 1
  store i32 %inc43, i32* %i1.addr, align 4
  %35 = load i32, i32* %i2.addr, align 4
  %inc44 = add i32 %35, 1
  store i32 %inc44, i32* %i2.addr, align 4
  %36 = load i32, i32* %i1.addr, align 4
  %idxprom45 = zext i32 %36 to i64
  %37 = load i8*, i8** %block.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %37, i64 %idxprom45
  %38 = load i8, i8* %arrayidx46, align 1
  store i8 %38, i8* %c1, align 1
  %39 = load i32, i32* %i2.addr, align 4
  %idxprom47 = zext i32 %39 to i64
  %40 = load i8*, i8** %block.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %40, i64 %idxprom47
  %41 = load i8, i8* %arrayidx48, align 1
  store i8 %41, i8* %c2, align 1
  %42 = load i8, i8* %c1, align 1
  %conv49 = zext i8 %42 to i32
  %43 = load i8, i8* %c2, align 1
  %conv50 = zext i8 %43 to i32
  %cmp51 = icmp ne i32 %conv49, %conv50
  br i1 %cmp51, label %if.then.53, label %if.end.59

if.then.53:                                       ; preds = %if.end.42
  %44 = load i8, i8* %c1, align 1
  %conv54 = zext i8 %44 to i32
  %45 = load i8, i8* %c2, align 1
  %conv55 = zext i8 %45 to i32
  %cmp56 = icmp sgt i32 %conv54, %conv55
  %conv57 = zext i1 %cmp56 to i32
  %conv58 = trunc i32 %conv57 to i8
  store i8 %conv58, i8* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.42
  %46 = load i32, i32* %i1.addr, align 4
  %inc60 = add i32 %46, 1
  store i32 %inc60, i32* %i1.addr, align 4
  %47 = load i32, i32* %i2.addr, align 4
  %inc61 = add i32 %47, 1
  store i32 %inc61, i32* %i2.addr, align 4
  %48 = load i32, i32* %i1.addr, align 4
  %idxprom62 = zext i32 %48 to i64
  %49 = load i8*, i8** %block.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %49, i64 %idxprom62
  %50 = load i8, i8* %arrayidx63, align 1
  store i8 %50, i8* %c1, align 1
  %51 = load i32, i32* %i2.addr, align 4
  %idxprom64 = zext i32 %51 to i64
  %52 = load i8*, i8** %block.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %52, i64 %idxprom64
  %53 = load i8, i8* %arrayidx65, align 1
  store i8 %53, i8* %c2, align 1
  %54 = load i8, i8* %c1, align 1
  %conv66 = zext i8 %54 to i32
  %55 = load i8, i8* %c2, align 1
  %conv67 = zext i8 %55 to i32
  %cmp68 = icmp ne i32 %conv66, %conv67
  br i1 %cmp68, label %if.then.70, label %if.end.76

if.then.70:                                       ; preds = %if.end.59
  %56 = load i8, i8* %c1, align 1
  %conv71 = zext i8 %56 to i32
  %57 = load i8, i8* %c2, align 1
  %conv72 = zext i8 %57 to i32
  %cmp73 = icmp sgt i32 %conv71, %conv72
  %conv74 = zext i1 %cmp73 to i32
  %conv75 = trunc i32 %conv74 to i8
  store i8 %conv75, i8* %retval
  br label %return

if.end.76:                                        ; preds = %if.end.59
  %58 = load i32, i32* %i1.addr, align 4
  %inc77 = add i32 %58, 1
  store i32 %inc77, i32* %i1.addr, align 4
  %59 = load i32, i32* %i2.addr, align 4
  %inc78 = add i32 %59, 1
  store i32 %inc78, i32* %i2.addr, align 4
  %60 = load i32, i32* %i1.addr, align 4
  %idxprom79 = zext i32 %60 to i64
  %61 = load i8*, i8** %block.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %61, i64 %idxprom79
  %62 = load i8, i8* %arrayidx80, align 1
  store i8 %62, i8* %c1, align 1
  %63 = load i32, i32* %i2.addr, align 4
  %idxprom81 = zext i32 %63 to i64
  %64 = load i8*, i8** %block.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %64, i64 %idxprom81
  %65 = load i8, i8* %arrayidx82, align 1
  store i8 %65, i8* %c2, align 1
  %66 = load i8, i8* %c1, align 1
  %conv83 = zext i8 %66 to i32
  %67 = load i8, i8* %c2, align 1
  %conv84 = zext i8 %67 to i32
  %cmp85 = icmp ne i32 %conv83, %conv84
  br i1 %cmp85, label %if.then.87, label %if.end.93

if.then.87:                                       ; preds = %if.end.76
  %68 = load i8, i8* %c1, align 1
  %conv88 = zext i8 %68 to i32
  %69 = load i8, i8* %c2, align 1
  %conv89 = zext i8 %69 to i32
  %cmp90 = icmp sgt i32 %conv88, %conv89
  %conv91 = zext i1 %cmp90 to i32
  %conv92 = trunc i32 %conv91 to i8
  store i8 %conv92, i8* %retval
  br label %return

if.end.93:                                        ; preds = %if.end.76
  %70 = load i32, i32* %i1.addr, align 4
  %inc94 = add i32 %70, 1
  store i32 %inc94, i32* %i1.addr, align 4
  %71 = load i32, i32* %i2.addr, align 4
  %inc95 = add i32 %71, 1
  store i32 %inc95, i32* %i2.addr, align 4
  %72 = load i32, i32* %i1.addr, align 4
  %idxprom96 = zext i32 %72 to i64
  %73 = load i8*, i8** %block.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %73, i64 %idxprom96
  %74 = load i8, i8* %arrayidx97, align 1
  store i8 %74, i8* %c1, align 1
  %75 = load i32, i32* %i2.addr, align 4
  %idxprom98 = zext i32 %75 to i64
  %76 = load i8*, i8** %block.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %76, i64 %idxprom98
  %77 = load i8, i8* %arrayidx99, align 1
  store i8 %77, i8* %c2, align 1
  %78 = load i8, i8* %c1, align 1
  %conv100 = zext i8 %78 to i32
  %79 = load i8, i8* %c2, align 1
  %conv101 = zext i8 %79 to i32
  %cmp102 = icmp ne i32 %conv100, %conv101
  br i1 %cmp102, label %if.then.104, label %if.end.110

if.then.104:                                      ; preds = %if.end.93
  %80 = load i8, i8* %c1, align 1
  %conv105 = zext i8 %80 to i32
  %81 = load i8, i8* %c2, align 1
  %conv106 = zext i8 %81 to i32
  %cmp107 = icmp sgt i32 %conv105, %conv106
  %conv108 = zext i1 %cmp107 to i32
  %conv109 = trunc i32 %conv108 to i8
  store i8 %conv109, i8* %retval
  br label %return

if.end.110:                                       ; preds = %if.end.93
  %82 = load i32, i32* %i1.addr, align 4
  %inc111 = add i32 %82, 1
  store i32 %inc111, i32* %i1.addr, align 4
  %83 = load i32, i32* %i2.addr, align 4
  %inc112 = add i32 %83, 1
  store i32 %inc112, i32* %i2.addr, align 4
  %84 = load i32, i32* %i1.addr, align 4
  %idxprom113 = zext i32 %84 to i64
  %85 = load i8*, i8** %block.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %85, i64 %idxprom113
  %86 = load i8, i8* %arrayidx114, align 1
  store i8 %86, i8* %c1, align 1
  %87 = load i32, i32* %i2.addr, align 4
  %idxprom115 = zext i32 %87 to i64
  %88 = load i8*, i8** %block.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %88, i64 %idxprom115
  %89 = load i8, i8* %arrayidx116, align 1
  store i8 %89, i8* %c2, align 1
  %90 = load i8, i8* %c1, align 1
  %conv117 = zext i8 %90 to i32
  %91 = load i8, i8* %c2, align 1
  %conv118 = zext i8 %91 to i32
  %cmp119 = icmp ne i32 %conv117, %conv118
  br i1 %cmp119, label %if.then.121, label %if.end.127

if.then.121:                                      ; preds = %if.end.110
  %92 = load i8, i8* %c1, align 1
  %conv122 = zext i8 %92 to i32
  %93 = load i8, i8* %c2, align 1
  %conv123 = zext i8 %93 to i32
  %cmp124 = icmp sgt i32 %conv122, %conv123
  %conv125 = zext i1 %cmp124 to i32
  %conv126 = trunc i32 %conv125 to i8
  store i8 %conv126, i8* %retval
  br label %return

if.end.127:                                       ; preds = %if.end.110
  %94 = load i32, i32* %i1.addr, align 4
  %inc128 = add i32 %94, 1
  store i32 %inc128, i32* %i1.addr, align 4
  %95 = load i32, i32* %i2.addr, align 4
  %inc129 = add i32 %95, 1
  store i32 %inc129, i32* %i2.addr, align 4
  %96 = load i32, i32* %i1.addr, align 4
  %idxprom130 = zext i32 %96 to i64
  %97 = load i8*, i8** %block.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %97, i64 %idxprom130
  %98 = load i8, i8* %arrayidx131, align 1
  store i8 %98, i8* %c1, align 1
  %99 = load i32, i32* %i2.addr, align 4
  %idxprom132 = zext i32 %99 to i64
  %100 = load i8*, i8** %block.addr, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %100, i64 %idxprom132
  %101 = load i8, i8* %arrayidx133, align 1
  store i8 %101, i8* %c2, align 1
  %102 = load i8, i8* %c1, align 1
  %conv134 = zext i8 %102 to i32
  %103 = load i8, i8* %c2, align 1
  %conv135 = zext i8 %103 to i32
  %cmp136 = icmp ne i32 %conv134, %conv135
  br i1 %cmp136, label %if.then.138, label %if.end.144

if.then.138:                                      ; preds = %if.end.127
  %104 = load i8, i8* %c1, align 1
  %conv139 = zext i8 %104 to i32
  %105 = load i8, i8* %c2, align 1
  %conv140 = zext i8 %105 to i32
  %cmp141 = icmp sgt i32 %conv139, %conv140
  %conv142 = zext i1 %cmp141 to i32
  %conv143 = trunc i32 %conv142 to i8
  store i8 %conv143, i8* %retval
  br label %return

if.end.144:                                       ; preds = %if.end.127
  %106 = load i32, i32* %i1.addr, align 4
  %inc145 = add i32 %106, 1
  store i32 %inc145, i32* %i1.addr, align 4
  %107 = load i32, i32* %i2.addr, align 4
  %inc146 = add i32 %107, 1
  store i32 %inc146, i32* %i2.addr, align 4
  %108 = load i32, i32* %i1.addr, align 4
  %idxprom147 = zext i32 %108 to i64
  %109 = load i8*, i8** %block.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %109, i64 %idxprom147
  %110 = load i8, i8* %arrayidx148, align 1
  store i8 %110, i8* %c1, align 1
  %111 = load i32, i32* %i2.addr, align 4
  %idxprom149 = zext i32 %111 to i64
  %112 = load i8*, i8** %block.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %112, i64 %idxprom149
  %113 = load i8, i8* %arrayidx150, align 1
  store i8 %113, i8* %c2, align 1
  %114 = load i8, i8* %c1, align 1
  %conv151 = zext i8 %114 to i32
  %115 = load i8, i8* %c2, align 1
  %conv152 = zext i8 %115 to i32
  %cmp153 = icmp ne i32 %conv151, %conv152
  br i1 %cmp153, label %if.then.155, label %if.end.161

if.then.155:                                      ; preds = %if.end.144
  %116 = load i8, i8* %c1, align 1
  %conv156 = zext i8 %116 to i32
  %117 = load i8, i8* %c2, align 1
  %conv157 = zext i8 %117 to i32
  %cmp158 = icmp sgt i32 %conv156, %conv157
  %conv159 = zext i1 %cmp158 to i32
  %conv160 = trunc i32 %conv159 to i8
  store i8 %conv160, i8* %retval
  br label %return

if.end.161:                                       ; preds = %if.end.144
  %118 = load i32, i32* %i1.addr, align 4
  %inc162 = add i32 %118, 1
  store i32 %inc162, i32* %i1.addr, align 4
  %119 = load i32, i32* %i2.addr, align 4
  %inc163 = add i32 %119, 1
  store i32 %inc163, i32* %i2.addr, align 4
  %120 = load i32, i32* %i1.addr, align 4
  %idxprom164 = zext i32 %120 to i64
  %121 = load i8*, i8** %block.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %121, i64 %idxprom164
  %122 = load i8, i8* %arrayidx165, align 1
  store i8 %122, i8* %c1, align 1
  %123 = load i32, i32* %i2.addr, align 4
  %idxprom166 = zext i32 %123 to i64
  %124 = load i8*, i8** %block.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %124, i64 %idxprom166
  %125 = load i8, i8* %arrayidx167, align 1
  store i8 %125, i8* %c2, align 1
  %126 = load i8, i8* %c1, align 1
  %conv168 = zext i8 %126 to i32
  %127 = load i8, i8* %c2, align 1
  %conv169 = zext i8 %127 to i32
  %cmp170 = icmp ne i32 %conv168, %conv169
  br i1 %cmp170, label %if.then.172, label %if.end.178

if.then.172:                                      ; preds = %if.end.161
  %128 = load i8, i8* %c1, align 1
  %conv173 = zext i8 %128 to i32
  %129 = load i8, i8* %c2, align 1
  %conv174 = zext i8 %129 to i32
  %cmp175 = icmp sgt i32 %conv173, %conv174
  %conv176 = zext i1 %cmp175 to i32
  %conv177 = trunc i32 %conv176 to i8
  store i8 %conv177, i8* %retval
  br label %return

if.end.178:                                       ; preds = %if.end.161
  %130 = load i32, i32* %i1.addr, align 4
  %inc179 = add i32 %130, 1
  store i32 %inc179, i32* %i1.addr, align 4
  %131 = load i32, i32* %i2.addr, align 4
  %inc180 = add i32 %131, 1
  store i32 %inc180, i32* %i2.addr, align 4
  %132 = load i32, i32* %i1.addr, align 4
  %idxprom181 = zext i32 %132 to i64
  %133 = load i8*, i8** %block.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %133, i64 %idxprom181
  %134 = load i8, i8* %arrayidx182, align 1
  store i8 %134, i8* %c1, align 1
  %135 = load i32, i32* %i2.addr, align 4
  %idxprom183 = zext i32 %135 to i64
  %136 = load i8*, i8** %block.addr, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %136, i64 %idxprom183
  %137 = load i8, i8* %arrayidx184, align 1
  store i8 %137, i8* %c2, align 1
  %138 = load i8, i8* %c1, align 1
  %conv185 = zext i8 %138 to i32
  %139 = load i8, i8* %c2, align 1
  %conv186 = zext i8 %139 to i32
  %cmp187 = icmp ne i32 %conv185, %conv186
  br i1 %cmp187, label %if.then.189, label %if.end.195

if.then.189:                                      ; preds = %if.end.178
  %140 = load i8, i8* %c1, align 1
  %conv190 = zext i8 %140 to i32
  %141 = load i8, i8* %c2, align 1
  %conv191 = zext i8 %141 to i32
  %cmp192 = icmp sgt i32 %conv190, %conv191
  %conv193 = zext i1 %cmp192 to i32
  %conv194 = trunc i32 %conv193 to i8
  store i8 %conv194, i8* %retval
  br label %return

if.end.195:                                       ; preds = %if.end.178
  %142 = load i32, i32* %i1.addr, align 4
  %inc196 = add i32 %142, 1
  store i32 %inc196, i32* %i1.addr, align 4
  %143 = load i32, i32* %i2.addr, align 4
  %inc197 = add i32 %143, 1
  store i32 %inc197, i32* %i2.addr, align 4
  %144 = load i32, i32* %nblock.addr, align 4
  %add = add i32 %144, 8
  store i32 %add, i32* %k, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.195
  %145 = load i32, i32* %i1.addr, align 4
  %idxprom198 = zext i32 %145 to i64
  %146 = load i8*, i8** %block.addr, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %146, i64 %idxprom198
  %147 = load i8, i8* %arrayidx199, align 1
  store i8 %147, i8* %c1, align 1
  %148 = load i32, i32* %i2.addr, align 4
  %idxprom200 = zext i32 %148 to i64
  %149 = load i8*, i8** %block.addr, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %149, i64 %idxprom200
  %150 = load i8, i8* %arrayidx201, align 1
  store i8 %150, i8* %c2, align 1
  %151 = load i8, i8* %c1, align 1
  %conv202 = zext i8 %151 to i32
  %152 = load i8, i8* %c2, align 1
  %conv203 = zext i8 %152 to i32
  %cmp204 = icmp ne i32 %conv202, %conv203
  br i1 %cmp204, label %if.then.206, label %if.end.212

if.then.206:                                      ; preds = %do.body
  %153 = load i8, i8* %c1, align 1
  %conv207 = zext i8 %153 to i32
  %154 = load i8, i8* %c2, align 1
  %conv208 = zext i8 %154 to i32
  %cmp209 = icmp sgt i32 %conv207, %conv208
  %conv210 = zext i1 %cmp209 to i32
  %conv211 = trunc i32 %conv210 to i8
  store i8 %conv211, i8* %retval
  br label %return

if.end.212:                                       ; preds = %do.body
  %155 = load i32, i32* %i1.addr, align 4
  %idxprom213 = zext i32 %155 to i64
  %156 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx214 = getelementptr inbounds i16, i16* %156, i64 %idxprom213
  %157 = load i16, i16* %arrayidx214, align 2
  store i16 %157, i16* %s1, align 2
  %158 = load i32, i32* %i2.addr, align 4
  %idxprom215 = zext i32 %158 to i64
  %159 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx216 = getelementptr inbounds i16, i16* %159, i64 %idxprom215
  %160 = load i16, i16* %arrayidx216, align 2
  store i16 %160, i16* %s2, align 2
  %161 = load i16, i16* %s1, align 2
  %conv217 = zext i16 %161 to i32
  %162 = load i16, i16* %s2, align 2
  %conv218 = zext i16 %162 to i32
  %cmp219 = icmp ne i32 %conv217, %conv218
  br i1 %cmp219, label %if.then.221, label %if.end.227

if.then.221:                                      ; preds = %if.end.212
  %163 = load i16, i16* %s1, align 2
  %conv222 = zext i16 %163 to i32
  %164 = load i16, i16* %s2, align 2
  %conv223 = zext i16 %164 to i32
  %cmp224 = icmp sgt i32 %conv222, %conv223
  %conv225 = zext i1 %cmp224 to i32
  %conv226 = trunc i32 %conv225 to i8
  store i8 %conv226, i8* %retval
  br label %return

if.end.227:                                       ; preds = %if.end.212
  %165 = load i32, i32* %i1.addr, align 4
  %inc228 = add i32 %165, 1
  store i32 %inc228, i32* %i1.addr, align 4
  %166 = load i32, i32* %i2.addr, align 4
  %inc229 = add i32 %166, 1
  store i32 %inc229, i32* %i2.addr, align 4
  %167 = load i32, i32* %i1.addr, align 4
  %idxprom230 = zext i32 %167 to i64
  %168 = load i8*, i8** %block.addr, align 8
  %arrayidx231 = getelementptr inbounds i8, i8* %168, i64 %idxprom230
  %169 = load i8, i8* %arrayidx231, align 1
  store i8 %169, i8* %c1, align 1
  %170 = load i32, i32* %i2.addr, align 4
  %idxprom232 = zext i32 %170 to i64
  %171 = load i8*, i8** %block.addr, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %171, i64 %idxprom232
  %172 = load i8, i8* %arrayidx233, align 1
  store i8 %172, i8* %c2, align 1
  %173 = load i8, i8* %c1, align 1
  %conv234 = zext i8 %173 to i32
  %174 = load i8, i8* %c2, align 1
  %conv235 = zext i8 %174 to i32
  %cmp236 = icmp ne i32 %conv234, %conv235
  br i1 %cmp236, label %if.then.238, label %if.end.244

if.then.238:                                      ; preds = %if.end.227
  %175 = load i8, i8* %c1, align 1
  %conv239 = zext i8 %175 to i32
  %176 = load i8, i8* %c2, align 1
  %conv240 = zext i8 %176 to i32
  %cmp241 = icmp sgt i32 %conv239, %conv240
  %conv242 = zext i1 %cmp241 to i32
  %conv243 = trunc i32 %conv242 to i8
  store i8 %conv243, i8* %retval
  br label %return

if.end.244:                                       ; preds = %if.end.227
  %177 = load i32, i32* %i1.addr, align 4
  %idxprom245 = zext i32 %177 to i64
  %178 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx246 = getelementptr inbounds i16, i16* %178, i64 %idxprom245
  %179 = load i16, i16* %arrayidx246, align 2
  store i16 %179, i16* %s1, align 2
  %180 = load i32, i32* %i2.addr, align 4
  %idxprom247 = zext i32 %180 to i64
  %181 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx248 = getelementptr inbounds i16, i16* %181, i64 %idxprom247
  %182 = load i16, i16* %arrayidx248, align 2
  store i16 %182, i16* %s2, align 2
  %183 = load i16, i16* %s1, align 2
  %conv249 = zext i16 %183 to i32
  %184 = load i16, i16* %s2, align 2
  %conv250 = zext i16 %184 to i32
  %cmp251 = icmp ne i32 %conv249, %conv250
  br i1 %cmp251, label %if.then.253, label %if.end.259

if.then.253:                                      ; preds = %if.end.244
  %185 = load i16, i16* %s1, align 2
  %conv254 = zext i16 %185 to i32
  %186 = load i16, i16* %s2, align 2
  %conv255 = zext i16 %186 to i32
  %cmp256 = icmp sgt i32 %conv254, %conv255
  %conv257 = zext i1 %cmp256 to i32
  %conv258 = trunc i32 %conv257 to i8
  store i8 %conv258, i8* %retval
  br label %return

if.end.259:                                       ; preds = %if.end.244
  %187 = load i32, i32* %i1.addr, align 4
  %inc260 = add i32 %187, 1
  store i32 %inc260, i32* %i1.addr, align 4
  %188 = load i32, i32* %i2.addr, align 4
  %inc261 = add i32 %188, 1
  store i32 %inc261, i32* %i2.addr, align 4
  %189 = load i32, i32* %i1.addr, align 4
  %idxprom262 = zext i32 %189 to i64
  %190 = load i8*, i8** %block.addr, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %190, i64 %idxprom262
  %191 = load i8, i8* %arrayidx263, align 1
  store i8 %191, i8* %c1, align 1
  %192 = load i32, i32* %i2.addr, align 4
  %idxprom264 = zext i32 %192 to i64
  %193 = load i8*, i8** %block.addr, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %193, i64 %idxprom264
  %194 = load i8, i8* %arrayidx265, align 1
  store i8 %194, i8* %c2, align 1
  %195 = load i8, i8* %c1, align 1
  %conv266 = zext i8 %195 to i32
  %196 = load i8, i8* %c2, align 1
  %conv267 = zext i8 %196 to i32
  %cmp268 = icmp ne i32 %conv266, %conv267
  br i1 %cmp268, label %if.then.270, label %if.end.276

if.then.270:                                      ; preds = %if.end.259
  %197 = load i8, i8* %c1, align 1
  %conv271 = zext i8 %197 to i32
  %198 = load i8, i8* %c2, align 1
  %conv272 = zext i8 %198 to i32
  %cmp273 = icmp sgt i32 %conv271, %conv272
  %conv274 = zext i1 %cmp273 to i32
  %conv275 = trunc i32 %conv274 to i8
  store i8 %conv275, i8* %retval
  br label %return

if.end.276:                                       ; preds = %if.end.259
  %199 = load i32, i32* %i1.addr, align 4
  %idxprom277 = zext i32 %199 to i64
  %200 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx278 = getelementptr inbounds i16, i16* %200, i64 %idxprom277
  %201 = load i16, i16* %arrayidx278, align 2
  store i16 %201, i16* %s1, align 2
  %202 = load i32, i32* %i2.addr, align 4
  %idxprom279 = zext i32 %202 to i64
  %203 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx280 = getelementptr inbounds i16, i16* %203, i64 %idxprom279
  %204 = load i16, i16* %arrayidx280, align 2
  store i16 %204, i16* %s2, align 2
  %205 = load i16, i16* %s1, align 2
  %conv281 = zext i16 %205 to i32
  %206 = load i16, i16* %s2, align 2
  %conv282 = zext i16 %206 to i32
  %cmp283 = icmp ne i32 %conv281, %conv282
  br i1 %cmp283, label %if.then.285, label %if.end.291

if.then.285:                                      ; preds = %if.end.276
  %207 = load i16, i16* %s1, align 2
  %conv286 = zext i16 %207 to i32
  %208 = load i16, i16* %s2, align 2
  %conv287 = zext i16 %208 to i32
  %cmp288 = icmp sgt i32 %conv286, %conv287
  %conv289 = zext i1 %cmp288 to i32
  %conv290 = trunc i32 %conv289 to i8
  store i8 %conv290, i8* %retval
  br label %return

if.end.291:                                       ; preds = %if.end.276
  %209 = load i32, i32* %i1.addr, align 4
  %inc292 = add i32 %209, 1
  store i32 %inc292, i32* %i1.addr, align 4
  %210 = load i32, i32* %i2.addr, align 4
  %inc293 = add i32 %210, 1
  store i32 %inc293, i32* %i2.addr, align 4
  %211 = load i32, i32* %i1.addr, align 4
  %idxprom294 = zext i32 %211 to i64
  %212 = load i8*, i8** %block.addr, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %212, i64 %idxprom294
  %213 = load i8, i8* %arrayidx295, align 1
  store i8 %213, i8* %c1, align 1
  %214 = load i32, i32* %i2.addr, align 4
  %idxprom296 = zext i32 %214 to i64
  %215 = load i8*, i8** %block.addr, align 8
  %arrayidx297 = getelementptr inbounds i8, i8* %215, i64 %idxprom296
  %216 = load i8, i8* %arrayidx297, align 1
  store i8 %216, i8* %c2, align 1
  %217 = load i8, i8* %c1, align 1
  %conv298 = zext i8 %217 to i32
  %218 = load i8, i8* %c2, align 1
  %conv299 = zext i8 %218 to i32
  %cmp300 = icmp ne i32 %conv298, %conv299
  br i1 %cmp300, label %if.then.302, label %if.end.308

if.then.302:                                      ; preds = %if.end.291
  %219 = load i8, i8* %c1, align 1
  %conv303 = zext i8 %219 to i32
  %220 = load i8, i8* %c2, align 1
  %conv304 = zext i8 %220 to i32
  %cmp305 = icmp sgt i32 %conv303, %conv304
  %conv306 = zext i1 %cmp305 to i32
  %conv307 = trunc i32 %conv306 to i8
  store i8 %conv307, i8* %retval
  br label %return

if.end.308:                                       ; preds = %if.end.291
  %221 = load i32, i32* %i1.addr, align 4
  %idxprom309 = zext i32 %221 to i64
  %222 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx310 = getelementptr inbounds i16, i16* %222, i64 %idxprom309
  %223 = load i16, i16* %arrayidx310, align 2
  store i16 %223, i16* %s1, align 2
  %224 = load i32, i32* %i2.addr, align 4
  %idxprom311 = zext i32 %224 to i64
  %225 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx312 = getelementptr inbounds i16, i16* %225, i64 %idxprom311
  %226 = load i16, i16* %arrayidx312, align 2
  store i16 %226, i16* %s2, align 2
  %227 = load i16, i16* %s1, align 2
  %conv313 = zext i16 %227 to i32
  %228 = load i16, i16* %s2, align 2
  %conv314 = zext i16 %228 to i32
  %cmp315 = icmp ne i32 %conv313, %conv314
  br i1 %cmp315, label %if.then.317, label %if.end.323

if.then.317:                                      ; preds = %if.end.308
  %229 = load i16, i16* %s1, align 2
  %conv318 = zext i16 %229 to i32
  %230 = load i16, i16* %s2, align 2
  %conv319 = zext i16 %230 to i32
  %cmp320 = icmp sgt i32 %conv318, %conv319
  %conv321 = zext i1 %cmp320 to i32
  %conv322 = trunc i32 %conv321 to i8
  store i8 %conv322, i8* %retval
  br label %return

if.end.323:                                       ; preds = %if.end.308
  %231 = load i32, i32* %i1.addr, align 4
  %inc324 = add i32 %231, 1
  store i32 %inc324, i32* %i1.addr, align 4
  %232 = load i32, i32* %i2.addr, align 4
  %inc325 = add i32 %232, 1
  store i32 %inc325, i32* %i2.addr, align 4
  %233 = load i32, i32* %i1.addr, align 4
  %idxprom326 = zext i32 %233 to i64
  %234 = load i8*, i8** %block.addr, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %234, i64 %idxprom326
  %235 = load i8, i8* %arrayidx327, align 1
  store i8 %235, i8* %c1, align 1
  %236 = load i32, i32* %i2.addr, align 4
  %idxprom328 = zext i32 %236 to i64
  %237 = load i8*, i8** %block.addr, align 8
  %arrayidx329 = getelementptr inbounds i8, i8* %237, i64 %idxprom328
  %238 = load i8, i8* %arrayidx329, align 1
  store i8 %238, i8* %c2, align 1
  %239 = load i8, i8* %c1, align 1
  %conv330 = zext i8 %239 to i32
  %240 = load i8, i8* %c2, align 1
  %conv331 = zext i8 %240 to i32
  %cmp332 = icmp ne i32 %conv330, %conv331
  br i1 %cmp332, label %if.then.334, label %if.end.340

if.then.334:                                      ; preds = %if.end.323
  %241 = load i8, i8* %c1, align 1
  %conv335 = zext i8 %241 to i32
  %242 = load i8, i8* %c2, align 1
  %conv336 = zext i8 %242 to i32
  %cmp337 = icmp sgt i32 %conv335, %conv336
  %conv338 = zext i1 %cmp337 to i32
  %conv339 = trunc i32 %conv338 to i8
  store i8 %conv339, i8* %retval
  br label %return

if.end.340:                                       ; preds = %if.end.323
  %243 = load i32, i32* %i1.addr, align 4
  %idxprom341 = zext i32 %243 to i64
  %244 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx342 = getelementptr inbounds i16, i16* %244, i64 %idxprom341
  %245 = load i16, i16* %arrayidx342, align 2
  store i16 %245, i16* %s1, align 2
  %246 = load i32, i32* %i2.addr, align 4
  %idxprom343 = zext i32 %246 to i64
  %247 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx344 = getelementptr inbounds i16, i16* %247, i64 %idxprom343
  %248 = load i16, i16* %arrayidx344, align 2
  store i16 %248, i16* %s2, align 2
  %249 = load i16, i16* %s1, align 2
  %conv345 = zext i16 %249 to i32
  %250 = load i16, i16* %s2, align 2
  %conv346 = zext i16 %250 to i32
  %cmp347 = icmp ne i32 %conv345, %conv346
  br i1 %cmp347, label %if.then.349, label %if.end.355

if.then.349:                                      ; preds = %if.end.340
  %251 = load i16, i16* %s1, align 2
  %conv350 = zext i16 %251 to i32
  %252 = load i16, i16* %s2, align 2
  %conv351 = zext i16 %252 to i32
  %cmp352 = icmp sgt i32 %conv350, %conv351
  %conv353 = zext i1 %cmp352 to i32
  %conv354 = trunc i32 %conv353 to i8
  store i8 %conv354, i8* %retval
  br label %return

if.end.355:                                       ; preds = %if.end.340
  %253 = load i32, i32* %i1.addr, align 4
  %inc356 = add i32 %253, 1
  store i32 %inc356, i32* %i1.addr, align 4
  %254 = load i32, i32* %i2.addr, align 4
  %inc357 = add i32 %254, 1
  store i32 %inc357, i32* %i2.addr, align 4
  %255 = load i32, i32* %i1.addr, align 4
  %idxprom358 = zext i32 %255 to i64
  %256 = load i8*, i8** %block.addr, align 8
  %arrayidx359 = getelementptr inbounds i8, i8* %256, i64 %idxprom358
  %257 = load i8, i8* %arrayidx359, align 1
  store i8 %257, i8* %c1, align 1
  %258 = load i32, i32* %i2.addr, align 4
  %idxprom360 = zext i32 %258 to i64
  %259 = load i8*, i8** %block.addr, align 8
  %arrayidx361 = getelementptr inbounds i8, i8* %259, i64 %idxprom360
  %260 = load i8, i8* %arrayidx361, align 1
  store i8 %260, i8* %c2, align 1
  %261 = load i8, i8* %c1, align 1
  %conv362 = zext i8 %261 to i32
  %262 = load i8, i8* %c2, align 1
  %conv363 = zext i8 %262 to i32
  %cmp364 = icmp ne i32 %conv362, %conv363
  br i1 %cmp364, label %if.then.366, label %if.end.372

if.then.366:                                      ; preds = %if.end.355
  %263 = load i8, i8* %c1, align 1
  %conv367 = zext i8 %263 to i32
  %264 = load i8, i8* %c2, align 1
  %conv368 = zext i8 %264 to i32
  %cmp369 = icmp sgt i32 %conv367, %conv368
  %conv370 = zext i1 %cmp369 to i32
  %conv371 = trunc i32 %conv370 to i8
  store i8 %conv371, i8* %retval
  br label %return

if.end.372:                                       ; preds = %if.end.355
  %265 = load i32, i32* %i1.addr, align 4
  %idxprom373 = zext i32 %265 to i64
  %266 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx374 = getelementptr inbounds i16, i16* %266, i64 %idxprom373
  %267 = load i16, i16* %arrayidx374, align 2
  store i16 %267, i16* %s1, align 2
  %268 = load i32, i32* %i2.addr, align 4
  %idxprom375 = zext i32 %268 to i64
  %269 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx376 = getelementptr inbounds i16, i16* %269, i64 %idxprom375
  %270 = load i16, i16* %arrayidx376, align 2
  store i16 %270, i16* %s2, align 2
  %271 = load i16, i16* %s1, align 2
  %conv377 = zext i16 %271 to i32
  %272 = load i16, i16* %s2, align 2
  %conv378 = zext i16 %272 to i32
  %cmp379 = icmp ne i32 %conv377, %conv378
  br i1 %cmp379, label %if.then.381, label %if.end.387

if.then.381:                                      ; preds = %if.end.372
  %273 = load i16, i16* %s1, align 2
  %conv382 = zext i16 %273 to i32
  %274 = load i16, i16* %s2, align 2
  %conv383 = zext i16 %274 to i32
  %cmp384 = icmp sgt i32 %conv382, %conv383
  %conv385 = zext i1 %cmp384 to i32
  %conv386 = trunc i32 %conv385 to i8
  store i8 %conv386, i8* %retval
  br label %return

if.end.387:                                       ; preds = %if.end.372
  %275 = load i32, i32* %i1.addr, align 4
  %inc388 = add i32 %275, 1
  store i32 %inc388, i32* %i1.addr, align 4
  %276 = load i32, i32* %i2.addr, align 4
  %inc389 = add i32 %276, 1
  store i32 %inc389, i32* %i2.addr, align 4
  %277 = load i32, i32* %i1.addr, align 4
  %idxprom390 = zext i32 %277 to i64
  %278 = load i8*, i8** %block.addr, align 8
  %arrayidx391 = getelementptr inbounds i8, i8* %278, i64 %idxprom390
  %279 = load i8, i8* %arrayidx391, align 1
  store i8 %279, i8* %c1, align 1
  %280 = load i32, i32* %i2.addr, align 4
  %idxprom392 = zext i32 %280 to i64
  %281 = load i8*, i8** %block.addr, align 8
  %arrayidx393 = getelementptr inbounds i8, i8* %281, i64 %idxprom392
  %282 = load i8, i8* %arrayidx393, align 1
  store i8 %282, i8* %c2, align 1
  %283 = load i8, i8* %c1, align 1
  %conv394 = zext i8 %283 to i32
  %284 = load i8, i8* %c2, align 1
  %conv395 = zext i8 %284 to i32
  %cmp396 = icmp ne i32 %conv394, %conv395
  br i1 %cmp396, label %if.then.398, label %if.end.404

if.then.398:                                      ; preds = %if.end.387
  %285 = load i8, i8* %c1, align 1
  %conv399 = zext i8 %285 to i32
  %286 = load i8, i8* %c2, align 1
  %conv400 = zext i8 %286 to i32
  %cmp401 = icmp sgt i32 %conv399, %conv400
  %conv402 = zext i1 %cmp401 to i32
  %conv403 = trunc i32 %conv402 to i8
  store i8 %conv403, i8* %retval
  br label %return

if.end.404:                                       ; preds = %if.end.387
  %287 = load i32, i32* %i1.addr, align 4
  %idxprom405 = zext i32 %287 to i64
  %288 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx406 = getelementptr inbounds i16, i16* %288, i64 %idxprom405
  %289 = load i16, i16* %arrayidx406, align 2
  store i16 %289, i16* %s1, align 2
  %290 = load i32, i32* %i2.addr, align 4
  %idxprom407 = zext i32 %290 to i64
  %291 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx408 = getelementptr inbounds i16, i16* %291, i64 %idxprom407
  %292 = load i16, i16* %arrayidx408, align 2
  store i16 %292, i16* %s2, align 2
  %293 = load i16, i16* %s1, align 2
  %conv409 = zext i16 %293 to i32
  %294 = load i16, i16* %s2, align 2
  %conv410 = zext i16 %294 to i32
  %cmp411 = icmp ne i32 %conv409, %conv410
  br i1 %cmp411, label %if.then.413, label %if.end.419

if.then.413:                                      ; preds = %if.end.404
  %295 = load i16, i16* %s1, align 2
  %conv414 = zext i16 %295 to i32
  %296 = load i16, i16* %s2, align 2
  %conv415 = zext i16 %296 to i32
  %cmp416 = icmp sgt i32 %conv414, %conv415
  %conv417 = zext i1 %cmp416 to i32
  %conv418 = trunc i32 %conv417 to i8
  store i8 %conv418, i8* %retval
  br label %return

if.end.419:                                       ; preds = %if.end.404
  %297 = load i32, i32* %i1.addr, align 4
  %inc420 = add i32 %297, 1
  store i32 %inc420, i32* %i1.addr, align 4
  %298 = load i32, i32* %i2.addr, align 4
  %inc421 = add i32 %298, 1
  store i32 %inc421, i32* %i2.addr, align 4
  %299 = load i32, i32* %i1.addr, align 4
  %idxprom422 = zext i32 %299 to i64
  %300 = load i8*, i8** %block.addr, align 8
  %arrayidx423 = getelementptr inbounds i8, i8* %300, i64 %idxprom422
  %301 = load i8, i8* %arrayidx423, align 1
  store i8 %301, i8* %c1, align 1
  %302 = load i32, i32* %i2.addr, align 4
  %idxprom424 = zext i32 %302 to i64
  %303 = load i8*, i8** %block.addr, align 8
  %arrayidx425 = getelementptr inbounds i8, i8* %303, i64 %idxprom424
  %304 = load i8, i8* %arrayidx425, align 1
  store i8 %304, i8* %c2, align 1
  %305 = load i8, i8* %c1, align 1
  %conv426 = zext i8 %305 to i32
  %306 = load i8, i8* %c2, align 1
  %conv427 = zext i8 %306 to i32
  %cmp428 = icmp ne i32 %conv426, %conv427
  br i1 %cmp428, label %if.then.430, label %if.end.436

if.then.430:                                      ; preds = %if.end.419
  %307 = load i8, i8* %c1, align 1
  %conv431 = zext i8 %307 to i32
  %308 = load i8, i8* %c2, align 1
  %conv432 = zext i8 %308 to i32
  %cmp433 = icmp sgt i32 %conv431, %conv432
  %conv434 = zext i1 %cmp433 to i32
  %conv435 = trunc i32 %conv434 to i8
  store i8 %conv435, i8* %retval
  br label %return

if.end.436:                                       ; preds = %if.end.419
  %309 = load i32, i32* %i1.addr, align 4
  %idxprom437 = zext i32 %309 to i64
  %310 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx438 = getelementptr inbounds i16, i16* %310, i64 %idxprom437
  %311 = load i16, i16* %arrayidx438, align 2
  store i16 %311, i16* %s1, align 2
  %312 = load i32, i32* %i2.addr, align 4
  %idxprom439 = zext i32 %312 to i64
  %313 = load i16*, i16** %quadrant.addr, align 8
  %arrayidx440 = getelementptr inbounds i16, i16* %313, i64 %idxprom439
  %314 = load i16, i16* %arrayidx440, align 2
  store i16 %314, i16* %s2, align 2
  %315 = load i16, i16* %s1, align 2
  %conv441 = zext i16 %315 to i32
  %316 = load i16, i16* %s2, align 2
  %conv442 = zext i16 %316 to i32
  %cmp443 = icmp ne i32 %conv441, %conv442
  br i1 %cmp443, label %if.then.445, label %if.end.451

if.then.445:                                      ; preds = %if.end.436
  %317 = load i16, i16* %s1, align 2
  %conv446 = zext i16 %317 to i32
  %318 = load i16, i16* %s2, align 2
  %conv447 = zext i16 %318 to i32
  %cmp448 = icmp sgt i32 %conv446, %conv447
  %conv449 = zext i1 %cmp448 to i32
  %conv450 = trunc i32 %conv449 to i8
  store i8 %conv450, i8* %retval
  br label %return

if.end.451:                                       ; preds = %if.end.436
  %319 = load i32, i32* %i1.addr, align 4
  %inc452 = add i32 %319, 1
  store i32 %inc452, i32* %i1.addr, align 4
  %320 = load i32, i32* %i2.addr, align 4
  %inc453 = add i32 %320, 1
  store i32 %inc453, i32* %i2.addr, align 4
  %321 = load i32, i32* %i1.addr, align 4
  %322 = load i32, i32* %nblock.addr, align 4
  %cmp454 = icmp uge i32 %321, %322
  br i1 %cmp454, label %if.then.456, label %if.end.457

if.then.456:                                      ; preds = %if.end.451
  %323 = load i32, i32* %nblock.addr, align 4
  %324 = load i32, i32* %i1.addr, align 4
  %sub = sub i32 %324, %323
  store i32 %sub, i32* %i1.addr, align 4
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.456, %if.end.451
  %325 = load i32, i32* %i2.addr, align 4
  %326 = load i32, i32* %nblock.addr, align 4
  %cmp458 = icmp uge i32 %325, %326
  br i1 %cmp458, label %if.then.460, label %if.end.462

if.then.460:                                      ; preds = %if.end.457
  %327 = load i32, i32* %nblock.addr, align 4
  %328 = load i32, i32* %i2.addr, align 4
  %sub461 = sub i32 %328, %327
  store i32 %sub461, i32* %i2.addr, align 4
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.460, %if.end.457
  %329 = load i32, i32* %k, align 4
  %sub463 = sub nsw i32 %329, 8
  store i32 %sub463, i32* %k, align 4
  %330 = load i32*, i32** %budget.addr, align 8
  %331 = load i32, i32* %330, align 4
  %dec = add nsw i32 %331, -1
  store i32 %dec, i32* %330, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.462
  %332 = load i32, i32* %k, align 4
  %cmp464 = icmp sge i32 %332, 0
  br i1 %cmp464, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.445, %if.then.430, %if.then.413, %if.then.398, %if.then.381, %if.then.366, %if.then.349, %if.then.334, %if.then.317, %if.then.302, %if.then.285, %if.then.270, %if.then.253, %if.then.238, %if.then.221, %if.then.206, %if.then.189, %if.then.172, %if.then.155, %if.then.138, %if.then.121, %if.then.104, %if.then.87, %if.then.70, %if.then.53, %if.then.36, %if.then.19, %if.then
  %333 = load i8, i8* %retval
  ret i8 %333
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
