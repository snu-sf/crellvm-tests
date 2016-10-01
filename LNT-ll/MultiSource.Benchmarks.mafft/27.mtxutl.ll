; ModuleID = './MultiSource.Benchmarks.mafft/27.mtxutl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [38 x i8] c"Cannot allocate %d character vector.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot reallocate %d x %d character matrix.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Cannot allocate %d x %d character matrix.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Allocation error ( %d fload vec )\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Allocation error ( %d fload halfmtx )\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Allocation error( %d floathalfmtx )\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Allocation error ( %d x %d fload mtx )\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Allocation error( %d x %d floatmtx )\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Allocation error( %d int vec )\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Allocation error ( float tri )\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Allocation error( %d x %d int mtx )\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Allocation error( %d x %d x %d char cube\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"cannot allocate IntCub\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cannot allocate DoubleMtx\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"cannot allocate float cube.\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"cannot allocate double cube.\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Allocation error( %d short vec )\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Allocation error( %d x %d short mtx ) \0A\00", align 1

; Function Attrs: nounwind uwtable
define void @MtxuntDouble(double** %mtx, i32 %n) #0 {
entry:
  %mtx.addr = alloca double**, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store double** %mtx, double*** %mtx.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load double**, double*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %6, i64 %idxprom4
  %7 = load double*, double** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds double, double* %7, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %9 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.16, %for.end.8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n.addr, align 4
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body.11, label %for.end.18

for.body.11:                                      ; preds = %for.cond.9
  %12 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load double**, double*** %mtx.addr, align 8
  %arrayidx14 = getelementptr inbounds double*, double** %14, i64 %idxprom13
  %15 = load double*, double** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds double, double* %15, i64 %idxprom12
  store double 1.000000e+00, double* %arrayidx15, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.11
  %16 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %16, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond.9

for.end.18:                                       ; preds = %for.cond.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @MtxmltDouble(double** %mtx1, double** %mtx2, i32 %n) #0 {
entry:
  %mtx1.addr = alloca double**, align 8
  %mtx2.addr = alloca double**, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca double, align 8
  %tmp = alloca double*, align 8
  store double** %mtx1, double*** %mtx1.addr, align 8
  store double** %mtx2, double*** %mtx2.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to double*
  store double* %1, double** %tmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load double**, double*** %mtx1.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %8, i64 %idxprom6
  %9 = load double*, double** %arrayidx, align 8
  %arrayidx7 = getelementptr inbounds double, double* %9, i64 %idxprom
  %10 = load double, double* %arrayidx7, align 8
  %11 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load double*, double** %tmp, align 8
  %arrayidx9 = getelementptr inbounds double, double* %12, i64 %idxprom8
  store double %10, double* %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %13 = load i32, i32* %k, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.31, %for.end
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %n.addr, align 4
  %cmp11 = icmp slt i32 %14, %15
  br i1 %cmp11, label %for.body.13, label %for.end.33

for.body.13:                                      ; preds = %for.cond.10
  store double 0.000000e+00, double* %s, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.24, %for.body.13
  %16 = load i32, i32* %k, align 4
  %17 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp slt i32 %16, %17
  br i1 %cmp15, label %for.body.17, label %for.end.26

for.body.17:                                      ; preds = %for.cond.14
  %18 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load double*, double** %tmp, align 8
  %arrayidx19 = getelementptr inbounds double, double* %19, i64 %idxprom18
  %20 = load double, double* %arrayidx19, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load double**, double*** %mtx2.addr, align 8
  %arrayidx22 = getelementptr inbounds double*, double** %23, i64 %idxprom21
  %24 = load double*, double** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds double, double* %24, i64 %idxprom20
  %25 = load double, double* %arrayidx23, align 8
  %mul = fmul double %20, %25
  %26 = load double, double* %s, align 8
  %add = fadd double %26, %mul
  store double %add, double* %s, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.17
  %27 = load i32, i32* %k, align 4
  %inc25 = add nsw i32 %27, 1
  store i32 %inc25, i32* %k, align 4
  br label %for.cond.14

