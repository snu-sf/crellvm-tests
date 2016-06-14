; ModuleID = 'engine/movelist.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @movelist_move_known(i32 %move, i32 %max_points, i32* %points, i32* %codes) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %max_points.addr = alloca i32, align 4
  %points.addr = alloca i32*, align 8
  %codes.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %max_points, i32* %max_points.addr, align 4
  store i32* %points, i32** %points.addr, align 8
  store i32* %codes, i32** %codes.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %max_points.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %codes.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32*, i32** %points.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %8 = load i32, i32* %move.addr, align 4
  %cmp4 = icmp eq i32 %7, %8
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32*, i32** %codes.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %12 = load i32, i32* %k, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define void @movelist_change_point(i32 %move, i32 %code, i32 %max_points, i32* %points, i32* %codes) #0 {
entry:
  %move.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %max_points.addr = alloca i32, align 4
  %points.addr = alloca i32*, align 8
  %codes.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  store i32 %max_points, i32* %max_points.addr, align 4
  store i32* %points, i32** %points.addr, align 8
  store i32* %codes, i32** %codes.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %max_points.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %points.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %move.addr, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %k, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %max_points.addr, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %for.end
  %9 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i32*, i32** %codes.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  %12 = load i32, i32* %code.addr, align 4
  %cmp6 = icmp sle i32 %11, %12
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.3
  br label %if.end.22

if.end.8:                                         ; preds = %if.then.3
  %13 = load i32, i32* %code.addr, align 4
  %14 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load i32*, i32** %codes.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 %idxprom9
  store i32 %13, i32* %arrayidx10, align 4
  %16 = load i32, i32* %max_points.addr, align 4
  %17 = load i32*, i32** %points.addr, align 8
  %18 = load i32*, i32** %codes.addr, align 8
  call void @movelist_sort_points(i32 %16, i32* %17, i32* %18)
  br label %if.end.22

if.end.11:                                        ; preds = %for.end
  %19 = load i32, i32* %code.addr, align 4
  %20 = load i32, i32* %max_points.addr, align 4
  %sub = sub nsw i32 %20, 1
  %idxprom12 = sext i32 %sub to i64
  %21 = load i32*, i32** %codes.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 %idxprom12
  %22 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp sgt i32 %19, %22
  br i1 %cmp14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end.11
  %23 = load i32, i32* %move.addr, align 4
  %24 = load i32, i32* %max_points.addr, align 4
  %sub16 = sub nsw i32 %24, 1
  %idxprom17 = sext i32 %sub16 to i64
  %25 = load i32*, i32** %points.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %25, i64 %idxprom17
  store i32 %23, i32* %arrayidx18, align 4
  %26 = load i32, i32* %code.addr, align 4
  %27 = load i32, i32* %max_points.addr, align 4
  %sub19 = sub nsw i32 %27, 1
  %idxprom20 = sext i32 %sub19 to i64
  %28 = load i32*, i32** %codes.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %28, i64 %idxprom20
  store i32 %26, i32* %arrayidx21, align 4
  %29 = load i32, i32* %max_points.addr, align 4
  %30 = load i32*, i32** %points.addr, align 8
  %31 = load i32*, i32** %codes.addr, align 8
  call void @movelist_sort_points(i32 %29, i32* %30, i32* %31)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.7, %if.end.8, %if.then.15, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @movelist_sort_points(i32 %max_points, i32* %points, i32* %codes) #0 {
