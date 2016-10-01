; ModuleID = './MultiSource.Benchmarks.Prolangs-C/50.gnugo.sethand.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external global [19 x [19 x i8]], align 16

; Function Attrs: nounwind uwtable
define void @sethand(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.49

if.then:                                          ; preds = %entry
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3, i64 3), align 1
  %1 = load i32, i32* %i.addr, align 4
  %cmp1 = icmp sgt i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.end.48

if.then.2:                                        ; preds = %if.then
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15, i64 15), align 1
  %2 = load i32, i32* %i.addr, align 4
  %cmp3 = icmp sgt i32 %2, 2
  br i1 %cmp3, label %if.then.4, label %if.end.47

if.then.4:                                        ; preds = %if.then.2
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3, i64 15), align 1
  %3 = load i32, i32* %i.addr, align 4
  %cmp5 = icmp sgt i32 %3, 3
  br i1 %cmp5, label %if.then.6, label %if.end.46

if.then.6:                                        ; preds = %if.then.4
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15, i64 3), align 1
  %4 = load i32, i32* %i.addr, align 4
  %cmp7 = icmp eq i32 %4, 5
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9, i64 9), align 1
  br label %if.end.45

if.else:                                          ; preds = %if.then.6
  %5 = load i32, i32* %i.addr, align 4
  %cmp9 = icmp sgt i32 %5, 5
  br i1 %cmp9, label %if.then.10, label %if.end.44

if.then.10:                                       ; preds = %if.else
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9, i64 15), align 1
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9, i64 3), align 1
  %6 = load i32, i32* %i.addr, align 4
  %cmp11 = icmp eq i32 %6, 7
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.then.10
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9, i64 9), align 1
  br label %if.end.43

if.else.13:                                       ; preds = %if.then.10
  %7 = load i32, i32* %i.addr, align 4
  %cmp14 = icmp sgt i32 %7, 7
  br i1 %cmp14, label %if.then.15, label %if.end.42

if.then.15:                                       ; preds = %if.else.13
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15, i64 9), align 1
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3, i64 9), align 1
  %8 = load i32, i32* %i.addr, align 4
  %cmp16 = icmp sgt i32 %8, 8
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.15
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9, i64 9), align 1
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.15
  %9 = load i32, i32* %i.addr, align 4
  %cmp18 = icmp sgt i32 %9, 9
  br i1 %cmp18, label %if.then.19, label %if.end.41

if.then.19:                                       ; preds = %if.end
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 2, i64 2), align 1
  %10 = load i32, i32* %i.addr, align 4
  %cmp20 = icmp sgt i32 %10, 10
  br i1 %cmp20, label %if.then.21, label %if.end.40

if.then.21:                                       ; preds = %if.then.19
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 16, i64 16), align 1
  %11 = load i32, i32* %i.addr, align 4
  %cmp22 = icmp sgt i32 %11, 11
  br i1 %cmp22, label %if.then.23, label %if.end.39

if.then.23:                                       ; preds = %if.then.21
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 2, i64 16), align 1
  %12 = load i32, i32* %i.addr, align 4
  %cmp24 = icmp sgt i32 %12, 12
  br i1 %cmp24, label %if.then.25, label %if.end.38

if.then.25:                                       ; preds = %if.then.23
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 16, i64 2), align 1
  %13 = load i32, i32* %i.addr, align 4
  %cmp26 = icmp sgt i32 %13, 13
  br i1 %cmp26, label %if.then.27, label %if.end.37

if.then.27:                                       ; preds = %if.then.25
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 6, i64 6), align 1
  %14 = load i32, i32* %i.addr, align 4
  %cmp28 = icmp sgt i32 %14, 14
  br i1 %cmp28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %if.then.27
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 12, i64 12), align 1
  %15 = load i32, i32* %i.addr, align 4
  %cmp30 = icmp sgt i32 %15, 15
  br i1 %cmp30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.then.29
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 6, i64 12), align 1
  %16 = load i32, i32* %i.addr, align 4
  %cmp32 = icmp sgt i32 %16, 16
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.31
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 12, i64 6), align 1
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.27
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.25
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.23
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.21
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.19
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.else.13
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.12
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.8
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.4
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.2
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