for.end.26:                                       ; preds = %for.cond.14
  %28 = load double, double* %s, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %30 to i64
  %31 = load double**, double*** %mtx1.addr, align 8
  %arrayidx29 = getelementptr inbounds double*, double** %31, i64 %idxprom28
  %32 = load double*, double** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds double, double* %32, i64 %idxprom27
  store double %28, double* %arrayidx30, align 8
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end.26
  %33 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %33, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond.10

for.end.33:                                       ; preds = %for.cond.10
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.33
  %34 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %34, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %35 = load double*, double** %tmp, align 8
  %36 = bitcast double* %35 to i8*
  call void @free(i8* %36) #4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @AllocateCharVec(i32 %l1) #0 {
entry:
  %l1.addr = alloca i32, align 4
  %cvec = alloca i8*, align 8
  store i32 %l1, i32* %l1.addr, align 4
  %0 = load i32, i32* %l1.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 1) #4
  store i8* %call, i8** %cvec, align 8
  %1 = load i8*, i8** %cvec, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i32, i32* %l1.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %3)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %cvec, align 8
  ret i8* %4
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @ReallocateCharMtx(i8** %mtx, i32 %l1, i32 %l2) #0 {
entry:
  %mtx.addr = alloca i8**, align 8
  %l1.addr = alloca i32, align 4
  %l2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8** %mtx, i8*** %mtx.addr, align 8
  store i32 %l1, i32* %l1.addr, align 4
  store i32 %l2, i32* %l2.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %l1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = load i32, i32* %l2.addr, align 4
  %add = add nsw i32 %5, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @realloc(i8* %4, i64 %mul) #4
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i8**, i8*** %mtx.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 %idxprom1
  store i8* %call, i8** %arrayidx2, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i8**, i8*** %mtx.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %9, i64 %idxprom3
  %10 = load i8*, i8** %arrayidx4, align 8
  %cmp5 = icmp eq i8* %10, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %l1.addr, align 4
  %13 = load i32, i32* %l2.addr, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 %12, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i8** @AllocateCharMtx(i32 %l1, i32 %l2) #0 {
entry:
  %l1.addr = alloca i32, align 4
  %l2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cmtx = alloca i8**, align 8
  store i32 %l1, i32* %l1.addr, align 4
  store i32 %l2, i32* %l2.addr, align 4
  %0 = load i32, i32* %l1.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %cmtx, align 8
  %2 = load i8**, i8*** %cmtx, align 8
  %cmp = icmp eq i8** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %l1.addr, align 4
  %5 = load i32, i32* %l2.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i32 %4, i32 %5)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %l2.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %l1.addr, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %l2.addr, align 4
  %call6 = call i8* @AllocateCharVec(i32 %9)
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8**, i8*** %cmtx, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  store i8* %call6, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.7

if.end.7:                                         ; preds = %for.end, %if.end
  %13 = load i32, i32* %l1.addr, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i8**, i8*** %cmtx, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %14, i64 %idxprom8
  store i8* null, i8** %arrayidx9, align 8
  %15 = load i8**, i8*** %cmtx, align 8
  ret i8** %15
}

; Function Attrs: nounwind uwtable
define void @FreeCharMtx(i8** %mtx) #0 {
entry:
  %mtx.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i8** %mtx, i8*** %mtx.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8**, i8*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8**, i8*** %mtx.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  call void @free(i8* %5) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8**, i8*** %mtx.addr, align 8
  %8 = bitcast i8** %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define float* @AllocateFloatVec(i32 %l1) #0 {
entry:
  %l1.addr = alloca i32, align 4
  %vec = alloca float*, align 8
  store i32 %l1, i32* %l1.addr, align 4
  %0 = load i32, i32* %l1.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #4
  %1 = bitcast i8* %call to float*
  store float* %1, float** %vec, align 8
  %2 = load float*, float** %vec, align 8
  %cmp = icmp eq float* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %l1.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i32 %4)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %5 = load float*, float** %vec, align 8
  ret float* %5
}

