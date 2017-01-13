; ModuleID = './MultiSource.Applications.obsequi/4.tables.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.KeyInfo = type { %struct.KeyInfo_s, %struct.KeyInfo_s, %struct.KeyInfo_s, %struct.KeyInfo_s }
%struct.KeyInfo_s = type { i32, i32, i32 }

@g_board_size = external global [2 x i32], align 4
@g_keyinfo = common global [2 x [32 x [32 x %struct.KeyInfo]]] zeroinitializer, align 16
@countbits16 = common global [65536 x i32] zeroinitializer, align 16
@lastbit16 = common global [65536 x i32] zeroinitializer, align 16
@move_table16 = common global [65536 x i32] zeroinitializer, align 16
@g_zobrist = external global [32 x [32 x i32]], align 16

; Function Attrs: nounwind uwtable
define void @init_static_tables() #0 {
entry:
  call void @init_countbits()
  call void @init_lastbit()
  call void @init_movetable()
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_less_static_tables() #0 {
entry:
  %n_rows = alloca i32, align 4
  %n_cols = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 0), align 4
  store i32 %0, i32* %n_rows, align 4
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 1), align 4
  store i32 %1, i32* %n_cols, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 32
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.11, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %3, 32
  br i1 %cmp2, label %for.body.3, label %for.end.13

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %4 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %4, 2
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %7 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom8
  %arrayidx9 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx9, i32 0, i64 %idxprom
  %norm = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx10, i32 0, i32 0
  call void @negate_keyinfo(%struct.KeyInfo_s* %norm)
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %9 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end.13
  %10 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.70, %for.end.16
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n_rows, align 4
  %cmp18 = icmp slt i32 %11, %12
  br i1 %cmp18, label %for.body.19, label %for.end.72

for.body.19:                                      ; preds = %for.cond.17
  store i32 0, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.67, %for.body.19
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %n_cols, align 4
  %cmp21 = icmp slt i32 %13, %14
  br i1 %cmp21, label %for.body.22, label %for.end.69

