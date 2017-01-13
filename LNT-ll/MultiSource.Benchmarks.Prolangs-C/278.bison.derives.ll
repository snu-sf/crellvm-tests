; ModuleID = './MultiSource.Benchmarks.Prolangs-C/278.bison.derives.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shorts = type { %struct.shorts*, i16 }

@nvars = external global i32, align 4
@ntokens = external global i32, align 4
@nrules = external global i32, align 4
@rlhs = external global i16*, align 8
@derives = common global i16** null, align 8
@nsyms = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @set_derives() #0 {
entry:
  %i = alloca i32, align 4
  %lhs = alloca i32, align 4
  %p = alloca %struct.shorts*, align 8
  %q = alloca i16*, align 8
  %dset = alloca %struct.shorts**, align 8
  %delts = alloca %struct.shorts*, align 8
  %0 = load i32, i32* @nvars, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to %struct.shorts**
  %2 = load i32, i32* @ntokens, align 4
  %idx.ext = sext i32 %2 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.shorts*, %struct.shorts** %1, i64 %idx.neg
  store %struct.shorts** %add.ptr, %struct.shorts*** %dset, align 8
  %3 = load i32, i32* @nrules, align 4
  %add = add nsw i32 %3, 1
  %conv2 = sext i32 %add to i64
  %mul3 = mul i64 %conv2, 16
  %conv4 = trunc i64 %mul3 to i32
  %call5 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv4)
  %4 = bitcast i8* %call5 to %struct.shorts*
  store %struct.shorts* %4, %struct.shorts** %delts, align 8
  %5 = load %struct.shorts*, %struct.shorts** %delts, align 8
  store %struct.shorts* %5, %struct.shorts** %p, align 8
  %6 = load i32, i32* @nrules, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i16*, i16** @rlhs, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv7 = sext i16 %10 to i32
  store i32 %conv7, i32* %lhs, align 4
  %11 = load i32, i32* %lhs, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct.shorts**, %struct.shorts*** %dset, align 8
  %arrayidx9 = getelementptr inbounds %struct.shorts*, %struct.shorts** %12, i64 %idxprom8
  %13 = load %struct.shorts*, %struct.shorts** %arrayidx9, align 8
  %14 = load %struct.shorts*, %struct.shorts** %p, align 8
  %next = getelementptr inbounds %struct.shorts, %struct.shorts* %14, i32 0, i32 0
  store %struct.shorts* %13, %struct.shorts** %next, align 8
  %15 = load i32, i32* %i, align 4
  %conv10 = trunc i32 %15 to i16
  %16 = load %struct.shorts*, %struct.shorts** %p, align 8
  %value = getelementptr inbounds %struct.shorts, %struct.shorts* %16, i32 0, i32 1
  store i16 %conv10, i16* %value, align 2
  %17 = load %struct.shorts*, %struct.shorts** %p, align 8
  %18 = load i32, i32* %lhs, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.shorts**, %struct.shorts*** %dset, align 8
  %arrayidx12 = getelementptr inbounds %struct.shorts*, %struct.shorts** %19, i64 %idxprom11
  store %struct.shorts* %17, %struct.shorts** %arrayidx12, align 8
  %20 = load %struct.shorts*, %struct.shorts** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.shorts, %struct.shorts* %20, i32 1
  store %struct.shorts* %incdec.ptr, %struct.shorts** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* @nvars, align 4
  %conv13 = sext i32 %22 to i64
  %mul14 = mul i64 %conv13, 8
  %conv15 = trunc i64 %mul14 to i32
  %call16 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv15)
  %23 = bitcast i8* %call16 to i16**
  %24 = load i32, i32* @ntokens, align 4
  %idx.ext17 = sext i32 %24 to i64
  %idx.neg18 = sub i64 0, %idx.ext17
  %add.ptr19 = getelementptr inbounds i16*, i16** %23, i64 %idx.neg18
  store i16** %add.ptr19, i16*** @derives, align 8
  %25 = load i32, i32* @nvars, align 4
  %26 = load i32, i32* @nrules, align 4
  %add20 = add nsw i32 %25, %26
  %conv21 = sext i32 %add20 to i64
  %mul22 = mul i64 %conv21, 2
  %conv23 = trunc i64 %mul22 to i32
  %call24 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv23)
  %27 = bitcast i8* %call24 to i16*
  store i16* %27, i16** %q, align 8
  %28 = load i32, i32* @ntokens, align 4
  store i32 %28, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.37, %for.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* @nsyms, align 4
  %cmp26 = icmp slt i32 %29, %30
  br i1 %cmp26, label %for.body.28, label %for.end.38

