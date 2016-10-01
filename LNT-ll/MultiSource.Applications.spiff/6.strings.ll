; ModuleID = './MultiSource.Applications.spiff/6.strings.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @S_wordcpy(i8* %to, i8* %from) #0 {
entry:
  %to.addr = alloca i8*, align 8
  %from.addr = alloca i8*, align 8
  store i8* %to, i8** %to.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %from.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %from.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #5
  %4 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %5 to i32
  %and = and i32 %conv3, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load i8*, i8** %from.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %call6 = call i16** @__ctype_b_loc() #5
  %8 = load i16*, i16** %call6, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %8, i64 %idxprom5
  %9 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %9 to i32
  %and9 = and i32 %conv8, 8192
  %tobool10 = icmp ne i32 %and9, 0
  %lnot = xor i1 %tobool10, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i8*, i8** %from.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %from.addr, align 8
  %12 = load i8, i8* %11, align 1
  %13 = load i8*, i8** %to.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr11, i8** %to.addr, align 8
  store i8 %12, i8* %13, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i8*, i8** %to.addr, align 8
  store i8 0, i8* %14, align 1
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
define void @S_skipword(i8** %theptr) #0 {
entry:
  %theptr.addr = alloca i8**, align 8
  store i8** %theptr, i8*** %theptr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8**, i8*** %theptr.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %3 = load i8**, i8*** %theptr.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #5
  %6 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %7 to i32
  %and = and i32 %conv3, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i8**, i8*** %theptr.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %conv4 = sext i8 %10 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %call6 = call i16** @__ctype_b_loc() #5
  %11 = load i16*, i16** %call6, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %11, i64 %idxprom5
  %12 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %12 to i32
  %and9 = and i32 %conv8, 8192
  %tobool10 = icmp ne i32 %and9, 0
  %lnot = xor i1 %tobool10, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i8**, i8*** %theptr.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %14, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @S_skipspace(i8** %theptr) #0 {
entry:
  %theptr.addr = alloca i8**, align 8
  store i8** %theptr, i8*** %theptr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8**, i8*** %theptr.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8**, i8*** %theptr.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #5
  %6 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %7 to i32
  %and = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8**, i8*** %theptr.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %9, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @S_nextword(i8** %theptr) #0 {
entry:
  %theptr.addr = alloca i8**, align 8
  store i8** %theptr, i8*** %theptr.addr, align 8
  %0 = load i8**, i8*** %theptr.addr, align 8
  call void @S_skipword(i8** %0)
  %1 = load i8**, i8*** %theptr.addr, align 8
  call void @S_skipspace(i8** %1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @S_wordcmp(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  %2 = load i8*, i8** %s2.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  %call1 = call i32 @strncmp(i8* %0, i8* %1, i64 %call) #6
  ret i32 %call1
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define void @S_trimzeros(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %end = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %call
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %end, align 8
  %3 = load i8*, i8** %str.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 1
  %cmp = icmp ugt i8* %2, %add.ptr1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** %end, align 8
  %5 = load i8*, i8** %end, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 48, %conv
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i8*, i8** %end, align 8
  store i8 0, i8* %7, align 1
  br label %if.end

if.else:                                          ; preds = %while.body
  br label %return

if.end:                                           ; preds = %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %return

return:                                           ; preds = %while.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @S_savestr(i8** %to, i8* %from) #0 {
entry:
  %to.addr = alloca i8**, align 8
  %from.addr = alloca i8*, align 8
  store i8** %to, i8*** %to.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  %0 = load i8**, i8*** %to.addr, align 8
  %1 = load i8*, i8** %from.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  call void (i8**, i64, ...) bitcast (void (i8**, i32)* @S_allocstr to void (i8**, i64, ...)*)(i8** %0, i64 %call)
  %2 = load i8**, i8*** %to.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %from.addr, align 8
  %call1 = call i8* @strcpy(i8* %3, i8* %4) #7
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @S_savenstr(i8** %to, i8* %from, i32 %cnt) #0 {
entry:
  %to.addr = alloca i8**, align 8
  %from.addr = alloca i8*, align 8
  %cnt.addr = alloca i32, align 4
  store i8** %to, i8*** %to.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  store i32 %cnt, i32* %cnt.addr, align 4
  %0 = load i8**, i8*** %to.addr, align 8
  %1 = load i32, i32* %cnt.addr, align 4
  call void @S_allocstr(i8** %0, i32 %1)
  %2 = load i8**, i8*** %to.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %from.addr, align 8
  %5 = load i32, i32* %cnt.addr, align 4
  %conv = sext i32 %5 to i64
  %call = call i8* @strncpy(i8* %3, i8* %4, i64 %conv) #7
  %6 = load i8**, i8*** %to.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* %cnt.addr, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8 0, i8* %add.ptr, align 1
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @S_allocstr(i8** %to, i32 %size) #0 {
entry:
  %to.addr = alloca i8**, align 8
  %size.addr = alloca i32, align 4
  store i8** %to, i8*** %to.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 %mul)
  %1 = bitcast i32* %call to i8*
  %2 = load i8**, i8*** %to.addr, align 8
  store i8* %1, i8** %2, align 8
  ret void
}

declare i32* @_Z_myalloc(...) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