entry:
  %max_points.addr = alloca i32, align 4
  %points.addr = alloca i32*, align 8
  %codes.addr = alloca i32*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %new_start = alloca i32, align 4
  %new_end = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %max_points, i32* %max_points.addr, align 4
  store i32* %points, i32** %points.addr, align 8
  store i32* %codes, i32** %codes.addr, align 8
  store i32 0, i32* %start, align 4
  %0 = load i32, i32* %max_points.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %end, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.20, %entry
  %1 = load i32, i32* %start, align 4
  %2 = load i32, i32* %end, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %end, align 4
  store i32 %3, i32* %new_start, align 4
  %4 = load i32, i32* %end, align 4
  store i32 %4, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %start, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %codes.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %k, align 4
  %sub2 = sub nsw i32 %10, 1
  %idxprom3 = sext i32 %sub2 to i64
  %11 = load i32*, i32** %codes.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp sgt i32 %9, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32*, i32** %points.addr, align 8
  %14 = load i32*, i32** %codes.addr, align 8
  %15 = load i32, i32* %k, align 4
  %16 = load i32, i32* %k, align 4
  %sub6 = sub nsw i32 %16, 1
  call void @swap_points_and_codes(i32* %13, i32* %14, i32 %15, i32 %sub6)
  %17 = load i32, i32* %k, align 4
  store i32 %17, i32* %new_start, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %k, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %new_start, align 4
  store i32 %19, i32* %start, align 4
  %20 = load i32, i32* %start, align 4
  store i32 %20, i32* %new_end, align 4
  %21 = load i32, i32* %start, align 4
  store i32 %21, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.19, %for.end
  %22 = load i32, i32* %k, align 4
  %23 = load i32, i32* %end, align 4
  %sub8 = sub nsw i32 %23, 1
  %cmp9 = icmp slt i32 %22, %sub8
  br i1 %cmp9, label %for.body.10, label %for.end.20

for.body.10:                                      ; preds = %for.cond.7
  %24 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %24 to i64
  %25 = load i32*, i32** %codes.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %25, i64 %idxprom11
  %26 = load i32, i32* %arrayidx12, align 4
  %27 = load i32, i32* %k, align 4
  %add = add nsw i32 %27, 1
  %idxprom13 = sext i32 %add to i64
  %28 = load i32*, i32** %codes.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %28, i64 %idxprom13
  %29 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp slt i32 %26, %29
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.body.10
  %30 = load i32*, i32** %points.addr, align 8
  %31 = load i32*, i32** %codes.addr, align 8
  %32 = load i32, i32* %k, align 4
  %33 = load i32, i32* %k, align 4
  %add17 = add nsw i32 %33, 1
  call void @swap_points_and_codes(i32* %30, i32* %31, i32 %32, i32 %add17)
  %34 = load i32, i32* %k, align 4
  store i32 %34, i32* %new_end, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.body.10
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end.18
  %35 = load i32, i32* %k, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.7

for.end.20:                                       ; preds = %for.cond.7
  %36 = load i32, i32* %new_end, align 4
  store i32 %36, i32* %end, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @swap_points_and_codes(i32* %points, i32* %codes, i32 %m, i32 %n) #0 {
entry:
  %points.addr = alloca i32*, align 8
  %codes.addr = alloca i32*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32* %points, i32** %points.addr, align 8
  store i32* %codes, i32** %codes.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** %points.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %tmp, align 4
  %3 = load i32, i32* %n.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i32*, i32** %points.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %m.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i32*, i32** %points.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  store i32 %5, i32* %arrayidx4, align 4
  %8 = load i32, i32* %tmp, align 4
  %9 = load i32, i32* %n.addr, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i32*, i32** %points.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 %idxprom5
  store i32 %8, i32* %arrayidx6, align 4
  %11 = load i32, i32* %m.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i32*, i32** %codes.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  store i32 %13, i32* %tmp, align 4
  %14 = load i32, i32* %n.addr, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load i32*, i32** %codes.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 %idxprom9
  %16 = load i32, i32* %arrayidx10, align 4
  %17 = load i32, i32* %m.addr, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load i32*, i32** %codes.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom11
  store i32 %16, i32* %arrayidx12, align 4
  %19 = load i32, i32* %tmp, align 4
  %20 = load i32, i32* %n.addr, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load i32*, i32** %codes.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 %idxprom13
  store i32 %19, i32* %arrayidx14, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
