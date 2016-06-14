; ModuleID = 'prefix.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@std_prefix = internal global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_ROOT\00", align 1

; Function Attrs: nounwind uwtable
define i8* @update_path(i8* %path, i8* %key) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %result = alloca i8*, align 8
  %free_key = alloca i8, align 1
  store i8* %path, i8** %path.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %1 = load i8*, i8** @std_prefix, align 8
  %2 = load i8*, i8** @std_prefix, align 8
  %call = call i64 @strlen(i8* %2) #5
  %call1 = call i32 @strncmp(i8* %0, i8* %1, i64 %call) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %key.addr, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8 0, i8* %free_key, align 1
  %4 = load i8*, i8** %key.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp ne i32 %conv, 36
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load i8*, i8** %key.addr, align 8
  %call5 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* %6, i8* null)
  store i8* %call5, i8** %key.addr, align 8
  store i8 1, i8* %free_key, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %7 = load i8*, i8** %key.addr, align 8
  %8 = load i8*, i8** @std_prefix, align 8
  %call6 = call i64 @strlen(i8* %8) #5
  %9 = load i8*, i8** %path.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 %call6
  %call8 = call noalias i8* (i8*, ...) @concat(i8* %7, i8* %arrayidx7, i8* null)
  store i8* %call8, i8** %result, align 8
  %10 = load i8, i8* %free_key, align 1
  %tobool9 = trunc i8 %10 to i1
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %11 = load i8*, i8** %key.addr, align 8
  call void @free(i8* %11) #4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %12 = load i8*, i8** %result, align 8
  %call12 = call i8* @translate_name(i8* %12)
  store i8* %call12, i8** %result, align 8
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load i8*, i8** %path.addr, align 8
  %call13 = call noalias i8* @xstrdup(i8* %13)
  store i8* %call13, i8** %result, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.end.11
  %14 = load i8*, i8** %result, align 8
  ret i8* %14
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare noalias i8* @concat(i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @translate_name(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %code = alloca i8, align 1
  %key = alloca i8*, align 8
  %old_name = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %keylen = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.36, %entry
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  store i8 %1, i8* %code, align 1
  %2 = load i8, i8* %code, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 64
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %3 = load i8, i8* %code, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp ne i32 %conv2, 36
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end.41

if.end:                                           ; preds = %land.lhs.true, %for.cond
  store i32 0, i32* %keylen, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.end
  %4 = load i32, i32* %keylen, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %5 = load i8*, i8** %name.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.5
  %7 = load i32, i32* %keylen, align 4
  %add10 = add nsw i32 %7, 1
  %idxprom11 = sext i32 %add10 to i64
  %8 = load i8*, i8** %name.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 %idxprom11
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %9 to i32
  %cmp14 = icmp eq i32 %conv13, 47
  %lnot = xor i1 %cmp14, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.5
  %10 = phi i1 [ false, %for.cond.5 ], [ %lnot, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %keylen, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %keylen, align 4
  br label %for.cond.5

for.end:                                          ; preds = %land.end
  %12 = load i32, i32* %keylen, align 4
  %add16 = add nsw i32 %12, 1
  %conv17 = sext i32 %add16 to i64
  %13 = alloca i8, i64 %conv17
  store i8* %13, i8** %key, align 8
  %14 = load i8*, i8** %key, align 8
  %15 = load i8*, i8** %name.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i32, i32* %keylen, align 4
  %conv19 = sext i32 %16 to i64
  %call = call i8* @strncpy(i8* %14, i8* %arrayidx18, i64 %conv19) #4
  %17 = load i32, i32* %keylen, align 4
  %idxprom20 = sext i32 %17 to i64
  %18 = load i8*, i8** %key, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 %idxprom20
  store i8 0, i8* %arrayidx21, align 1
  %19 = load i8, i8* %code, align 1
  %conv22 = sext i8 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 64
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %for.end
  %20 = load i8*, i8** %key, align 8
  %call26 = call i8* @get_key_value(i8* %20)
  store i8* %call26, i8** %prefix, align 8
  %21 = load i8*, i8** %prefix, align 8
  %cmp27 = icmp eq i8* %21, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.25
  %22 = load i8*, i8** @std_prefix, align 8
  store i8* %22, i8** %prefix, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.25
  br label %if.end.32

if.else:                                          ; preds = %for.end
  %23 = load i8*, i8** %key, align 8
  %call31 = call i8* @getenv(i8* %23) #4
  store i8* %call31, i8** %prefix, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.end.30
  %24 = load i8*, i8** %prefix, align 8
  %cmp33 = icmp eq i8* %24, null
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %prefix, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.32
  %25 = load i8*, i8** %name.addr, align 8
  store i8* %25, i8** %old_name, align 8
  %26 = load i8*, i8** %prefix, align 8
  %27 = load i32, i32* %keylen, align 4
  %add37 = add nsw i32 %27, 1
  %idxprom38 = sext i32 %add37 to i64
  %28 = load i8*, i8** %name.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %28, i64 %idxprom38
  %call40 = call noalias i8* (i8*, ...) @concat(i8* %26, i8* %arrayidx39, i8* null)
  store i8* %call40, i8** %name.addr, align 8
  %29 = load i8*, i8** %old_name, align 8
  call void @free(i8* %29) #4
  br label %for.cond

for.end.41:                                       ; preds = %if.then
  %30 = load i8*, i8** %name.addr, align 8
  ret i8* %30
}

declare noalias i8* @xstrdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @set_std_prefix(i8* %prefix, i32 %len) #0 {
entry:
  %prefix.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %prefix, i8** %prefix.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %prefix.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %call = call i8* @save_string(i8* %0, i32 %1)
  store i8* %call, i8** @std_prefix, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @save_string(i8* %s, i32 %len) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @xmalloc(i64 %conv)
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %conv1 = sext i32 %3 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 %conv1, i32 1, i1 false)
  %4 = load i32, i32* %len.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %result, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %6 = load i8*, i8** %result, align 8
  ret i8* %6
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i8* @get_key_value(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %temp = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* null, i8** %prefix, align 8
  store i8* null, i8** %temp, align 8
  %0 = load i8*, i8** %prefix, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %call = call noalias i8* (i8*, ...) @concat(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* null)
  store i8* %call, i8** %temp, align 8
  %call1 = call i8* @getenv(i8* %call) #4
  store i8* %call1, i8** %prefix, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %prefix, align 8
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load i8*, i8** @std_prefix, align 8
  store i8* %3, i8** %prefix, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %4 = load i8*, i8** %temp, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.4
  %5 = load i8*, i8** %temp, align 8
  call void @free(i8* %5) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.4
  %6 = load i8*, i8** %prefix, align 8
  ret i8* %6
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
