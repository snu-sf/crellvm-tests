; ModuleID = './MultiSource.Benchmarks.Prolangs-C/280.bison.nullable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shorts = type { %struct.shorts*, i16 }

@nvars = external global i32, align 4
@ntokens = external global i32, align 4
@nullable = common global i8* null, align 8
@nrules = external global i32, align 4
@nitems = external global i32, align 4
@ritem = external global i16*, align 8
@rlhs = external global i16*, align 8

; Function Attrs: nounwind uwtable
define void @set_nullable() #0 {
entry:
  %r = alloca i16*, align 8
  %s1 = alloca i16*, align 8
  %s2 = alloca i16*, align 8
  %ruleno = alloca i32, align 4
  %symbol = alloca i32, align 4
  %p = alloca %struct.shorts*, align 8
  %squeue = alloca i16*, align 8
  %rcount = alloca i16*, align 8
  %rsets = alloca %struct.shorts**, align 8
  %relts = alloca %struct.shorts*, align 8
  %any_tokens = alloca i8, align 1
  %r1 = alloca i16*, align 8
  %0 = load i32, i32* @nvars, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 1
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = load i32, i32* @ntokens, align 4
  %idx.ext = sext i32 %1 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.neg
  store i8* %add.ptr, i8** @nullable, align 8
  %2 = load i32, i32* @nvars, align 4
  %conv2 = sext i32 %2 to i64
  %mul3 = mul i64 %conv2, 2
  %conv4 = trunc i64 %mul3 to i32
  %call5 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv4)
  %3 = bitcast i8* %call5 to i16*
  store i16* %3, i16** %squeue, align 8
  %4 = load i16*, i16** %squeue, align 8
  store i16* %4, i16** %s2, align 8
  store i16* %4, i16** %s1, align 8
  %5 = load i32, i32* @nrules, align 4
  %add = add nsw i32 %5, 1
  %conv6 = sext i32 %add to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  %call9 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv8)
  %6 = bitcast i8* %call9 to i16*
  store i16* %6, i16** %rcount, align 8
  %7 = load i32, i32* @nvars, align 4
  %conv10 = sext i32 %7 to i64
  %mul11 = mul i64 %conv10, 8
  %conv12 = trunc i64 %mul11 to i32
  %call13 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv12)
  %8 = bitcast i8* %call13 to %struct.shorts**
  %9 = load i32, i32* @ntokens, align 4
  %idx.ext14 = sext i32 %9 to i64
  %idx.neg15 = sub i64 0, %idx.ext14
  %add.ptr16 = getelementptr inbounds %struct.shorts*, %struct.shorts** %8, i64 %idx.neg15
  store %struct.shorts** %add.ptr16, %struct.shorts*** %rsets, align 8
  %10 = load i32, i32* @nitems, align 4
  %11 = load i32, i32* @nvars, align 4
  %add17 = add nsw i32 %10, %11
  %add18 = add nsw i32 %add17, 1
  %conv19 = sext i32 %add18 to i64
  %mul20 = mul i64 %conv19, 16
  %conv21 = trunc i64 %mul20 to i32
  %call22 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv21)
  %12 = bitcast i8* %call22 to %struct.shorts*
  store %struct.shorts* %12, %struct.shorts** %relts, align 8
  %13 = load %struct.shorts*, %struct.shorts** %relts, align 8
  store %struct.shorts* %13, %struct.shorts** %p, align 8
  %14 = load i16*, i16** @ritem, align 8
  store i16* %14, i16** %r, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %entry
  %15 = load i16*, i16** %r, align 8
  %16 = load i16, i16* %15, align 2
  %tobool = icmp ne i16 %16, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i16*, i16** %r, align 8
  %18 = load i16, i16* %17, align 2
  %conv23 = sext i16 %18 to i32
  %cmp = icmp slt i32 %conv23, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %19 = load i16*, i16** %r, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %19, i32 1
  store i16* %incdec.ptr, i16** %r, align 8
  %20 = load i16, i16* %19, align 2
  %conv25 = sext i16 %20 to i32
  %sub = sub nsw i32 0, %conv25
  %idxprom = sext i32 %sub to i64
  %21 = load i16*, i16** @rlhs, align 8
  %arrayidx = getelementptr inbounds i16, i16* %21, i64 %idxprom
  %22 = load i16, i16* %arrayidx, align 2
  %conv26 = sext i16 %22 to i32
  store i32 %conv26, i32* %symbol, align 4
  %23 = load i32, i32* %symbol, align 4
  %idxprom27 = sext i32 %23 to i64
  %24 = load i8*, i8** @nullable, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %24, i64 %idxprom27
  %25 = load i8, i8* %arrayidx28, align 1
  %tobool29 = icmp ne i8 %25, 0
  br i1 %tobool29, label %if.end, label %if.then.30

