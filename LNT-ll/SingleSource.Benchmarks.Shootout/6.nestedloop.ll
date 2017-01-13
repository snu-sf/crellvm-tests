; ModuleID = './SingleSource.Benchmarks.Shootout/6.nestedloop.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 46, %cond.false ]
  store i32 %cond, i32* %n, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %cond.end
  %3 = load i32, i32* %a, align 4
  %4 = load i32, i32* %n, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %b, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.27, %for.body
  %5 = load i32, i32* %b, align 4
  %6 = load i32, i32* %n, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body.4, label %for.end.29

for.body.4:                                       ; preds = %for.cond.2
  store i32 0, i32* %c, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.24, %for.body.4
  %7 = load i32, i32* %c, align 4
  %8 = load i32, i32* %n, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body.7, label %for.end.26

for.body.7:                                       ; preds = %for.cond.5
  store i32 0, i32* %d, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.21, %for.body.7
  %9 = load i32, i32* %d, align 4
  %10 = load i32, i32* %n, align 4
  %cmp9 = icmp slt i32 %9, %10
  br i1 %cmp9, label %for.body.10, label %for.end.23

for.body.10:                                      ; preds = %for.cond.8
  store i32 0, i32* %e, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.18, %for.body.10
  %11 = load i32, i32* %e, align 4
  %12 = load i32, i32* %n, align 4
  %cmp12 = icmp slt i32 %11, %12
  br i1 %cmp12, label %for.body.13, label %for.end.20

for.body.13:                                      ; preds = %for.cond.11
  store i32 0, i32* %f, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.13
  %13 = load i32, i32* %f, align 4
  %14 = load i32, i32* %n, align 4
  %cmp15 = icmp slt i32 %13, %14
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %15 = load i32, i32* %x, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %x, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %16 = load i32, i32* %f, align 4
  %inc17 = add nsw i32 %16, 1
  store i32 %inc17, i32* %f, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %17 = load i32, i32* %e, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, i32* %e, align 4
  br label %for.cond.11

for.end.20:                                       ; preds = %for.cond.11
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end.20
  %18 = load i32, i32* %d, align 4
  %inc22 = add nsw i32 %18, 1
  store i32 %inc22, i32* %d, align 4
  br label %for.cond.8

for.end.23:                                       ; preds = %for.cond.8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %19 = load i32, i32* %c, align 4
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, i32* %c, align 4
  br label %for.cond.5

for.end.26:                                       ; preds = %for.cond.5
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %20 = load i32, i32* %b, align 4
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, i32* %b, align 4
  br label %for.cond.2

for.end.29:                                       ; preds = %for.cond.2
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.29
  %21 = load i32, i32* %a, align 4
  %inc31 = add nsw i32 %21, 1
  store i32 %inc31, i32* %a, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  %22 = load i32, i32* %x, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %22)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
