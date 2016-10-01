; ModuleID = './MultiSource.Benchmarks.Olden/8.mst.hash.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { %struct.hash_entry**, i32 (i32)*, i32 }
%struct.hash_entry = type { i32, i8*, %struct.hash_entry* }

@.str = private unnamed_addr constant [30 x i8] c"Assertion failure:%d in hash\0A\00", align 1
@remaining = internal global i32 0, align 4
@temp = internal global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Error! malloc returns null\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.hash* @MakeHash(i32 %size, i32 (i32)* %map) #0 {
entry:
  %size.addr = alloca i32, align 4
  %map.addr = alloca i32 (i32)*, align 8
  %retval1 = alloca %struct.hash*, align 8
  %i = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 (i32)* %map, i32 (i32)** %map.addr, align 8
  %call = call i8* @localmalloc(i32 24)
  %0 = bitcast i8* %call to %struct.hash*
  store %struct.hash* %0, %struct.hash** %retval1, align 8
  %1 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %conv2 = trunc i64 %mul to i32
  %call3 = call i8* @localmalloc(i32 %conv2)
  %2 = bitcast i8* %call3 to %struct.hash_entry**
  %3 = load %struct.hash*, %struct.hash** %retval1, align 8
  %array = getelementptr inbounds %struct.hash, %struct.hash* %3, i32 0, i32 0
  store %struct.hash_entry** %2, %struct.hash_entry*** %array, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.hash*, %struct.hash** %retval1, align 8
  %array5 = getelementptr inbounds %struct.hash, %struct.hash* %7, i32 0, i32 0
  %8 = load %struct.hash_entry**, %struct.hash_entry*** %array5, align 8
  %arrayidx = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %8, i64 %idxprom
  store %struct.hash_entry* null, %struct.hash_entry** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32 (i32)*, i32 (i32)** %map.addr, align 8
  %11 = load %struct.hash*, %struct.hash** %retval1, align 8
  %mapfunc = getelementptr inbounds %struct.hash, %struct.hash* %11, i32 0, i32 1
  store i32 (i32)* %10, i32 (i32)** %mapfunc, align 8
  %12 = load i32, i32* %size.addr, align 4
  %13 = load %struct.hash*, %struct.hash** %retval1, align 8
  %size6 = getelementptr inbounds %struct.hash, %struct.hash* %13, i32 0, i32 2
  store i32 %12, i32* %size6, align 4
  %14 = load %struct.hash*, %struct.hash** %retval1, align 8
  ret %struct.hash* %14
}

; Function Attrs: nounwind uwtable
define internal i8* @localmalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %blah = alloca i8*, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i32, i32* @remaining, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 32768) #4
  store i8* %call, i8** @temp, align 8
  %2 = load i8*, i8** @temp, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 32768, i32* @remaining, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %3 = load i8*, i8** @temp, align 8
  store i8* %3, i8** %blah, align 8
  %4 = load i32, i32* %size.addr, align 4
  %5 = load i8*, i8** @temp, align 8
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** @temp, align 8
  %6 = load i32, i32* %size.addr, align 4
  %7 = load i32, i32* @remaining, align 4
  %sub = sub nsw i32 %7, %6
  store i32 %sub, i32* @remaining, align 4
  %8 = load i8*, i8** %blah, align 8
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define i8* @HashLookup(i32 %key, %struct.hash* %hash) #0 {
entry:
  %retval = alloca i8*, align 8
  %key.addr = alloca i32, align 4
  %hash.addr = alloca %struct.hash*, align 8
  %j = alloca i32, align 4
  %ent = alloca %struct.hash_entry*, align 8
  store i32 %key, i32* %key.addr, align 4
  store %struct.hash* %hash, %struct.hash** %hash.addr, align 8
  %0 = load %struct.hash*, %struct.hash** %hash.addr, align 8
  %mapfunc = getelementptr inbounds %struct.hash, %struct.hash* %0, i32 0, i32 1
  %1 = load i32 (i32)*, i32 (i32)** %mapfunc, align 8
  %2 = load i32, i32* %key.addr, align 4
  %call = call i32 %1(i32 %2)
  store i32 %call, i32* %j, align 4
  %3 = load i32, i32* %j, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 1)
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %j, align 4
  %5 = load %struct.hash*, %struct.hash** %hash.addr, align 8
  %size = getelementptr inbounds %struct.hash, %struct.hash* %5, i32 0, i32 2
  %6 = load i32, i32* %size, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 2)
  call void @exit(i32 -1) #5
  unreachable

