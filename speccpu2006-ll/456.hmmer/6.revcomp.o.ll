; ModuleID = 'revcomp.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @revcomp(i8* %comp, i8* %seq) #0 {
entry:
  %retval = alloca i8*, align 8
  %comp.addr = alloca i8*, align 8
  %seq.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %comp, i8** %comp.addr, align 8
  store i8* %seq, i8** %seq.addr, align 8
  %0 = load i8*, i8** %comp.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %seq.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i8*, i8** %comp.addr, align 8
  %3 = load i8*, i8** %seq.addr, align 8
  %call = call i32 @StrReverse(i8* %2, i8* %3)
  %4 = load i8*, i8** %comp.addr, align 8
  store i8* %4, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %5 = load i8*, i8** %s, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %c, align 1
  %9 = load i8, i8* %c, align 1
  %conv6 = sext i8 %9 to i32
  %call7 = call i32 @sre_toupper(i32 %conv6)
  %conv8 = trunc i32 %call7 to i8
  store i8 %conv8, i8* %c, align 1
  %10 = load i8, i8* %c, align 1
  %conv9 = sext i8 %10 to i32
  switch i32 %conv9, label %sw.default [
    i32 65, label %sw.bb
    i32 67, label %sw.bb.10
    i32 71, label %sw.bb.11
    i32 84, label %sw.bb.12
    i32 85, label %sw.bb.13
    i32 82, label %sw.bb.14
    i32 89, label %sw.bb.15
    i32 77, label %sw.bb.16
    i32 75, label %sw.bb.17
    i32 83, label %sw.bb.18
    i32 87, label %sw.bb.19
    i32 72, label %sw.bb.20
    i32 68, label %sw.bb.21
    i32 66, label %sw.bb.22
    i32 86, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %for.body
  store i8 84, i8* %c, align 1
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.body
  store i8 71, i8* %c, align 1
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.body
  store i8 67, i8* %c, align 1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.body
  store i8 65, i8* %c, align 1
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body
  store i8 65, i8* %c, align 1
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.body
  store i8 89, i8* %c, align 1
  br label %sw.epilog

sw.bb.15:                                         ; preds = %for.body
  store i8 82, i8* %c, align 1
  br label %sw.epilog

sw.bb.16:                                         ; preds = %for.body
  store i8 75, i8* %c, align 1
  br label %sw.epilog

sw.bb.17:                                         ; preds = %for.body
  store i8 77, i8* %c, align 1
  br label %sw.epilog

sw.bb.18:                                         ; preds = %for.body
  store i8 83, i8* %c, align 1
  br label %sw.epilog

sw.bb.19:                                         ; preds = %for.body
  store i8 87, i8* %c, align 1
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.body
  store i8 68, i8* %c, align 1
  br label %sw.epilog

sw.bb.21:                                         ; preds = %for.body
  store i8 72, i8* %c, align 1
  br label %sw.epilog

sw.bb.22:                                         ; preds = %for.body
  store i8 86, i8* %c, align 1
  br label %sw.epilog

sw.bb.23:                                         ; preds = %for.body
  store i8 66, i8* %c, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb
  %11 = load i8*, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  %conv24 = sext i8 %12 to i32
  %idxprom = sext i32 %conv24 to i64
  %call25 = call i16** @__ctype_b_loc() #3
  %13 = load i16*, i16** %call25, align 8
  %arrayidx = getelementptr inbounds i16, i16* %13, i64 %idxprom
  %14 = load i16, i16* %arrayidx, align 2
  %conv26 = zext i16 %14 to i32
  %and = and i32 %conv26, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %sw.epilog
  %15 = load i8, i8* %c, align 1
  %conv28 = sext i8 %15 to i32
  %call29 = call i32 @sre_tolower(i32 %conv28)
  %conv30 = trunc i32 %call29 to i8
  store i8 %conv30, i8* %c, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %sw.epilog
  %16 = load i8, i8* %c, align 1
  %17 = load i8*, i8** %s, align 8
  store i8 %16, i8* %17, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %18 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %comp.addr, align 8
  store i8* %19, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2, %if.then
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare i32 @StrReverse(i8*, i8*) #1

declare i32 @sre_toupper(i32) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

declare i32 @sre_tolower(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
