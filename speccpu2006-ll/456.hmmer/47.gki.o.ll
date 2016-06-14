; ModuleID = 'gki.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [6 x i8] c"gki.c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Total keys:        %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Hash table size:   %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Average occupancy: %.1f\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Unoccupied slots:  %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Most in one slot:  %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Least in one slot: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"bad primelevel in gki_alloc()\00", align 1
@gki_primes = internal global [4 x i32] [i32 101, i32 1009, i32 10007, i32 100003], align 16

; Function Attrs: nounwind uwtable
define %struct.GKI* @GKIInit() #0 {
entry:
  %hash = alloca %struct.GKI*, align 8
  %call = call %struct.GKI* @gki_alloc(i32 0)
  store %struct.GKI* %call, %struct.GKI** %hash, align 8
  %0 = load %struct.GKI*, %struct.GKI** %hash, align 8
  ret %struct.GKI* %0
}

; Function Attrs: nounwind uwtable
define internal %struct.GKI* @gki_alloc(i32 %primelevel) #0 {
entry:
  %primelevel.addr = alloca i32, align 4
  %hash = alloca %struct.GKI*, align 8
  %i = alloca i32, align 4
  store i32 %primelevel, i32* %primelevel.addr, align 4
  %0 = load i32, i32* %primelevel.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %primelevel.addr, align 4
  %cmp1 = icmp sge i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 294, i64 24)
  %2 = bitcast i8* %call to %struct.GKI*
  store %struct.GKI* %2, %struct.GKI** %hash, align 8
  %3 = load i32, i32* %primelevel.addr, align 4
  %4 = load %struct.GKI*, %struct.GKI** %hash, align 8
  %primelevel2 = getelementptr inbounds %struct.GKI, %struct.GKI* %4, i32 0, i32 1
  store i32 %3, i32* %primelevel2, align 4
  %5 = load %struct.GKI*, %struct.GKI** %hash, align 8
  %primelevel3 = getelementptr inbounds %struct.GKI, %struct.GKI* %5, i32 0, i32 1
  %6 = load i32, i32* %primelevel3, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @gki_primes, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load %struct.GKI*, %struct.GKI** %hash, align 8
  %nhash = getelementptr inbounds %struct.GKI, %struct.GKI* %8, i32 0, i32 2
  store i32 %7, i32* %nhash, align 4
  %9 = load %struct.GKI*, %struct.GKI** %hash, align 8
  %nhash4 = getelementptr inbounds %struct.GKI, %struct.GKI* %9, i32 0, i32 2
  %10 = load i32, i32* %nhash4, align 4
  %conv = sext i32 %10 to i64
  %mul = mul i64 24, %conv
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 298, i64 %mul)
  %11 = bitcast i8* %call5 to %struct.gki_elem**
  %12 = load %struct.GKI*, %struct.GKI** %hash, align 8
  %table = getelementptr inbounds %struct.GKI, %struct.GKI* %12, i32 0, i32 0
  store %struct.gki_elem** %11, %struct.gki_elem*** %table, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.GKI*, %struct.GKI** %hash, align 8
  %nhash6 = getelementptr inbounds %struct.GKI, %struct.GKI* %14, i32 0, i32 2
  %15 = load i32, i32* %nhash6, align 4
  %cmp7 = icmp slt i32 %13, %15
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.GKI*, %struct.GKI** %hash, align 8
  %table10 = getelementptr inbounds %struct.GKI, %struct.GKI* %17, i32 0, i32 0
  %18 = load %struct.gki_elem**, %struct.gki_elem*** %table10, align 8
  %arrayidx11 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %18, i64 %idxprom9
  store %struct.gki_elem* null, %struct.gki_elem** %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.GKI*, %struct.GKI** %hash, align 8
  %nkeys = getelementptr inbounds %struct.GKI, %struct.GKI* %20, i32 0, i32 3
  store i32 0, i32* %nkeys, align 4
  %21 = load %struct.GKI*, %struct.GKI** %hash, align 8
  ret %struct.GKI* %21
}