if.end.5:                                         ; preds = %if.end
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.hash*, %struct.hash** %hash.addr, align 8
  %array = getelementptr inbounds %struct.hash, %struct.hash* %8, i32 0, i32 0
  %9 = load %struct.hash_entry**, %struct.hash_entry*** %array, align 8
  %arrayidx = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %9, i64 %idxprom
  %10 = load %struct.hash_entry*, %struct.hash_entry** %arrayidx, align 8
  store %struct.hash_entry* %10, %struct.hash_entry** %ent, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %11 = load %struct.hash_entry*, %struct.hash_entry** %ent, align 8
  %tobool = icmp ne %struct.hash_entry* %11, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %12 = load %struct.hash_entry*, %struct.hash_entry** %ent, align 8
  %key6 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i32 0, i32 0
  %13 = load i32, i32* %key6, align 4
  %14 = load i32, i32* %key.addr, align 4
  %cmp7 = icmp ne i32 %13, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct.hash_entry*, %struct.hash_entry** %ent, align 8
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i32 0, i32 2
  %17 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8
  store %struct.hash_entry* %17, %struct.hash_entry** %ent, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load %struct.hash_entry*, %struct.hash_entry** %ent, align 8
  %tobool8 = icmp ne %struct.hash_entry* %18, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %for.end
  %19 = load %struct.hash_entry*, %struct.hash_entry** %ent, align 8
  %entry10 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i32 0, i32 1
  %20 = load i8*, i8** %entry10, align 8
  store i8* %20, i8** %retval
  br label %return

if.end.11:                                        ; preds = %for.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9
  %21 = load i8*, i8** %retval
  ret i8* %21
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @HashInsert(i8* %entry1, i32 %key, %struct.hash* %hash) #0 {
entry:
  %entry.addr = alloca i8*, align 8
  %key.addr = alloca i32, align 4
  %hash.addr = alloca %struct.hash*, align 8
  %ent = alloca %struct.hash_entry*, align 8
  %j = alloca i32, align 4
  store i8* %entry1, i8** %entry.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store %struct.hash* %hash, %struct.hash** %hash.addr, align 8
  %0 = load i32, i32* %key.addr, align 4
  %1 = load %struct.hash*, %struct.hash** %hash.addr, align 8
  %call = call i8* @HashLookup(i32 %0, %struct.hash* %1)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 3)
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.hash*, %struct.hash** %hash.addr, align 8
  %mapfunc = getelementptr inbounds %struct.hash, %struct.hash* %2, i32 0, i32 1
  %3 = load i32 (i32)*, i32 (i32)** %mapfunc, align 8
  %4 = load i32, i32* %key.addr, align 4
  %call3 = call i32 %3(i32 %4)
  store i32 %call3, i32* %j, align 4
  %call4 = call i8* @localmalloc(i32 24)
  %5 = bitcast i8* %call4 to %struct.hash_entry*
  store %struct.hash_entry* %5, %struct.hash_entry** %ent, align 8
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.hash*, %struct.hash** %hash.addr, align 8
  %array = getelementptr inbounds %struct.hash, %struct.hash* %7, i32 0, i32 0
  %8 = load %struct.hash_entry**, %struct.hash_entry*** %array, align 8
  %arrayidx = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %8, i64 %idxprom
  %9 = load %struct.hash_entry*, %struct.hash_entry** %arrayidx, align 8
  %10 = load %struct.hash_entry*, %struct.hash_entry** %ent, align 8
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i32 0, i32 2
  store %struct.hash_entry* %9, %struct.hash_entry** %next, align 8
  %11 = load %struct.hash_entry*, %struct.hash_entry** %ent, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.hash*, %struct.hash** %hash.addr, align 8
  %array6 = getelementptr inbounds %struct.hash, %struct.hash* %13, i32 0, i32 0
  %14 = load %struct.hash_entry**, %struct.hash_entry*** %array6, align 8
  %arrayidx7 = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %14, i64 %idxprom5
  store %struct.hash_entry* %11, %struct.hash_entry** %arrayidx7, align 8
  %15 = load i32, i32* %key.addr, align 4
  %16 = load %struct.hash_entry*, %struct.hash_entry** %ent, align 8
  %key8 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i32 0, i32 0
  store i32 %15, i32* %key8, align 4
  %17 = load i8*, i8** %entry.addr, align 8
  %18 = load %struct.hash_entry*, %struct.hash_entry** %ent, align 8
  %entry9 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i32 0, i32 1
  store i8* %17, i8** %entry9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @HashDelete(i32 %key, %struct.hash* %hash) #0 {
