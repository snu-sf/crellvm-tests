; ModuleID = './lib/timespec-add.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

; Function Attrs: nounwind readnone uwtable
define { i64, i64 } @timespec_add(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1) #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %a = alloca %struct.timespec, align 8
  %b = alloca %struct.timespec, align 8
  %rs = alloca i64, align 8
  %bs = alloca i64, align 8
  %ns = alloca i32, align 4
  %nsd = alloca i32, align 4
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
  %add = add nsw i64 %8, %9
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ns, align 4
  %10 = load i32, i32* %ns, align 4
  %sub = sub nsw i32 %10, 1000000000
  store i32 %sub, i32* %nsd, align 4
  %11 = load i32, i32* %ns, align 4
  store i32 %11, i32* %rns, align 4
  store i64 -9223372036854775808, i64* %tmin, align 8
  store i64 9223372036854775807, i64* %tmax, align 8
  %12 = load i32, i32* %nsd, align 4
  %cmp = icmp sle i32 0, %12
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %nsd, align 4
  store i32 %13, i32* %rns, align 4
  %14 = load i64, i64* %bs, align 8
  %15 = load i64, i64* %tmax, align 8
  %cmp4 = icmp slt i64 %14, %15
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %16 = load i64, i64* %bs, align 8
  %inc = add nsw i64 %16, 1
  store i64 %inc, i64* %bs, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %17 = load i64, i64* %rs, align 8
  %cmp7 = icmp slt i64 %17, 0
  br i1 %cmp7, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else
  %18 = load i64, i64* %rs, align 8
  %inc10 = add nsw i64 %18, 1
  store i64 %inc10, i64* %rs, align 8
  br label %if.end

if.else.11:                                       ; preds = %if.else
  br label %high_overflow

if.end:                                           ; preds = %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %19 = load i64, i64* %bs, align 8
  %mul = mul nsw i64 0, %19
  %20 = load i64, i64* %rs, align 8
  %add14 = add nsw i64 %mul, %20
  %mul15 = mul nsw i64 0, %add14
  %sub16 = sub nsw i64 %mul15, 1
  %cmp17 = icmp slt i64 %sub16, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %21 = load i64, i64* %bs, align 8
  %mul19 = mul nsw i64 0, %21
  %22 = load i64, i64* %rs, align 8
  %add20 = add nsw i64 %mul19, %22
  %mul21 = mul nsw i64 0, %add20
  %add22 = add nsw i64 %mul21, 0
  %neg = xor i64 %add22, -1
  %cmp23 = icmp eq i64 %neg, -1
  %conv24 = zext i1 %cmp23 to i32
  %sub25 = sub nsw i32 0, %conv24
  %conv26 = sext i32 %sub25 to i64
  %23 = load i64, i64* %bs, align 8
  %mul27 = mul nsw i64 0, %23
  %24 = load i64, i64* %rs, align 8
  %add28 = add nsw i64 %mul27, %24
  %mul29 = mul nsw i64 0, %add28
  %add30 = add nsw i64 %mul29, 1
  %shl = shl i64 %add30, 62
  %sub31 = sub nsw i64 %shl, 1
  %mul32 = mul nsw i64 %sub31, 2
  %add33 = add nsw i64 %mul32, 1
  %sub34 = sub nsw i64 %conv26, %add33
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  %25 = load i64, i64* %bs, align 8
  %mul35 = mul nsw i64 0, %25
  %26 = load i64, i64* %rs, align 8
  %add36 = add nsw i64 %mul35, %26
  %mul37 = mul nsw i64 0, %add36
  %add38 = add nsw i64 %mul37, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub34, %cond.true ], [ %add38, %cond.false ]
  %cmp39 = icmp slt i64 %cond, 0
  br i1 %cmp39, label %cond.true.41, label %cond.false.106

cond.true.41:                                     ; preds = %cond.end
  %27 = load i64, i64* %bs, align 8
  %cmp42 = icmp slt i64 %27, 0
  br i1 %cmp42, label %cond.true.44, label %cond.false.80

cond.true.44:                                     ; preds = %cond.true.41
  %28 = load i64, i64* %rs, align 8
  %29 = load i64, i64* %bs, align 8
  %mul45 = mul nsw i64 0, %29
  %30 = load i64, i64* %rs, align 8
  %add46 = add nsw i64 %mul45, %30
  %mul47 = mul nsw i64 0, %add46
  %sub48 = sub nsw i64 %mul47, 1
  %cmp49 = icmp slt i64 %sub48, 0
  br i1 %cmp49, label %cond.true.51, label %cond.false.70