for.body.22:                                      ; preds = %for.cond.20
  %15 = load i32, i32* %j, align 4
  %add = add nsw i32 %15, 1
  %16 = load i32, i32* %n_cols, align 4
  %cmp23 = icmp slt i32 %add, %16
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.22
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %n_cols, align 4
  %mul = mul nsw i32 %17, %18
  %19 = load i32, i32* %j, align 4
  %add24 = add nsw i32 %mul, %19
  %20 = load i32, i32* %j, align 4
  %add25 = add nsw i32 %20, 1
  %idxprom26 = sext i32 %add25 to i64
  %21 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %21, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* getelementptr inbounds ([2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 0), i32 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx29, i32 0, i64 %idxprom26
  %norm31 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx30, i32 0, i32 0
  %bit1_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm31, i32 0, i32 0
  store i32 %add24, i32* %bit1_index, align 4
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %n_cols, align 4
  %mul32 = mul nsw i32 %22, %23
  %24 = load i32, i32* %j, align 4
  %add33 = add nsw i32 %24, 1
  %add34 = add nsw i32 %mul32, %add33
  %25 = load i32, i32* %j, align 4
  %add35 = add nsw i32 %25, 1
  %idxprom36 = sext i32 %add35 to i64
  %26 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %26, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* getelementptr inbounds ([2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 0), i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx39, i32 0, i64 %idxprom36
  %norm41 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx40, i32 0, i32 0
  %bit2_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm41, i32 0, i32 1
  store i32 %add34, i32* %bit2_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.22
  %27 = load i32, i32* %i, align 4
  %add42 = add nsw i32 %27, 1
  %28 = load i32, i32* %n_rows, align 4
  %cmp43 = icmp slt i32 %add42, %28
  br i1 %cmp43, label %if.then.44, label %if.end.66

if.then.44:                                       ; preds = %if.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %n_cols, align 4
  %mul45 = mul nsw i32 %29, %30
  %31 = load i32, i32* %j, align 4
  %add46 = add nsw i32 %mul45, %31
  %32 = load i32, i32* %i, align 4
  %add47 = add nsw i32 %32, 1
  %idxprom48 = sext i32 %add47 to i64
  %33 = load i32, i32* %j, align 4
  %add49 = add nsw i32 %33, 1
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* getelementptr inbounds ([2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 1), i32 0, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx51, i32 0, i64 %idxprom48
  %norm53 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx52, i32 0, i32 0
  %bit1_index54 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm53, i32 0, i32 0
  store i32 %add46, i32* %bit1_index54, align 4
  %34 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %34, 1
  %35 = load i32, i32* %n_cols, align 4
  %mul56 = mul nsw i32 %add55, %35
  %36 = load i32, i32* %j, align 4
  %add57 = add nsw i32 %mul56, %36
  %37 = load i32, i32* %i, align 4
  %add58 = add nsw i32 %37, 1
  %idxprom59 = sext i32 %add58 to i64
  %38 = load i32, i32* %j, align 4
  %add60 = add nsw i32 %38, 1
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* getelementptr inbounds ([2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 1), i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx62, i32 0, i64 %idxprom59
  %norm64 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %arrayidx63, i32 0, i32 0
  %bit2_index65 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm64, i32 0, i32 1
  store i32 %add57, i32* %bit2_index65, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.44, %if.end
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %39 = load i32, i32* %j, align 4
  %inc68 = add nsw i32 %39, 1
  store i32 %inc68, i32* %j, align 4
  br label %for.cond.20

for.end.69:                                       ; preds = %for.cond.20
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end.69
  %40 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %40, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.17

for.end.72:                                       ; preds = %for.cond.17
  store i32 0, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.94, %for.end.72
  %41 = load i32, i32* %i, align 4
  %cmp74 = icmp slt i32 %41, 32
  br i1 %cmp74, label %for.body.75, label %for.end.96

for.body.75:                                      ; preds = %for.cond.73
  store i32 0, i32* %j, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.91, %for.body.75
  %42 = load i32, i32* %j, align 4
  %cmp77 = icmp slt i32 %42, 32
  br i1 %cmp77, label %for.body.78, label %for.end.93

for.body.78:                                      ; preds = %for.cond.76
  store i32 0, i32* %k, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.88, %for.body.78
  %43 = load i32, i32* %k, align 4
  %cmp80 = icmp slt i32 %43, 2
  br i1 %cmp80, label %for.body.81, label %for.end.90

for.body.81:                                      ; preds = %for.cond.79
  %44 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %44 to i64
  %45 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %45 to i64
  %46 = load i32, i32* %k, align 4
  %idxprom84 = sext i32 %46 to i64
  %arrayidx85 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo]]], [2 x [32 x [32 x %struct.KeyInfo]]]* @g_keyinfo, i32 0, i64 %idxprom84
  %arrayidx86 = getelementptr inbounds [32 x [32 x %struct.KeyInfo]], [32 x [32 x %struct.KeyInfo]]* %arrayidx85, i32 0, i64 %idxprom83
  %arrayidx87 = getelementptr inbounds [32 x %struct.KeyInfo], [32 x %struct.KeyInfo]* %arrayidx86, i32 0, i64 %idxprom82
  %47 = load i32, i32* %n_rows, align 4
  %48 = load i32, i32* %n_cols, align 4
  call void @fill_in_key_entry(%struct.KeyInfo* %arrayidx87, i32 %47, i32 %48)
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.81
  %49 = load i32, i32* %k, align 4
  %inc89 = add nsw i32 %49, 1
  store i32 %inc89, i32* %k, align 4
  br label %for.cond.79

for.end.90:                                       ; preds = %for.cond.79
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.90
  %50 = load i32, i32* %j, align 4
  %inc92 = add nsw i32 %50, 1
  store i32 %inc92, i32* %j, align 4
  br label %for.cond.76

for.end.93:                                       ; preds = %for.cond.76
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end.93
  %51 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %51, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond.73

for.end.96:                                       ; preds = %for.cond.73
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @negate_keyinfo(%struct.KeyInfo_s* %keyinfo) #0 {
entry:
  %keyinfo.addr = alloca %struct.KeyInfo_s*, align 8
  store %struct.KeyInfo_s* %keyinfo, %struct.KeyInfo_s** %keyinfo.addr, align 8
  %0 = load %struct.KeyInfo_s*, %struct.KeyInfo_s** %keyinfo.addr, align 8
  %bit2_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %0, i32 0, i32 1
  store i32 -1, i32* %bit2_index, align 4
  %1 = load %struct.KeyInfo_s*, %struct.KeyInfo_s** %keyinfo.addr, align 8
  %bit1_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %1, i32 0, i32 0
  store i32 -1, i32* %bit1_index, align 4
  %2 = load %struct.KeyInfo_s*, %struct.KeyInfo_s** %keyinfo.addr, align 8
  %hash_code = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %2, i32 0, i32 2
  store i32 0, i32* %hash_code, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fill_in_key_entry(%struct.KeyInfo* %keyinfo, i32 %num_rows, i32 %num_cols) #0 {
entry:
  %keyinfo.addr = alloca %struct.KeyInfo*, align 8
  %num_rows.addr = alloca i32, align 4
  %num_cols.addr = alloca i32, align 4
  %r1 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store %struct.KeyInfo* %keyinfo, %struct.KeyInfo** %keyinfo.addr, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  store i32 %num_cols, i32* %num_cols.addr, align 4
  %0 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %norm = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %0, i32 0, i32 0
  %bit1_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm, i32 0, i32 0
  %1 = load i32, i32* %bit1_index, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %norm1 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %2, i32 0, i32 0
  call void @negate_keyinfo(%struct.KeyInfo_s* %norm1)
  %3 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %flipV = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %3, i32 0, i32 1
  call void @negate_keyinfo(%struct.KeyInfo_s* %flipV)
  %4 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %flipH = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %4, i32 0, i32 2
  call void @negate_keyinfo(%struct.KeyInfo_s* %flipH)
  %5 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %flipVH = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %5, i32 0, i32 3
  call void @negate_keyinfo(%struct.KeyInfo_s* %flipVH)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %norm2 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %6, i32 0, i32 0
  %bit1_index3 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm2, i32 0, i32 0
  %7 = load i32, i32* %bit1_index3, align 4
  %8 = load i32, i32* %num_cols.addr, align 4
  %div = sdiv i32 %7, %8
  store i32 %div, i32* %r1, align 4
  %9 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %norm4 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %9, i32 0, i32 0
  %bit1_index5 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm4, i32 0, i32 0
  %10 = load i32, i32* %bit1_index5, align 4
  %11 = load i32, i32* %num_cols.addr, align 4
  %rem = srem i32 %10, %11
  store i32 %rem, i32* %c1, align 4
  %12 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %norm6 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %12, i32 0, i32 0
  %bit2_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm6, i32 0, i32 1
  %13 = load i32, i32* %bit2_index, align 4
  %14 = load i32, i32* %num_cols.addr, align 4
  %div7 = sdiv i32 %13, %14
  store i32 %div7, i32* %r2, align 4
  %15 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %norm8 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %15, i32 0, i32 0
  %bit2_index9 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %norm8, i32 0, i32 1
  %16 = load i32, i32* %bit2_index9, align 4
  %17 = load i32, i32* %num_cols.addr, align 4
  %rem10 = srem i32 %16, %17
  store i32 %rem10, i32* %c2, align 4
  %18 = load i32, i32* %r1, align 4
  %19 = load i32, i32* %num_cols.addr, align 4
  %mul = mul nsw i32 %18, %19
  %20 = load i32, i32* %num_cols.addr, align 4
  %21 = load i32, i32* %c1, align 4
  %sub = sub nsw i32 %20, %21
  %sub11 = sub nsw i32 %sub, 1
  %add = add nsw i32 %mul, %sub11
  %22 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %flipV12 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %22, i32 0, i32 1
  %bit1_index13 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV12, i32 0, i32 0
  store i32 %add, i32* %bit1_index13, align 4
  %23 = load i32, i32* %r2, align 4
  %24 = load i32, i32* %num_cols.addr, align 4
  %mul14 = mul nsw i32 %23, %24
  %25 = load i32, i32* %num_cols.addr, align 4
  %26 = load i32, i32* %c2, align 4
  %sub15 = sub nsw i32 %25, %26
  %sub16 = sub nsw i32 %sub15, 1
  %add17 = add nsw i32 %mul14, %sub16
  %27 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %flipV18 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %27, i32 0, i32 1
  %bit2_index19 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipV18, i32 0, i32 1
  store i32 %add17, i32* %bit2_index19, align 4
  %28 = load i32, i32* %num_rows.addr, align 4
  %29 = load i32, i32* %r1, align 4
  %sub20 = sub nsw i32 %28, %29
  %sub21 = sub nsw i32 %sub20, 1
  %30 = load i32, i32* %num_cols.addr, align 4
  %mul22 = mul nsw i32 %sub21, %30
  %31 = load i32, i32* %c1, align 4
  %add23 = add nsw i32 %mul22, %31
  %32 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %flipH24 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %32, i32 0, i32 2
  %bit1_index25 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH24, i32 0, i32 0
  store i32 %add23, i32* %bit1_index25, align 4
  %33 = load i32, i32* %num_rows.addr, align 4
  %34 = load i32, i32* %r2, align 4
  %sub26 = sub nsw i32 %33, %34
  %sub27 = sub nsw i32 %sub26, 1
  %35 = load i32, i32* %num_cols.addr, align 4
  %mul28 = mul nsw i32 %sub27, %35
  %36 = load i32, i32* %c2, align 4
  %add29 = add nsw i32 %mul28, %36
  %37 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %flipH30 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %37, i32 0, i32 2
  %bit2_index31 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipH30, i32 0, i32 1
  store i32 %add29, i32* %bit2_index31, align 4
  %38 = load i32, i32* %num_rows.addr, align 4
  %39 = load i32, i32* %r1, align 4
  %sub32 = sub nsw i32 %38, %39
  %sub33 = sub nsw i32 %sub32, 1
  %40 = load i32, i32* %num_cols.addr, align 4
  %mul34 = mul nsw i32 %sub33, %40
  %41 = load i32, i32* %num_cols.addr, align 4
  %42 = load i32, i32* %c1, align 4
  %sub35 = sub nsw i32 %41, %42
  %sub36 = sub nsw i32 %sub35, 1
  %add37 = add nsw i32 %mul34, %sub36
  %43 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %flipVH38 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %43, i32 0, i32 3
  %bit1_index39 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH38, i32 0, i32 0
  store i32 %add37, i32* %bit1_index39, align 4
  %44 = load i32, i32* %num_rows.addr, align 4
  %45 = load i32, i32* %r2, align 4
  %sub40 = sub nsw i32 %44, %45
  %sub41 = sub nsw i32 %sub40, 1
  %46 = load i32, i32* %num_cols.addr, align 4
  %mul42 = mul nsw i32 %sub41, %46
  %47 = load i32, i32* %num_cols.addr, align 4
  %48 = load i32, i32* %c2, align 4
  %sub43 = sub nsw i32 %47, %48
  %sub44 = sub nsw i32 %sub43, 1
  %add45 = add nsw i32 %mul42, %sub44
  %49 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %flipVH46 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %49, i32 0, i32 3
  %bit2_index47 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %flipVH46, i32 0, i32 1
  store i32 %add45, i32* %bit2_index47, align 4
  %50 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %norm48 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %50, i32 0, i32 0
  %51 = load i32, i32* %num_cols.addr, align 4
  call void @fill_in_hash_code(%struct.KeyInfo_s* %norm48, i32 %51)
  %52 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %flipV49 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %52, i32 0, i32 1
  %53 = load i32, i32* %num_cols.addr, align 4
  call void @fill_in_hash_code(%struct.KeyInfo_s* %flipV49, i32 %53)
  %54 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %flipH50 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %54, i32 0, i32 2
  %55 = load i32, i32* %num_cols.addr, align 4
  call void @fill_in_hash_code(%struct.KeyInfo_s* %flipH50, i32 %55)
  %56 = load %struct.KeyInfo*, %struct.KeyInfo** %keyinfo.addr, align 8
  %flipVH51 = getelementptr inbounds %struct.KeyInfo, %struct.KeyInfo* %56, i32 0, i32 3
  %57 = load i32, i32* %num_cols.addr, align 4
  call void @fill_in_hash_code(%struct.KeyInfo_s* %flipVH51, i32 %57)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_countbits() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 0), align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 65536
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %and = and i32 %1, 1
  %2 = load i32, i32* %i, align 4
  %shr = ashr i32 %2, 1
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %and, %3
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom1
  store i32 %add, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_lastbit() #0 {
