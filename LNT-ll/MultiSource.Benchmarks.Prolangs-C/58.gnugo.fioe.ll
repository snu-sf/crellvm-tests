; ModuleID = './MultiSource.Benchmarks.Prolangs-C/58.gnugo.fioe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external global [19 x [19 x i8]], align 16
@mymove = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @fioe(i32 %i, i32 %j) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %j.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 1, i64 0), align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* @mymove, align 4
  %cmp2 = icmp eq i32 %conv, %3
  br i1 %cmp2, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %4 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 0, i64 1), align 1
  %conv5 = zext i8 %4 to i32
  %5 = load i32, i32* @mymove, align 4
  %cmp6 = icmp eq i32 %conv5, %5
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true.4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %land.lhs.true, %if.then
  %6 = load i32, i32* %j.addr, align 4
  %cmp9 = icmp eq i32 %6, 18
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.20

land.lhs.true.11:                                 ; preds = %if.end
  %7 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 1, i64 18), align 1
  %conv12 = zext i8 %7 to i32
  %8 = load i32, i32* @mymove, align 4
  %cmp13 = icmp eq i32 %conv12, %8
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.20

land.lhs.true.15:                                 ; preds = %land.lhs.true.11
  %9 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 0, i64 17), align 1
  %conv16 = zext i8 %9 to i32
  %10 = load i32, i32* @mymove, align 4
  %cmp17 = icmp eq i32 %conv16, %10
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.15
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.15, %land.lhs.true.11, %if.end
  %11 = load i32, i32* %j.addr, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 1), i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv21 = zext i8 %12 to i32
  %13 = load i32, i32* @mymove, align 4
  %cmp22 = icmp eq i32 %conv21, %13
  br i1 %cmp22, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %if.end.20
  %14 = load i32, i32* %j.addr, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom25 = sext i32 %sub to i64
  %arrayidx26 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 0), i32 0, i64 %idxprom25
  %15 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %15 to i32
  %16 = load i32, i32* @mymove, align 4
  %cmp28 = icmp eq i32 %conv27, %16
  br i1 %cmp28, label %land.lhs.true.30, label %if.else

land.lhs.true.30:                                 ; preds = %land.lhs.true.24
  %17 = load i32, i32* %j.addr, align 4
  %add = add nsw i32 %17, 1
  %idxprom31 = sext i32 %add to i64
  %arrayidx32 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 0), i32 0, i64 %idxprom31
  %18 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %18 to i32
  %19 = load i32, i32* @mymove, align 4
  %cmp34 = icmp eq i32 %conv33, %19
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.30, %land.lhs.true.24, %if.end.20
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %entry
  %20 = load i32, i32* %i.addr, align 4
  %cmp38 = icmp eq i32 %20, 18
  br i1 %cmp38, label %if.then.40, label %if.end.86

if.then.40:                                       ; preds = %if.end.37
  %21 = load i32, i32* %j.addr, align 4
  %cmp41 = icmp eq i32 %21, 0
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.52

land.lhs.true.43:                                 ; preds = %if.then.40
  %22 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 17, i64 0), align 1
  %conv44 = zext i8 %22 to i32
  %23 = load i32, i32* @mymove, align 4
  %cmp45 = icmp eq i32 %conv44, %23
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.52

land.lhs.true.47:                                 ; preds = %land.lhs.true.43
  %24 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 18, i64 1), align 1
  %conv48 = zext i8 %24 to i32
  %25 = load i32, i32* @mymove, align 4
  %cmp49 = icmp eq i32 %conv48, %25
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.47
  store i32 1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %land.lhs.true.47, %land.lhs.true.43, %if.then.40
  %26 = load i32, i32* %j.addr, align 4
  %cmp53 = icmp eq i32 %26, 18
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.64

land.lhs.true.55:                                 ; preds = %if.end.52
  %27 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 17, i64 18), align 1
  %conv56 = zext i8 %27 to i32
  %28 = load i32, i32* @mymove, align 4
  %cmp57 = icmp eq i32 %conv56, %28
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.64