cond.true.51:                                     ; preds = %cond.true.44
  %31 = load i64, i64* %bs, align 8
  %mul52 = mul nsw i64 0, %31
  %32 = load i64, i64* %rs, align 8
  %add53 = add nsw i64 %mul52, %32
  %mul54 = mul nsw i64 0, %add53
  %add55 = add nsw i64 %mul54, 0
  %neg56 = xor i64 %add55, -1
  %cmp57 = icmp eq i64 %neg56, -1
  %conv58 = zext i1 %cmp57 to i32
  %sub59 = sub nsw i32 0, %conv58
  %conv60 = sext i32 %sub59 to i64
  %33 = load i64, i64* %bs, align 8
  %mul61 = mul nsw i64 0, %33
  %34 = load i64, i64* %rs, align 8
  %add62 = add nsw i64 %mul61, %34
  %mul63 = mul nsw i64 0, %add62
  %add64 = add nsw i64 %mul63, 1
  %shl65 = shl i64 %add64, 62
  %sub66 = sub nsw i64 %shl65, 1
  %mul67 = mul nsw i64 %sub66, 2
  %add68 = add nsw i64 %mul67, 1
  %sub69 = sub nsw i64 %conv60, %add68
  br label %cond.end.75

cond.false.70:                                    ; preds = %cond.true.44
  %35 = load i64, i64* %bs, align 8
  %mul71 = mul nsw i64 0, %35
  %36 = load i64, i64* %rs, align 8
  %add72 = add nsw i64 %mul71, %36
  %mul73 = mul nsw i64 0, %add72
  %add74 = add nsw i64 %mul73, 0
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.70, %cond.true.51
  %cond76 = phi i64 [ %sub69, %cond.true.51 ], [ %add74, %cond.false.70 ]
  %37 = load i64, i64* %bs, align 8
  %sub77 = sub nsw i64 %cond76, %37
  %cmp78 = icmp slt i64 %28, %sub77
  br i1 %cmp78, label %if.else.133, label %land.lhs.true

cond.false.80:                                    ; preds = %cond.true.41
  %38 = load i64, i64* %bs, align 8
  %mul81 = mul nsw i64 0, %38
  %39 = load i64, i64* %rs, align 8
  %add82 = add nsw i64 %mul81, %39
  %mul83 = mul nsw i64 0, %add82
  %sub84 = sub nsw i64 %mul83, 1
  %cmp85 = icmp slt i64 %sub84, 0
  br i1 %cmp85, label %cond.true.87, label %cond.false.96

cond.true.87:                                     ; preds = %cond.false.80
  %40 = load i64, i64* %bs, align 8
  %mul88 = mul nsw i64 0, %40
  %41 = load i64, i64* %rs, align 8
  %add89 = add nsw i64 %mul88, %41
  %mul90 = mul nsw i64 0, %add89
  %add91 = add nsw i64 %mul90, 1
  %shl92 = shl i64 %add91, 62
  %sub93 = sub nsw i64 %shl92, 1
  %mul94 = mul nsw i64 %sub93, 2
  %add95 = add nsw i64 %mul94, 1
  br label %cond.end.101

cond.false.96:                                    ; preds = %cond.false.80
  %42 = load i64, i64* %bs, align 8
  %mul97 = mul nsw i64 0, %42
  %43 = load i64, i64* %rs, align 8
  %add98 = add nsw i64 %mul97, %43
  %mul99 = mul nsw i64 0, %add98
  %sub100 = sub nsw i64 %mul99, 1
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.96, %cond.true.87
  %cond102 = phi i64 [ %add95, %cond.true.87 ], [ %sub100, %cond.false.96 ]
  %44 = load i64, i64* %bs, align 8
  %sub103 = sub nsw i64 %cond102, %44
  %45 = load i64, i64* %rs, align 8
  %cmp104 = icmp slt i64 %sub103, %45
  br i1 %cmp104, label %if.else.133, label %land.lhs.true

