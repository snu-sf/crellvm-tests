; ModuleID = 'rcfile.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@TTSize = common global i32 0, align 4
@ECacheSize = common global i32 0, align 4
@PBSize = common global i32 0, align 4
@cfg_devscale = common global i32 0, align 4
@cfg_scalefac = common global float 0.000000e+00, align 4
@cfg_razordrop = common global i32 0, align 4
@cfg_cutdrop = common global i32 0, align 4
@cfg_futprune = common global i32 0, align 4
@cfg_smarteval = common global i32 0, align 4
@cfg_attackeval = common global i32 0, align 4
@cfg_onerep = common global i32 0, align 4
@cfg_recap = common global i32 0, align 4
@havercfile = common global i32 0, align 4
@setcode = external global [30 x i8], align 16
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@rcfile = common global %struct._IO_FILE* null, align 8
@line = common global [256 x i8] zeroinitializer, align 16
@cfg_booklearn = common global i32 0, align 4
@cfg_ksafety = common global [15 x [9 x i32]] zeroinitializer, align 16
@cfg_tropism = common global [5 x [7 x i32]] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @read_rcfile() #0 {
entry:
  %setc = alloca i32, align 4
  store i32 3000000, i32* @TTSize, align 4
  store i32 1000000, i32* @ECacheSize, align 4
  store i32 200000, i32* @PBSize, align 4
  store i32 1, i32* @cfg_devscale, align 4
  store float 1.000000e+00, float* @cfg_scalefac, align 4
  store i32 1, i32* @cfg_razordrop, align 4
  store i32 0, i32* @cfg_cutdrop, align 4
  store i32 1, i32* @cfg_futprune, align 4
  store i32 1, i32* @cfg_smarteval, align 4
  store i32 0, i32* @cfg_attackeval, align 4
  store i32 1, i32* @cfg_onerep, align 4
  store i32 0, i32* @cfg_recap, align 4
  store i32 0, i32* @havercfile, align 4
  %0 = load i32, i32* @havercfile, align 4
  %1 = load i32, i32* @cfg_devscale, align 4
  %shl = shl i32 %1, 1
  %add = add nsw i32 %0, %shl
  %add1 = add nsw i32 %add, 4
  %2 = load i32, i32* @cfg_razordrop, align 4
  %shl2 = shl i32 %2, 3
  %add3 = add nsw i32 %add1, %shl2
  %3 = load i32, i32* @cfg_cutdrop, align 4
  %shl4 = shl i32 %3, 4
  %add5 = add nsw i32 %add3, %shl4
  %4 = load i32, i32* @cfg_futprune, align 4
  %shl6 = shl i32 %4, 5
  %add7 = add nsw i32 %add5, %shl6
  %5 = load i32, i32* @cfg_smarteval, align 4
  %shl8 = shl i32 %5, 6
  %add9 = add nsw i32 %add7, %shl8
  %6 = load i32, i32* @cfg_attackeval, align 4
  %shl10 = shl i32 %6, 7
  %add11 = add nsw i32 %add9, %shl10
  store i32 %add11, i32* %setc, align 4
  %7 = load i32, i32* %setc, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @setcode, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %7) #3
  call void @initialize_eval()
  call void @alloc_hash()
  call void @alloc_ecache()
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare void @initialize_eval() #2

declare void @alloc_hash() #2

declare void @alloc_ecache() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
