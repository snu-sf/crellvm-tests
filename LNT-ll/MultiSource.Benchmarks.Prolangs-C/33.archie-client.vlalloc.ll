; ModuleID = './MultiSource.Benchmarks.Prolangs-C/33.archie-client.vlalloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }

@vlink_count = global i32 0, align 4
@vlink_max = global i32 0, align 4
@lfree = internal global %struct.vlink* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"INTERNET-D\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@string_count = external global i32, align 4

; Function Attrs: nounwind uwtable
define %struct.vlink* @vlalloc() #0 {
entry:
  %retval = alloca %struct.vlink*, align 8
  %vl = alloca %struct.vlink*, align 8
  %0 = load %struct.vlink*, %struct.vlink** @lfree, align 8
  %tobool = icmp ne %struct.vlink* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.vlink*, %struct.vlink** @lfree, align 8
  store %struct.vlink* %1, %struct.vlink** %vl, align 8
  %2 = load %struct.vlink*, %struct.vlink** @lfree, align 8
  %next = getelementptr inbounds %struct.vlink, %struct.vlink* %2, i32 0, i32 20
  %3 = load %struct.vlink*, %struct.vlink** %next, align 8
  store %struct.vlink* %3, %struct.vlink** @lfree, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 160) #3
  %4 = bitcast i8* %call to %struct.vlink*
  store %struct.vlink* %4, %struct.vlink** %vl, align 8
  %5 = load %struct.vlink*, %struct.vlink** %vl, align 8
  %tobool1 = icmp ne %struct.vlink* %5, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  store %struct.vlink* null, %struct.vlink** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %6 = load i32, i32* @vlink_max, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @vlink_max, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* @vlink_count, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, i32* @vlink_count, align 4
  %8 = load %struct.vlink*, %struct.vlink** %vl, align 8
  %9 = bitcast %struct.vlink* %8 to i8*
  call void @bzero(i8* %9, i32 160)
  %10 = load %struct.vlink*, %struct.vlink** %vl, align 8
  %linktype = getelementptr inbounds %struct.vlink, %struct.vlink* %10, i32 0, i32 2
  store i8 76, i8* %linktype, align 1
  %call5 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  %11 = load %struct.vlink*, %struct.vlink** %vl, align 8
  %type = getelementptr inbounds %struct.vlink, %struct.vlink* %11, i32 0, i32 4
  store i8* %call5, i8** %type, align 8
  %call6 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  %12 = load %struct.vlink*, %struct.vlink** %vl, align 8
  %hosttype = getelementptr inbounds %struct.vlink, %struct.vlink* %12, i32 0, i32 7
  store i8* %call6, i8** %hosttype, align 8
  %call7 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %13 = load %struct.vlink*, %struct.vlink** %vl, align 8
  %nametype = getelementptr inbounds %struct.vlink, %struct.vlink* %13, i32 0, i32 9
  store i8* %call7, i8** %nametype, align 8
  %14 = load %struct.vlink*, %struct.vlink** %vl, align 8
  store %struct.vlink* %14, %struct.vlink** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %15 = load %struct.vlink*, %struct.vlink** %retval
  ret %struct.vlink* %15
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @bzero(i8*, i32) #2

declare i8* @stcopy(...) #2

