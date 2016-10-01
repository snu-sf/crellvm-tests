; ModuleID = './MultiSource.Benchmarks.Prolangs-C/73.agrep.checkfile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@ibuf = common global [512 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @check_file(i8* %fname) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %buf = alloca %struct.stat, align 8
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load i8*, i8** %fname.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %buf) #3
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #4
  %1 = load i32, i32* %call1, align 4
  %cmp2 = icmp eq i32 %1, 2
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i32 -3, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.else.4:                                        ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.3
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
