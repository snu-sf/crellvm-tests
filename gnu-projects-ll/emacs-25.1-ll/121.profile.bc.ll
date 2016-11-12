; ModuleID = './lib-src/profile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@TV1 = internal global %struct.timespec zeroinitializer, align 8
@watch_not_started = internal global i32 1, align 4
@time_string = internal global [31 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [9 x i8] c"%lu.%0*d\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define { i64, i64 } @invalid_timespec() #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %call = call { i64, i64 } @make_timespec(i64 0, i64 -1)
  %0 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %2 = extractvalue { i64, i64 } %call, 0
  store i64 %2, i64* %1, align 8
  %3 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %4 = extractvalue { i64, i64 } %call, 1
  store i64 %4, i64* %3, align 8
  %5 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %6 = load { i64, i64 }, { i64, i64 }* %5, align 8
  ret { i64, i64 } %6
}

declare { i64, i64 } @make_timespec(i64, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @timespec_valid_p(i64 %t.coerce0, i64 %t.coerce1) #0 {
entry:
  %t = alloca %struct.timespec, align 8
  %0 = bitcast %struct.timespec* %t to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %t.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %t.coerce1, i64* %2
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %t, i32 0, i32 1
  %3 = load i64, i64* %tv_nsec, align 8
  %cmp = icmp sge i64 %3, 0
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define { i64, i64 } @current_timespec() #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %r = alloca %struct.timespec, align 8
  call void @gettime(%struct.timespec* %r)
  %0 = bitcast %struct.timespec* %retval to i8*
  %1 = bitcast %struct.timespec* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 16, i32 8, i1 false)
  %2 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %3 = load { i64, i64 }, { i64, i64 }* %2, align 8
  ret { i64, i64 } %3
}

declare void @gettime(%struct.timespec*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %call = call i32 @getchar()
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end.10

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %c, align 4
  switch i32 %0, label %sw.epilog [
    i32 122, label %sw.bb
    i32 112, label %sw.bb.1
    i32 113, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %while.body
  call void @reset_watch()
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  %call2 = call i8* @get_time()
  %call3 = call i32 @puts(i8* %call2)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  call void @exit(i32 0) #7
  unreachable

sw.epilog:                                        ; preds = %while.body, %sw.bb.1, %sw.bb
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.8, %sw.epilog
  %1 = load i32, i32* %c, align 4
  %cmp6 = icmp ne i32 %1, 10
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.5
  %2 = load i32, i32* %c, align 4
  %cmp7 = icmp ne i32 %2, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.5
  %3 = phi i1 [ false, %while.cond.5 ], [ %cmp7, %land.rhs ]
  br i1 %3, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %land.end
  %call9 = call i32 @getchar()
  store i32 %call9, i32* %c, align 4
  br label %while.cond.5

while.end:                                        ; preds = %land.end
  br label %while.cond

while.end.10:                                     ; preds = %while.cond
  call void @exit(i32 1) #7
  unreachable

return:                                           ; No predecessors!
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @getchar() #1

; Function Attrs: nounwind uwtable
define internal void @reset_watch() #3 {
entry:
  %coerce = alloca %struct.timespec, align 8
  %call = call { i64, i64 } @current_timespec()
  %0 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %2 = extractvalue { i64, i64 } %call, 0
  store i64 %2, i64* %1, align 8
  %3 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %4 = extractvalue { i64, i64 } %call, 1
  store i64 %4, i64* %3, align 8
  %5 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.timespec* @TV1 to i8*), i8* %5, i64 16, i32 8, i1 false)
  store i32 0, i32* @watch_not_started, align 4
  ret void
}

declare i32 @puts(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @get_time() #3 {
entry:
  %TV2 = alloca %struct.timespec, align 8
  %agg.tmp = alloca %struct.timespec, align 8
  %s = alloca i64, align 8
  %ns = alloca i32, align 4
  %call = call { i64, i64 } @current_timespec()
  %0 = bitcast %struct.timespec* %agg.tmp to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %2 = extractvalue { i64, i64 } %call, 0
  store i64 %2, i64* %1, align 8
  %3 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %4 = extractvalue { i64, i64 } %call, 1
  store i64 %4, i64* %3, align 8
  %5 = bitcast %struct.timespec* %agg.tmp to { i64, i64 }*
  %6 = getelementptr { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  %9 = load i64, i64* %8, align 1
  %10 = load i64, i64* getelementptr ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timespec* @TV1 to { i64, i64 }*), i32 0, i32 0), align 1
  %11 = load i64, i64* getelementptr ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timespec* @TV1 to { i64, i64 }*), i32 0, i32 1), align 1
  %call1 = call { i64, i64 } @timespec_sub(i64 %7, i64 %9, i64 %10, i64 %11) #8
  %12 = bitcast %struct.timespec* %TV2 to { i64, i64 }*
  %13 = getelementptr { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %14 = extractvalue { i64, i64 } %call1, 0
  store i64 %14, i64* %13, align 8
  %15 = getelementptr { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %16 = extractvalue { i64, i64 } %call1, 1
  store i64 %16, i64* %15, align 8
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %TV2, i32 0, i32 0
  %17 = load i64, i64* %tv_sec, align 8
  store i64 %17, i64* %s, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %TV2, i32 0, i32 1
  %18 = load i64, i64* %tv_nsec, align 8
  %conv = trunc i64 %18 to i32
  store i32 %conv, i32* %ns, align 4
  %19 = load i32, i32* @watch_not_started, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %20 = load i64, i64* %s, align 8
  %21 = load i32, i32* %ns, align 4
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @time_string, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 %20, i32 9, i32 %21) #2
  ret i8* getelementptr inbounds ([31 x i8], [31 x i8]* @time_string, i32 0, i32 0)
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind readnone
declare { i64, i64 } @timespec_sub(i64, i64, i64, i64) #5

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #6

attributes #0 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
