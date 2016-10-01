; ModuleID = './MultiSource.Benchmarks.MiBench/203.telecomm-gsm.gsm_create.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind uwtable
define %struct.gsm_state* @gsm_create() #0 {
entry:
  %retval = alloca %struct.gsm_state*, align 8
  %r = alloca %struct.gsm_state*, align 8
  %call = call noalias i8* @malloc(i64 656) #2
  %0 = bitcast i8* %call to %struct.gsm_state*
  store %struct.gsm_state* %0, %struct.gsm_state** %r, align 8
  %1 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  %tobool = icmp ne %struct.gsm_state* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  store %struct.gsm_state* %2, %struct.gsm_state** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  %4 = bitcast %struct.gsm_state* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 656, i32 1, i1 false)
  %5 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  %nrp = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %5, i32 0, i32 7
  store i16 40, i16* %nrp, align 2
  %6 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  store %struct.gsm_state* %6, %struct.gsm_state** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.gsm_state*, %struct.gsm_state** %retval
  ret %struct.gsm_state* %7
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