if.then.30:                                       ; preds = %if.then
  %26 = load i32, i32* %symbol, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load i8*, i8** @nullable, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %27, i64 %idxprom31
  store i8 1, i8* %arrayidx32, align 1
  %28 = load i32, i32* %symbol, align 4
  %conv33 = trunc i32 %28 to i16
  %29 = load i16*, i16** %s2, align 8
  %incdec.ptr34 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr34, i16** %s2, align 8
  store i16 %conv33, i16* %29, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.30, %if.then
  br label %if.end.67

if.else:                                          ; preds = %while.body
  %30 = load i16*, i16** %r, align 8
  store i16* %30, i16** %r1, align 8
  store i8 0, i8* %any_tokens, align 1
  %31 = load i16*, i16** %r, align 8
  %incdec.ptr35 = getelementptr inbounds i16, i16* %31, i32 1
  store i16* %incdec.ptr35, i16** %r, align 8
  %32 = load i16, i16* %31, align 2
  %conv36 = sext i16 %32 to i32
  store i32 %conv36, i32* %symbol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %33 = load i32, i32* %symbol, align 4
  %cmp37 = icmp sgt i32 %33, 0
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %symbol, align 4
  %35 = load i32, i32* @ntokens, align 4
  %cmp39 = icmp slt i32 %34, %35
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body
  store i8 1, i8* %any_tokens, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %36 = load i16*, i16** %r, align 8
  %incdec.ptr43 = getelementptr inbounds i16, i16* %36, i32 1
  store i16* %incdec.ptr43, i16** %r, align 8
  %37 = load i16, i16* %36, align 2
  %conv44 = sext i16 %37 to i32
  store i32 %conv44, i32* %symbol, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i8, i8* %any_tokens, align 1
  %tobool45 = icmp ne i8 %38, 0
  br i1 %tobool45, label %if.end.66, label %if.then.46

if.then.46:                                       ; preds = %for.end
  %39 = load i32, i32* %symbol, align 4
  %sub47 = sub nsw i32 0, %39
  store i32 %sub47, i32* %ruleno, align 4
  %40 = load i16*, i16** %r1, align 8
  store i16* %40, i16** %r, align 8
  %41 = load i16*, i16** %r, align 8
  %incdec.ptr48 = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr48, i16** %r, align 8
  %42 = load i16, i16* %41, align 2
  %conv49 = sext i16 %42 to i32
  store i32 %conv49, i32* %symbol, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.62, %if.then.46
  %43 = load i32, i32* %symbol, align 4
  %cmp51 = icmp sgt i32 %43, 0
  br i1 %cmp51, label %for.body.53, label %for.end.65