entry:
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 65536
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom4
  store i32 1, i32* %arrayidx5, align 4
  br label %for.inc

if.end.6:                                         ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %and7 = and i32 %5, 4
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.6
  %6 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom10
  store i32 2, i32* %arrayidx11, align 4
  br label %for.inc

if.end.12:                                        ; preds = %if.end.6
  %7 = load i32, i32* %i, align 4
  %and13 = and i32 %7, 8
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  %8 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %8 to i64
  %arrayidx17 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom16
  store i32 3, i32* %arrayidx17, align 4
  br label %for.inc

if.end.18:                                        ; preds = %if.end.12
  %9 = load i32, i32* %i, align 4
  %and19 = and i32 %9, 16
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.18
  %10 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %10 to i64
  %arrayidx23 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom22
  store i32 4, i32* %arrayidx23, align 4
  br label %for.inc

if.end.24:                                        ; preds = %if.end.18
  %11 = load i32, i32* %i, align 4
  %and25 = and i32 %11, 32
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.24
  %12 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %12 to i64
  %arrayidx29 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom28
  store i32 5, i32* %arrayidx29, align 4
  br label %for.inc

if.end.30:                                        ; preds = %if.end.24
  %13 = load i32, i32* %i, align 4
  %and31 = and i32 %13, 64
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.30
  %14 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %14 to i64
  %arrayidx35 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom34
  store i32 6, i32* %arrayidx35, align 4
  br label %for.inc