; Function Attrs: nounwind uwtable
define void @FreeFloatVec(float* %vec) #0 {
entry:
  %vec.addr = alloca float*, align 8
  store float* %vec, float** %vec.addr, align 8
  %0 = load float*, float** %vec.addr, align 8
  %1 = bitcast float* %0 to i8*
  call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define float** @AllocateFloatHalfMtx(i32 %ll1) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %mtx = alloca float**, align 8
  %i = alloca i32, align 4
  store i32 %ll1, i32* %ll1.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %add = add i32 %0, 1
  %conv = zext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to float**
  store float** %1, float*** %mtx, align 8
  %2 = load float**, float*** %mtx, align 8
  %cmp = icmp eq float** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %ll1.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 %4)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %ll1.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %ll1.addr, align 4
  %8 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, %8
  %conv5 = sext i32 %sub to i64
  %call6 = call noalias i8* @calloc(i64 %conv5, i64 4) #4
  %9 = bitcast i8* %call6 to float*
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load float**, float*** %mtx, align 8
  %arrayidx = getelementptr inbounds float*, float** %11, i64 %idxprom
  store float* %9, float** %arrayidx, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load float**, float*** %mtx, align 8
  %arrayidx8 = getelementptr inbounds float*, float** %13, i64 %idxprom7
  %14 = load float*, float** %arrayidx8, align 8
  %tobool = icmp ne float* %14, null
  br i1 %tobool, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %for.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i32, i32* %ll1.addr, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i32 %16)
  call void @exit(i32 1) #5
  unreachable

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %ll1.addr, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load float**, float*** %mtx, align 8
  %arrayidx13 = getelementptr inbounds float*, float** %19, i64 %idxprom12
  store float* null, float** %arrayidx13, align 8
  %20 = load float**, float*** %mtx, align 8
  ret float** %20
}

; Function Attrs: nounwind uwtable
define float** @AllocateFloatMtx(i32 %ll1, i32 %ll2) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %ll2.addr = alloca i32, align 4
  %mtx = alloca float**, align 8
  %i = alloca i32, align 4
  store i32 %ll1, i32* %ll1.addr, align 4
  store i32 %ll2, i32* %ll2.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %add = add i32 %0, 1
  %conv = zext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to float**
  store float** %1, float*** %mtx, align 8
  %2 = load float**, float*** %mtx, align 8
  %cmp = icmp eq float** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %ll1.addr, align 4
  %5 = load i32, i32* %ll2.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i32 %4, i32 %5)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %ll2.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.3, label %if.end.14

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %ll1.addr, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %ll2.addr, align 4
  %conv6 = sext i32 %9 to i64
  %call7 = call noalias i8* @calloc(i64 %conv6, i64 4) #4
  %10 = bitcast i8* %call7 to float*
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load float**, float*** %mtx, align 8
  %arrayidx = getelementptr inbounds float*, float** %12, i64 %idxprom
  store float* %10, float** %arrayidx, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load float**, float*** %mtx, align 8
  %arrayidx9 = getelementptr inbounds float*, float** %14, i64 %idxprom8
  %15 = load float*, float** %arrayidx9, align 8
  %tobool10 = icmp ne float* %15, null
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %for.body
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i32, i32* %ll1.addr, align 4
  %18 = load i32, i32* %ll2.addr, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 %17, i32 %18)
  call void @exit(i32 1) #5
  unreachable

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %if.end
  %20 = load i32, i32* %ll1.addr, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load float**, float*** %mtx, align 8
  %arrayidx16 = getelementptr inbounds float*, float** %21, i64 %idxprom15
  store float* null, float** %arrayidx16, align 8
  %22 = load float**, float*** %mtx, align 8
  ret float** %22
}

