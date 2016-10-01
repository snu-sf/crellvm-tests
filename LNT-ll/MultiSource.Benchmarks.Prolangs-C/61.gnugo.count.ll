; ModuleID = './MultiSource.Benchmarks.Prolangs-C/61.gnugo.count.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ml = external global [19 x [19 x i8]], align 16
@p = external global [19 x [19 x i8]], align 16
@lib = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @count(i32 %i, i32 %j, i32 %color) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %j.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx2, align 1
  %2 = load i32, i32* %i.addr, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.40

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %j.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx5, i32 0, i64 %idxprom3
  %5 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, i32* %j.addr, align 4
  %idxprom9 = sext i32 %6 to i64
  %7 = load i32, i32* %i.addr, align 4
  %sub10 = sub nsw i32 %7, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx12, i32 0, i64 %idxprom9
  %8 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %8 to i32
  %tobool = icmp ne i32 %conv14, 0
  br i1 %tobool, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* @lib, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @lib, align 4
  %10 = load i32, i32* %j.addr, align 4
  %idxprom16 = sext i32 %10 to i64
  %11 = load i32, i32* %i.addr, align 4
  %sub17 = sub nsw i32 %11, 1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx19, i32 0, i64 %idxprom16
  store i8 0, i8* %arrayidx20, align 1
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true, %if.then
  %12 = load i32, i32* %j.addr, align 4
  %idxprom21 = sext i32 %12 to i64
  %13 = load i32, i32* %i.addr, align 4
  %sub22 = sub nsw i32 %13, 1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx24, i32 0, i64 %idxprom21
  %14 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %14 to i32
  %15 = load i32, i32* %color.addr, align 4
  %cmp27 = icmp eq i32 %conv26, %15
  br i1 %cmp27, label %land.lhs.true.29, label %if.end

land.lhs.true.29:                                 ; preds = %if.else
  %16 = load i32, i32* %j.addr, align 4
  %idxprom30 = sext i32 %16 to i64
  %17 = load i32, i32* %i.addr, align 4
  %sub31 = sub nsw i32 %17, 1
  %idxprom32 = sext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx33, i32 0, i64 %idxprom30
  %18 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %18 to i32
  %tobool36 = icmp ne i32 %conv35, 0
  br i1 %tobool36, label %if.then.37, label %if.end