if.end.36:                                        ; preds = %if.end.30
  %15 = load i32, i32* %i, align 4
  %and37 = and i32 %15, 128
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.36
  %16 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %16 to i64
  %arrayidx41 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom40
  store i32 7, i32* %arrayidx41, align 4
  br label %for.inc

if.end.42:                                        ; preds = %if.end.36
  %17 = load i32, i32* %i, align 4
  %and43 = and i32 %17, 256
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.42
  %18 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %18 to i64
  %arrayidx47 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom46
  store i32 8, i32* %arrayidx47, align 4
  br label %for.inc

if.end.48:                                        ; preds = %if.end.42
  %19 = load i32, i32* %i, align 4
  %and49 = and i32 %19, 512
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.end.48
  %20 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %20 to i64
  %arrayidx53 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom52
  store i32 9, i32* %arrayidx53, align 4
  br label %for.inc

if.end.54:                                        ; preds = %if.end.48
  %21 = load i32, i32* %i, align 4
  %and55 = and i32 %21, 1024
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.54
  %22 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %22 to i64
  %arrayidx59 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom58
  store i32 10, i32* %arrayidx59, align 4
  br label %for.inc

if.end.60:                                        ; preds = %if.end.54
  %23 = load i32, i32* %i, align 4
  %and61 = and i32 %23, 2048
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %if.end.60
  %24 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %24 to i64
  %arrayidx65 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom64
  store i32 11, i32* %arrayidx65, align 4
  br label %for.inc