; Function Attrs: nounwind uwtable
define void @FreeFloatHalfMtx(float** %mtx, i32 %n) #0 {
entry:
  %mtx.addr = alloca float**, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store float** %mtx, float*** %mtx.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float**, float*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %3, i64 %idxprom
  %4 = load float*, float** %arrayidx, align 8
  %tobool = icmp ne float* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float**, float*** %mtx.addr, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %6, i64 %idxprom1
  %7 = load float*, float** %arrayidx2, align 8
  call void @FreeFloatVec(float* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load float**, float*** %mtx.addr, align 8
  %10 = bitcast float** %9 to i8*
  call void @free(i8* %10) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @FreeFloatMtx(float** %mtx) #0 {
entry:
  %mtx.addr = alloca float**, align 8
  %i = alloca i32, align 4
  store float** %mtx, float*** %mtx.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load float**, float*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %1, i64 %idxprom
  %2 = load float*, float** %arrayidx, align 8
  %tobool = icmp ne float* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load float**, float*** %mtx.addr, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %4, i64 %idxprom1
  %5 = load float*, float** %arrayidx2, align 8
  call void @FreeFloatVec(float* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load float**, float*** %mtx.addr, align 8
  %8 = bitcast float** %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32* @AllocateIntVec(i32 %ll1) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %vec = alloca i32*, align 8
  store i32 %ll1, i32* %ll1.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #4
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %vec, align 8
  %2 = load i32*, i32** %vec, align 8
  %cmp = icmp eq i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %ll1.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i32 %4)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %vec, align 8
  ret i32* %5
}

; Function Attrs: nounwind uwtable
define void @FreeIntVec(i32* %vec) #0 {
entry:
  %vec.addr = alloca i32*, align 8
  store i32* %vec, i32** %vec.addr, align 8
  %0 = load i32*, i32** %vec.addr, align 8
  %1 = bitcast i32* %0 to i8*
  call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define float** @AllocateFloatTri(i32 %ll1) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %tri = alloca float**, align 8
  %i = alloca i32, align 4
  store i32 %ll1, i32* %ll1.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %add = add i32 %0, 1
  %conv = zext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to float**
  store float** %1, float*** %tri, align 8
  %2 = load float**, float*** %tri, align 8
  %tobool = icmp ne float** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %ll1.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %6, 3
  %call4 = call float* @AllocateFloatVec(i32 %add3)
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load float**, float*** %tri, align 8
  %arrayidx = getelementptr inbounds float*, float** %8, i64 %idxprom
  store float* %call4, float** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %ll1.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load float**, float*** %tri, align 8
  %arrayidx6 = getelementptr inbounds float*, float** %11, i64 %idxprom5
  store float* null, float** %arrayidx6, align 8
  %12 = load float**, float*** %tri, align 8
  ret float** %12
}

; Function Attrs: nounwind uwtable
define void @FreeFloatTri(float** %tri) #0 {
entry:
  %tri.addr = alloca float**, align 8
  %i = alloca i32, align 4
  store float** %tri, float*** %tri.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load float**, float*** %tri.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %1, i64 %idxprom
  %2 = load float*, float** %arrayidx, align 8
  %tobool = icmp ne float* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load float**, float*** %tri.addr, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %4, i64 %idxprom1
  %5 = load float*, float** %arrayidx2, align 8
  %6 = bitcast float* %5 to i8*
  call void @free(i8* %6) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load float**, float*** %tri.addr, align 8
  %9 = bitcast float** %8 to i8*
  call void @free(i8* %9) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32** @AllocateIntMtx(i32 %ll1, i32 %ll2) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %ll2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %mtx = alloca i32**, align 8
  store i32 %ll1, i32* %ll1.addr, align 4
  store i32 %ll2, i32* %ll2.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to i32**
  store i32** %1, i32*** %mtx, align 8
  %2 = load i32**, i32*** %mtx, align 8
  %tobool = icmp ne i32** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %ll1.addr, align 4
  %5 = load i32, i32* %ll2.addr, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i32 %4, i32 %5)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %ll2.addr, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %ll1.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %ll2.addr, align 4
  %call5 = call i32* @AllocateIntVec(i32 %9)
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32**, i32*** %mtx, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %11, i64 %idxprom
  store i32* %call5, i32** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.6

if.end.6:                                         ; preds = %for.end, %if.end
  %13 = load i32, i32* %ll1.addr, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i32**, i32*** %mtx, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %14, i64 %idxprom7
  store i32* null, i32** %arrayidx8, align 8
  %15 = load i32**, i32*** %mtx, align 8
  ret i32** %15
}

