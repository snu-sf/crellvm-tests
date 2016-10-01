; ModuleID = './MultiSource.Benchmarks.MiBench/189.telecomm-gsm.gsm_destroy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type opaque

; Function Attrs: nounwind uwtable
define void @gsm_destroy(%struct.gsm_state* %S) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  %0 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %tobool = icmp ne %struct.gsm_state* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %2 = bitcast %struct.gsm_state* %1 to i8*
  call void @free(i8* %2) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