if.end.66:                                        ; preds = %if.end.60
  %25 = load i32, i32* %i, align 4
  %and67 = and i32 %25, 4096
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %if.end.66
  %26 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %26 to i64
  %arrayidx71 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom70
  store i32 12, i32* %arrayidx71, align 4
  br label %for.inc

if.end.72:                                        ; preds = %if.end.66
  %27 = load i32, i32* %i, align 4
  %and73 = and i32 %27, 8192
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.end.72
  %28 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %28 to i64
  %arrayidx77 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom76
  store i32 13, i32* %arrayidx77, align 4
  br label %for.inc

if.end.78:                                        ; preds = %if.end.72
  %29 = load i32, i32* %i, align 4
  %and79 = and i32 %29, 16384
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %if.end.78
  %30 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %30 to i64
  %arrayidx83 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom82
  store i32 14, i32* %arrayidx83, align 4
  br label %for.inc

if.end.84:                                        ; preds = %if.end.78
  %31 = load i32, i32* %i, align 4
  %and85 = and i32 %31, 32768
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %if.end.84
  %32 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %32 to i64
  %arrayidx89 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom88
  store i32 15, i32* %arrayidx89, align 4
  br label %for.inc

if.end.90:                                        ; preds = %if.end.84
  br label %for.inc