; Function Attrs: nounwind uwtable
define i8*** @AllocateCharCub(i32 %ll1, i32 %ll2, i32 %ll3) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %ll2.addr = alloca i32, align 4
  %ll3.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cub = alloca i8***, align 8
  store i32 %ll1, i32* %ll1.addr, align 4
  store i32 %ll2, i32* %ll2.addr, align 4
  store i32 %ll3, i32* %ll3.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to i8***
  store i8*** %1, i8**** %cub, align 8
  %2 = load i8***, i8**** %cub, align 8
  %tobool = icmp ne i8*** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %ll1.addr, align 4
  %5 = load i32, i32* %ll2.addr, align 4
  %6 = load i32, i32* %ll3.addr, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i32 %4, i32 %5, i32 %6)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %ll2.addr, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %ll1.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %ll2.addr, align 4
  %11 = load i32, i32* %ll3.addr, align 4
  %call5 = call i8** @AllocateCharMtx(i32 %10, i32 %11)
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i8***, i8**** %cub, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %13, i64 %idxprom
  store i8** %call5, i8*** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.6

if.end.6:                                         ; preds = %for.end, %if.end
  %15 = load i32, i32* %ll1.addr, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load i8***, i8**** %cub, align 8
  %arrayidx8 = getelementptr inbounds i8**, i8*** %16, i64 %idxprom7
  store i8** null, i8*** %arrayidx8, align 8
  %17 = load i8***, i8**** %cub, align 8
  ret i8*** %17
}

; Function Attrs: nounwind uwtable
define void @FreeCharCub(i8*** %cub) #0 {
entry:
  %cub.addr = alloca i8***, align 8
  %i = alloca i32, align 4
  store i8*** %cub, i8**** %cub.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8***, i8**** %cub.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %1, i64 %idxprom
  %2 = load i8**, i8*** %arrayidx, align 8
  %tobool = icmp ne i8** %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8***, i8**** %cub.addr, align 8
  %arrayidx2 = getelementptr inbounds i8**, i8*** %4, i64 %idxprom1
  %5 = load i8**, i8*** %arrayidx2, align 8
  call void @FreeCharMtx(i8** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8***, i8**** %cub.addr, align 8
  %8 = bitcast i8*** %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @freeintmtx(i32** %mtx, i32 %ll1, i32 %ll2) #0 {
entry:
  %mtx.addr = alloca i32**, align 8
  %ll1.addr = alloca i32, align 4
  %ll2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32** %mtx, i32*** %mtx.addr, align 8
  store i32 %ll1, i32* %ll1.addr, align 4
  store i32 %ll2, i32* %ll2.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ll1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32**, i32*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %3, i64 %idxprom
  %4 = load i32*, i32** %arrayidx, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32**, i32*** %mtx.addr, align 8
  %8 = bitcast i32** %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @FreeIntMtx(i32** %mtx) #0 {
entry:
  %mtx.addr = alloca i32**, align 8
  %i = alloca i32, align 4
  store i32** %mtx, i32*** %mtx.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32**, i32*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i32**, i32*** %mtx.addr, align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %4, i64 %idxprom1
  %5 = load i32*, i32** %arrayidx2, align 8
  %6 = bitcast i32* %5 to i8*
  call void @free(i8* %6) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32**, i32*** %mtx.addr, align 8
  %9 = bitcast i32** %8 to i8*
  call void @free(i8* %9) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i8**** @AllocateCharHcu(i32 %ll1, i32 %ll2, i32 %ll3, i32 %ll4) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %ll2.addr = alloca i32, align 4
  %ll3.addr = alloca i32, align 4
  %ll4.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %hcu = alloca i8****, align 8
  store i32 %ll1, i32* %ll1.addr, align 4
  store i32 %ll2, i32* %ll2.addr, align 4
  store i32 %ll3, i32* %ll3.addr, align 4
  store i32 %ll4, i32* %ll4.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to i8****
  store i8**** %1, i8***** %hcu, align 8
  %2 = load i8****, i8***** %hcu, align 8
  %cmp = icmp eq i8**** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %ll1.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %ll2.addr, align 4
  %6 = load i32, i32* %ll3.addr, align 4
  %7 = load i32, i32* %ll4.addr, align 4
  %call4 = call i8*** @AllocateCharCub(i32 %5, i32 %6, i32 %7)
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8****, i8***** %hcu, align 8
  %arrayidx = getelementptr inbounds i8***, i8**** %9, i64 %idxprom
  store i8*** %call4, i8**** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %ll1.addr, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load i8****, i8***** %hcu, align 8
  %arrayidx6 = getelementptr inbounds i8***, i8**** %12, i64 %idxprom5
  store i8*** null, i8**** %arrayidx6, align 8
  %13 = load i8****, i8***** %hcu, align 8
  ret i8**** %13
}