entry:
  %key.addr = alloca i32, align 4
  %hash.addr = alloca %struct.hash*, align 8
  %tmp = alloca %struct.hash_entry*, align 8
  %j = alloca i32, align 4
  %ent = alloca %struct.hash_entry**, align 8
  store i32 %key, i32* %key.addr, align 4
  store %struct.hash* %hash, %struct.hash** %hash.addr, align 8
  %0 = load %struct.hash*, %struct.hash** %hash.addr, align 8
  %mapfunc = getelementptr inbounds %struct.hash, %struct.hash* %0, i32 0, i32 1
  %1 = load i32 (i32)*, i32 (i32)** %mapfunc, align 8
  %2 = load i32, i32* %key.addr, align 4
  %call = call i32 %1(i32 %2)
  store i32 %call, i32* %j, align 4
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.hash*, %struct.hash** %hash.addr, align 8
  %array = getelementptr inbounds %struct.hash, %struct.hash* %4, i32 0, i32 0
  %5 = load %struct.hash_entry**, %struct.hash_entry*** %array, align 8
  %arrayidx = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %5, i64 %idxprom
  store %struct.hash_entry** %arrayidx, %struct.hash_entry*** %ent, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load %struct.hash_entry**, %struct.hash_entry*** %ent, align 8
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %tobool = icmp ne %struct.hash_entry* %7, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.hash_entry**, %struct.hash_entry*** %ent, align 8
  %9 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %key3 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %9, i32 0, i32 0
  %10 = load i32, i32* %key3, align 4
  %11 = load i32, i32* %key.addr, align 4
  %cmp = icmp ne i32 %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.hash_entry**, %struct.hash_entry*** %ent, align 8
  %14 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i32 0, i32 2
  store %struct.hash_entry** %next, %struct.hash_entry*** %ent, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load %struct.hash_entry**, %struct.hash_entry*** %ent, align 8
  %16 = load %struct.hash_entry*, %struct.hash_entry** %15, align 8
  %tobool4 = icmp ne %struct.hash_entry* %16, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 4)
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %while.end
  %17 = load %struct.hash_entry**, %struct.hash_entry*** %ent, align 8
  %18 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  store %struct.hash_entry* %18, %struct.hash_entry** %tmp, align 8
  %19 = load %struct.hash_entry**, %struct.hash_entry*** %ent, align 8
  %20 = load %struct.hash_entry*, %struct.hash_entry** %19, align 8
  %next6 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %20, i32 0, i32 2
  %21 = load %struct.hash_entry*, %struct.hash_entry** %next6, align 8
  %22 = load %struct.hash_entry**, %struct.hash_entry*** %ent, align 8
  store %struct.hash_entry* %21, %struct.hash_entry** %22, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
