; ModuleID = 'utils/random.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gg_rand_state = type { [25 x i32], i32 }

@x = internal global [25 x i32] zeroinitializer, align 16
@k = internal global i32 0, align 4
@rand_initialized = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @gg_srand(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %seed.addr, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  %3 = load i32, i32* %seed.addr, align 4
  %mul = mul i32 %3, 1313
  store i32 %mul, i32* %seed.addr, align 4
  %4 = load i32, i32* %seed.addr, align 4
  %add = add i32 %4, 88897
  store i32 %add, i32* %seed.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 24, i32* @k, align 4
  store i32 1, i32* @rand_initialized, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gg_rand() #0 {
entry:
  %call = call i32 @next_rand()
  %and = and i32 %call, 2147483647
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal i32 @next_rand() #0 {
entry:
  %y = alloca i32, align 4
  %0 = load i32, i32* @rand_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @gg_srand(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @k, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @k, align 4
  %cmp = icmp eq i32 %inc, 25
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @iterate_tgfsr()
  store i32 0, i32* @k, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %2 = load i32, i32* @k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* @k, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %shl = shl i32 %5, 7
  %and = and i32 %shl, 727393536
  %xor = xor i32 %3, %and
  store i32 %xor, i32* %y, align 4
  %6 = load i32, i32* %y, align 4
  %shl5 = shl i32 %6, 15
  %and6 = and i32 %shl5, -611647488
  %7 = load i32, i32* %y, align 4
  %xor7 = xor i32 %7, %and6
  store i32 %xor7, i32* %y, align 4
  %8 = load i32, i32* %y, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gg_urand() #0 {
entry:
  %call = call i32 @next_rand()
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define double @gg_drand() #0 {
entry:
  %call = call i32 @next_rand()
  %conv = uitofp i32 %call to double
  %mul = fmul double %conv, 0x3DEFFFFFFFFFFFFF
  ret double %mul
}

; Function Attrs: nounwind uwtable
define void @gg_get_rand_state(%struct.gg_rand_state* %state) #0 {
entry:
  %state.addr = alloca %struct.gg_rand_state*, align 8
  %i = alloca i32, align 4
  store %struct.gg_rand_state* %state, %struct.gg_rand_state** %state.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.gg_rand_state*, %struct.gg_rand_state** %state.addr, align 8
  %x = getelementptr inbounds %struct.gg_rand_state, %struct.gg_rand_state* %4, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [25 x i32], [25 x i32]* %x, i32 0, i64 %idxprom1
  store i32 %2, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* @k, align 4
  %7 = load %struct.gg_rand_state*, %struct.gg_rand_state** %state.addr, align 8
  %k = getelementptr inbounds %struct.gg_rand_state, %struct.gg_rand_state* %7, i32 0, i32 1
  store i32 %6, i32* %k, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gg_set_rand_state(%struct.gg_rand_state* %state) #0 {
entry:
  %state.addr = alloca %struct.gg_rand_state*, align 8
  %i = alloca i32, align 4
  store %struct.gg_rand_state* %state, %struct.gg_rand_state** %state.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.gg_rand_state*, %struct.gg_rand_state** %state.addr, align 8
  %x = getelementptr inbounds %struct.gg_rand_state, %struct.gg_rand_state* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [25 x i32], [25 x i32]* %x, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.gg_rand_state*, %struct.gg_rand_state** %state.addr, align 8
  %k = getelementptr inbounds %struct.gg_rand_state, %struct.gg_rand_state* %6, i32 0, i32 1
  %7 = load i32, i32* %k, align 4
  store i32 %7, i32* @k, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @iterate_tgfsr() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %1, 7
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %shr = lshr i32 %4, 1
  %xor = xor i32 %2, %shr
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom3
  %6 = load i32, i32* %arrayidx4, align 4
  %and = and i32 %6, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 -1900031960, i32 0
  %xor5 = xor i32 %xor, %cond
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom6
  store i32 %xor5, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.26, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp9 = icmp slt i32 %9, 25
  br i1 %cmp9, label %for.body.10, label %for.end.28

for.body.10:                                      ; preds = %for.cond.8
  %10 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %10, 7
  %sub = sub nsw i32 %add11, 25
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom12
  %11 = load i32, i32* %arrayidx13, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom14
  %13 = load i32, i32* %arrayidx15, align 4
  %shr16 = lshr i32 %13, 1
  %xor17 = xor i32 %11, %shr16
  %14 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom18
  %15 = load i32, i32* %arrayidx19, align 4
  %and20 = and i32 %15, 1
  %tobool21 = icmp ne i32 %and20, 0
  %cond22 = select i1 %tobool21, i32 -1900031960, i32 0
  %xor23 = xor i32 %xor17, %cond22
  %16 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i32 0, i64 %idxprom24
  store i32 %xor23, i32* %arrayidx25, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.10
  %17 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %17, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.8

for.end.28:                                       ; preds = %for.cond.8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
