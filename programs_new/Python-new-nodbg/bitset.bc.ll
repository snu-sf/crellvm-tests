; ModuleID = './bitset.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"no mem for bitset\00", align 1

; Function Attrs: nounwind uwtable
define i8* @_Py_newbitset(i32 %nbits) #0 {
entry:
  %nbits.addr = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %ss = alloca i8*, align 8
  store i32 %nbits, i32* %nbits.addr, align 4
  %0 = load i32, i32* %nbits.addr, align 4
  %conv = sext i32 %0 to i64
  %add = add i64 %conv, 8
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 8
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %nbytes, align 4
  %1 = load i32, i32* %nbytes, align 4
  %conv2 = sext i32 %1 to i64
  %mul = mul i64 1, %conv2
  %call = call i8* @PyObject_Malloc(i64 %mul)
  store i8* %call, i8** %ss, align 8
  %2 = load i8*, i8** %ss, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %nbytes, align 4
  %4 = load i8*, i8** %ss, align 8
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %ss, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, i32* %nbytes, align 4
  %dec = add i32 %5, -1
  store i32 %dec, i32* %nbytes, align 4
  %cmp4 = icmp sge i32 %dec, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %ss, align 8
  %incdec.ptr = getelementptr i8, i8* %6, i32 -1
  store i8* %incdec.ptr, i8** %ss, align 8
  store i8 0, i8* %incdec.ptr, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8*, i8** %ss, align 8
  ret i8* %7
}

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define void @_Py_delbitset(i8* %ss) #0 {
entry:
  %ss.addr = alloca i8*, align 8
  store i8* %ss, i8** %ss.addr, align 8
  %0 = load i8*, i8** %ss.addr, align 8
  call void @PyObject_Free(i8* %0)
  ret void
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @_Py_addbit(i8* %ss, i32 %ibit) #0 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca i8*, align 8
  %ibit.addr = alloca i32, align 4
  %ibyte = alloca i32, align 4
  %mask = alloca i8, align 1
  store i8* %ss, i8** %ss.addr, align 8
  store i32 %ibit, i32* %ibit.addr, align 4
  %0 = load i32, i32* %ibit.addr, align 4
  %conv = sext i32 %0 to i64
  %div = udiv i64 %conv, 8
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %ibyte, align 4
  %1 = load i32, i32* %ibit.addr, align 4
  %conv2 = sext i32 %1 to i64
  %rem = urem i64 %conv2, 8
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %conv3 = trunc i32 %shl to i8
  store i8 %conv3, i8* %mask, align 1
  %2 = load i32, i32* %ibyte, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %ss.addr, align 8
  %arrayidx = getelementptr i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %4 to i32
  %5 = load i8, i8* %mask, align 1
  %conv5 = sext i8 %5 to i32
  %and = and i32 %conv4, %conv5
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8, i8* %mask, align 1
  %conv6 = sext i8 %6 to i32
  %7 = load i32, i32* %ibyte, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i8*, i8** %ss.addr, align 8
  %arrayidx8 = getelementptr i8, i8* %8, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %9 to i32
  %or = or i32 %conv9, %conv6
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %arrayidx8, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @_Py_samebitset(i8* %ss1, i8* %ss2, i32 %nbits) #0 {
entry:
  %retval = alloca i32, align 4
  %ss1.addr = alloca i8*, align 8
  %ss2.addr = alloca i8*, align 8
  %nbits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %ss1, i8** %ss1.addr, align 8
  store i8* %ss2, i8** %ss2.addr, align 8
  store i32 %nbits, i32* %nbits.addr, align 4
  %0 = load i32, i32* %nbits.addr, align 4
  %conv = sext i32 %0 to i64
  %add = add i64 %conv, 8
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 8
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load i32, i32* %i, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %ss1.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %ss1.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv3 = sext i8 %3 to i32
  %4 = load i8*, i8** %ss2.addr, align 8
  %incdec.ptr4 = getelementptr i8, i8* %4, i32 1
  store i8* %incdec.ptr4, i8** %ss2.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp ne i32 %conv3, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @_Py_mergebitset(i8* %ss1, i8* %ss2, i32 %nbits) #0 {
entry:
  %ss1.addr = alloca i8*, align 8
  %ss2.addr = alloca i8*, align 8
  %nbits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %ss1, i8** %ss1.addr, align 8
  store i8* %ss2, i8** %ss2.addr, align 8
  store i32 %nbits, i32* %nbits.addr, align 4
  %0 = load i32, i32* %nbits.addr, align 4
  %conv = sext i32 %0 to i64
  %add = add i64 %conv, 8
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 8
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, i32* %i, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %ss2.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %ss2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv3 = sext i8 %3 to i32
  %4 = load i8*, i8** %ss1.addr, align 8
  %incdec.ptr4 = getelementptr i8, i8* %4, i32 1
  store i8* %incdec.ptr4, i8** %ss1.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv5 = sext i8 %5 to i32
  %or = or i32 %conv5, %conv3
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, i8* %4, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
