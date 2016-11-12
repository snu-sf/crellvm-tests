; ModuleID = './libgimpbase/gimpchecks.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gimp_checks_get_shades.shades = internal constant [6 x [2 x i8]] [[2 x i8] c"\CC\FF", [2 x i8] c"f\99", [2 x i8] c"\003", [2 x i8] c"\FF\FF", [2 x i8] c"\7F\7F", [2 x i8] zeroinitializer], align 1

; Function Attrs: nounwind uwtable
define void @gimp_checks_get_shades(i32 %type, i8* %light, i8* %dark) #0 {
entry:
  %type.addr = alloca i32, align 4
  %light.addr = alloca i8*, align 8
  %dark.addr = alloca i8*, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %light, i8** %light.addr, align 8
  store i8* %dark, i8** %dark.addr, align 8
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp ult i32 %0, 5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 5, %cond.false ]
  store i32 %cond, i32* %type.addr, align 4
  %2 = load i8*, i8** %light.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load i32, i32* %type.addr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [6 x [2 x i8]], [6 x [2 x i8]]* @gimp_checks_get_shades.shades, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx, i32 0, i64 1
  %4 = load i8, i8* %arrayidx1, align 1
  %5 = load i8*, i8** %light.addr, align 8
  store i8 %4, i8* %5, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load i8*, i8** %dark.addr, align 8
  %tobool2 = icmp ne i8* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %7 = load i32, i32* %type.addr, align 4
  %idxprom4 = zext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [6 x [2 x i8]], [6 x [2 x i8]]* @gimp_checks_get_shades.shades, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx5, i32 0, i64 0
  %8 = load i8, i8* %arrayidx6, align 1
  %9 = load i8*, i8** %dark.addr, align 8
  store i8 %8, i8* %9, align 1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
