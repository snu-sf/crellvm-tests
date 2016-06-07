; ModuleID = 'str2words.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @str2words(i8* %line, i8** %ptr, i32 %max_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %max_ptr.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8
  store i8** %ptr, i8*** %ptr.addr, align 8
  store i32 %max_ptr, i32* %max_ptr.addr, align 4
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.57, %entry
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.cond
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load i8*, i8** %line.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %idxprom2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %call = call i16** @__ctype_b_loc() #2
  %6 = load i16*, i16** %call, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %6, i64 %idxprom5
  %7 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %7 to i32
  %and = and i32 %conv7, 8192
  %tobool8 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %8 = phi i1 [ false, %for.cond.1 ], [ %tobool8, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %land.end
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i8*, i8** %line.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %tobool11 = icmp ne i8 %12, 0
  br i1 %tobool11, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  br label %for.end.61

if.end:                                           ; preds = %for.end
  %13 = load i32, i32* %n, align 4
  %14 = load i32, i32* %max_ptr.addr, align 4
  %cmp = icmp sge i32 %13, %14
  br i1 %cmp, label %if.then.13, label %if.end.29

if.then.13:                                       ; preds = %if.end
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.27, %if.then.13
  %15 = load i32, i32* %i, align 4
  %cmp15 = icmp sge i32 %15, 0
  br i1 %cmp15, label %for.body.17, label %for.end.28

for.body.17:                                      ; preds = %for.cond.14
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load i8*, i8** %line.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 %idxprom18
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %for.body.17
  %19 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %19 to i64
  %20 = load i8*, i8** %line.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 %idxprom24
  store i8 32, i8* %arrayidx25, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %for.body.17
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %21 = load i32, i32* %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.14

for.end.28:                                       ; preds = %for.cond.14
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end
  %22 = load i8*, i8** %line.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %24 = load i32, i32* %n, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, i32* %n, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load i8**, i8*** %ptr.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %25, i64 %idxprom31
  store i8* %add.ptr, i8** %arrayidx32, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.50, %if.end.29
  %26 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %26 to i64
  %27 = load i8*, i8** %line.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %27, i64 %idxprom34
  %28 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %28 to i32
  %tobool37 = icmp ne i32 %conv36, 0
  br i1 %tobool37, label %land.rhs.38, label %land.end.48

land.rhs.38:                                      ; preds = %for.cond.33
  %29 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %30 = load i8*, i8** %line.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %30, i64 %idxprom39
  %31 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %31 to i32
  %idxprom42 = sext i32 %conv41 to i64
  %call43 = call i16** @__ctype_b_loc() #2
  %32 = load i16*, i16** %call43, align 8
  %arrayidx44 = getelementptr inbounds i16, i16* %32, i64 %idxprom42
  %33 = load i16, i16* %arrayidx44, align 2
  %conv45 = zext i16 %33 to i32
  %and46 = and i32 %conv45, 8192
  %tobool47 = icmp ne i32 %and46, 0
  %lnot = xor i1 %tobool47, true
  br label %land.end.48

land.end.48:                                      ; preds = %land.rhs.38, %for.cond.33
  %34 = phi i1 [ false, %for.cond.33 ], [ %lnot, %land.rhs.38 ]
  br i1 %34, label %for.body.49, label %for.end.52

for.body.49:                                      ; preds = %land.end.48
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.49
  %35 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %35, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.33

for.end.52:                                       ; preds = %land.end.48
  %36 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %36 to i64
  %37 = load i8*, i8** %line.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %37, i64 %idxprom53
  %38 = load i8, i8* %arrayidx54, align 1
  %tobool55 = icmp ne i8 %38, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %for.end.52
  br label %for.end.61

if.end.57:                                        ; preds = %for.end.52
  %39 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %39, 1
  store i32 %inc58, i32* %i, align 4
  %idxprom59 = sext i32 %39 to i64
  %40 = load i8*, i8** %line.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %40, i64 %idxprom59
  store i8 0, i8* %arrayidx60, align 1
  br label %for.cond

for.end.61:                                       ; preds = %if.then.56, %if.then
  %41 = load i32, i32* %n, align 4
  store i32 %41, i32* %retval
  br label %return

return:                                           ; preds = %for.end.61, %for.end.28
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