if.then.37:                                       ; preds = %land.lhs.true.29
  %19 = load i32, i32* %i.addr, align 4
  %sub38 = sub nsw i32 %19, 1
  %20 = load i32, i32* %j.addr, align 4
  %21 = load i32, i32* %color.addr, align 4
  call void @count(i32 %sub38, i32 %20, i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then.37, %land.lhs.true.29, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %if.then.15
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %entry
  %22 = load i32, i32* %i.addr, align 4
  %cmp41 = icmp ne i32 %22, 18
  br i1 %cmp41, label %if.then.43, label %if.end.87

if.then.43:                                       ; preds = %if.end.40
  %23 = load i32, i32* %j.addr, align 4
  %idxprom44 = sext i32 %23 to i64
  %24 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %24, 1
  %idxprom45 = sext i32 %add to i64
  %arrayidx46 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx46, i32 0, i64 %idxprom44
  %25 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %25 to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.66

land.lhs.true.51:                                 ; preds = %if.then.43
  %26 = load i32, i32* %j.addr, align 4
  %idxprom52 = sext i32 %26 to i64
  %27 = load i32, i32* %i.addr, align 4
  %add53 = add nsw i32 %27, 1
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx55, i32 0, i64 %idxprom52
  %28 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %28 to i32
  %tobool58 = icmp ne i32 %conv57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.66

if.then.59:                                       ; preds = %land.lhs.true.51
  %29 = load i32, i32* @lib, align 4
  %inc60 = add nsw i32 %29, 1
  store i32 %inc60, i32* @lib, align 4
  %30 = load i32, i32* %j.addr, align 4
  %idxprom61 = sext i32 %30 to i64
  %31 = load i32, i32* %i.addr, align 4
  %add62 = add nsw i32 %31, 1
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx64, i32 0, i64 %idxprom61
  store i8 0, i8* %arrayidx65, align 1
  br label %if.end.86

if.else.66:                                       ; preds = %land.lhs.true.51, %if.then.43
  %32 = load i32, i32* %j.addr, align 4
  %idxprom67 = sext i32 %32 to i64
  %33 = load i32, i32* %i.addr, align 4
  %add68 = add nsw i32 %33, 1
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx70, i32 0, i64 %idxprom67
  %34 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %34 to i32
  %35 = load i32, i32* %color.addr, align 4
  %cmp73 = icmp eq i32 %conv72, %35
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.85

land.lhs.true.75:                                 ; preds = %if.else.66
  %36 = load i32, i32* %j.addr, align 4
  %idxprom76 = sext i32 %36 to i64
  %37 = load i32, i32* %i.addr, align 4
  %add77 = add nsw i32 %37, 1
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx79, i32 0, i64 %idxprom76
  %38 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %38 to i32
  %tobool82 = icmp ne i32 %conv81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %land.lhs.true.75
  %39 = load i32, i32* %i.addr, align 4
  %add84 = add nsw i32 %39, 1
  %40 = load i32, i32* %j.addr, align 4
  %41 = load i32, i32* %color.addr, align 4
  call void @count(i32 %add84, i32 %40, i32 %41)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %land.lhs.true.75, %if.else.66
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.59
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.40
  %42 = load i32, i32* %j.addr, align 4
  %cmp88 = icmp ne i32 %42, 0
  br i1 %cmp88, label %if.then.90, label %if.end.135

if.then.90:                                       ; preds = %if.end.87
  %43 = load i32, i32* %j.addr, align 4
  %sub91 = sub nsw i32 %43, 1
  %idxprom92 = sext i32 %sub91 to i64
  %44 = load i32, i32* %i.addr, align 4
  %idxprom93 = sext i32 %44 to i64
  %arrayidx94 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom93
  %arrayidx95 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx94, i32 0, i64 %idxprom92
  %45 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %45 to i32
  %cmp97 = icmp eq i32 %conv96, 0
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.114

land.lhs.true.99:                                 ; preds = %if.then.90
  %46 = load i32, i32* %j.addr, align 4
  %sub100 = sub nsw i32 %46, 1
  %idxprom101 = sext i32 %sub100 to i64
  %47 = load i32, i32* %i.addr, align 4
  %idxprom102 = sext i32 %47 to i64
  %arrayidx103 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom102
  %arrayidx104 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx103, i32 0, i64 %idxprom101
  %48 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %48 to i32
  %tobool106 = icmp ne i32 %conv105, 0
  br i1 %tobool106, label %if.then.107, label %if.else.114

if.then.107:                                      ; preds = %land.lhs.true.99
  %49 = load i32, i32* @lib, align 4
  %inc108 = add nsw i32 %49, 1
  store i32 %inc108, i32* @lib, align 4
  %50 = load i32, i32* %j.addr, align 4
  %sub109 = sub nsw i32 %50, 1
  %idxprom110 = sext i32 %sub109 to i64
  %51 = load i32, i32* %i.addr, align 4
  %idxprom111 = sext i32 %51 to i64
  %arrayidx112 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom111
  %arrayidx113 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx112, i32 0, i64 %idxprom110
  store i8 0, i8* %arrayidx113, align 1
  br label %if.end.134

if.else.114:                                      ; preds = %land.lhs.true.99, %if.then.90
  %52 = load i32, i32* %j.addr, align 4
  %sub115 = sub nsw i32 %52, 1
  %idxprom116 = sext i32 %sub115 to i64
  %53 = load i32, i32* %i.addr, align 4
  %idxprom117 = sext i32 %53 to i64
  %arrayidx118 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom117
  %arrayidx119 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx118, i32 0, i64 %idxprom116
  %54 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %54 to i32
  %55 = load i32, i32* %color.addr, align 4
  %cmp121 = icmp eq i32 %conv120, %55
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.133

land.lhs.true.123:                                ; preds = %if.else.114
  %56 = load i32, i32* %j.addr, align 4
  %sub124 = sub nsw i32 %56, 1
  %idxprom125 = sext i32 %sub124 to i64
  %57 = load i32, i32* %i.addr, align 4
  %idxprom126 = sext i32 %57 to i64
  %arrayidx127 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx127, i32 0, i64 %idxprom125
  %58 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %58 to i32
  %tobool130 = icmp ne i32 %conv129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %land.lhs.true.123
  %59 = load i32, i32* %i.addr, align 4
  %60 = load i32, i32* %j.addr, align 4
  %sub132 = sub nsw i32 %60, 1
  %61 = load i32, i32* %color.addr, align 4
  call void @count(i32 %59, i32 %sub132, i32 %61)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %land.lhs.true.123, %if.else.114
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.107
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.87
  %62 = load i32, i32* %j.addr, align 4
  %cmp136 = icmp ne i32 %62, 18
  br i1 %cmp136, label %if.then.138, label %if.end.183

if.then.138:                                      ; preds = %if.end.135
  %63 = load i32, i32* %j.addr, align 4
  %add139 = add nsw i32 %63, 1
  %idxprom140 = sext i32 %add139 to i64
  %64 = load i32, i32* %i.addr, align 4
  %idxprom141 = sext i32 %64 to i64
  %arrayidx142 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom141
  %arrayidx143 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx142, i32 0, i64 %idxprom140
  %65 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %65 to i32
  %cmp145 = icmp eq i32 %conv144, 0
  br i1 %cmp145, label %land.lhs.true.147, label %if.else.162

land.lhs.true.147:                                ; preds = %if.then.138
  %66 = load i32, i32* %j.addr, align 4
  %add148 = add nsw i32 %66, 1
  %idxprom149 = sext i32 %add148 to i64
  %67 = load i32, i32* %i.addr, align 4
  %idxprom150 = sext i32 %67 to i64
  %arrayidx151 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom150
  %arrayidx152 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx151, i32 0, i64 %idxprom149
  %68 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %68 to i32
  %tobool154 = icmp ne i32 %conv153, 0
  br i1 %tobool154, label %if.then.155, label %if.else.162

if.then.155:                                      ; preds = %land.lhs.true.147
  %69 = load i32, i32* @lib, align 4
  %inc156 = add nsw i32 %69, 1
  store i32 %inc156, i32* @lib, align 4
  %70 = load i32, i32* %j.addr, align 4
  %add157 = add nsw i32 %70, 1
  %idxprom158 = sext i32 %add157 to i64
  %71 = load i32, i32* %i.addr, align 4
  %idxprom159 = sext i32 %71 to i64
  %arrayidx160 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom159
  %arrayidx161 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx160, i32 0, i64 %idxprom158
  store i8 0, i8* %arrayidx161, align 1
  br label %if.end.182

if.else.162:                                      ; preds = %land.lhs.true.147, %if.then.138
  %72 = load i32, i32* %j.addr, align 4
  %add163 = add nsw i32 %72, 1
  %idxprom164 = sext i32 %add163 to i64
  %73 = load i32, i32* %i.addr, align 4
  %idxprom165 = sext i32 %73 to i64
  %arrayidx166 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom165
  %arrayidx167 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx166, i32 0, i64 %idxprom164
  %74 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %74 to i32
  %75 = load i32, i32* %color.addr, align 4
  %cmp169 = icmp eq i32 %conv168, %75
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.181

land.lhs.true.171:                                ; preds = %if.else.162
  %76 = load i32, i32* %j.addr, align 4
  %add172 = add nsw i32 %76, 1
  %idxprom173 = sext i32 %add172 to i64
  %77 = load i32, i32* %i.addr, align 4
  %idxprom174 = sext i32 %77 to i64
  %arrayidx175 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i32 0, i64 %idxprom174
  %arrayidx176 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx175, i32 0, i64 %idxprom173
  %78 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %78 to i32
  %tobool178 = icmp ne i32 %conv177, 0
  br i1 %tobool178, label %if.then.179, label %if.end.181

if.then.179:                                      ; preds = %land.lhs.true.171
  %79 = load i32, i32* %i.addr, align 4
  %80 = load i32, i32* %j.addr, align 4
  %add180 = add nsw i32 %80, 1
  %81 = load i32, i32* %color.addr, align 4
  call void @count(i32 %79, i32 %add180, i32 %81)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.179, %land.lhs.true.171, %if.else.162
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.155
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.end.135
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
