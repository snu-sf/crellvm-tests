; ModuleID = './MultiSource.Benchmarks.Prolangs-C/35.archie-client.ptalloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptext = type { i32, i8*, [1314 x i8], i64, %struct.ptext*, %struct.ptext*, i32 }

@ptext_count = global i32 0, align 4
@ptext_max = global i32 0, align 4
@free1 = internal global %struct.ptext* null, align 8

; Function Attrs: nounwind uwtable
define %struct.ptext* @ptalloc() #0 {
entry:
  %retval = alloca %struct.ptext*, align 8
  %vt = alloca %struct.ptext*, align 8
  %0 = load %struct.ptext*, %struct.ptext** @free1, align 8
  %tobool = icmp ne %struct.ptext* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.ptext*, %struct.ptext** @free1, align 8
  store %struct.ptext* %1, %struct.ptext** %vt, align 8
  %2 = load %struct.ptext*, %struct.ptext** @free1, align 8
  %next = getelementptr inbounds %struct.ptext, %struct.ptext* %2, i32 0, i32 5
  %3 = load %struct.ptext*, %struct.ptext** %next, align 8
  store %struct.ptext* %3, %struct.ptext** @free1, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 1368) #3
  %4 = bitcast i8* %call to %struct.ptext*
  store %struct.ptext* %4, %struct.ptext** %vt, align 8
  %5 = load %struct.ptext*, %struct.ptext** %vt, align 8
  %tobool1 = icmp ne %struct.ptext* %5, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  store %struct.ptext* null, %struct.ptext** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %6 = load i32, i32* @ptext_max, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @ptext_max, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* @ptext_count, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, i32* @ptext_count, align 4
  %8 = load %struct.ptext*, %struct.ptext** %vt, align 8
  %9 = bitcast %struct.ptext* %8 to i8*
  call void @bzero(i8* %9, i32 1368)
  %10 = load %struct.ptext*, %struct.ptext** %vt, align 8
  %dat = getelementptr inbounds %struct.ptext, %struct.ptext* %10, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1314 x i8], [1314 x i8]* %dat, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 32
  %11 = load %struct.ptext*, %struct.ptext** %vt, align 8
  %start = getelementptr inbounds %struct.ptext, %struct.ptext* %11, i32 0, i32 1
  store i8* %add.ptr, i8** %start, align 8
  %12 = load %struct.ptext*, %struct.ptext** %vt, align 8
  store %struct.ptext* %12, %struct.ptext** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %13 = load %struct.ptext*, %struct.ptext** %retval
  ret %struct.ptext* %13
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @bzero(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @ptfree(%struct.ptext* %vt) #0 {
entry:
  %vt.addr = alloca %struct.ptext*, align 8
  store %struct.ptext* %vt, %struct.ptext** %vt.addr, align 8
  %0 = load %struct.ptext*, %struct.ptext** @free1, align 8
  %1 = load %struct.ptext*, %struct.ptext** %vt.addr, align 8
  %next = getelementptr inbounds %struct.ptext, %struct.ptext* %1, i32 0, i32 5
  store %struct.ptext* %0, %struct.ptext** %next, align 8
  %2 = load %struct.ptext*, %struct.ptext** %vt.addr, align 8
  %previous = getelementptr inbounds %struct.ptext, %struct.ptext* %2, i32 0, i32 4
  store %struct.ptext* null, %struct.ptext** %previous, align 8
  %3 = load %struct.ptext*, %struct.ptext** %vt.addr, align 8
  store %struct.ptext* %3, %struct.ptext** @free1, align 8
  %4 = load i32, i32* @ptext_count, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @ptext_count, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ptlfree(%struct.ptext* %vt) #0 {
entry:
  %vt.addr = alloca %struct.ptext*, align 8
  %nxt = alloca %struct.ptext*, align 8
  store %struct.ptext* %vt, %struct.ptext** %vt.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.ptext*, %struct.ptext** %vt.addr, align 8
  %cmp = icmp ne %struct.ptext* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.ptext*, %struct.ptext** %vt.addr, align 8
  %next = getelementptr inbounds %struct.ptext, %struct.ptext* %1, i32 0, i32 5
  %2 = load %struct.ptext*, %struct.ptext** %next, align 8
  store %struct.ptext* %2, %struct.ptext** %nxt, align 8
  %3 = load %struct.ptext*, %struct.ptext** %vt.addr, align 8
  call void @ptfree(%struct.ptext* %3)
  %4 = load %struct.ptext*, %struct.ptext** %nxt, align 8
  store %struct.ptext* %4, %struct.ptext** %vt.addr, align 8
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
