; ModuleID = 'translate.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@squid_errno = external global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Translate(i8* %seq, i8** %code) #0 {
entry:
  %retval = alloca i8*, align 8
  %seq.addr = alloca i8*, align 8
  %code.addr = alloca i8**, align 8
  %codon = alloca i32, align 4
  %aaseq = alloca i8*, align 8
  %aaptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %seq, i8** %seq.addr, align 8
  store i8** %code, i8*** %code.addr, align 8
  %0 = load i8*, i8** %seq.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* @squid_errno, align 4
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %seq.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %add = add i64 %call, 1
  %call1 = call noalias i8* @calloc(i64 %add, i64 1) #5
  store i8* %call1, i8** %aaseq, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %2 = load i8*, i8** %aaseq, align 8
  store i8* %2, i8** %aaptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %if.end.4
  %3 = load i8*, i8** %seq.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %5 = load i8*, i8** %seq.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %add.ptr, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load i8*, i8** %seq.addr, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %add.ptr10, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %9 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp12, %land.rhs ]
  br i1 %9, label %for.body, label %for.end.39

for.body:                                         ; preds = %land.end
  store i32 0, i32* %codon, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %10 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %10, 3
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %11 = load i32, i32* %codon, align 4
  %mul = mul nsw i32 %11, 4
  store i32 %mul, i32* %codon, align 4
  %12 = load i8*, i8** %seq.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %14 = load i8, i8* %add.ptr18, align 1
  %conv19 = sext i8 %14 to i32
  switch i32 %conv19, label %sw.default [
    i32 65, label %sw.bb
    i32 97, label %sw.bb
    i32 67, label %sw.bb.20
    i32 99, label %sw.bb.20
    i32 71, label %sw.bb.22
    i32 103, label %sw.bb.22
    i32 84, label %sw.bb.24
    i32 116, label %sw.bb.24
    i32 85, label %sw.bb.26
    i32 117, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %for.body.17, %for.body.17
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.body.17, %for.body.17
  %15 = load i32, i32* %codon, align 4
  %add21 = add nsw i32 %15, 1
  store i32 %add21, i32* %codon, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %for.body.17, %for.body.17
  %16 = load i32, i32* %codon, align 4
  %add23 = add nsw i32 %16, 2
  store i32 %add23, i32* %codon, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %for.body.17, %for.body.17
  %17 = load i32, i32* %codon, align 4
  %add25 = add nsw i32 %17, 3
  store i32 %add25, i32* %codon, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.body.17, %for.body.17
  %18 = load i32, i32* %codon, align 4
  %add27 = add nsw i32 %18, 3
  store i32 %add27, i32* %codon, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.17
  store i32 64, i32* %codon, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.26, %sw.bb.24, %sw.bb.22, %sw.bb.20, %sw.bb
  %19 = load i32, i32* %codon, align 4
  %cmp28 = icmp eq i32 %19, 64
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %sw.epilog
  br label %for.end

if.end.31:                                        ; preds = %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.14

for.end:                                          ; preds = %if.then.30, %for.cond.14
  %21 = load i8*, i8** %aaptr, align 8
  %22 = load i32, i32* %codon, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i8**, i8*** %code.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %23, i64 %idxprom
  %24 = load i8*, i8** %arrayidx, align 8
  %call32 = call i8* @strcpy(i8* %21, i8* %24) #5
  %25 = load i32, i32* %codon, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load i8**, i8*** %code.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %26, i64 %idxprom33
  %27 = load i8*, i8** %arrayidx34, align 8
  %call35 = call i64 @strlen(i8* %27) #4
  %28 = load i8*, i8** %aaptr, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %28, i64 %call35
  store i8* %add.ptr36, i8** %aaptr, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end
  %29 = load i8*, i8** %seq.addr, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %29, i64 3
  store i8* %add.ptr38, i8** %seq.addr, align 8
  br label %for.cond

for.end.39:                                       ; preds = %land.end
  %30 = load i8*, i8** %aaseq, align 8
  store i8* %30, i8** %retval
  br label %return

return:                                           ; preds = %for.end.39, %if.then
  %31 = load i8*, i8** %retval
  ret i8* %31
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @Die(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