cond.false.106:                                   ; preds = %cond.end
  %46 = load i64, i64* %rs, align 8
  %cmp107 = icmp slt i64 %46, 0
  br i1 %cmp107, label %cond.true.109, label %cond.false.113

cond.true.109:                                    ; preds = %cond.false.106
  %47 = load i64, i64* %bs, align 8
  %48 = load i64, i64* %rs, align 8
  %49 = load i64, i64* %bs, align 8
  %add110 = add nsw i64 %48, %49
  %cmp111 = icmp sle i64 %47, %add110
  br i1 %cmp111, label %if.else.133, label %land.lhs.true

cond.false.113:                                   ; preds = %cond.false.106
  %50 = load i64, i64* %bs, align 8
  %cmp114 = icmp slt i64 %50, 0
  br i1 %cmp114, label %cond.true.116, label %cond.false.120

cond.true.116:                                    ; preds = %cond.false.113
  %51 = load i64, i64* %rs, align 8
  %52 = load i64, i64* %rs, align 8
  %53 = load i64, i64* %bs, align 8
  %add117 = add nsw i64 %52, %53
  %cmp118 = icmp sle i64 %51, %add117
  br i1 %cmp118, label %if.else.133, label %land.lhs.true

cond.false.120:                                   ; preds = %cond.false.113
  %54 = load i64, i64* %rs, align 8
  %55 = load i64, i64* %bs, align 8
  %add121 = add nsw i64 %54, %55
  %56 = load i64, i64* %bs, align 8
  %cmp122 = icmp slt i64 %add121, %56
  br i1 %cmp122, label %if.else.133, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.120, %cond.true.116, %cond.true.109, %cond.end.101, %cond.end.75
  %57 = load i64, i64* %tmin, align 8
  %58 = load i64, i64* %rs, align 8
  %59 = load i64, i64* %bs, align 8
  %add124 = add nsw i64 %58, %59
  %cmp125 = icmp sle i64 %57, %add124
  br i1 %cmp125, label %land.lhs.true.127, label %if.else.133

land.lhs.true.127:                                ; preds = %land.lhs.true
  %60 = load i64, i64* %rs, align 8
  %61 = load i64, i64* %bs, align 8
  %add128 = add nsw i64 %60, %61
  %62 = load i64, i64* %tmax, align 8
  %cmp129 = icmp sle i64 %add128, %62
  br i1 %cmp129, label %if.then.131, label %if.else.133

if.then.131:                                      ; preds = %land.lhs.true.127
  %63 = load i64, i64* %bs, align 8
  %64 = load i64, i64* %rs, align 8
  %add132 = add nsw i64 %64, %63
  store i64 %add132, i64* %rs, align 8
  br label %if.end.139

if.else.133:                                      ; preds = %land.lhs.true.127, %land.lhs.true, %cond.false.120, %cond.true.116, %cond.true.109, %cond.end.101, %cond.end.75
  %65 = load i64, i64* %rs, align 8
  %cmp134 = icmp slt i64 %65, 0
  br i1 %cmp134, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %if.else.133
  %66 = load i64, i64* %tmin, align 8
  store i64 %66, i64* %rs, align 8
  store i32 0, i32* %rns, align 4
  br label %if.end.138

if.else.137:                                      ; preds = %if.else.133
  br label %high_overflow

high_overflow:                                    ; preds = %if.else.137, %if.else.11
  %67 = load i64, i64* %tmax, align 8
  store i64 %67, i64* %rs, align 8
  store i32 999999999, i32* %rns, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %high_overflow, %if.then.136
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.131
  %68 = load i64, i64* %rs, align 8
  %69 = load i32, i32* %rns, align 4
  %conv140 = sext i32 %69 to i64
  %call = call { i64, i64 } @make_timespec(i64 %68, i64 %conv140)
  %70 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %71 = getelementptr { i64, i64 }, { i64, i64 }* %70, i32 0, i32 0
  %72 = extractvalue { i64, i64 } %call, 0
  store i64 %72, i64* %71, align 8
  %73 = getelementptr { i64, i64 }, { i64, i64 }* %70, i32 0, i32 1
  %74 = extractvalue { i64, i64 } %call, 1
  store i64 %74, i64* %73, align 8
  %75 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %76 = load { i64, i64 }, { i64, i64 }* %75, align 8
  ret { i64, i64 } %76
}

declare { i64, i64 } @make_timespec(i64, i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
