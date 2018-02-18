; ModuleID = './getbuildinfo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_GetBuildInfo.buildinfo = internal global [52 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s%s%s, %.20s, %.9s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Jul 22 2016\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"12:54:07\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tip\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Py_GetBuildInfo() #0 {
entry:
  %revision = alloca i8*, align 8
  %sep = alloca i8*, align 8
  %hgid = alloca i8*, align 8
  %call = call i8* @_Py_hgversion()
  store i8* %call, i8** %revision, align 8
  %0 = load i8*, i8** %revision, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)
  store i8* %cond, i8** %sep, align 8
  %call1 = call i8* @_Py_hgidentifier()
  store i8* %call1, i8** %hgid, align 8
  %2 = load i8*, i8** %hgid, align 8
  %3 = load i8, i8* %2, align 1
  %tobool2 = icmp ne i8 %3, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8** %hgid, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %hgid, align 8
  %5 = load i8*, i8** %sep, align 8
  %6 = load i8*, i8** %revision, align 8
  %call3 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @Py_GetBuildInfo.buildinfo, i32 0, i32 0), i64 52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* %4, i8* %5, i8* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  ret i8* getelementptr inbounds ([52 x i8], [52 x i8]* @Py_GetBuildInfo.buildinfo, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @_Py_hgversion() #0 {
entry:
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @_Py_hgidentifier() #0 {
entry:
  %hgtag = alloca i8*, align 8
  %hgid = alloca i8*, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %hgtag, align 8
  %0 = load i8*, i8** %hgtag, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %hgtag, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #3
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %hgtag, align 8
  store i8* %3, i8** %hgid, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %hgid, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %hgid, align 8
  ret i8* %4
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
