; ModuleID = './MultiSource.Benchmarks.Prolangs-C/122.unix-tbl.t2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @tableput() #0 {
entry:
  call void @saveline()
  call void @savefill()
  call void @ifdivert()
  call void @cleanfc()
  call void @getcomm()
  call void @getspec()
  call void @gettbl()
  call void @getstop()
  call void @checkuse()
  call void @choochar()
  call void @maktab()
  call void @runout()
  call void @release()
  call void @rstofill()
  call void @endoff()
  call void @restline()
  ret void
}

declare void @saveline() #1

declare void @savefill() #1

declare void @ifdivert() #1

declare void @cleanfc() #1

declare void @getcomm() #1

declare void @getspec() #1

declare void @gettbl() #1

declare void @getstop() #1

declare void @checkuse() #1

declare void @choochar() #1

declare void @maktab() #1

declare void @runout() #1

declare void @release() #1

declare void @rstofill() #1

declare void @endoff() #1

declare void @restline() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