land.lhs.true.59:                                 ; preds = %land.lhs.true.55
  %29 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 18, i64 17), align 1
  %conv60 = zext i8 %29 to i32
  %30 = load i32, i32* @mymove, align 4
  %cmp61 = icmp eq i32 %conv60, %30
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true.59
  store i32 1, i32* %retval
  br label %return

if.end.64:                                        ; preds = %land.lhs.true.59, %land.lhs.true.55, %if.end.52
  %31 = load i32, i32* %j.addr, align 4
  %idxprom65 = sext i32 %31 to i64
  %arrayidx66 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 17), i32 0, i64 %idxprom65
  %32 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %32 to i32
  %33 = load i32, i32* @mymove, align 4
  %cmp68 = icmp eq i32 %conv67, %33
  br i1 %cmp68, label %land.lhs.true.70, label %if.else.85

land.lhs.true.70:                                 ; preds = %if.end.64
  %34 = load i32, i32* %j.addr, align 4
  %sub71 = sub nsw i32 %34, 1
  %idxprom72 = sext i32 %sub71 to i64
  %arrayidx73 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 18), i32 0, i64 %idxprom72
  %35 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %35 to i32
  %36 = load i32, i32* @mymove, align 4
  %cmp75 = icmp eq i32 %conv74, %36
  br i1 %cmp75, label %land.lhs.true.77, label %if.else.85

land.lhs.true.77:                                 ; preds = %land.lhs.true.70
  %37 = load i32, i32* %j.addr, align 4
  %add78 = add nsw i32 %37, 1
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 18), i32 0, i64 %idxprom79
  %38 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %38 to i32
  %39 = load i32, i32* @mymove, align 4
  %cmp82 = icmp eq i32 %conv81, %39
  br i1 %cmp82, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %land.lhs.true.77
  store i32 1, i32* %retval
  br label %return

if.else.85:                                       ; preds = %land.lhs.true.77, %land.lhs.true.70, %if.end.64
  store i32 0, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.end.37
  %40 = load i32, i32* %j.addr, align 4
  %cmp87 = icmp eq i32 %40, 0
  br i1 %cmp87, label %if.then.89, label %if.end.114

if.then.89:                                       ; preds = %if.end.86
  %41 = load i32, i32* %i.addr, align 4
  %idxprom90 = sext i32 %41 to i64
  %arrayidx91 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx91, i32 0, i64 1
  %42 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %42 to i32
  %43 = load i32, i32* @mymove, align 4
  %cmp94 = icmp eq i32 %conv93, %43
  br i1 %cmp94, label %land.lhs.true.96, label %if.else.113

land.lhs.true.96:                                 ; preds = %if.then.89
  %44 = load i32, i32* %i.addr, align 4
  %sub97 = sub nsw i32 %44, 1
  %idxprom98 = sext i32 %sub97 to i64
  %arrayidx99 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom98
  %arrayidx100 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx99, i32 0, i64 0
  %45 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %45 to i32
  %46 = load i32, i32* @mymove, align 4
  %cmp102 = icmp eq i32 %conv101, %46
  br i1 %cmp102, label %land.lhs.true.104, label %if.else.113

land.lhs.true.104:                                ; preds = %land.lhs.true.96
  %47 = load i32, i32* %i.addr, align 4
  %add105 = add nsw i32 %47, 1
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx107, i32 0, i64 0
  %48 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %48 to i32
  %49 = load i32, i32* @mymove, align 4
  %cmp110 = icmp eq i32 %conv109, %49
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %land.lhs.true.104
  store i32 1, i32* %retval
  br label %return

if.else.113:                                      ; preds = %land.lhs.true.104, %land.lhs.true.96, %if.then.89
  store i32 0, i32* %retval
  br label %return

if.end.114:                                       ; preds = %if.end.86
  %50 = load i32, i32* %j.addr, align 4
  %cmp115 = icmp eq i32 %50, 18
  br i1 %cmp115, label %if.then.117, label %if.end.142

if.then.117:                                      ; preds = %if.end.114
  %51 = load i32, i32* %i.addr, align 4
  %idxprom118 = sext i32 %51 to i64
  %arrayidx119 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom118
  %arrayidx120 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx119, i32 0, i64 17
  %52 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %52 to i32
  %53 = load i32, i32* @mymove, align 4
  %cmp122 = icmp eq i32 %conv121, %53
  br i1 %cmp122, label %land.lhs.true.124, label %if.else.141

