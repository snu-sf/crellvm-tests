; ModuleID = './MultiSource.Benchmarks.Prolangs-C/276.bison.symtab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bucket = type { %struct.bucket*, %struct.bucket*, i8*, i8*, i16, i16, i16, i16, i8 }

@symtab = common global %struct.bucket** null, align 8
@firstsymbol = common global %struct.bucket* null, align 8
@lastsymbol = common global %struct.bucket* null, align 8
@nsyms = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @hash(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %k = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  store i8* %0, i8** %cp, align 8
  store i32 0, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %k, align 4
  %shl = shl i32 %3, 1
  %4 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %xor = xor i32 %shl, %conv
  %and = and i32 %xor, 16383
  store i32 %and, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %k, align 4
  %rem = srem i32 %6, 1009
  ret i32 %rem
}

; Function Attrs: nounwind uwtable
define i8* @copys(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %cp = alloca i8*, align 8
  %result = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 1, i32* %i, align 4
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %5)
  store i8* %call, i8** %result, align 8
  %6 = load i8*, i8** %result, align 8
  %7 = load i8*, i8** %s.addr, align 8
  %call1 = call i8* @strcpy(i8* %6, i8* %7)
  %8 = load i8*, i8** %result, align 8
  ret i8* %8
}

declare i8* @mallocate(...) #1

declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @tabinit() #0 {
entry:
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 8072)
  %0 = bitcast i8* %call to %struct.bucket**
  store %struct.bucket** %0, %struct.bucket*** @symtab, align 8
  store %struct.bucket* null, %struct.bucket** @firstsymbol, align 8
  store %struct.bucket* null, %struct.bucket** @lastsymbol, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.bucket* @getsym(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %hashval = alloca i32, align 4
  %bp = alloca %struct.bucket*, align 8
  %found = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @hash(i8* %0)
  store i32 %call, i32* %hashval, align 4
  %1 = load i32, i32* %hashval, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %arrayidx = getelementptr inbounds %struct.bucket*, %struct.bucket** %2, i64 %idxprom
  %3 = load %struct.bucket*, %struct.bucket** %arrayidx, align 8
  store %struct.bucket* %3, %struct.bucket** %bp, align 8
  store i32 0, i32* %found, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %cmp = icmp ne %struct.bucket* %4, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %found, align 4
  %cmp1 = icmp eq i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %key.addr, align 8
  %8 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %tag = getelementptr inbounds %struct.bucket, %struct.bucket* %8, i32 0, i32 2
  %9 = load i8*, i8** %tag, align 8
  %call2 = call i32 @strcmp(i8* %7, i8* %9)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, i32* %found, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %link = getelementptr inbounds %struct.bucket, %struct.bucket* %10, i32 0, i32 0
  %11 = load %struct.bucket*, %struct.bucket** %link, align 8
  store %struct.bucket* %11, %struct.bucket** %bp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %found, align 4
  %cmp4 = icmp eq i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %while.end
  %13 = load i32, i32* @nsyms, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @nsyms, align 4
  %call6 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 48)
  %14 = bitcast i8* %call6 to %struct.bucket*
  store %struct.bucket* %14, %struct.bucket** %bp, align 8
  %15 = load i32, i32* %hashval, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %arrayidx8 = getelementptr inbounds %struct.bucket*, %struct.bucket** %16, i64 %idxprom7
  %17 = load %struct.bucket*, %struct.bucket** %arrayidx8, align 8
  %18 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %link9 = getelementptr inbounds %struct.bucket, %struct.bucket* %18, i32 0, i32 0
  store %struct.bucket* %17, %struct.bucket** %link9, align 8
  %19 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %next = getelementptr inbounds %struct.bucket, %struct.bucket* %19, i32 0, i32 1
  store %struct.bucket* null, %struct.bucket** %next, align 8
  %20 = load i8*, i8** %key.addr, align 8
  %call10 = call i8* @copys(i8* %20)
  %21 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %tag11 = getelementptr inbounds %struct.bucket, %struct.bucket* %21, i32 0, i32 2
  store i8* %call10, i8** %tag11, align 8
  %22 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %class = getelementptr inbounds %struct.bucket, %struct.bucket* %22, i32 0, i32 8
  store i8 0, i8* %class, align 1
  %23 = load %struct.bucket*, %struct.bucket** @firstsymbol, align 8
  %cmp12 = icmp eq %struct.bucket* %23, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.then.5
  %24 = load %struct.bucket*, %struct.bucket** %bp, align 8
  store %struct.bucket* %24, %struct.bucket** @firstsymbol, align 8
  %25 = load %struct.bucket*, %struct.bucket** %bp, align 8
  store %struct.bucket* %25, %struct.bucket** @lastsymbol, align 8
  br label %if.end.16

if.else.14:                                       ; preds = %if.then.5
  %26 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %27 = load %struct.bucket*, %struct.bucket** @lastsymbol, align 8
  %next15 = getelementptr inbounds %struct.bucket, %struct.bucket* %27, i32 0, i32 1
  store %struct.bucket* %26, %struct.bucket** %next15, align 8
  %28 = load %struct.bucket*, %struct.bucket** %bp, align 8
  store %struct.bucket* %28, %struct.bucket** @lastsymbol, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.13
  %29 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %30 = load i32, i32* %hashval, align 4
  %idxprom17 = sext i32 %30 to i64
  %31 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %arrayidx18 = getelementptr inbounds %struct.bucket*, %struct.bucket** %31, i64 %idxprom17
  store %struct.bucket* %29, %struct.bucket** %arrayidx18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.16, %while.end
  %32 = load %struct.bucket*, %struct.bucket** %bp, align 8
  ret %struct.bucket* %32
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @free_symtab() #0 {
entry:
  %i = alloca i32, align 4
  %bp = alloca %struct.bucket*, align 8
  %bptmp = alloca %struct.bucket*, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1009
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %arrayidx = getelementptr inbounds %struct.bucket*, %struct.bucket** %2, i64 %idxprom
  %3 = load %struct.bucket*, %struct.bucket** %arrayidx, align 8
  store %struct.bucket* %3, %struct.bucket** %bp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %4 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %tobool = icmp ne %struct.bucket* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %link = getelementptr inbounds %struct.bucket, %struct.bucket* %5, i32 0, i32 0
  %6 = load %struct.bucket*, %struct.bucket** %link, align 8
  store %struct.bucket* %6, %struct.bucket** %bptmp, align 8
  %7 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %tobool1 = icmp ne %struct.bucket* %7, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %9 = bitcast %struct.bucket* %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load %struct.bucket*, %struct.bucket** %bptmp, align 8
  store %struct.bucket* %10, %struct.bucket** %bp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
