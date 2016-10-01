; ModuleID = './SingleSource.UnitTests/66.ms_struct-bitfield-init.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, i8 }
%struct.anon.0 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i32, i32, i32 }

@t1 = global %struct.anon { i8 97, i8 98 }, align 1
@t2 = global %struct.anon.0 { i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105 }, align 1
@t3 = global %struct.anon.1 { i32 1, i32 2, i32 3, i32 4 }, align 4

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t1, i32 0, i32 0), align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 97
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t1, i32 0, i32 1), align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp ne i32 %conv2, 98
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @abort() #2
  unreachable

if.end.6:                                         ; preds = %if.end
  store i8 99, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t1, i32 0, i32 0), align 1
  store i8 100, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t1, i32 0, i32 1), align 1
  %2 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t1, i32 0, i32 0), align 1
  %conv7 = sext i8 %2 to i32
  %cmp8 = icmp ne i32 %conv7, 99
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  call void @abort() #2
  unreachable

if.end.11:                                        ; preds = %if.end.6
  %3 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t1, i32 0, i32 1), align 1
  %conv12 = sext i8 %3 to i32
  %cmp13 = icmp ne i32 %conv12, 100
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  call void @abort() #2
  unreachable

if.end.16:                                        ; preds = %if.end.11
  %4 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @t2, i32 0, i32 0), align 1
  %conv17 = sext i8 %4 to i32
  %cmp18 = icmp ne i32 %conv17, 97
  br i1 %cmp18, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %5 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @t2, i32 0, i32 8), align 1
  %conv20 = sext i8 %5 to i32
  %cmp21 = icmp ne i32 %conv20, 105
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.16
  call void @abort() #2
  unreachable

if.end.24:                                        ; preds = %lor.lhs.false
  %6 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @t3, i32 0, i32 0), align 4
  %cmp25 = icmp ne i32 %6, 1
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.24
  %7 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @t3, i32 0, i32 3), align 4
  %cmp28 = icmp ne i32 %7, 4
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.27, %if.end.24
  call void @abort() #2
  unreachable

if.end.31:                                        ; preds = %lor.lhs.false.27
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