for.inc:                                          ; preds = %if.end.90, %if.then.87, %if.then.81, %if.then.75, %if.then.69, %if.then.63, %if.then.57, %if.then.51, %if.then.45, %if.then.39, %if.then.33, %if.then.27, %if.then.21, %if.then.15, %if.then.9, %if.then.3, %if.then
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 100, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 0), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_movetable() #0 {
entry:
  %i = alloca i32, align 4
  %mask = alloca i32, align 4
  %tmp = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %tmp, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 65536
  br i1 %cmp, label %while.body, label %while.end.9

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %i, align 4
  store i32 %1, i32* %mask, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.3, %while.body
  %2 = load i32, i32* %mask, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.2
  %3 = load i32, i32* %mask, align 4
  %4 = load i32, i32* %mask, align 4
  %sub = sub i32 0, %4
  %and = and i32 %3, %sub
  store i32 %and, i32* %tmp, align 4
  %5 = load i32, i32* %tmp, align 4
  %6 = load i32, i32* %tmp, align 4
  %shl = shl i32 %6, 1
  %or = or i32 %5, %shl
  %neg = xor i32 %or, -1
  %7 = load i32, i32* %mask, align 4
  %and4 = and i32 %7, %neg
  store i32 %and4, i32* %mask, align 4
  %8 = load i32, i32* %count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  %9 = load i32, i32* %tmp, align 4
  %and5 = and i32 %9, 32768
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %10 = load i32, i32* %count, align 4
  %or7 = or i32 %10, -268435456
  store i32 %or7, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %11 = load i32, i32* %count, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds [65536 x i32], [65536 x i32]* @move_table16, i32 0, i64 %idxprom
  store i32 %11, i32* %arrayidx, align 4
  %13 = load i32, i32* %i, align 4
  %inc8 = add i32 %13, 1
  store i32 %inc8, i32* %i, align 4
  br label %while.cond

while.end.9:                                      ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fill_in_hash_code(%struct.KeyInfo_s* %info, i32 %num_cols) #0 {
entry:
  %info.addr = alloca %struct.KeyInfo_s*, align 8
  %num_cols.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %hash = alloca i32, align 4
  store %struct.KeyInfo_s* %info, %struct.KeyInfo_s** %info.addr, align 8
  store i32 %num_cols, i32* %num_cols.addr, align 4
  store i32 0, i32* %hash, align 4
  %0 = load %struct.KeyInfo_s*, %struct.KeyInfo_s** %info.addr, align 8
  %bit1_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %0, i32 0, i32 0
  %1 = load i32, i32* %bit1_index, align 4
  %2 = load i32, i32* %num_cols.addr, align 4
  %div = sdiv i32 %1, %2
  store i32 %div, i32* %r, align 4
  %3 = load %struct.KeyInfo_s*, %struct.KeyInfo_s** %info.addr, align 8
  %bit1_index1 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %3, i32 0, i32 0
  %4 = load i32, i32* %bit1_index1, align 4
  %5 = load i32, i32* %num_cols.addr, align 4
  %rem = srem i32 %4, %5
  store i32 %rem, i32* %c, align 4
  %6 = load i32, i32* %c, align 4
  %add = add nsw i32 %6, 1
  %idxprom = sext i32 %add to i64
  %7 = load i32, i32* %r, align 4
  %add2 = add nsw i32 %7, 1
  %idxprom3 = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @g_zobrist, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx4, align 4
  store i32 %8, i32* %hash, align 4
  %9 = load %struct.KeyInfo_s*, %struct.KeyInfo_s** %info.addr, align 8
  %bit2_index = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %9, i32 0, i32 1
  %10 = load i32, i32* %bit2_index, align 4
  %11 = load i32, i32* %num_cols.addr, align 4
  %div5 = sdiv i32 %10, %11
  store i32 %div5, i32* %r, align 4
  %12 = load %struct.KeyInfo_s*, %struct.KeyInfo_s** %info.addr, align 8
  %bit2_index6 = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %12, i32 0, i32 1
  %13 = load i32, i32* %bit2_index6, align 4
  %14 = load i32, i32* %num_cols.addr, align 4
  %rem7 = srem i32 %13, %14
  store i32 %rem7, i32* %c, align 4
  %15 = load i32, i32* %c, align 4
  %add8 = add nsw i32 %15, 1
  %idxprom9 = sext i32 %add8 to i64
  %16 = load i32, i32* %r, align 4
  %add10 = add nsw i32 %16, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @g_zobrist, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx12, i32 0, i64 %idxprom9
  %17 = load i32, i32* %arrayidx13, align 4
  %18 = load i32, i32* %hash, align 4
  %xor = xor i32 %18, %17
  store i32 %xor, i32* %hash, align 4
  %19 = load i32, i32* %hash, align 4
  %20 = load %struct.KeyInfo_s*, %struct.KeyInfo_s** %info.addr, align 8
  %hash_code = getelementptr inbounds %struct.KeyInfo_s, %struct.KeyInfo_s* %20, i32 0, i32 2
  store i32 %19, i32* %hash_code, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