; Function Attrs: nounwind uwtable
define void @GKIFree(%struct.GKI* %hash) #0 {
entry:
  %hash.addr = alloca %struct.GKI*, align 8
  %ptr = alloca %struct.gki_elem*, align 8
  %i = alloca i32, align 4
  store %struct.GKI* %hash, %struct.GKI** %hash.addr, align 8
  %0 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %cmp = icmp eq %struct.GKI* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nhash = getelementptr inbounds %struct.GKI, %struct.GKI* %2, i32 0, i32 2
  %3 = load i32, i32* %nhash, align 4
  %cmp1 = icmp slt i32 %1, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table = getelementptr inbounds %struct.GKI, %struct.GKI* %5, i32 0, i32 0
  %6 = load %struct.gki_elem**, %struct.gki_elem*** %table, align 8
  %arrayidx = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %6, i64 %idxprom
  %7 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx, align 8
  %cmp2 = icmp ne %struct.gki_elem* %7, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table4 = getelementptr inbounds %struct.GKI, %struct.GKI* %9, i32 0, i32 0
  %10 = load %struct.gki_elem**, %struct.gki_elem*** %table4, align 8
  %arrayidx5 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %10, i64 %idxprom3
  %11 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx5, align 8
  %nxt = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %11, i32 0, i32 2
  %12 = load %struct.gki_elem*, %struct.gki_elem** %nxt, align 8
  store %struct.gki_elem* %12, %struct.gki_elem** %ptr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table7 = getelementptr inbounds %struct.GKI, %struct.GKI* %14, i32 0, i32 0
  %15 = load %struct.gki_elem**, %struct.gki_elem*** %table7, align 8
  %arrayidx8 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %15, i64 %idxprom6
  %16 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx8, align 8
  %key = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %16, i32 0, i32 0
  %17 = load i8*, i8** %key, align 8
  %cmp9 = icmp ne i8* %17, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %while.body
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table12 = getelementptr inbounds %struct.GKI, %struct.GKI* %19, i32 0, i32 0
  %20 = load %struct.gki_elem**, %struct.gki_elem*** %table12, align 8
  %arrayidx13 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %20, i64 %idxprom11
  %21 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx13, align 8
  %key14 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %21, i32 0, i32 0
  %22 = load i8*, i8** %key14, align 8
  call void @free(i8* %22) #4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %while.body
  %23 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table17 = getelementptr inbounds %struct.GKI, %struct.GKI* %24, i32 0, i32 0
  %25 = load %struct.gki_elem**, %struct.gki_elem*** %table17, align 8
  %arrayidx18 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %25, i64 %idxprom16
  %26 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx18, align 8
  %27 = bitcast %struct.gki_elem* %26 to i8*
  call void @free(i8* %27) #4
  %28 = load %struct.gki_elem*, %struct.gki_elem** %ptr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %29 to i64
  %30 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table20 = getelementptr inbounds %struct.GKI, %struct.GKI* %30, i32 0, i32 0
  %31 = load %struct.gki_elem**, %struct.gki_elem*** %table20, align 8
  %arrayidx21 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %31, i64 %idxprom19
  store %struct.gki_elem* %28, %struct.gki_elem** %arrayidx21, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table22 = getelementptr inbounds %struct.GKI, %struct.GKI* %33, i32 0, i32 0
  %34 = load %struct.gki_elem**, %struct.gki_elem*** %table22, align 8
  %35 = bitcast %struct.gki_elem** %34 to i8*
  call void @free(i8* %35) #4
  %36 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %37 = bitcast %struct.GKI* %36 to i8*
  call void @free(i8* %37) #4
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @GKIStoreKey(%struct.GKI* %hash, i8* %key) #0 {
entry:
  %hash.addr = alloca %struct.GKI*, align 8
  %key.addr = alloca i8*, align 8
  %val = alloca i32, align 4
  %ptr = alloca %struct.gki_elem*, align 8
  store %struct.GKI* %hash, %struct.GKI** %hash.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @gki_hashvalue(%struct.GKI* %0, i8* %1)
  store i32 %call, i32* %val, align 4
  %2 = load i32, i32* %val, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table = getelementptr inbounds %struct.GKI, %struct.GKI* %3, i32 0, i32 0
  %4 = load %struct.gki_elem**, %struct.gki_elem*** %table, align 8
  %arrayidx = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %4, i64 %idxprom
  %5 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx, align 8
  store %struct.gki_elem* %5, %struct.gki_elem** %ptr, align 8
  %call1 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 189, i64 24)
  %6 = bitcast i8* %call1 to %struct.gki_elem*
  %7 = load i32, i32* %val, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table3 = getelementptr inbounds %struct.GKI, %struct.GKI* %8, i32 0, i32 0
  %9 = load %struct.gki_elem**, %struct.gki_elem*** %table3, align 8
  %arrayidx4 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %9, i64 %idxprom2
  store %struct.gki_elem* %6, %struct.gki_elem** %arrayidx4, align 8
  %10 = load i8*, i8** %key.addr, align 8
  %call5 = call i64 @strlen(i8* %10) #5
  %add = add i64 %call5, 1
  %mul = mul i64 1, %add
  %call6 = call i8* @sre_malloc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 190, i64 %mul)
  %11 = load i32, i32* %val, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table8 = getelementptr inbounds %struct.GKI, %struct.GKI* %12, i32 0, i32 0
  %13 = load %struct.gki_elem**, %struct.gki_elem*** %table8, align 8
  %arrayidx9 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %13, i64 %idxprom7
  %14 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx9, align 8
  %key10 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %14, i32 0, i32 0
  store i8* %call6, i8** %key10, align 8
  %15 = load i32, i32* %val, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table12 = getelementptr inbounds %struct.GKI, %struct.GKI* %16, i32 0, i32 0
  %17 = load %struct.gki_elem**, %struct.gki_elem*** %table12, align 8
  %arrayidx13 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %17, i64 %idxprom11
  %18 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx13, align 8
  %key14 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %18, i32 0, i32 0
  %19 = load i8*, i8** %key14, align 8
  %20 = load i8*, i8** %key.addr, align 8
  %call15 = call i8* @strcpy(i8* %19, i8* %20) #4
  %21 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nkeys = getelementptr inbounds %struct.GKI, %struct.GKI* %21, i32 0, i32 3
  %22 = load i32, i32* %nkeys, align 4
  %23 = load i32, i32* %val, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table17 = getelementptr inbounds %struct.GKI, %struct.GKI* %24, i32 0, i32 0
  %25 = load %struct.gki_elem**, %struct.gki_elem*** %table17, align 8
  %arrayidx18 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %25, i64 %idxprom16
  %26 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx18, align 8
  %idx = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %26, i32 0, i32 1
  store i32 %22, i32* %idx, align 4
  %27 = load %struct.gki_elem*, %struct.gki_elem** %ptr, align 8
  %28 = load i32, i32* %val, align 4
  %idxprom19 = sext i32 %28 to i64
  %29 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table20 = getelementptr inbounds %struct.GKI, %struct.GKI* %29, i32 0, i32 0
  %30 = load %struct.gki_elem**, %struct.gki_elem*** %table20, align 8
  %arrayidx21 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %30, i64 %idxprom19
  %31 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx21, align 8
  %nxt = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %31, i32 0, i32 2
  store %struct.gki_elem* %27, %struct.gki_elem** %nxt, align 8
  %32 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nkeys22 = getelementptr inbounds %struct.GKI, %struct.GKI* %32, i32 0, i32 3
  %33 = load i32, i32* %nkeys22, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %nkeys22, align 4
  %34 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nkeys23 = getelementptr inbounds %struct.GKI, %struct.GKI* %34, i32 0, i32 3
  %35 = load i32, i32* %nkeys23, align 4
  %36 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nhash = getelementptr inbounds %struct.GKI, %struct.GKI* %36, i32 0, i32 2
  %37 = load i32, i32* %nhash, align 4
  %mul24 = mul nsw i32 3, %37
  %cmp = icmp sgt i32 %35, %mul24
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %38 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %primelevel = getelementptr inbounds %struct.GKI, %struct.GKI* %38, i32 0, i32 1
  %39 = load i32, i32* %primelevel, align 4
  %cmp25 = icmp slt i32 %39, 3
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %40 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %call26 = call i32 @gki_upsize(%struct.GKI* %40)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %41 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nkeys27 = getelementptr inbounds %struct.GKI, %struct.GKI* %41, i32 0, i32 3
  %42 = load i32, i32* %nkeys27, align 4
  %sub = sub nsw i32 %42, 1
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define internal i32 @gki_hashvalue(%struct.GKI* %hash, i8* %key) #0 {
entry:
  %hash.addr = alloca %struct.GKI*, align 8
  %key.addr = alloca i8*, align 8
  %val = alloca i32, align 4
  store %struct.GKI* %hash, %struct.GKI** %hash.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 0, i32* %val, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %key.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %val, align 4
  %mul = mul nsw i32 128, %2
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %add = add nsw i32 %mul, %conv2
  store i32 %add, i32* %val, align 4
  %5 = load i8*, i8** %key.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %key.addr, align 8
  %6 = load i8, i8* %incdec.ptr, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %val, align 4
  %8 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nhash = getelementptr inbounds %struct.GKI, %struct.GKI* %8, i32 0, i32 2
  %9 = load i32, i32* %nhash, align 4
  %rem = srem i32 %7, %9
  store i32 %rem, i32* %val, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  %10 = load i32, i32* %val, align 4
  %mul6 = mul nsw i32 128, %10
  %11 = load i8*, i8** %key.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv7 = sext i8 %12 to i32
  %add8 = add nsw i32 %mul6, %conv7
  %13 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nhash9 = getelementptr inbounds %struct.GKI, %struct.GKI* %13, i32 0, i32 2
  %14 = load i32, i32* %nhash9, align 4
  %rem10 = srem i32 %add8, %14
  store i32 %rem10, i32* %val, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i8*, i8** %key.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr11, i8** %key.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %16 = load i32, i32* %val, align 4
  ret i32 %16
}

declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gki_upsize(%struct.GKI* %old) #0 {
entry:
  %retval = alloca i32, align 4
  %old.addr = alloca %struct.GKI*, align 8
  %new = alloca %struct.GKI*, align 8
  %i = alloca i32, align 4
  %optr = alloca %struct.gki_elem*, align 8
  %nptr = alloca %struct.gki_elem*, align 8
  %val = alloca i32, align 4
  store %struct.GKI* %old, %struct.GKI** %old.addr, align 8
  %0 = load %struct.GKI*, %struct.GKI** %old.addr, align 8
  %primelevel = getelementptr inbounds %struct.GKI, %struct.GKI* %0, i32 0, i32 1
  %1 = load i32, i32* %primelevel, align 4
  %cmp = icmp sge i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.GKI*, %struct.GKI** %old.addr, align 8
  %primelevel1 = getelementptr inbounds %struct.GKI, %struct.GKI* %2, i32 0, i32 1
  %3 = load i32, i32* %primelevel1, align 4
  %add = add nsw i32 %3, 1
  %call = call %struct.GKI* @gki_alloc(i32 %add)
  store %struct.GKI* %call, %struct.GKI** %new, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.GKI*, %struct.GKI** %old.addr, align 8
  %nhash = getelementptr inbounds %struct.GKI, %struct.GKI* %5, i32 0, i32 2
  %6 = load i32, i32* %nhash, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.GKI*, %struct.GKI** %old.addr, align 8
  %table = getelementptr inbounds %struct.GKI, %struct.GKI* %8, i32 0, i32 0
  %9 = load %struct.gki_elem**, %struct.gki_elem*** %table, align 8
  %arrayidx = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %9, i64 %idxprom
  %10 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx, align 8
  store %struct.gki_elem* %10, %struct.gki_elem** %optr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %11 = load %struct.gki_elem*, %struct.gki_elem** %optr, align 8
  %cmp3 = icmp ne %struct.gki_elem* %11, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.GKI*, %struct.GKI** %new, align 8
  %13 = load %struct.gki_elem*, %struct.gki_elem** %optr, align 8
  %key = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %13, i32 0, i32 0
  %14 = load i8*, i8** %key, align 8
  %call4 = call i32 @gki_hashvalue(%struct.GKI* %12, i8* %14)
  store i32 %call4, i32* %val, align 4
  %15 = load i32, i32* %val, align 4
  %idxprom5 = sext i32 %15 to i64
  %16 = load %struct.GKI*, %struct.GKI** %new, align 8
  %table6 = getelementptr inbounds %struct.GKI, %struct.GKI* %16, i32 0, i32 0
  %17 = load %struct.gki_elem**, %struct.gki_elem*** %table6, align 8
  %arrayidx7 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %17, i64 %idxprom5
  %18 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx7, align 8
  store %struct.gki_elem* %18, %struct.gki_elem** %nptr, align 8
  %19 = load %struct.gki_elem*, %struct.gki_elem** %optr, align 8
  %20 = load i32, i32* %val, align 4
  %idxprom8 = sext i32 %20 to i64
  %21 = load %struct.GKI*, %struct.GKI** %new, align 8
  %table9 = getelementptr inbounds %struct.GKI, %struct.GKI* %21, i32 0, i32 0
  %22 = load %struct.gki_elem**, %struct.gki_elem*** %table9, align 8
  %arrayidx10 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %22, i64 %idxprom8
  store %struct.gki_elem* %19, %struct.gki_elem** %arrayidx10, align 8
  %23 = load %struct.gki_elem*, %struct.gki_elem** %optr, align 8
  %nxt = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %23, i32 0, i32 2
  %24 = load %struct.gki_elem*, %struct.gki_elem** %nxt, align 8
  store %struct.gki_elem* %24, %struct.gki_elem** %optr, align 8
  %25 = load %struct.gki_elem*, %struct.gki_elem** %nptr, align 8
  %26 = load i32, i32* %val, align 4
  %idxprom11 = sext i32 %26 to i64
  %27 = load %struct.GKI*, %struct.GKI** %new, align 8
  %table12 = getelementptr inbounds %struct.GKI, %struct.GKI* %27, i32 0, i32 0
  %28 = load %struct.gki_elem**, %struct.gki_elem*** %table12, align 8
  %arrayidx13 = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %28, i64 %idxprom11
  %29 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx13, align 8
  %nxt14 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %29, i32 0, i32 2
  store %struct.gki_elem* %25, %struct.gki_elem** %nxt14, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.GKI*, %struct.GKI** %old.addr, align 8
  %table15 = getelementptr inbounds %struct.GKI, %struct.GKI* %31, i32 0, i32 0
  %32 = load %struct.gki_elem**, %struct.gki_elem*** %table15, align 8
  %33 = bitcast %struct.gki_elem** %32 to i8*
  call void @free(i8* %33) #4
  %34 = load %struct.GKI*, %struct.GKI** %new, align 8
  %primelevel16 = getelementptr inbounds %struct.GKI, %struct.GKI* %34, i32 0, i32 1
  %35 = load i32, i32* %primelevel16, align 4
  %36 = load %struct.GKI*, %struct.GKI** %old.addr, align 8
  %primelevel17 = getelementptr inbounds %struct.GKI, %struct.GKI* %36, i32 0, i32 1
  store i32 %35, i32* %primelevel17, align 4
  %37 = load %struct.GKI*, %struct.GKI** %new, align 8
  %nhash18 = getelementptr inbounds %struct.GKI, %struct.GKI* %37, i32 0, i32 2
  %38 = load i32, i32* %nhash18, align 4
  %39 = load %struct.GKI*, %struct.GKI** %old.addr, align 8
  %nhash19 = getelementptr inbounds %struct.GKI, %struct.GKI* %39, i32 0, i32 2
  store i32 %38, i32* %nhash19, align 4
  %40 = load %struct.GKI*, %struct.GKI** %new, align 8
  %table20 = getelementptr inbounds %struct.GKI, %struct.GKI* %40, i32 0, i32 0
  %41 = load %struct.gki_elem**, %struct.gki_elem*** %table20, align 8
  %42 = load %struct.GKI*, %struct.GKI** %old.addr, align 8
  %table21 = getelementptr inbounds %struct.GKI, %struct.GKI* %42, i32 0, i32 0
  store %struct.gki_elem** %41, %struct.gki_elem*** %table21, align 8
  %43 = load %struct.GKI*, %struct.GKI** %new, align 8
  %44 = bitcast %struct.GKI* %43 to i8*
  call void @free(i8* %44) #4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define i32 @GKIKeyIndex(%struct.GKI* %hash, i8* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %hash.addr = alloca %struct.GKI*, align 8
  %key.addr = alloca i8*, align 8
  %ptr = alloca %struct.gki_elem*, align 8
  %val = alloca i32, align 4
  store %struct.GKI* %hash, %struct.GKI** %hash.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @gki_hashvalue(%struct.GKI* %0, i8* %1)
  store i32 %call, i32* %val, align 4
  %2 = load i32, i32* %val, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table = getelementptr inbounds %struct.GKI, %struct.GKI* %3, i32 0, i32 0
  %4 = load %struct.gki_elem**, %struct.gki_elem*** %table, align 8
  %arrayidx = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %4, i64 %idxprom
  %5 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx, align 8
  store %struct.gki_elem* %5, %struct.gki_elem** %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.gki_elem*, %struct.gki_elem** %ptr, align 8
  %cmp = icmp ne %struct.gki_elem* %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %key.addr, align 8
  %8 = load %struct.gki_elem*, %struct.gki_elem** %ptr, align 8
  %key1 = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %8, i32 0, i32 0
  %9 = load i8*, i8** %key1, align 8
  %call2 = call i32 @strcmp(i8* %7, i8* %9) #5
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.gki_elem*, %struct.gki_elem** %ptr, align 8
  %idx = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %10, i32 0, i32 1
  %11 = load i32, i32* %idx, align 4
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.gki_elem*, %struct.gki_elem** %ptr, align 8
  %nxt = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %12, i32 0, i32 2
  %13 = load %struct.gki_elem*, %struct.gki_elem** %nxt, align 8
  store %struct.gki_elem* %13, %struct.gki_elem** %ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @GKIStatus(%struct.GKI* %hash) #0 {
