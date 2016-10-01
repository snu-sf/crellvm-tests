; ModuleID = './MultiSource.Benchmarks.Prolangs-C/186.TimberWolfMC.hash.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i8*, i32, %struct.hash* }

@hashtab = external global %struct.hash**, align 8
@netctr = external global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define void @maketabl() #0 {
entry:
  %i = alloca i32, align 4
  %call = call noalias i8* @malloc(i64 8072) #3
  %0 = bitcast i8* %call to %struct.hash**
  store %struct.hash** %0, %struct.hash*** @hashtab, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 1009
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.hash**, %struct.hash*** @hashtab, align 8
  %arrayidx = getelementptr inbounds %struct.hash*, %struct.hash** %3, i64 %idxprom
  store %struct.hash* null, %struct.hash** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @delHtab() #0 {
entry:
  %i = alloca i32, align 4
  %hptr = alloca %struct.hash*, align 8
  %zapptr = alloca %struct.hash*, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1009
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.hash**, %struct.hash*** @hashtab, align 8
  %arrayidx = getelementptr inbounds %struct.hash*, %struct.hash** %2, i64 %idxprom
  %3 = load %struct.hash*, %struct.hash** %arrayidx, align 8
  store %struct.hash* %3, %struct.hash** %hptr, align 8
  %4 = load %struct.hash*, %struct.hash** %hptr, align 8
  %cmp1 = icmp ne %struct.hash* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.hash*, %struct.hash** %hptr, align 8
  store %struct.hash* %5, %struct.hash** %zapptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hnext = getelementptr inbounds %struct.hash, %struct.hash* %6, i32 0, i32 2
  %7 = load %struct.hash*, %struct.hash** %hnext, align 8
  %cmp2 = icmp ne %struct.hash* %7, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hnext3 = getelementptr inbounds %struct.hash, %struct.hash* %8, i32 0, i32 2
  %9 = load %struct.hash*, %struct.hash** %hnext3, align 8
  store %struct.hash* %9, %struct.hash** %hptr, align 8
  %10 = load %struct.hash*, %struct.hash** %zapptr, align 8
  %11 = bitcast %struct.hash* %10 to i8*
  call void @free(i8* %11) #3
  %12 = load %struct.hash*, %struct.hash** %hptr, align 8
  store %struct.hash* %12, %struct.hash** %zapptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct.hash*, %struct.hash** %hptr, align 8
  %14 = bitcast %struct.hash* %13 to i8*
  call void @free(i8* %14) #3
  br label %if.end

if.end:                                           ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.hash**, %struct.hash*** @hashtab, align 8
  %17 = bitcast %struct.hash** %16 to i8*
  call void @free(i8* %17) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @addhash(i8* %hname) #0 {
entry:
  %retval = alloca i32, align 4
  %hname.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %hptr = alloca %struct.hash*, align 8
  %hsum = alloca i32, align 4
  store i8* %hname, i8** %hname.addr, align 8
  store i32 0, i32* %hsum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i8*, i8** %hname.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %cmp = icmp ult i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %hname.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %5 = load i32, i32* %hsum, align 4
  %add = add i32 %5, %conv2
  store i32 %add, i32* %hsum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %hsum, align 4
  %rem = urem i32 %7, 1009
  store i32 %rem, i32* %hsum, align 4
  %8 = load i32, i32* %hsum, align 4
  %idxprom3 = zext i32 %8 to i64
  %9 = load %struct.hash**, %struct.hash*** @hashtab, align 8
  %arrayidx4 = getelementptr inbounds %struct.hash*, %struct.hash** %9, i64 %idxprom3
  %10 = load %struct.hash*, %struct.hash** %arrayidx4, align 8
  store %struct.hash* %10, %struct.hash** %hptr, align 8
  %cmp5 = icmp eq %struct.hash* %10, null
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %call7 = call noalias i8* @malloc(i64 24) #3
  %11 = bitcast i8* %call7 to %struct.hash*
  %12 = load i32, i32* %hsum, align 4
  %idxprom8 = zext i32 %12 to i64
  %13 = load %struct.hash**, %struct.hash*** @hashtab, align 8
  %arrayidx9 = getelementptr inbounds %struct.hash*, %struct.hash** %13, i64 %idxprom8
  store %struct.hash* %11, %struct.hash** %arrayidx9, align 8
  store %struct.hash* %11, %struct.hash** %hptr, align 8
  %14 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hnext = getelementptr inbounds %struct.hash, %struct.hash* %14, i32 0, i32 2
  store %struct.hash* null, %struct.hash** %hnext, align 8
  %15 = load i32, i32* @netctr, align 4
  %inc10 = add nsw i32 %15, 1
  store i32 %inc10, i32* @netctr, align 4
  %16 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hnum = getelementptr inbounds %struct.hash, %struct.hash* %16, i32 0, i32 1
  store i32 %inc10, i32* %hnum, align 4
  %17 = load i8*, i8** %hname.addr, align 8
  %call11 = call i64 @strlen(i8* %17) #4
  %add12 = add i64 %call11, 1
  %mul = mul i64 %add12, 1
  %call13 = call noalias i8* @malloc(i64 %mul) #3
  %18 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hname14 = getelementptr inbounds %struct.hash, %struct.hash* %18, i32 0, i32 0
  store i8* %call13, i8** %hname14, align 8
  %19 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hname15 = getelementptr inbounds %struct.hash, %struct.hash* %19, i32 0, i32 0
  %20 = load i8*, i8** %hname15, align 8
  %21 = load i8*, i8** %hname.addr, align 8
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %21) #3
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  br label %for.cond.17

