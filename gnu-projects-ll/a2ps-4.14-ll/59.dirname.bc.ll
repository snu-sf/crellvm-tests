; ModuleID = './lib/dirname.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: nounwind uwtable
define i8* @dir_name(i8* %path) #0 {
entry:
  %retval = alloca i8*, align 8
  %path.addr = alloca i8*, align 8
  %newpath = alloca i8*, align 8
  %slash = alloca i8*, align 8
  %length = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #3
  store i8* %call, i8** %slash, align 8
  %1 = load i8*, i8** %slash, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %path.addr, align 8
  store i32 1, i32* %length, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %2 = load i8*, i8** %slash, align 8
  %3 = load i8*, i8** %path.addr, align 8
  %cmp1 = icmp ugt i8* %2, %3
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %slash, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %slash, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr, i8** %slash, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i8*, i8** %slash, align 8
  %9 = load i8*, i8** %path.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv4 = trunc i64 %add to i32
  store i32 %conv4, i32* %length, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %10 = load i32, i32* %length, align 4
  %add5 = add nsw i32 %10, 1
  %conv6 = sext i32 %add5 to i64
  %call7 = call noalias i8* @malloc(i64 %conv6) #4
  store i8* %call7, i8** %newpath, align 8
  %11 = load i8*, i8** %newpath, align 8
  %cmp8 = icmp eq i8* %11, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %12 = load i8*, i8** %newpath, align 8
  %13 = load i8*, i8** %path.addr, align 8
  %14 = load i32, i32* %length, align 4
  %conv12 = sext i32 %14 to i64
  %call13 = call i8* @strncpy(i8* %12, i8* %13, i64 %conv12) #4
  %15 = load i32, i32* %length, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %newpath, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %17 = load i8*, i8** %newpath, align 8
  store i8* %17, i8** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
