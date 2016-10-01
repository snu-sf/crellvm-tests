; ModuleID = './MultiSource.Benchmarks.7zip/19.Delta.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @Delta_Init(i8* %state) #0 {
entry:
  %state.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %state, i8** %state.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load i8*, i8** %state.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Delta_Encode(i8* %state, i32 %delta, i8* %data, i64 %size) #0 {
entry:
  %state.addr = alloca i8*, align 8
  %delta.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %buf = alloca [256 x i8], align 16
  %j = alloca i32, align 4
  %i = alloca i64, align 8
  %b = alloca i8, align 1
  store i8* %state, i8** %state.addr, align 8
  store i32 %delta, i32* %delta.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 0, i32* %j, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %state.addr, align 8
  %1 = load i32, i32* %delta.addr, align 4
  call void @MyMemCpy(i8* %arraydecay, i8* %0, i32 %1)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %delta.addr, align 4
  %cmp2 = icmp ult i32 %4, %5
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %size.addr, align 8
  %cmp3 = icmp ult i64 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %8 = phi i1 [ false, %for.cond.1 ], [ %cmp3, %land.rhs ]
  br i1 %8, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %land.end
  %9 = load i64, i64* %i, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %9
  %11 = load i8, i8* %arrayidx, align 1
  store i8 %11, i8* %b, align 1
  %12 = load i8, i8* %b, align 1
  %conv = zext i8 %12 to i32
  %13 = load i32, i32* %j, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %14 to i32
  %sub = sub nsw i32 %conv, %conv6
  %conv7 = trunc i32 %sub to i8
  %15 = load i64, i64* %i, align 8
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 %15
  store i8 %conv7, i8* %arrayidx8, align 1
  %17 = load i8, i8* %b, align 1
  %18 = load i32, i32* %j, align 4
  %idxprom9 = zext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom9
  store i8 %17, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %19 = load i64, i64* %i, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %i, align 8
  %20 = load i32, i32* %j, align 4
  %inc11 = add i32 %20, 1
  store i32 %inc11, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %land.end
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %delta.addr, align 4
  %cmp13 = icmp eq i32 %21, %22
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.12
  store i32 0, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.12
  %23 = load i8*, i8** %state.addr, align 8
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %24 = load i32, i32* %j, align 4
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay15, i64 %idx.ext
  %25 = load i32, i32* %delta.addr, align 4
  %26 = load i32, i32* %j, align 4
  %sub16 = sub i32 %25, %26
  call void @MyMemCpy(i8* %23, i8* %add.ptr, i32 %sub16)
  %27 = load i8*, i8** %state.addr, align 8
  %28 = load i32, i32* %delta.addr, align 4
  %idx.ext17 = zext i32 %28 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %27, i64 %idx.ext17
  %29 = load i32, i32* %j, align 4
  %idx.ext19 = zext i32 %29 to i64
  %idx.neg = sub i64 0, %idx.ext19
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr18, i64 %idx.neg
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %30 = load i32, i32* %j, align 4
  call void @MyMemCpy(i8* %add.ptr20, i8* %arraydecay21, i32 %30)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MyMemCpy(i8* %dest, i8* %src, i32 %size) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %5 to i64
  %6 = load i8*, i8** %dest.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom1
  store i8 %4, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Delta_Decode(i8* %state, i32 %delta, i8* %data, i64 %size) #0 {
entry:
  %state.addr = alloca i8*, align 8
  %delta.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %buf = alloca [256 x i8], align 16
  %j = alloca i32, align 4
  %i = alloca i64, align 8
  store i8* %state, i8** %state.addr, align 8
  store i32 %delta, i32* %delta.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 0, i32* %j, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %state.addr, align 8
  %1 = load i32, i32* %delta.addr, align 4
  call void @MyMemCpy(i8* %arraydecay, i8* %0, i32 %1)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %delta.addr, align 4
  %cmp2 = icmp ult i32 %4, %5
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %size.addr, align 8
  %cmp3 = icmp ult i64 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %8 = phi i1 [ false, %for.cond.1 ], [ %cmp3, %land.rhs ]
  br i1 %8, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %land.end
  %9 = load i32, i32* %j, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %11 = load i64, i64* %i, align 8
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %11
  %13 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %13 to i32
  %add = add nsw i32 %conv, %conv6
  %conv7 = trunc i32 %add to i8
  %14 = load i64, i64* %i, align 8
  %15 = load i8*, i8** %data.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 %14
  store i8 %conv7, i8* %arrayidx8, align 1
  %16 = load i32, i32* %j, align 4
  %idxprom9 = zext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 %idxprom9
  store i8 %conv7, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %17 = load i64, i64* %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %i, align 8
  %18 = load i32, i32* %j, align 4
  %inc11 = add i32 %18, 1
  store i32 %inc11, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %land.end
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %delta.addr, align 4
  %cmp13 = icmp eq i32 %19, %20
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.12
  store i32 0, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.12
  %21 = load i8*, i8** %state.addr, align 8
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %22 = load i32, i32* %j, align 4
  %idx.ext = zext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay15, i64 %idx.ext
  %23 = load i32, i32* %delta.addr, align 4
  %24 = load i32, i32* %j, align 4
  %sub = sub i32 %23, %24
  call void @MyMemCpy(i8* %21, i8* %add.ptr, i32 %sub)
  %25 = load i8*, i8** %state.addr, align 8
  %26 = load i32, i32* %delta.addr, align 4
  %idx.ext16 = zext i32 %26 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %25, i64 %idx.ext16
  %27 = load i32, i32* %j, align 4
  %idx.ext18 = zext i32 %27 to i64
  %idx.neg = sub i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr17, i64 %idx.neg
  %arraydecay20 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %28 = load i32, i32* %j, align 4
  call void @MyMemCpy(i8* %add.ptr19, i8* %arraydecay20, i32 %28)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
