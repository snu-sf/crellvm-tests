; ModuleID = './MultiSource.Applications.spiff/2.floatrep.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.R_flstr = type { i32, i32, i8* }

; Function Attrs: nounwind uwtable
define %struct.R_flstr* @R_makefloat() #0 {
entry:
  %retval1 = alloca %struct.R_flstr*, align 8
  %call = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 16)
  %0 = bitcast i32* %call to %struct.R_flstr*
  store %struct.R_flstr* %0, %struct.R_flstr** %retval1, align 8
  %call2 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 200)
  %1 = bitcast i32* %call2 to i8*
  %2 = load %struct.R_flstr*, %struct.R_flstr** %retval1, align 8
  %mantissa = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %2, i32 0, i32 2
  store i8* %1, i8** %mantissa, align 8
  %3 = load %struct.R_flstr*, %struct.R_flstr** %retval1, align 8
  ret %struct.R_flstr* %3
}

declare i32* @_Z_myalloc(...) #1

; Function Attrs: nounwind uwtable
define i32 @R_getexp(%struct.R_flstr* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.R_flstr*, align 8
  store %struct.R_flstr* %ptr, %struct.R_flstr** %ptr.addr, align 8
  %0 = load %struct.R_flstr*, %struct.R_flstr** %ptr.addr, align 8
  %exponent = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i32 0, i32 0
  %1 = load i32, i32* %exponent, align 4
  ret i32 %1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