for.body.53:                                      ; preds = %for.cond.50
  %44 = load i32, i32* %ruleno, align 4
  %idxprom54 = sext i32 %44 to i64
  %45 = load i16*, i16** %rcount, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %45, i64 %idxprom54
  %46 = load i16, i16* %arrayidx55, align 2
  %inc = add i16 %46, 1
  store i16 %inc, i16* %arrayidx55, align 2
  %47 = load i32, i32* %symbol, align 4
  %idxprom56 = sext i32 %47 to i64
  %48 = load %struct.shorts**, %struct.shorts*** %rsets, align 8
  %arrayidx57 = getelementptr inbounds %struct.shorts*, %struct.shorts** %48, i64 %idxprom56
  %49 = load %struct.shorts*, %struct.shorts** %arrayidx57, align 8
  %50 = load %struct.shorts*, %struct.shorts** %p, align 8
  %next = getelementptr inbounds %struct.shorts, %struct.shorts* %50, i32 0, i32 0
  store %struct.shorts* %49, %struct.shorts** %next, align 8
  %51 = load i32, i32* %ruleno, align 4
  %conv58 = trunc i32 %51 to i16
  %52 = load %struct.shorts*, %struct.shorts** %p, align 8
  %value = getelementptr inbounds %struct.shorts, %struct.shorts* %52, i32 0, i32 1
  store i16 %conv58, i16* %value, align 2
  %53 = load %struct.shorts*, %struct.shorts** %p, align 8
  %54 = load i32, i32* %symbol, align 4
  %idxprom59 = sext i32 %54 to i64
  %55 = load %struct.shorts**, %struct.shorts*** %rsets, align 8
  %arrayidx60 = getelementptr inbounds %struct.shorts*, %struct.shorts** %55, i64 %idxprom59
  store %struct.shorts* %53, %struct.shorts** %arrayidx60, align 8
  %56 = load %struct.shorts*, %struct.shorts** %p, align 8
  %incdec.ptr61 = getelementptr inbounds %struct.shorts, %struct.shorts* %56, i32 1
  store %struct.shorts* %incdec.ptr61, %struct.shorts** %p, align 8
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.53
  %57 = load i16*, i16** %r, align 8
  %incdec.ptr63 = getelementptr inbounds i16, i16* %57, i32 1
  store i16* %incdec.ptr63, i16** %r, align 8
  %58 = load i16, i16* %57, align 2
  %conv64 = sext i16 %58 to i32
  store i32 %conv64, i32* %symbol, align 4
  br label %for.cond.50

for.end.65:                                       ; preds = %for.cond.50
  br label %if.end.66

if.end.66:                                        ; preds = %for.end.65, %for.end
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.end.100, %while.end
  %59 = load i16*, i16** %s1, align 8
  %60 = load i16*, i16** %s2, align 8
  %cmp69 = icmp ult i16* %59, %60
  br i1 %cmp69, label %while.body.71, label %while.end.101

while.body.71:                                    ; preds = %while.cond.68
  %61 = load i16*, i16** %s1, align 8
  %incdec.ptr72 = getelementptr inbounds i16, i16* %61, i32 1
  store i16* %incdec.ptr72, i16** %s1, align 8
  %62 = load i16, i16* %61, align 2
  %idxprom73 = sext i16 %62 to i64
  %63 = load %struct.shorts**, %struct.shorts*** %rsets, align 8
  %arrayidx74 = getelementptr inbounds %struct.shorts*, %struct.shorts** %63, i64 %idxprom73
  %64 = load %struct.shorts*, %struct.shorts** %arrayidx74, align 8
  store %struct.shorts* %64, %struct.shorts** %p, align 8
  br label %while.cond.75

while.cond.75:                                    ; preds = %if.end.99, %while.body.71
  %65 = load %struct.shorts*, %struct.shorts** %p, align 8
  %tobool76 = icmp ne %struct.shorts* %65, null
  br i1 %tobool76, label %while.body.77, label %while.end.100

while.body.77:                                    ; preds = %while.cond.75
  %66 = load %struct.shorts*, %struct.shorts** %p, align 8
  %value78 = getelementptr inbounds %struct.shorts, %struct.shorts* %66, i32 0, i32 1
  %67 = load i16, i16* %value78, align 2
  %conv79 = sext i16 %67 to i32
  store i32 %conv79, i32* %ruleno, align 4
  %68 = load %struct.shorts*, %struct.shorts** %p, align 8
  %next80 = getelementptr inbounds %struct.shorts, %struct.shorts* %68, i32 0, i32 0
  %69 = load %struct.shorts*, %struct.shorts** %next80, align 8
  store %struct.shorts* %69, %struct.shorts** %p, align 8
  %70 = load i32, i32* %ruleno, align 4
  %idxprom81 = sext i32 %70 to i64
  %71 = load i16*, i16** %rcount, align 8
  %arrayidx82 = getelementptr inbounds i16, i16* %71, i64 %idxprom81
  %72 = load i16, i16* %arrayidx82, align 2
  %dec = add i16 %72, -1
  store i16 %dec, i16* %arrayidx82, align 2
  %conv83 = sext i16 %dec to i32
  %cmp84 = icmp eq i32 %conv83, 0
  br i1 %cmp84, label %if.then.86, label %if.end.99