land.lhs.true.124:                                ; preds = %if.then.117
  %54 = load i32, i32* %i.addr, align 4
  %sub125 = sub nsw i32 %54, 1
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx127, i32 0, i64 18
  %55 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %55 to i32
  %56 = load i32, i32* @mymove, align 4
  %cmp130 = icmp eq i32 %conv129, %56
  br i1 %cmp130, label %land.lhs.true.132, label %if.else.141

land.lhs.true.132:                                ; preds = %land.lhs.true.124
  %57 = load i32, i32* %i.addr, align 4
  %add133 = add nsw i32 %57, 1
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom134
  %arrayidx136 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx135, i32 0, i64 18
  %58 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %58 to i32
  %59 = load i32, i32* @mymove, align 4
  %cmp138 = icmp eq i32 %conv137, %59
  br i1 %cmp138, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %land.lhs.true.132
  store i32 1, i32* %retval
  br label %return

if.else.141:                                      ; preds = %land.lhs.true.132, %land.lhs.true.124, %if.then.117
  store i32 0, i32* %retval
  br label %return

if.end.142:                                       ; preds = %if.end.114
  %60 = load i32, i32* %j.addr, align 4
  %sub143 = sub nsw i32 %60, 1
  %idxprom144 = sext i32 %sub143 to i64
  %61 = load i32, i32* %i.addr, align 4
  %idxprom145 = sext i32 %61 to i64
  %arrayidx146 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom145
  %arrayidx147 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx146, i32 0, i64 %idxprom144
  %62 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %62 to i32
  %63 = load i32, i32* @mymove, align 4
  %cmp149 = icmp eq i32 %conv148, %63
  br i1 %cmp149, label %land.lhs.true.151, label %if.else.179

land.lhs.true.151:                                ; preds = %if.end.142
  %64 = load i32, i32* %j.addr, align 4
  %add152 = add nsw i32 %64, 1
  %idxprom153 = sext i32 %add152 to i64
  %65 = load i32, i32* %i.addr, align 4
  %idxprom154 = sext i32 %65 to i64
  %arrayidx155 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom154
  %arrayidx156 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx155, i32 0, i64 %idxprom153
  %66 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %66 to i32
  %67 = load i32, i32* @mymove, align 4
  %cmp158 = icmp eq i32 %conv157, %67
  br i1 %cmp158, label %land.lhs.true.160, label %if.else.179

land.lhs.true.160:                                ; preds = %land.lhs.true.151
  %68 = load i32, i32* %j.addr, align 4
  %idxprom161 = sext i32 %68 to i64
  %69 = load i32, i32* %i.addr, align 4
  %sub162 = sub nsw i32 %69, 1
  %idxprom163 = sext i32 %sub162 to i64
  %arrayidx164 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom163
  %arrayidx165 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx164, i32 0, i64 %idxprom161
  %70 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %70 to i32
  %71 = load i32, i32* @mymove, align 4
  %cmp167 = icmp eq i32 %conv166, %71
  br i1 %cmp167, label %land.lhs.true.169, label %if.else.179

land.lhs.true.169:                                ; preds = %land.lhs.true.160
  %72 = load i32, i32* %j.addr, align 4
  %idxprom170 = sext i32 %72 to i64
  %73 = load i32, i32* %i.addr, align 4
  %add171 = add nsw i32 %73, 1
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom172
  %arrayidx174 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx173, i32 0, i64 %idxprom170
  %74 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %74 to i32
  %75 = load i32, i32* @mymove, align 4
  %cmp176 = icmp eq i32 %conv175, %75
  br i1 %cmp176, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %land.lhs.true.169
  store i32 1, i32* %retval
  br label %return

if.else.179:                                      ; preds = %land.lhs.true.169, %land.lhs.true.160, %land.lhs.true.151, %if.end.142
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.179, %if.then.178, %if.else.141, %if.then.140, %if.else.113, %if.then.112, %if.else.85, %if.then.84, %if.then.63, %if.then.51, %if.else, %if.then.36, %if.then.19, %if.then.8
  %76 = load i32, i32* %retval
  ret i32 %76
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
