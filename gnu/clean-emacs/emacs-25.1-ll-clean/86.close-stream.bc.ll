; ModuleID = './lib/close-stream.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

; Function Attrs: nounwind uwtable
define i32 @close_stream(%struct._IO_FILE* %stream) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %some_pending = alloca i8, align 1
  %prev_fail = alloca i8, align 1
  %fclose_fail = alloca i8, align 1
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i64 @__fpending(%struct._IO_FILE* %0) #4
  %cmp = icmp ne i64 %call, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %some_pending, align 1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @ferror(%struct._IO_FILE* %1) #4
  %cmp2 = icmp ne i32 %call1, 0
  %frombool3 = zext i1 %cmp2 to i8
  store i8 %frombool3, i8* %prev_fail, align 1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %2)
  %cmp5 = icmp ne i32 %call4, 0
  %frombool6 = zext i1 %cmp5 to i8
  store i8 %frombool6, i8* %fclose_fail, align 1
  %3 = load i8, i8* %prev_fail, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8, i8* %fclose_fail, align 1
  %tobool7 = trunc i8 %4 to i1
  br i1 %tobool7, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8, i8* %some_pending, align 1
  %tobool8 = trunc i8 %5 to i1
  br i1 %tobool8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true
  %call10 = call i32* @__errno_location() #5
  %6 = load i32, i32* %call10, align 4
  %cmp11 = icmp ne i32 %6, 9
  br i1 %cmp11, label %if.then, label %if.end.15

if.then:                                          ; preds = %lor.lhs.false.9, %land.lhs.true, %entry
  %7 = load i8, i8* %fclose_fail, align 1
  %tobool12 = trunc i8 %7 to i1
  br i1 %tobool12, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %if.then
  %call14 = call i32* @__errno_location() #5
  store i32 0, i32* %call14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false.9, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.end
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
