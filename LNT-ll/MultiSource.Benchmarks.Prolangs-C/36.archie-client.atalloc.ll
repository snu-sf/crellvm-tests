; ModuleID = './MultiSource.Benchmarks.Prolangs-C/36.archie-client.atalloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }

@pattrib_count = global i32 0, align 4
@pattrib_max = global i32 0, align 4
@lfree = internal global %struct.pattrib* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pattrib* @atalloc() #0 {
entry:
  %retval = alloca %struct.pattrib*, align 8
  %at = alloca %struct.pattrib*, align 8
  %0 = load %struct.pattrib*, %struct.pattrib** @lfree, align 8
  %tobool = icmp ne %struct.pattrib* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.pattrib*, %struct.pattrib** @lfree, align 8
  store %struct.pattrib* %1, %struct.pattrib** %at, align 8
  %2 = load %struct.pattrib*, %struct.pattrib** @lfree, align 8
  %next = getelementptr inbounds %struct.pattrib, %struct.pattrib* %2, i32 0, i32 5
  %3 = load %struct.pattrib*, %struct.pattrib** %next, align 8
  store %struct.pattrib* %3, %struct.pattrib** @lfree, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 48) #3
  %4 = bitcast i8* %call to %struct.pattrib*
  store %struct.pattrib* %4, %struct.pattrib** %at, align 8
  %5 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %tobool1 = icmp ne %struct.pattrib* %5, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  store %struct.pattrib* null, %struct.pattrib** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %6 = load i32, i32* @pattrib_max, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @pattrib_max, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* @pattrib_count, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, i32* @pattrib_count, align 4
  %8 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %9 = bitcast %struct.pattrib* %8 to i8*
  call void @bzero(i8* %9, i32 48)
  %10 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  %precedence = getelementptr inbounds %struct.pattrib, %struct.pattrib* %10, i32 0, i32 0
  store i8 79, i8* %precedence, align 1
  %11 = load %struct.pattrib*, %struct.pattrib** %at, align 8
  store %struct.pattrib* %11, %struct.pattrib** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %12 = load %struct.pattrib*, %struct.pattrib** %retval
  ret %struct.pattrib* %12
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @bzero(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @atfree(%struct.pattrib* %at) #0 {
entry:
  %at.addr = alloca %struct.pattrib*, align 8
  store %struct.pattrib* %at, %struct.pattrib** %at.addr, align 8
  %0 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %aname = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i32 0, i32 1
  %1 = load i8*, i8** %aname, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %aname1 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %2, i32 0, i32 1
  %3 = load i8*, i8** %aname1, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %avtype = getelementptr inbounds %struct.pattrib, %struct.pattrib* %4, i32 0, i32 2
  %5 = load i8*, i8** %avtype, align 8
  %call = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %value = getelementptr inbounds %struct.pattrib, %struct.pattrib* %6, i32 0, i32 3
  %ascii = bitcast %union.avalue* %value to i8**
  %7 = load i8*, i8** %ascii, align 8
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %value4 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %8, i32 0, i32 3
  %ascii5 = bitcast %union.avalue* %value4 to i8**
  %9 = load i8*, i8** %ascii5, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %10 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %avtype7 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %10, i32 0, i32 2
  %11 = load i8*, i8** %avtype7, align 8
  %call8 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.16

land.lhs.true.10:                                 ; preds = %if.end.6
  %12 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %value11 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %12, i32 0, i32 3
  %link = bitcast %union.avalue* %value11 to %struct.vlink**
  %13 = load %struct.vlink*, %struct.vlink** %link, align 8
  %tobool12 = icmp ne %struct.vlink* %13, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true.10
  %14 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %value14 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %14, i32 0, i32 3
  %link15 = bitcast %union.avalue* %value14 to %struct.vlink**
  %15 = load %struct.vlink*, %struct.vlink** %link15, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* %15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %land.lhs.true.10, %if.end.6
  %16 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %avtype17 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %16, i32 0, i32 2
  %17 = load i8*, i8** %avtype17, align 8
  %tobool18 = icmp ne i8* %17, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  %18 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %avtype20 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %18, i32 0, i32 2
  %19 = load i8*, i8** %avtype20, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* %19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.16
  %20 = load %struct.pattrib*, %struct.pattrib** @lfree, align 8
  %21 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %next = getelementptr inbounds %struct.pattrib, %struct.pattrib* %21, i32 0, i32 5
  store %struct.pattrib* %20, %struct.pattrib** %next, align 8
  %22 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %previous = getelementptr inbounds %struct.pattrib, %struct.pattrib* %22, i32 0, i32 4
  store %struct.pattrib* null, %struct.pattrib** %previous, align 8
  %23 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  store %struct.pattrib* %23, %struct.pattrib** @lfree, align 8
  %24 = load i32, i32* @pattrib_count, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* @pattrib_count, align 4
  ret void
}

declare void @stfree(...) #2

declare i32 @strcmp(i8*, i8*) #2

declare void @vlfree(...) #2

; Function Attrs: nounwind uwtable
define void @atlfree(%struct.pattrib* %at) #0 {
entry:
  %at.addr = alloca %struct.pattrib*, align 8
  %nxt = alloca %struct.pattrib*, align 8
  store %struct.pattrib* %at, %struct.pattrib** %at.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %cmp = icmp ne %struct.pattrib* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  %next = getelementptr inbounds %struct.pattrib, %struct.pattrib* %1, i32 0, i32 5
  %2 = load %struct.pattrib*, %struct.pattrib** %next, align 8
  store %struct.pattrib* %2, %struct.pattrib** %nxt, align 8
  %3 = load %struct.pattrib*, %struct.pattrib** %at.addr, align 8
  call void @atfree(%struct.pattrib* %3)
  %4 = load %struct.pattrib*, %struct.pattrib** %nxt, align 8
  store %struct.pattrib* %4, %struct.pattrib** %at.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