entry:
  %hash.addr = alloca %struct.GKI*, align 8
  %ptr = alloca %struct.gki_elem*, align 8
  %i = alloca i32, align 4
  %nkeys = alloca i32, align 4
  %nempty = alloca i32, align 4
  %maxkeys = alloca i32, align 4
  %minkeys = alloca i32, align 4
  store %struct.GKI* %hash, %struct.GKI** %hash.addr, align 8
  store i32 0, i32* %nempty, align 4
  store i32 -1, i32* %maxkeys, align 4
  store i32 2147483647, i32* %minkeys, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nhash = getelementptr inbounds %struct.GKI, %struct.GKI* %1, i32 0, i32 2
  %2 = load i32, i32* %nhash, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %nkeys, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %table = getelementptr inbounds %struct.GKI, %struct.GKI* %4, i32 0, i32 0
  %5 = load %struct.gki_elem**, %struct.gki_elem*** %table, align 8
  %arrayidx = getelementptr inbounds %struct.gki_elem*, %struct.gki_elem** %5, i64 %idxprom
  %6 = load %struct.gki_elem*, %struct.gki_elem** %arrayidx, align 8
  store %struct.gki_elem* %6, %struct.gki_elem** %ptr, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.gki_elem*, %struct.gki_elem** %ptr, align 8
  %cmp2 = icmp ne %struct.gki_elem* %7, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %nkeys, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %nkeys, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %9 = load %struct.gki_elem*, %struct.gki_elem** %ptr, align 8
  %nxt = getelementptr inbounds %struct.gki_elem, %struct.gki_elem* %9, i32 0, i32 2
  %10 = load %struct.gki_elem*, %struct.gki_elem** %nxt, align 8
  store %struct.gki_elem* %10, %struct.gki_elem** %ptr, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %11 = load i32, i32* %nkeys, align 4
  %cmp4 = icmp eq i32 %11, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %12 = load i32, i32* %nempty, align 4
  %inc5 = add nsw i32 %12, 1
  store i32 %inc5, i32* %nempty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %13 = load i32, i32* %nkeys, align 4
  %14 = load i32, i32* %maxkeys, align 4
  %cmp6 = icmp sgt i32 %13, %14
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %15 = load i32, i32* %nkeys, align 4
  store i32 %15, i32* %maxkeys, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %16 = load i32, i32* %nkeys, align 4
  %17 = load i32, i32* %minkeys, align 4
  %cmp9 = icmp slt i32 %16, %17
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %18 = load i32, i32* %nkeys, align 4
  store i32 %18, i32* %minkeys, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.end.11
  %19 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %20 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nkeys15 = getelementptr inbounds %struct.GKI, %struct.GKI* %20, i32 0, i32 3
  %21 = load i32, i32* %nkeys15, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 %21)
  %22 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nhash16 = getelementptr inbounds %struct.GKI, %struct.GKI* %22, i32 0, i32 2
  %23 = load i32, i32* %nhash16, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %23)
  %24 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nkeys18 = getelementptr inbounds %struct.GKI, %struct.GKI* %24, i32 0, i32 3
  %25 = load i32, i32* %nkeys18, align 4
  %conv = sitofp i32 %25 to float
  %26 = load %struct.GKI*, %struct.GKI** %hash.addr, align 8
  %nhash19 = getelementptr inbounds %struct.GKI, %struct.GKI* %26, i32 0, i32 2
  %27 = load i32, i32* %nhash19, align 4
  %conv20 = sitofp i32 %27 to float
  %div = fdiv float %conv, %conv20
  %conv21 = fpext float %div to double
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), double %conv21)
  %28 = load i32, i32* %nempty, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 %28)
  %29 = load i32, i32* %maxkeys, align 4
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32 %29)
  %30 = load i32, i32* %minkeys, align 4
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 %30)
  ret void
}

declare i32 @printf(i8*, ...) #2

declare void @Die(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
