; ModuleID = './scfetab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hce_code_s = type { i16, i16 }
%struct.cf_runs_s = type { [64 x %struct.hce_code_s], [41 x %struct.hce_code_s] }

@cf_run_eol = constant %struct.hce_code_s { i16 1, i16 12 }, align 2
@cf1_run_uncompressed = constant %struct.hce_code_s { i16 15, i16 12 }, align 2
@cf2_run_pass = constant %struct.hce_code_s { i16 1, i16 4 }, align 2
@cf2_run_vertical = constant [7 x %struct.hce_code_s] [%struct.hce_code_s { i16 3, i16 7 }, %struct.hce_code_s { i16 3, i16 6 }, %struct.hce_code_s { i16 3, i16 3 }, %struct.hce_code_s { i16 1, i16 1 }, %struct.hce_code_s { i16 2, i16 3 }, %struct.hce_code_s { i16 2, i16 6 }, %struct.hce_code_s { i16 2, i16 7 }], align 16
@cf2_run_horizontal = constant %struct.hce_code_s { i16 1, i16 3 }, align 2
@cf2_run_uncompressed = constant %struct.hce_code_s { i16 15, i16 10 }, align 2
@cf2_run_eol_1d = constant %struct.hce_code_s { i16 3, i16 13 }, align 2
@cf2_run_eol_2d = constant %struct.hce_code_s { i16 2, i16 13 }, align 2
@cf_white_runs = constant %struct.cf_runs_s { [64 x %struct.hce_code_s] [%struct.hce_code_s { i16 53, i16 8 }, %struct.hce_code_s { i16 7, i16 6 }, %struct.hce_code_s { i16 7, i16 4 }, %struct.hce_code_s { i16 8, i16 4 }, %struct.hce_code_s { i16 11, i16 4 }, %struct.hce_code_s { i16 12, i16 4 }, %struct.hce_code_s { i16 14, i16 4 }, %struct.hce_code_s { i16 15, i16 4 }, %struct.hce_code_s { i16 19, i16 5 }, %struct.hce_code_s { i16 20, i16 5 }, %struct.hce_code_s { i16 7, i16 5 }, %struct.hce_code_s { i16 8, i16 5 }, %struct.hce_code_s { i16 8, i16 6 }, %struct.hce_code_s { i16 3, i16 6 }, %struct.hce_code_s { i16 52, i16 6 }, %struct.hce_code_s { i16 53, i16 6 }, %struct.hce_code_s { i16 42, i16 6 }, %struct.hce_code_s { i16 43, i16 6 }, %struct.hce_code_s { i16 39, i16 7 }, %struct.hce_code_s { i16 12, i16 7 }, %struct.hce_code_s { i16 8, i16 7 }, %struct.hce_code_s { i16 23, i16 7 }, %struct.hce_code_s { i16 3, i16 7 }, %struct.hce_code_s { i16 4, i16 7 }, %struct.hce_code_s { i16 40, i16 7 }, %struct.hce_code_s { i16 43, i16 7 }, %struct.hce_code_s { i16 19, i16 7 }, %struct.hce_code_s { i16 36, i16 7 }, %struct.hce_code_s { i16 24, i16 7 }, %struct.hce_code_s { i16 2, i16 8 }, %struct.hce_code_s { i16 3, i16 8 }, %struct.hce_code_s { i16 26, i16 8 }, %struct.hce_code_s { i16 27, i16 8 }, %struct.hce_code_s { i16 18, i16 8 }, %struct.hce_code_s { i16 19, i16 8 }, %struct.hce_code_s { i16 20, i16 8 }, %struct.hce_code_s { i16 21, i16 8 }, %struct.hce_code_s { i16 22, i16 8 }, %struct.hce_code_s { i16 23, i16 8 }, %struct.hce_code_s { i16 40, i16 8 }, %struct.hce_code_s { i16 41, i16 8 }, %struct.hce_code_s { i16 42, i16 8 }, %struct.hce_code_s { i16 43, i16 8 }, %struct.hce_code_s { i16 44, i16 8 }, %struct.hce_code_s { i16 45, i16 8 }, %struct.hce_code_s { i16 4, i16 8 }, %struct.hce_code_s { i16 5, i16 8 }, %struct.hce_code_s { i16 10, i16 8 }, %struct.hce_code_s { i16 11, i16 8 }, %struct.hce_code_s { i16 82, i16 8 }, %struct.hce_code_s { i16 83, i16 8 }, %struct.hce_code_s { i16 84, i16 8 }, %struct.hce_code_s { i16 85, i16 8 }, %struct.hce_code_s { i16 36, i16 8 }, %struct.hce_code_s { i16 37, i16 8 }, %struct.hce_code_s { i16 88, i16 8 }, %struct.hce_code_s { i16 89, i16 8 }, %struct.hce_code_s { i16 90, i16 8 }, %struct.hce_code_s { i16 91, i16 8 }, %struct.hce_code_s { i16 74, i16 8 }, %struct.hce_code_s { i16 75, i16 8 }, %struct.hce_code_s { i16 50, i16 8 }, %struct.hce_code_s { i16 51, i16 8 }, %struct.hce_code_s { i16 52, i16 8 }], [41 x %struct.hce_code_s] [%struct.hce_code_s zeroinitializer, %struct.hce_code_s { i16 27, i16 5 }, %struct.hce_code_s { i16 18, i16 5 }, %struct.hce_code_s { i16 23, i16 6 }, %struct.hce_code_s { i16 55, i16 7 }, %struct.hce_code_s { i16 54, i16 8 }, %struct.hce_code_s { i16 55, i16 8 }, %struct.hce_code_s { i16 100, i16 8 }, %struct.hce_code_s { i16 101, i16 8 }, %struct.hce_code_s { i16 104, i16 8 }, %struct.hce_code_s { i16 103, i16 8 }, %struct.hce_code_s { i16 204, i16 9 }, %struct.hce_code_s { i16 205, i16 9 }, %struct.hce_code_s { i16 210, i16 9 }, %struct.hce_code_s { i16 211, i16 9 }, %struct.hce_code_s { i16 212, i16 9 }, %struct.hce_code_s { i16 213, i16 9 }, %struct.hce_code_s { i16 214, i16 9 }, %struct.hce_code_s { i16 215, i16 9 }, %struct.hce_code_s { i16 216, i16 9 }, %struct.hce_code_s { i16 217, i16 9 }, %struct.hce_code_s { i16 218, i16 9 }, %struct.hce_code_s { i16 219, i16 9 }, %struct.hce_code_s { i16 152, i16 9 }, %struct.hce_code_s { i16 153, i16 9 }, %struct.hce_code_s { i16 154, i16 9 }, %struct.hce_code_s { i16 24, i16 6 }, %struct.hce_code_s { i16 155, i16 9 }, %struct.hce_code_s { i16 8, i16 11 }, %struct.hce_code_s { i16 12, i16 11 }, %struct.hce_code_s { i16 13, i16 11 }, %struct.hce_code_s { i16 18, i16 12 }, %struct.hce_code_s { i16 19, i16 12 }, %struct.hce_code_s { i16 20, i16 12 }, %struct.hce_code_s { i16 21, i16 12 }, %struct.hce_code_s { i16 22, i16 12 }, %struct.hce_code_s { i16 23, i16 12 }, %struct.hce_code_s { i16 28, i16 12 }, %struct.hce_code_s { i16 29, i16 12 }, %struct.hce_code_s { i16 30, i16 12 }, %struct.hce_code_s { i16 31, i16 12 }] }, align 2
@cf_black_runs = constant %struct.cf_runs_s { [64 x %struct.hce_code_s] [%struct.hce_code_s { i16 55, i16 10 }, %struct.hce_code_s { i16 2, i16 3 }, %struct.hce_code_s { i16 3, i16 2 }, %struct.hce_code_s { i16 2, i16 2 }, %struct.hce_code_s { i16 3, i16 3 }, %struct.hce_code_s { i16 3, i16 4 }, %struct.hce_code_s { i16 2, i16 4 }, %struct.hce_code_s { i16 3, i16 5 }, %struct.hce_code_s { i16 5, i16 6 }, %struct.hce_code_s { i16 4, i16 6 }, %struct.hce_code_s { i16 4, i16 7 }, %struct.hce_code_s { i16 5, i16 7 }, %struct.hce_code_s { i16 7, i16 7 }, %struct.hce_code_s { i16 4, i16 8 }, %struct.hce_code_s { i16 7, i16 8 }, %struct.hce_code_s { i16 24, i16 9 }, %struct.hce_code_s { i16 23, i16 10 }, %struct.hce_code_s { i16 24, i16 10 }, %struct.hce_code_s { i16 8, i16 10 }, %struct.hce_code_s { i16 103, i16 11 }, %struct.hce_code_s { i16 104, i16 11 }, %struct.hce_code_s { i16 108, i16 11 }, %struct.hce_code_s { i16 55, i16 11 }, %struct.hce_code_s { i16 40, i16 11 }, %struct.hce_code_s { i16 23, i16 11 }, %struct.hce_code_s { i16 24, i16 11 }, %struct.hce_code_s { i16 202, i16 12 }, %struct.hce_code_s { i16 203, i16 12 }, %struct.hce_code_s { i16 204, i16 12 }, %struct.hce_code_s { i16 205, i16 12 }, %struct.hce_code_s { i16 104, i16 12 }, %struct.hce_code_s { i16 105, i16 12 }, %struct.hce_code_s { i16 106, i16 12 }, %struct.hce_code_s { i16 107, i16 12 }, %struct.hce_code_s { i16 210, i16 12 }, %struct.hce_code_s { i16 211, i16 12 }, %struct.hce_code_s { i16 212, i16 12 }, %struct.hce_code_s { i16 213, i16 12 }, %struct.hce_code_s { i16 214, i16 12 }, %struct.hce_code_s { i16 215, i16 12 }, %struct.hce_code_s { i16 108, i16 12 }, %struct.hce_code_s { i16 109, i16 12 }, %struct.hce_code_s { i16 218, i16 12 }, %struct.hce_code_s { i16 219, i16 12 }, %struct.hce_code_s { i16 84, i16 12 }, %struct.hce_code_s { i16 85, i16 12 }, %struct.hce_code_s { i16 86, i16 12 }, %struct.hce_code_s { i16 87, i16 12 }, %struct.hce_code_s { i16 100, i16 12 }, %struct.hce_code_s { i16 101, i16 12 }, %struct.hce_code_s { i16 82, i16 12 }, %struct.hce_code_s { i16 83, i16 12 }, %struct.hce_code_s { i16 36, i16 12 }, %struct.hce_code_s { i16 55, i16 12 }, %struct.hce_code_s { i16 56, i16 12 }, %struct.hce_code_s { i16 39, i16 12 }, %struct.hce_code_s { i16 40, i16 12 }, %struct.hce_code_s { i16 88, i16 12 }, %struct.hce_code_s { i16 89, i16 12 }, %struct.hce_code_s { i16 43, i16 12 }, %struct.hce_code_s { i16 44, i16 12 }, %struct.hce_code_s { i16 90, i16 12 }, %struct.hce_code_s { i16 102, i16 12 }, %struct.hce_code_s { i16 103, i16 12 }], [41 x %struct.hce_code_s] [%struct.hce_code_s zeroinitializer, %struct.hce_code_s { i16 15, i16 10 }, %struct.hce_code_s { i16 200, i16 12 }, %struct.hce_code_s { i16 201, i16 12 }, %struct.hce_code_s { i16 91, i16 12 }, %struct.hce_code_s { i16 51, i16 12 }, %struct.hce_code_s { i16 52, i16 12 }, %struct.hce_code_s { i16 53, i16 12 }, %struct.hce_code_s { i16 108, i16 13 }, %struct.hce_code_s { i16 109, i16 13 }, %struct.hce_code_s { i16 74, i16 13 }, %struct.hce_code_s { i16 75, i16 13 }, %struct.hce_code_s { i16 76, i16 13 }, %struct.hce_code_s { i16 77, i16 13 }, %struct.hce_code_s { i16 114, i16 13 }, %struct.hce_code_s { i16 115, i16 13 }, %struct.hce_code_s { i16 116, i16 13 }, %struct.hce_code_s { i16 117, i16 13 }, %struct.hce_code_s { i16 118, i16 13 }, %struct.hce_code_s { i16 119, i16 13 }, %struct.hce_code_s { i16 82, i16 13 }, %struct.hce_code_s { i16 83, i16 13 }, %struct.hce_code_s { i16 84, i16 13 }, %struct.hce_code_s { i16 85, i16 13 }, %struct.hce_code_s { i16 90, i16 13 }, %struct.hce_code_s { i16 91, i16 13 }, %struct.hce_code_s { i16 100, i16 13 }, %struct.hce_code_s { i16 101, i16 13 }, %struct.hce_code_s { i16 8, i16 11 }, %struct.hce_code_s { i16 12, i16 11 }, %struct.hce_code_s { i16 13, i16 11 }, %struct.hce_code_s { i16 18, i16 12 }, %struct.hce_code_s { i16 19, i16 12 }, %struct.hce_code_s { i16 20, i16 12 }, %struct.hce_code_s { i16 21, i16 12 }, %struct.hce_code_s { i16 22, i16 12 }, %struct.hce_code_s { i16 23, i16 12 }, %struct.hce_code_s { i16 28, i16 12 }, %struct.hce_code_s { i16 29, i16 12 }, %struct.hce_code_s { i16 30, i16 12 }, %struct.hce_code_s { i16 31, i16 12 }] }, align 2
@cf_uncompressed = constant [6 x %struct.hce_code_s] [%struct.hce_code_s { i16 1, i16 1 }, %struct.hce_code_s { i16 1, i16 2 }, %struct.hce_code_s { i16 1, i16 3 }, %struct.hce_code_s { i16 1, i16 4 }, %struct.hce_code_s { i16 1, i16 5 }, %struct.hce_code_s { i16 1, i16 6 }], align 16
@cf_uncompressed_exit = constant [10 x %struct.hce_code_s] [%struct.hce_code_s { i16 2, i16 8 }, %struct.hce_code_s { i16 3, i16 8 }, %struct.hce_code_s { i16 2, i16 9 }, %struct.hce_code_s { i16 3, i16 9 }, %struct.hce_code_s { i16 2, i16 10 }, %struct.hce_code_s { i16 3, i16 10 }, %struct.hce_code_s { i16 2, i16 11 }, %struct.hce_code_s { i16 3, i16 11 }, %struct.hce_code_s { i16 2, i16 12 }, %struct.hce_code_s { i16 3, i16 12 }], align 16

; Function Attrs: nounwind uwtable
define void @scfetab_dummy() #0 {
entry:
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}