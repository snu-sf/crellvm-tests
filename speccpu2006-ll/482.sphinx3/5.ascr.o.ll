; ModuleID = 'ascr.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ascr_t = type { i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"ascr.c\00", align 1

; Function Attrs: nounwind uwtable
define %struct.ascr_t* @ascr_init(i32 %n_sen, i32 %n_comsen) #0 {
entry:
  %n_sen.addr = alloca i32, align 4
  %n_comsen.addr = alloca i32, align 4
  %ascr = alloca %struct.ascr_t*, align 8
  store i32 %n_sen, i32* %n_sen.addr, align 4
  store i32 %n_comsen, i32* %n_comsen.addr, align 4
  %call = call i8* @__ckd_calloc__(i64 1, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 60)
  %0 = bitcast i8* %call to %struct.ascr_t*
  store %struct.ascr_t* %0, %struct.ascr_t** %ascr, align 8
  %1 = load i32, i32* %n_sen.addr, align 4
  %2 = load i32, i32* %n_comsen.addr, align 4
  %add = add nsw i32 %1, %2
  %conv = sext i32 %add to i64
  %call1 = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 61)
  %3 = bitcast i8* %call1 to i32*
  %4 = load %struct.ascr_t*, %struct.ascr_t** %ascr, align 8
  %sen = getelementptr inbounds %struct.ascr_t, %struct.ascr_t* %4, i32 0, i32 0
  store i32* %3, i32** %sen, align 8
  %5 = load %struct.ascr_t*, %struct.ascr_t** %ascr, align 8
  %sen2 = getelementptr inbounds %struct.ascr_t, %struct.ascr_t* %5, i32 0, i32 0
  %6 = load i32*, i32** %sen2, align 8
  %7 = load i32, i32* %n_sen.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %idx.ext
  %8 = load %struct.ascr_t*, %struct.ascr_t** %ascr, align 8
  %comsen = getelementptr inbounds %struct.ascr_t, %struct.ascr_t* %8, i32 0, i32 1
  store i32* %add.ptr, i32** %comsen, align 8
  %9 = load %struct.ascr_t*, %struct.ascr_t** %ascr, align 8
  ret %struct.ascr_t* %9
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