for.body.28:                                      ; preds = %for.cond.25
  %31 = load i16*, i16** %q, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load i16**, i16*** @derives, align 8
  %arrayidx30 = getelementptr inbounds i16*, i16** %33, i64 %idxprom29
  store i16* %31, i16** %arrayidx30, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %34 to i64
  %35 = load %struct.shorts**, %struct.shorts*** %dset, align 8
  %arrayidx32 = getelementptr inbounds %struct.shorts*, %struct.shorts** %35, i64 %idxprom31
  %36 = load %struct.shorts*, %struct.shorts** %arrayidx32, align 8
  store %struct.shorts* %36, %struct.shorts** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.28
  %37 = load %struct.shorts*, %struct.shorts** %p, align 8
  %tobool = icmp ne %struct.shorts* %37, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load %struct.shorts*, %struct.shorts** %p, align 8
  %value33 = getelementptr inbounds %struct.shorts, %struct.shorts* %38, i32 0, i32 1
  %39 = load i16, i16* %value33, align 2
  %40 = load i16*, i16** %q, align 8
  %incdec.ptr34 = getelementptr inbounds i16, i16* %40, i32 1
  store i16* %incdec.ptr34, i16** %q, align 8
  store i16 %39, i16* %40, align 2
  %41 = load %struct.shorts*, %struct.shorts** %p, align 8
  %next35 = getelementptr inbounds %struct.shorts, %struct.shorts* %41, i32 0, i32 0
  %42 = load %struct.shorts*, %struct.shorts** %next35, align 8
  store %struct.shorts* %42, %struct.shorts** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %43 = load i16*, i16** %q, align 8
  %incdec.ptr36 = getelementptr inbounds i16, i16* %43, i32 1
  store i16* %incdec.ptr36, i16** %q, align 8
  store i16 -1, i16* %43, align 2
  br label %for.inc.37

for.inc.37:                                       ; preds = %while.end
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.25

for.end.38:                                       ; preds = %for.cond.25
  %45 = load %struct.shorts**, %struct.shorts*** %dset, align 8
  %46 = load i32, i32* @ntokens, align 4
  %idx.ext39 = sext i32 %46 to i64
  %add.ptr40 = getelementptr inbounds %struct.shorts*, %struct.shorts** %45, i64 %idx.ext39
  %tobool41 = icmp ne %struct.shorts** %add.ptr40, null
  br i1 %tobool41, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.38
  %47 = load %struct.shorts**, %struct.shorts*** %dset, align 8
  %48 = load i32, i32* @ntokens, align 4
  %idx.ext42 = sext i32 %48 to i64
  %add.ptr43 = getelementptr inbounds %struct.shorts*, %struct.shorts** %47, i64 %idx.ext42
  %49 = bitcast %struct.shorts** %add.ptr43 to i8*
  call void @free(i8* %49) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.38
  %50 = load %struct.shorts*, %struct.shorts** %delts, align 8
  %tobool44 = icmp ne %struct.shorts* %50, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end
  %51 = load %struct.shorts*, %struct.shorts** %delts, align 8
  %52 = bitcast %struct.shorts* %51 to i8*
  call void @free(i8* %52) #3
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end
  ret void
}

declare i8* @mallocate(...) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @free_derives() #0 {
entry:
  %0 = load i32, i32* @ntokens, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16**, i16*** @derives, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %1, i64 %idxprom
  %2 = load i16*, i16** %arrayidx, align 8
  %tobool = icmp ne i16* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @ntokens, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i16**, i16*** @derives, align 8
  %arrayidx2 = getelementptr inbounds i16*, i16** %4, i64 %idxprom1
  %5 = load i16*, i16** %arrayidx2, align 8
  %6 = bitcast i16* %5 to i8*
  call void @free(i8* %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i16**, i16*** @derives, align 8
  %8 = load i32, i32* @ntokens, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i16*, i16** %7, i64 %idx.ext
  %tobool3 = icmp ne i16** %add.ptr, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %9 = load i16**, i16*** @derives, align 8
  %10 = load i32, i32* @ntokens, align 4
  %idx.ext5 = sext i32 %10 to i64
  %add.ptr6 = getelementptr inbounds i16*, i16** %9, i64 %idx.ext5
  %11 = bitcast i16** %add.ptr6 to i8*
  call void @free(i8* %11) #3
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