if.then.86:                                       ; preds = %while.body.77
  %73 = load i32, i32* %ruleno, align 4
  %idxprom87 = sext i32 %73 to i64
  %74 = load i16*, i16** @rlhs, align 8
  %arrayidx88 = getelementptr inbounds i16, i16* %74, i64 %idxprom87
  %75 = load i16, i16* %arrayidx88, align 2
  %conv89 = sext i16 %75 to i32
  store i32 %conv89, i32* %symbol, align 4
  %76 = load i32, i32* %symbol, align 4
  %idxprom90 = sext i32 %76 to i64
  %77 = load i8*, i8** @nullable, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %77, i64 %idxprom90
  %78 = load i8, i8* %arrayidx91, align 1
  %tobool92 = icmp ne i8 %78, 0
  br i1 %tobool92, label %if.end.98, label %if.then.93

if.then.93:                                       ; preds = %if.then.86
  %79 = load i32, i32* %symbol, align 4
  %idxprom94 = sext i32 %79 to i64
  %80 = load i8*, i8** @nullable, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %80, i64 %idxprom94
  store i8 1, i8* %arrayidx95, align 1
  %81 = load i32, i32* %symbol, align 4
  %conv96 = trunc i32 %81 to i16
  %82 = load i16*, i16** %s2, align 8
  %incdec.ptr97 = getelementptr inbounds i16, i16* %82, i32 1
  store i16* %incdec.ptr97, i16** %s2, align 8
  store i16 %conv96, i16* %82, align 2
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.93, %if.then.86
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %while.body.77
  br label %while.cond.75

while.end.100:                                    ; preds = %while.cond.75
  br label %while.cond.68

while.end.101:                                    ; preds = %while.cond.68
  %83 = load i16*, i16** %squeue, align 8
  %tobool102 = icmp ne i16* %83, null
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %while.end.101
  %84 = load i16*, i16** %squeue, align 8
  %85 = bitcast i16* %84 to i8*
  call void @free(i8* %85) #3
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %while.end.101
  %86 = load i16*, i16** %rcount, align 8
  %tobool105 = icmp ne i16* %86, null
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.104
  %87 = load i16*, i16** %rcount, align 8
  %88 = bitcast i16* %87 to i8*
  call void @free(i8* %88) #3
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.104
  %89 = load %struct.shorts**, %struct.shorts*** %rsets, align 8
  %90 = load i32, i32* @ntokens, align 4
  %idx.ext108 = sext i32 %90 to i64
  %add.ptr109 = getelementptr inbounds %struct.shorts*, %struct.shorts** %89, i64 %idx.ext108
  %tobool110 = icmp ne %struct.shorts** %add.ptr109, null
  br i1 %tobool110, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %if.end.107
  %91 = load %struct.shorts**, %struct.shorts*** %rsets, align 8
  %92 = load i32, i32* @ntokens, align 4
  %idx.ext112 = sext i32 %92 to i64
  %add.ptr113 = getelementptr inbounds %struct.shorts*, %struct.shorts** %91, i64 %idx.ext112
  %93 = bitcast %struct.shorts** %add.ptr113 to i8*
  call void @free(i8* %93) #3
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %if.end.107
  %94 = load %struct.shorts*, %struct.shorts** %relts, align 8
  %tobool115 = icmp ne %struct.shorts* %94, null
  br i1 %tobool115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.end.114
  %95 = load %struct.shorts*, %struct.shorts** %relts, align 8
  %96 = bitcast %struct.shorts* %95 to i8*
  call void @free(i8* %96) #3
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %if.end.114
  ret void
}

declare i8* @mallocate(...) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @free_nullable() #0 {
entry:
  %0 = load i8*, i8** @nullable, align 8
  %1 = load i32, i32* @ntokens, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %tobool = icmp ne i8* %add.ptr, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @nullable, align 8
  %3 = load i32, i32* @ntokens, align 4
  %idx.ext1 = sext i32 %3 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %2, i64 %idx.ext1
  call void @free(i8* %add.ptr2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