; Function Attrs: nounwind uwtable
define void @FreeCharHcu(i8**** %hcu) #0 {
entry:
  %hcu.addr = alloca i8****, align 8
  %i = alloca i32, align 4
  store i8**** %hcu, i8***** %hcu.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8****, i8***** %hcu.addr, align 8
  %arrayidx = getelementptr inbounds i8***, i8**** %1, i64 %idxprom
  %2 = load i8***, i8**** %arrayidx, align 8
  %tobool = icmp ne i8*** %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8****, i8***** %hcu.addr, align 8
  %arrayidx2 = getelementptr inbounds i8***, i8**** %4, i64 %idxprom1
  %5 = load i8***, i8**** %arrayidx2, align 8
  call void @FreeCharCub(i8*** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8****, i8***** %hcu.addr, align 8
  %8 = bitcast i8**** %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define double* @AllocateDoubleVec(i32 %ll1) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %vec = alloca double*, align 8
  store i32 %ll1, i32* %ll1.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to double*
  store double* %1, double** %vec, align 8
  %2 = load double*, double** %vec, align 8
  ret double* %2
}

; Function Attrs: nounwind uwtable
define void @FreeDoubleVec(double* %vec) #0 {
entry:
  %vec.addr = alloca double*, align 8
  store double* %vec, double** %vec.addr, align 8
  %0 = load double*, double** %vec.addr, align 8
  %1 = bitcast double* %0 to i8*
  call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32*** @AllocateIntCub(i32 %ll1, i32 %ll2, i32 %ll3) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %ll2.addr = alloca i32, align 4
  %ll3.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cub = alloca i32***, align 8
  store i32 %ll1, i32* %ll1.addr, align 4
  store i32 %ll2, i32* %ll2.addr, align 4
  store i32 %ll3, i32* %ll3.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to i32***
  store i32*** %1, i32**** %cub, align 8
  %2 = load i32***, i32**** %cub, align 8
  %cmp = icmp eq i32*** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %ll1.addr, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %ll2.addr, align 4
  %7 = load i32, i32* %ll3.addr, align 4
  %call5 = call i32** @AllocateIntMtx(i32 %6, i32 %7)
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32***, i32**** %cub, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %9, i64 %idxprom
  store i32** %call5, i32*** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %ll1.addr, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i32***, i32**** %cub, align 8
  %arrayidx7 = getelementptr inbounds i32**, i32*** %12, i64 %idxprom6
  store i32** null, i32*** %arrayidx7, align 8
  %13 = load i32***, i32**** %cub, align 8
  ret i32*** %13
}