for.cond.17:                                      ; preds = %if.end.41, %if.else
  %22 = load i8*, i8** %hname.addr, align 8
  %23 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hname18 = getelementptr inbounds %struct.hash, %struct.hash* %23, i32 0, i32 0
  %24 = load i8*, i8** %hname18, align 8
  %call19 = call i32 @strcmp(i8* %22, i8* %24) #4
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %for.cond.17
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.cond.17
  %25 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hnext23 = getelementptr inbounds %struct.hash, %struct.hash* %25, i32 0, i32 2
  %26 = load %struct.hash*, %struct.hash** %hnext23, align 8
  %cmp24 = icmp eq %struct.hash* %26, null
  br i1 %cmp24, label %if.then.26, label %if.else.39

if.then.26:                                       ; preds = %if.end
  %call27 = call noalias i8* @malloc(i64 24) #3
  %27 = bitcast i8* %call27 to %struct.hash*
  %28 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hnext28 = getelementptr inbounds %struct.hash, %struct.hash* %28, i32 0, i32 2
  store %struct.hash* %27, %struct.hash** %hnext28, align 8
  store %struct.hash* %27, %struct.hash** %hptr, align 8
  %29 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hnext29 = getelementptr inbounds %struct.hash, %struct.hash* %29, i32 0, i32 2
  store %struct.hash* null, %struct.hash** %hnext29, align 8
  %30 = load i32, i32* @netctr, align 4
  %inc30 = add nsw i32 %30, 1
  store i32 %inc30, i32* @netctr, align 4
  %31 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hnum31 = getelementptr inbounds %struct.hash, %struct.hash* %31, i32 0, i32 1
  store i32 %inc30, i32* %hnum31, align 4
  %32 = load i8*, i8** %hname.addr, align 8
  %call32 = call i64 @strlen(i8* %32) #4
  %add33 = add i64 %call32, 1
  %mul34 = mul i64 %add33, 1
  %call35 = call noalias i8* @malloc(i64 %mul34) #3
  %33 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hname36 = getelementptr inbounds %struct.hash, %struct.hash* %33, i32 0, i32 0
  store i8* %call35, i8** %hname36, align 8
  %34 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hname37 = getelementptr inbounds %struct.hash, %struct.hash* %34, i32 0, i32 0
  %35 = load i8*, i8** %hname37, align 8
  %36 = load i8*, i8** %hname.addr, align 8
  %call38 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %36) #3
  store i32 1, i32* %retval
  br label %return

if.else.39:                                       ; preds = %if.end
  %37 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hnext40 = getelementptr inbounds %struct.hash, %struct.hash* %37, i32 0, i32 2
  %38 = load %struct.hash*, %struct.hash** %hnext40, align 8
  store %struct.hash* %38, %struct.hash** %hptr, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39
  br label %for.cond.17

return:                                           ; preds = %if.then.26, %if.then.22, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @hashfind(i8* %hname) #0 {
entry:
  %retval = alloca i32, align 4
  %hname.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %hptr = alloca %struct.hash*, align 8
  %hsum = alloca i32, align 4
  store i8* %hname, i8** %hname.addr, align 8
  store i32 0, i32* %hsum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i8*, i8** %hname.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %cmp = icmp ult i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %hname.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %5 = load i32, i32* %hsum, align 4
  %add = add i32 %5, %conv2
  store i32 %add, i32* %hsum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %hsum, align 4
  %rem = urem i32 %7, 1009
  store i32 %rem, i32* %hsum, align 4
  %8 = load i32, i32* %hsum, align 4
  %idxprom3 = zext i32 %8 to i64
  %9 = load %struct.hash**, %struct.hash*** @hashtab, align 8
  %arrayidx4 = getelementptr inbounds %struct.hash*, %struct.hash** %9, i64 %idxprom3
  %10 = load %struct.hash*, %struct.hash** %arrayidx4, align 8
  store %struct.hash* %10, %struct.hash** %hptr, align 8
  %cmp5 = icmp eq %struct.hash* %10, null
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  br label %for.cond.7

for.cond.7:                                       ; preds = %if.end.18, %if.else
  %11 = load i8*, i8** %hname.addr, align 8
  %12 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hname8 = getelementptr inbounds %struct.hash, %struct.hash* %12, i32 0, i32 0
  %13 = load i8*, i8** %hname8, align 8
  %call9 = call i32 @strcmp(i8* %11, i8* %13) #4
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.cond.7
  %14 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hnum = getelementptr inbounds %struct.hash, %struct.hash* %14, i32 0, i32 1
  %15 = load i32, i32* %hnum, align 4
  store i32 %15, i32* %retval
  br label %return

if.end:                                           ; preds = %for.cond.7
  %16 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hnext = getelementptr inbounds %struct.hash, %struct.hash* %16, i32 0, i32 2
  %17 = load %struct.hash*, %struct.hash** %hnext, align 8
  %cmp13 = icmp eq %struct.hash* %17, null
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.else.16:                                       ; preds = %if.end
  %18 = load %struct.hash*, %struct.hash** %hptr, align 8
  %hnext17 = getelementptr inbounds %struct.hash, %struct.hash* %18, i32 0, i32 2
  %19 = load %struct.hash*, %struct.hash** %hnext17, align 8
  store %struct.hash* %19, %struct.hash** %hptr, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16
  br label %for.cond.7

return:                                           ; preds = %if.then.15, %if.then.12, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
