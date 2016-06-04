; ModuleID = 'getpwd.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@getpwd.pwd = internal global i8* null, align 8
@getpwd.failure_errno = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: nounwind uwtable
define i8* @getpwd() #0 {
entry:
  %p = alloca i8*, align 8
  %s = alloca i64, align 8
  %dotstat = alloca %struct.stat, align 8
  %pwdstat = alloca %struct.stat, align 8
  %e = alloca i32, align 4
  %0 = load i8*, i8** @getpwd.pwd, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end.32, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @getpwd.failure_errno, align 4
  %call = call i32* @__errno_location() #4
  store i32 %2, i32* %call, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end.32, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5
  store i8* %call2, i8** %p, align 8
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %land.lhs.true.3, label %if.then.22

land.lhs.true.3:                                  ; preds = %if.then
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv, 47
  br i1 %cmp4, label %land.lhs.true.6, label %if.then.22

land.lhs.true.6:                                  ; preds = %land.lhs.true.3
  %5 = load i8*, i8** %p, align 8
  %call7 = call i32 @stat(i8* %5, %struct.stat* %pwdstat) #5
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true.10, label %if.then.22

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %call11 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct.stat* %dotstat) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true.14, label %if.then.22

land.lhs.true.14:                                 ; preds = %land.lhs.true.10
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %dotstat, i32 0, i32 1
  %6 = load i64, i64* %st_ino, align 8
  %st_ino15 = getelementptr inbounds %struct.stat, %struct.stat* %pwdstat, i32 0, i32 1
  %7 = load i64, i64* %st_ino15, align 8
  %cmp16 = icmp eq i64 %6, %7
  br i1 %cmp16, label %land.lhs.true.18, label %if.then.22

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %dotstat, i32 0, i32 0
  %8 = load i64, i64* %st_dev, align 8
  %st_dev19 = getelementptr inbounds %struct.stat, %struct.stat* %pwdstat, i32 0, i32 0
  %9 = load i64, i64* %st_dev19, align 8
  %cmp20 = icmp eq i64 %8, %9
  br i1 %cmp20, label %if.end.31, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.18, %land.lhs.true.14, %land.lhs.true.10, %land.lhs.true.6, %land.lhs.true.3, %if.then
  store i64 100, i64* %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.22
  %10 = load i64, i64* %s, align 8
  %call23 = call noalias i8* @xmalloc(i64 %10)
  store i8* %call23, i8** %p, align 8
  %11 = load i64, i64* %s, align 8
  %call24 = call i8* @getcwd(i8* %call23, i64 %11) #5
  %tobool25 = icmp ne i8* %call24, null
  %lnot = xor i1 %tobool25, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call26 = call i32* @__errno_location() #4
  %12 = load i32, i32* %call26, align 4
  store i32 %12, i32* %e, align 4
  %13 = load i8*, i8** %p, align 8
  call void @free(i8* %13) #5
  %14 = load i32, i32* %e, align 4
  %cmp27 = icmp ne i32 %14, 34
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %for.body
  %15 = load i32, i32* %e, align 4
  store i32 %15, i32* @getpwd.failure_errno, align 4
  %call30 = call i32* @__errno_location() #4
  store i32 %15, i32* %call30, align 4
  store i8* null, i8** %p, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i64, i64* %s, align 8
  %mul = mul i64 %16, 2
  store i64 %mul, i64* %s, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.29, %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %land.lhs.true.18
  %17 = load i8*, i8** %p, align 8
  store i8* %17, i8** @getpwd.pwd, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true, %entry
  %18 = load i8*, i8** %p, align 8
  ret i8* %18
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #2

declare noalias i8* @xmalloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
