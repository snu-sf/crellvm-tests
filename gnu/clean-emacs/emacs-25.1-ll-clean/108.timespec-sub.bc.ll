; ModuleID = './lib/timespec-sub.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

; Function Attrs: nounwind readnone uwtable
define { i64, i64 } @timespec_sub(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1) #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %a = alloca %struct.timespec, align 8
  %b = alloca %struct.timespec, align 8
  %rs = alloca i64, align 8
  %bs = alloca i64, align 8
  %ns = alloca i32, align 4
  %rns = alloca i32, align 4
  %tmin = alloca i64, align 8
  %tmax = alloca i64, align 8
  %0 = bitcast %struct.timespec* %a to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %a.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %a.coerce1, i64* %2
  %3 = bitcast %struct.timespec* %b to { i64, i64 }*
  %4 = getelementptr { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  store i64 %b.coerce0, i64* %4
  %5 = getelementptr { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %b.coerce1, i64* %5
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %a, i32 0, i32 0
  %6 = load i64, i64* %tv_sec, align 8
  store i64 %6, i64* %rs, align 8
  %tv_sec1 = getelementptr inbounds %struct.timespec, %struct.timespec* %b, i32 0, i32 0
  %7 = load i64, i64* %tv_sec1, align 8
  store i64 %7, i64* %bs, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %a, i32 0, i32 1
  %8 = load i64, i64* %tv_nsec, align 8
  %tv_nsec2 = getelementptr inbounds %struct.timespec, %struct.timespec* %b, i32 0, i32 1
  %9 = load i64, i64* %tv_nsec2, align 8
  %sub = sub nsw i64 %8, %9
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %ns, align 4
  %10 = load i32, i32* %ns, align 4
  store i32 %10, i32* %rns, align 4
  store i64 -9223372036854775808, i64* %tmin, align 8
  store i64 9223372036854775807, i64* %tmax, align 8
  %11 = load i32, i32* %ns, align 4
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %ns, align 4
  %add = add nsw i32 %12, 1000000000
  store i32 %add, i32* %rns, align 4
  %13 = load i64, i64* %bs, align 8
  %14 = load i64, i64* %tmax, align 8
  %cmp4 = icmp slt i64 %13, %14
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %15 = load i64, i64* %bs, align 8
  %inc = add nsw i64 %15, 1
  store i64 %inc, i64* %bs, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.then
  %16 = load i64, i64* %rs, align 8
  %cmp7 = icmp slt i64 -1, %16
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else
  %17 = load i64, i64* %rs, align 8
  %dec = add nsw i64 %17, -1
  store i64 %dec, i64* %rs, align 8
  br label %if.end

if.else.10:                                       ; preds = %if.else
  br label %low_overflow

if.end:                                           ; preds = %if.then.9
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  %18 = load i64, i64* %bs, align 8
  %mul = mul nsw i64 0, %18
  %19 = load i64, i64* %rs, align 8
  %add13 = add nsw i64 %mul, %19
  %mul14 = mul nsw i64 0, %add13
  %sub15 = sub nsw i64 %mul14, 1
  %cmp16 = icmp slt i64 %sub15, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %20 = load i64, i64* %bs, align 8
  %mul18 = mul nsw i64 0, %20
  %21 = load i64, i64* %rs, align 8
  %add19 = add nsw i64 %mul18, %21
  %mul20 = mul nsw i64 0, %add19
  %add21 = add nsw i64 %mul20, 0
  %neg = xor i64 %add21, -1
  %cmp22 = icmp eq i64 %neg, -1
  %conv23 = zext i1 %cmp22 to i32
  %sub24 = sub nsw i32 0, %conv23
  %conv25 = sext i32 %sub24 to i64
  %22 = load i64, i64* %bs, align 8
  %mul26 = mul nsw i64 0, %22
  %23 = load i64, i64* %rs, align 8
  %add27 = add nsw i64 %mul26, %23
  %mul28 = mul nsw i64 0, %add27
  %add29 = add nsw i64 %mul28, 1
  %shl = shl i64 %add29, 62
  %sub30 = sub nsw i64 %shl, 1
  %mul31 = mul nsw i64 %sub30, 2
  %add32 = add nsw i64 %mul31, 1
  %sub33 = sub nsw i64 %conv25, %add32
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %24 = load i64, i64* %bs, align 8
  %mul34 = mul nsw i64 0, %24
  %25 = load i64, i64* %rs, align 8
  %add35 = add nsw i64 %mul34, %25
  %mul36 = mul nsw i64 0, %add35
  %add37 = add nsw i64 %mul36, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub33, %cond.true ], [ %add37, %cond.false ]
  %cmp38 = icmp slt i64 %cond, 0
  br i1 %cmp38, label %cond.true.40, label %cond.false.105

cond.true.40:                                     ; preds = %cond.end
  %26 = load i64, i64* %bs, align 8
  %cmp41 = icmp slt i64 %26, 0
  br i1 %cmp41, label %cond.true.43, label %cond.false.69

cond.true.43:                                     ; preds = %cond.true.40
  %27 = load i64, i64* %bs, align 8
  %mul44 = mul nsw i64 0, %27
  %28 = load i64, i64* %rs, align 8
  %add45 = add nsw i64 %mul44, %28
  %mul46 = mul nsw i64 0, %add45
  %sub47 = sub nsw i64 %mul46, 1
  %cmp48 = icmp slt i64 %sub47, 0
  br i1 %cmp48, label %cond.true.50, label %cond.false.59

cond.true.50:                                     ; preds = %cond.true.43
  %29 = load i64, i64* %bs, align 8
  %mul51 = mul nsw i64 0, %29
  %30 = load i64, i64* %rs, align 8
  %add52 = add nsw i64 %mul51, %30
  %mul53 = mul nsw i64 0, %add52
  %add54 = add nsw i64 %mul53, 1
  %shl55 = shl i64 %add54, 62
  %sub56 = sub nsw i64 %shl55, 1
  %mul57 = mul nsw i64 %sub56, 2
  %add58 = add nsw i64 %mul57, 1
  br label %cond.end.64

cond.false.59:                                    ; preds = %cond.true.43
  %31 = load i64, i64* %bs, align 8
  %mul60 = mul nsw i64 0, %31
  %32 = load i64, i64* %rs, align 8
  %add61 = add nsw i64 %mul60, %32
  %mul62 = mul nsw i64 0, %add61
  %sub63 = sub nsw i64 %mul62, 1
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.59, %cond.true.50
  %cond65 = phi i64 [ %add58, %cond.true.50 ], [ %sub63, %cond.false.59 ]
  %33 = load i64, i64* %bs, align 8
  %add66 = add nsw i64 %cond65, %33
  %34 = load i64, i64* %rs, align 8
  %cmp67 = icmp slt i64 %add66, %34
  br i1 %cmp67, label %if.else.128, label %land.lhs.true

cond.false.69:                                    ; preds = %cond.true.40
  %35 = load i64, i64* %rs, align 8
  %36 = load i64, i64* %bs, align 8
  %mul70 = mul nsw i64 0, %36
  %37 = load i64, i64* %rs, align 8
  %add71 = add nsw i64 %mul70, %37
  %mul72 = mul nsw i64 0, %add71
  %sub73 = sub nsw i64 %mul72, 1
  %cmp74 = icmp slt i64 %sub73, 0
  br i1 %cmp74, label %cond.true.76, label %cond.false.95

cond.true.76:                                     ; preds = %cond.false.69
  %38 = load i64, i64* %bs, align 8
  %mul77 = mul nsw i64 0, %38
  %39 = load i64, i64* %rs, align 8
  %add78 = add nsw i64 %mul77, %39
  %mul79 = mul nsw i64 0, %add78
  %add80 = add nsw i64 %mul79, 0
  %neg81 = xor i64 %add80, -1
  %cmp82 = icmp eq i64 %neg81, -1
  %conv83 = zext i1 %cmp82 to i32
  %sub84 = sub nsw i32 0, %conv83
  %conv85 = sext i32 %sub84 to i64
  %40 = load i64, i64* %bs, align 8
  %mul86 = mul nsw i64 0, %40
  %41 = load i64, i64* %rs, align 8
  %add87 = add nsw i64 %mul86, %41
  %mul88 = mul nsw i64 0, %add87
  %add89 = add nsw i64 %mul88, 1
  %shl90 = shl i64 %add89, 62
  %sub91 = sub nsw i64 %shl90, 1
  %mul92 = mul nsw i64 %sub91, 2
  %add93 = add nsw i64 %mul92, 1
  %sub94 = sub nsw i64 %conv85, %add93
  br label %cond.end.100

cond.false.95:                                    ; preds = %cond.false.69
  %42 = load i64, i64* %bs, align 8
  %mul96 = mul nsw i64 0, %42
  %43 = load i64, i64* %rs, align 8
  %add97 = add nsw i64 %mul96, %43
  %mul98 = mul nsw i64 0, %add97
  %add99 = add nsw i64 %mul98, 0
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.95, %cond.true.76
  %cond101 = phi i64 [ %sub94, %cond.true.76 ], [ %add99, %cond.false.95 ]
  %44 = load i64, i64* %bs, align 8
  %add102 = add nsw i64 %cond101, %44
  %cmp103 = icmp slt i64 %35, %add102
  br i1 %cmp103, label %if.else.128, label %land.lhs.true

cond.false.105:                                   ; preds = %cond.end
  %45 = load i64, i64* %rs, align 8
  %cmp106 = icmp slt i64 %45, 0
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %cond.false.105
  br i1 true, label %if.else.128, label %land.lhs.true

cond.false.109:                                   ; preds = %cond.false.105
  %46 = load i64, i64* %bs, align 8
  %cmp110 = icmp slt i64 %46, 0
  br i1 %cmp110, label %cond.true.112, label %cond.false.116

cond.true.112:                                    ; preds = %cond.false.109
  %47 = load i64, i64* %rs, align 8
  %48 = load i64, i64* %bs, align 8
  %sub113 = sub nsw i64 %47, %48
  %49 = load i64, i64* %rs, align 8
  %cmp114 = icmp sle i64 %sub113, %49
  br i1 %cmp114, label %if.else.128, label %land.lhs.true

cond.false.116:                                   ; preds = %cond.false.109
  %50 = load i64, i64* %rs, align 8
  %51 = load i64, i64* %bs, align 8
  %cmp117 = icmp slt i64 %50, %51
  br i1 %cmp117, label %if.else.128, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.116, %cond.true.112, %cond.true.108, %cond.end.100, %cond.end.64
  %52 = load i64, i64* %tmin, align 8
  %53 = load i64, i64* %rs, align 8
  %54 = load i64, i64* %bs, align 8
  %sub119 = sub nsw i64 %53, %54
  %cmp120 = icmp sle i64 %52, %sub119
  br i1 %cmp120, label %land.lhs.true.122, label %if.else.128

land.lhs.true.122:                                ; preds = %land.lhs.true
  %55 = load i64, i64* %rs, align 8
  %56 = load i64, i64* %bs, align 8
  %sub123 = sub nsw i64 %55, %56
  %57 = load i64, i64* %tmax, align 8
  %cmp124 = icmp sle i64 %sub123, %57
  br i1 %cmp124, label %if.then.126, label %if.else.128

if.then.126:                                      ; preds = %land.lhs.true.122
  %58 = load i64, i64* %bs, align 8
  %59 = load i64, i64* %rs, align 8
  %sub127 = sub nsw i64 %59, %58
  store i64 %sub127, i64* %rs, align 8
  br label %if.end.134

if.else.128:                                      ; preds = %land.lhs.true.122, %land.lhs.true, %cond.false.116, %cond.true.112, %cond.true.108, %cond.end.100, %cond.end.64
  %60 = load i64, i64* %rs, align 8
  %cmp129 = icmp slt i64 %60, 0
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %if.else.128
  br label %low_overflow

low_overflow:                                     ; preds = %if.then.131, %if.else.10
  %61 = load i64, i64* %tmin, align 8
  store i64 %61, i64* %rs, align 8
  store i32 0, i32* %rns, align 4
  br label %if.end.133

if.else.132:                                      ; preds = %if.else.128
  %62 = load i64, i64* %tmax, align 8
  store i64 %62, i64* %rs, align 8
  store i32 999999999, i32* %rns, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132, %low_overflow
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.126
  %63 = load i64, i64* %rs, align 8
  %64 = load i32, i32* %rns, align 4
  %conv135 = sext i32 %64 to i64
  %call = call { i64, i64 } @make_timespec(i64 %63, i64 %conv135)
  %65 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %66 = getelementptr { i64, i64 }, { i64, i64 }* %65, i32 0, i32 0
  %67 = extractvalue { i64, i64 } %call, 0
  store i64 %67, i64* %66, align 8
  %68 = getelementptr { i64, i64 }, { i64, i64 }* %65, i32 0, i32 1
  %69 = extractvalue { i64, i64 } %call, 1
  store i64 %69, i64* %68, align 8
  %70 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %71 = load { i64, i64 }, { i64, i64 }* %70, align 8
  ret { i64, i64 } %71
}

declare { i64, i64 } @make_timespec(i64, i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
