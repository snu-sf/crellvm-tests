; ModuleID = './SingleSource.UnitTests/7.2010-05-24-BitfieldTest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ia32_mcg_cap_t = type { i64 }
%struct.anon = type { i16, [6 x i8] }

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ctl_p = alloca i64, align 8
  %ia32_mcg_cap = alloca %union.ia32_mcg_cap_t, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %u64 = bitcast %union.ia32_mcg_cap_t* %ia32_mcg_cap to i64*
  store i64 2054, i64* %u64, align 8
  %bits = bitcast %union.ia32_mcg_cap_t* %ia32_mcg_cap to %struct.anon*
  %0 = bitcast %struct.anon* %bits to i16*
  %bf.load = load i16, i16* %0, align 8
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i64
  store i64 %bf.cast, i64* %ctl_p, align 8
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