; Function Attrs: nounwind uwtable
define void @vlfree(%struct.vlink* %vl) #0 {
entry:
  %vl.addr = alloca %struct.vlink*, align 8
  store %struct.vlink* %vl, %struct.vlink** %vl.addr, align 8
  %0 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %dontfree = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i32 0, i32 0
  %1 = load i32, i32* %dontfree, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %name = getelementptr inbounds %struct.vlink, %struct.vlink* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %name3 = getelementptr inbounds %struct.vlink, %struct.vlink* %4, i32 0, i32 1
  %5 = load i8*, i8** %name3, align 8
  call void @free(i8* %5) #3
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %type = getelementptr inbounds %struct.vlink, %struct.vlink* %6, i32 0, i32 4
  %7 = load i8*, i8** %type, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* %7)
  %8 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %replicas = getelementptr inbounds %struct.vlink, %struct.vlink* %8, i32 0, i32 6
  %9 = load %struct.vlink*, %struct.vlink** %replicas, align 8
  %tobool5 = icmp ne %struct.vlink* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %10 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %replicas7 = getelementptr inbounds %struct.vlink, %struct.vlink* %10, i32 0, i32 6
  %11 = load %struct.vlink*, %struct.vlink** %replicas7, align 8
  call void @vllfree(%struct.vlink* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %12 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %hosttype = getelementptr inbounds %struct.vlink, %struct.vlink* %12, i32 0, i32 7
  %13 = load i8*, i8** %hosttype, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* %13)
  %14 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %host = getelementptr inbounds %struct.vlink, %struct.vlink* %14, i32 0, i32 8
  %15 = load i8*, i8** %host, align 8
  %tobool9 = icmp ne i8* %15, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %16 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %host11 = getelementptr inbounds %struct.vlink, %struct.vlink* %16, i32 0, i32 8
  %17 = load i8*, i8** %host11, align 8
  call void @free(i8* %17) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  %18 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %nametype = getelementptr inbounds %struct.vlink, %struct.vlink* %18, i32 0, i32 9
  %19 = load i8*, i8** %nametype, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* %19)
  %20 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %filename = getelementptr inbounds %struct.vlink, %struct.vlink* %20, i32 0, i32 10
  %21 = load i8*, i8** %filename, align 8
  %tobool13 = icmp ne i8* %21, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %22 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %filename15 = getelementptr inbounds %struct.vlink, %struct.vlink* %22, i32 0, i32 10
  %23 = load i8*, i8** %filename15, align 8
  call void @free(i8* %23) #3
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %24 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %args = getelementptr inbounds %struct.vlink, %struct.vlink* %24, i32 0, i32 16
  %25 = load i8*, i8** %args, align 8
  %tobool17 = icmp ne i8* %25, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %26 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %args19 = getelementptr inbounds %struct.vlink, %struct.vlink* %26, i32 0, i32 16
  %27 = load i8*, i8** %args19, align 8
  call void @free(i8* %27) #3
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  %28 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %lattrib = getelementptr inbounds %struct.vlink, %struct.vlink* %28, i32 0, i32 17
  %29 = load %struct.pattrib*, %struct.pattrib** %lattrib, align 8
  %tobool21 = icmp ne %struct.pattrib* %29, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %30 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %lattrib23 = getelementptr inbounds %struct.vlink, %struct.vlink* %30, i32 0, i32 17
  %31 = load %struct.pattrib*, %struct.pattrib** %lattrib23, align 8
  call void (%struct.pattrib*, ...) bitcast (void (...)* @atlfree to void (%struct.pattrib*, ...)*)(%struct.pattrib* %31)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  %32 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %f_info = getelementptr inbounds %struct.vlink, %struct.vlink* %32, i32 0, i32 18
  store %struct.pfile* null, %struct.pfile** %f_info, align 8
  %33 = load %struct.vlink*, %struct.vlink** @lfree, align 8
  %34 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %next = getelementptr inbounds %struct.vlink, %struct.vlink* %34, i32 0, i32 20
  store %struct.vlink* %33, %struct.vlink** %next, align 8
  %35 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %previous = getelementptr inbounds %struct.vlink, %struct.vlink* %35, i32 0, i32 19
  store %struct.vlink* null, %struct.vlink** %previous, align 8
  %36 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  store %struct.vlink* %36, %struct.vlink** @lfree, align 8
  %37 = load i32, i32* @vlink_count, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* @vlink_count, align 4
  %38 = load i32, i32* @string_count, align 4
  %sub = sub nsw i32 %38, 4
  store i32 %sub, i32* @string_count, align 4
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @stfree(...) #2

declare void @atlfree(...) #2

; Function Attrs: nounwind uwtable
define void @vllfree(%struct.vlink* %vl) #0 {
entry:
  %vl.addr = alloca %struct.vlink*, align 8
  %nxt = alloca %struct.vlink*, align 8
  store %struct.vlink* %vl, %struct.vlink** %vl.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %cmp = icmp ne %struct.vlink* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %dontfree = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i32 0, i32 0
  %2 = load i32, i32* %dontfree, align 4
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  %next = getelementptr inbounds %struct.vlink, %struct.vlink* %4, i32 0, i32 20
  %5 = load %struct.vlink*, %struct.vlink** %next, align 8
  store %struct.vlink* %5, %struct.vlink** %nxt, align 8
  %6 = load %struct.vlink*, %struct.vlink** %vl.addr, align 8
  call void @vlfree(%struct.vlink* %6)
  %7 = load %struct.vlink*, %struct.vlink** %nxt, align 8
  store %struct.vlink* %7, %struct.vlink** %vl.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