; Function Attrs: nounwind uwtable
define void @FreeIntCub(i32*** %cub) #0 {
entry:
  %cub.addr = alloca i32***, align 8
  %i = alloca i32, align 4
  store i32*** %cub, i32**** %cub.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32***, i32**** %cub.addr, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %1, i64 %idxprom
  %2 = load i32**, i32*** %arrayidx, align 8
  %tobool = icmp ne i32** %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i32***, i32**** %cub.addr, align 8
  %arrayidx2 = getelementptr inbounds i32**, i32*** %4, i64 %idxprom1
  %5 = load i32**, i32*** %arrayidx2, align 8
  call void @FreeIntMtx(i32** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32***, i32**** %cub.addr, align 8
  %8 = bitcast i32*** %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define double** @AllocateDoubleMtx(i32 %ll1, i32 %ll2) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %ll2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %mtx = alloca double**, align 8
  store i32 %ll1, i32* %ll1.addr, align 4
  store i32 %ll2, i32* %ll2.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to double**
  store double** %1, double*** %mtx, align 8
  %2 = load double**, double*** %mtx, align 8
  %tobool = icmp ne double** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %ll2.addr, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %ll1.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %ll2.addr, align 4
  %call5 = call double* @AllocateDoubleVec(i32 %7)
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load double**, double*** %mtx, align 8
  %arrayidx = getelementptr inbounds double*, double** %9, i64 %idxprom
  store double* %call5, double** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.6

if.end.6:                                         ; preds = %for.end, %if.end
  %11 = load i32, i32* %ll1.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load double**, double*** %mtx, align 8
  %arrayidx8 = getelementptr inbounds double*, double** %12, i64 %idxprom7
  store double* null, double** %arrayidx8, align 8
  %13 = load double**, double*** %mtx, align 8
  ret double** %13
}

; Function Attrs: nounwind uwtable
define void @FreeDoubleMtx(double** %mtx) #0 {
entry:
  %mtx.addr = alloca double**, align 8
  %i = alloca i32, align 4
  store double** %mtx, double*** %mtx.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load double**, double*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %1, i64 %idxprom
  %2 = load double*, double** %arrayidx, align 8
  %tobool = icmp ne double* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load double**, double*** %mtx.addr, align 8
  %arrayidx2 = getelementptr inbounds double*, double** %4, i64 %idxprom1
  %5 = load double*, double** %arrayidx2, align 8
  call void @FreeDoubleVec(double* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load double**, double*** %mtx.addr, align 8
  %8 = bitcast double** %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define float*** @AllocateFloatCub(i32 %ll1, i32 %ll2, i32 %ll3) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %ll2.addr = alloca i32, align 4
  %ll3.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cub = alloca float***, align 8
  store i32 %ll1, i32* %ll1.addr, align 4
  store i32 %ll2, i32* %ll2.addr, align 4
  store i32 %ll3, i32* %ll3.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to float***
  store float*** %1, float**** %cub, align 8
  %2 = load float***, float**** %cub, align 8
  %tobool = icmp ne float*** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %ll1.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %ll2.addr, align 4
  %7 = load i32, i32* %ll3.addr, align 4
  %call3 = call float** @AllocateFloatMtx(i32 %6, i32 %7)
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load float***, float**** %cub, align 8
  %arrayidx = getelementptr inbounds float**, float*** %9, i64 %idxprom
  store float** %call3, float*** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %ll1.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load float***, float**** %cub, align 8
  %arrayidx5 = getelementptr inbounds float**, float*** %12, i64 %idxprom4
  store float** null, float*** %arrayidx5, align 8
  %13 = load float***, float**** %cub, align 8
  ret float*** %13
}

; Function Attrs: nounwind uwtable
define void @FreeFloatCub(float*** %cub) #0 {
entry:
  %cub.addr = alloca float***, align 8
  %i = alloca i32, align 4
  store float*** %cub, float**** %cub.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load float***, float**** %cub.addr, align 8
  %arrayidx = getelementptr inbounds float**, float*** %1, i64 %idxprom
  %2 = load float**, float*** %arrayidx, align 8
  %tobool = icmp ne float** %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load float***, float**** %cub.addr, align 8
  %arrayidx2 = getelementptr inbounds float**, float*** %4, i64 %idxprom1
  %5 = load float**, float*** %arrayidx2, align 8
  call void @FreeFloatMtx(float** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load float***, float**** %cub.addr, align 8
  %8 = bitcast float*** %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define double*** @AllocateDoubleCub(i32 %ll1, i32 %ll2, i32 %ll3) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %ll2.addr = alloca i32, align 4
  %ll3.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cub = alloca double***, align 8
  store i32 %ll1, i32* %ll1.addr, align 4
  store i32 %ll2, i32* %ll2.addr, align 4
  store i32 %ll3, i32* %ll3.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to double***
  store double*** %1, double**** %cub, align 8
  %2 = load double***, double**** %cub, align 8
  %tobool = icmp ne double*** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %ll1.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %ll2.addr, align 4
  %7 = load i32, i32* %ll3.addr, align 4
  %call3 = call double** @AllocateDoubleMtx(i32 %6, i32 %7)
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load double***, double**** %cub, align 8
  %arrayidx = getelementptr inbounds double**, double*** %9, i64 %idxprom
  store double** %call3, double*** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %ll1.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load double***, double**** %cub, align 8
  %arrayidx5 = getelementptr inbounds double**, double*** %12, i64 %idxprom4
  store double** null, double*** %arrayidx5, align 8
  %13 = load double***, double**** %cub, align 8
  ret double*** %13
}

; Function Attrs: nounwind uwtable
define void @FreeDoubleCub(double*** %cub) #0 {
entry:
  %cub.addr = alloca double***, align 8
  %i = alloca i32, align 4
  store double*** %cub, double**** %cub.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load double***, double**** %cub.addr, align 8
  %arrayidx = getelementptr inbounds double**, double*** %1, i64 %idxprom
  %2 = load double**, double*** %arrayidx, align 8
  %tobool = icmp ne double** %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load double***, double**** %cub.addr, align 8
  %arrayidx2 = getelementptr inbounds double**, double*** %4, i64 %idxprom1
  %5 = load double**, double*** %arrayidx2, align 8
  call void @FreeDoubleMtx(double** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load double***, double**** %cub.addr, align 8
  %8 = bitcast double*** %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i16* @AllocateShortVec(i32 %ll1) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %vec = alloca i16*, align 8
  store i32 %ll1, i32* %ll1.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 2) #4
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** %vec, align 8
  %2 = load i16*, i16** %vec, align 8
  %cmp = icmp eq i16* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %ll1.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i32 %4)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i16*, i16** %vec, align 8
  ret i16* %5
}

; Function Attrs: nounwind uwtable
define void @FreeShortVec(i16* %vec) #0 {
entry:
  %vec.addr = alloca i16*, align 8
  store i16* %vec, i16** %vec.addr, align 8
  %0 = load i16*, i16** %vec.addr, align 8
  %1 = bitcast i16* %0 to i8*
  call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i16** @AllocateShortMtx(i32 %ll1, i32 %ll2) #0 {
entry:
  %ll1.addr = alloca i32, align 4
  %ll2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %mtx = alloca i16**, align 8
  store i32 %ll1, i32* %ll1.addr, align 4
  store i32 %ll2, i32* %ll2.addr, align 4
  %0 = load i32, i32* %ll1.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to i16**
  store i16** %1, i16*** %mtx, align 8
  %2 = load i16**, i16*** %mtx, align 8
  %tobool = icmp ne i16** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %ll1.addr, align 4
  %5 = load i32, i32* %ll2.addr, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0), i32 %4, i32 %5)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %ll1.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %ll2.addr, align 4
  %call3 = call i16* @AllocateShortVec(i32 %8)
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i16**, i16*** %mtx, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %10, i64 %idxprom
  store i16* %call3, i16** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %ll1.addr, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load i16**, i16*** %mtx, align 8
  %arrayidx5 = getelementptr inbounds i16*, i16** %13, i64 %idxprom4
  store i16* null, i16** %arrayidx5, align 8
  %14 = load i16**, i16*** %mtx, align 8
  ret i16** %14
}

; Function Attrs: nounwind uwtable
define void @FreeShortMtx(i16** %mtx) #0 {
entry:
  %mtx.addr = alloca i16**, align 8
  %i = alloca i32, align 4
  store i16** %mtx, i16*** %mtx.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16**, i16*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %1, i64 %idxprom
  %2 = load i16*, i16** %arrayidx, align 8
  %tobool = icmp ne i16* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i16**, i16*** %mtx.addr, align 8
  %arrayidx2 = getelementptr inbounds i16*, i16** %4, i64 %idxprom1
  %5 = load i16*, i16** %arrayidx2, align 8
  %6 = bitcast i16* %5 to i8*
  call void @free(i8* %6) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i16**, i16*** %mtx.addr, align 8
  %9 = bitcast i16** %8 to i8*
  call void @free(i8* %9) #4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
