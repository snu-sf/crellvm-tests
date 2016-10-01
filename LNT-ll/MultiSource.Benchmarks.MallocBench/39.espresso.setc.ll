; ModuleID = './MultiSource.Benchmarks.MallocBench/39.espresso.setc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }

@cube = external global %struct.cube_struct, align 8
@bit_count = external global [256 x i32], align 16

; Function Attrs: nounwind uwtable
define i32 @full_row(i32* %p, i32* %cof) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i32*, align 8
  %cof.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32* %cof, i32** %cof.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %p.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32*, i32** %cof.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %or = or i32 %4, %7
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %cmp = icmp ne i32 %or, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  %cmp6 = icmp sgt i32 %dec, 0
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @cdist0(i32* %a, i32* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %w = alloca i32, align 4
  %last = alloca i32, align 4
  %x = alloca i32, align 4
  %w19 = alloca i32, align 4
  %var = alloca i32, align 4
  %last20 = alloca i32, align 4
  %mask = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  store i32 %0, i32* %last, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %last, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %last, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** %b.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %3, %6
  store i32 %and, i32* %x, align 4
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %x, align 4
  %shr = lshr i32 %8, 1
  %or = or i32 %7, %shr
  %neg = xor i32 %or, -1
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 4
  %and3 = and i32 %neg, %9
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i32 1, i32* %w, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %w, align 4
  %11 = load i32, i32* %last, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %w, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i32*, i32** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  %15 = load i32, i32* %w, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load i32*, i32** %b.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %16, i64 %idxprom8
  %17 = load i32, i32* %arrayidx9, align 4
  %and10 = and i32 %14, %17
  store i32 %and10, i32* %x, align 4
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %x, align 4
  %shr11 = lshr i32 %19, 1
  %or12 = or i32 %18, %shr11
  %neg13 = xor i32 %or12, -1
  %and14 = and i32 %neg13, 1431655765
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %20 = load i32, i32* %w, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %entry
  %21 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %21, i32* %var, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.47, %if.end.18
  %22 = load i32, i32* %var, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp22 = icmp slt i32 %22, %23
  br i1 %cmp22, label %for.body.23, label %for.end.49

for.body.23:                                      ; preds = %for.cond.21
  %24 = load i32, i32* %var, align 4
  %idxprom24 = sext i32 %24 to i64
  %25 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %25, i64 %idxprom24
  %26 = load i32*, i32** %arrayidx25, align 8
  store i32* %26, i32** %mask, align 8
  %27 = load i32, i32* %var, align 4
  %idxprom26 = sext i32 %27 to i64
  %28 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %28, i64 %idxprom26
  %29 = load i32, i32* %arrayidx27, align 4
  store i32 %29, i32* %last20, align 4
  %30 = load i32, i32* %var, align 4
  %idxprom28 = sext i32 %30 to i64
  %31 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %31, i64 %idxprom28
  %32 = load i32, i32* %arrayidx29, align 4
  store i32 %32, i32* %w19, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.44, %for.body.23
  %33 = load i32, i32* %w19, align 4
  %34 = load i32, i32* %last20, align 4
  %cmp31 = icmp sle i32 %33, %34
  br i1 %cmp31, label %for.body.32, label %for.end.46

for.body.32:                                      ; preds = %for.cond.30
  %35 = load i32, i32* %w19, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load i32*, i32** %a.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %36, i64 %idxprom33
  %37 = load i32, i32* %arrayidx34, align 4
  %38 = load i32, i32* %w19, align 4
  %idxprom35 = sext i32 %38 to i64
  %39 = load i32*, i32** %b.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %39, i64 %idxprom35
  %40 = load i32, i32* %arrayidx36, align 4
  %and37 = and i32 %37, %40
  %41 = load i32, i32* %w19, align 4
  %idxprom38 = sext i32 %41 to i64
  %42 = load i32*, i32** %mask, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %42, i64 %idxprom38
  %43 = load i32, i32* %arrayidx39, align 4
  %and40 = and i32 %and37, %43
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body.32
  br label %nextvar

if.end.43:                                        ; preds = %for.body.32
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %44 = load i32, i32* %w19, align 4
  %inc45 = add nsw i32 %44, 1
  store i32 %inc45, i32* %w19, align 4
  br label %for.cond.30

for.end.46:                                       ; preds = %for.cond.30
  store i32 0, i32* %retval
  br label %return

nextvar:                                          ; preds = %if.then.42
  br label %for.inc.47

for.inc.47:                                       ; preds = %nextvar
  %45 = load i32, i32* %var, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %var, align 4
  br label %for.cond.21

for.end.49:                                       ; preds = %for.cond.21
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.49, %for.end.46, %if.then.16, %if.then.4
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define i32 @cdist01(i32* %a, i32* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %dist = alloca i32, align 4
  %w = alloca i32, align 4
  %last = alloca i32, align 4
  %x = alloca i32, align 4
  %w62 = alloca i32, align 4
  %var = alloca i32, align 4
  %last63 = alloca i32, align 4
  %mask = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 0, i32* %dist, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  store i32 %0, i32* %last, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end.61

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %last, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %last, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** %b.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %3, %6
  store i32 %and, i32* %x, align 4
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %x, align 4
  %shr = lshr i32 %8, 1
  %or = or i32 %7, %shr
  %neg = xor i32 %or, -1
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 4
  %and3 = and i32 %neg, %9
  store i32 %and3, i32* %x, align 4
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then.4, label %if.end.24

if.then.4:                                        ; preds = %if.then
  %10 = load i32, i32* %x, align 4
  %and5 = and i32 %10, 255
  %idxprom6 = zext i32 %and5 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %12 = load i32, i32* %x, align 4
  %shr8 = lshr i32 %12, 8
  %and9 = and i32 %shr8, 255
  %idxprom10 = zext i32 %and9 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom10
  %13 = load i32, i32* %arrayidx11, align 4
  %add = add nsw i32 %11, %13
  %14 = load i32, i32* %x, align 4
  %shr12 = lshr i32 %14, 16
  %and13 = and i32 %shr12, 255
  %idxprom14 = zext i32 %and13 to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom14
  %15 = load i32, i32* %arrayidx15, align 4
  %add16 = add nsw i32 %add, %15
  %16 = load i32, i32* %x, align 4
  %shr17 = lshr i32 %16, 24
  %and18 = and i32 %shr17, 255
  %idxprom19 = zext i32 %and18 to i64
  %arrayidx20 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom19
  %17 = load i32, i32* %arrayidx20, align 4
  %add21 = add nsw i32 %add16, %17
  store i32 %add21, i32* %dist, align 4
  %cmp22 = icmp sgt i32 %add21, 1
  br i1 %cmp22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then.4
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then
  store i32 1, i32* %w, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %18 = load i32, i32* %w, align 4
  %19 = load i32, i32* %last, align 4
  %cmp25 = icmp slt i32 %18, %19
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %w, align 4
  %idxprom26 = sext i32 %20 to i64
  %21 = load i32*, i32** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %21, i64 %idxprom26
  %22 = load i32, i32* %arrayidx27, align 4
  %23 = load i32, i32* %w, align 4
  %idxprom28 = sext i32 %23 to i64
  %24 = load i32*, i32** %b.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %24, i64 %idxprom28
  %25 = load i32, i32* %arrayidx29, align 4
  %and30 = and i32 %22, %25
  store i32 %and30, i32* %x, align 4
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* %x, align 4
  %shr31 = lshr i32 %27, 1
  %or32 = or i32 %26, %shr31
  %neg33 = xor i32 %or32, -1
  %and34 = and i32 %neg33, 1431655765
  store i32 %and34, i32* %x, align 4
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.60

if.then.36:                                       ; preds = %for.body
  %28 = load i32, i32* %dist, align 4
  %cmp37 = icmp eq i32 %28, 1
  br i1 %cmp37, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.36
  %29 = load i32, i32* %x, align 4
  %and38 = and i32 %29, 255
  %idxprom39 = zext i32 %and38 to i64
  %arrayidx40 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom39
  %30 = load i32, i32* %arrayidx40, align 4
  %31 = load i32, i32* %x, align 4
  %shr41 = lshr i32 %31, 8
  %and42 = and i32 %shr41, 255
  %idxprom43 = zext i32 %and42 to i64
  %arrayidx44 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom43
  %32 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %30, %32
  %33 = load i32, i32* %x, align 4
  %shr46 = lshr i32 %33, 16
  %and47 = and i32 %shr46, 255
  %idxprom48 = zext i32 %and47 to i64
  %arrayidx49 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom48
  %34 = load i32, i32* %arrayidx49, align 4
  %add50 = add nsw i32 %add45, %34
  %35 = load i32, i32* %x, align 4
  %shr51 = lshr i32 %35, 24
  %and52 = and i32 %shr51, 255
  %idxprom53 = zext i32 %and52 to i64
  %arrayidx54 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom53
  %36 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %add50, %36
  %37 = load i32, i32* %dist, align 4
  %add56 = add nsw i32 %37, %add55
  store i32 %add56, i32* %dist, align 4
  %cmp57 = icmp sgt i32 %add56, 1
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %lor.lhs.false, %if.then.36
  store i32 2, i32* %retval
  br label %return

if.end.59:                                        ; preds = %lor.lhs.false
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %38 = load i32, i32* %w, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.61

if.end.61:                                        ; preds = %for.end, %entry
  %39 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %39, i32* %var, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.94, %if.end.61
  %40 = load i32, i32* %var, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp65 = icmp slt i32 %40, %41
  br i1 %cmp65, label %for.body.66, label %for.end.96

for.body.66:                                      ; preds = %for.cond.64
  %42 = load i32, i32* %var, align 4
  %idxprom67 = sext i32 %42 to i64
  %43 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx68 = getelementptr inbounds i32*, i32** %43, i64 %idxprom67
  %44 = load i32*, i32** %arrayidx68, align 8
  store i32* %44, i32** %mask, align 8
  %45 = load i32, i32* %var, align 4
  %idxprom69 = sext i32 %45 to i64
  %46 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %46, i64 %idxprom69
  %47 = load i32, i32* %arrayidx70, align 4
  store i32 %47, i32* %last63, align 4
  %48 = load i32, i32* %var, align 4
  %idxprom71 = sext i32 %48 to i64
  %49 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %49, i64 %idxprom71
  %50 = load i32, i32* %arrayidx72, align 4
  store i32 %50, i32* %w62, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.87, %for.body.66
  %51 = load i32, i32* %w62, align 4
  %52 = load i32, i32* %last63, align 4
  %cmp74 = icmp sle i32 %51, %52
  br i1 %cmp74, label %for.body.75, label %for.end.89

for.body.75:                                      ; preds = %for.cond.73
  %53 = load i32, i32* %w62, align 4
  %idxprom76 = sext i32 %53 to i64
  %54 = load i32*, i32** %a.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %54, i64 %idxprom76
  %55 = load i32, i32* %arrayidx77, align 4
  %56 = load i32, i32* %w62, align 4
  %idxprom78 = sext i32 %56 to i64
  %57 = load i32*, i32** %b.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %57, i64 %idxprom78
  %58 = load i32, i32* %arrayidx79, align 4
  %and80 = and i32 %55, %58
  %59 = load i32, i32* %w62, align 4
  %idxprom81 = sext i32 %59 to i64
  %60 = load i32*, i32** %mask, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %60, i64 %idxprom81
  %61 = load i32, i32* %arrayidx82, align 4
  %and83 = and i32 %and80, %61
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.body.75
  br label %nextvar

if.end.86:                                        ; preds = %for.body.75
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %62 = load i32, i32* %w62, align 4
  %inc88 = add nsw i32 %62, 1
  store i32 %inc88, i32* %w62, align 4
  br label %for.cond.73

for.end.89:                                       ; preds = %for.cond.73
  %63 = load i32, i32* %dist, align 4
  %inc90 = add nsw i32 %63, 1
  store i32 %inc90, i32* %dist, align 4
  %cmp91 = icmp sgt i32 %inc90, 1
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %for.end.89
  store i32 2, i32* %retval
  br label %return

if.end.93:                                        ; preds = %for.end.89
  br label %nextvar

nextvar:                                          ; preds = %if.end.93, %if.then.85
  br label %for.inc.94

for.inc.94:                                       ; preds = %nextvar
  %64 = load i32, i32* %var, align 4
  %inc95 = add nsw i32 %64, 1
  store i32 %inc95, i32* %var, align 4
  br label %for.cond.64

for.end.96:                                       ; preds = %for.cond.64
  %65 = load i32, i32* %dist, align 4
  store i32 %65, i32* %retval
  br label %return

return:                                           ; preds = %for.end.96, %if.then.92, %if.then.58, %if.then.23
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define i32 @cdist(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %dist = alloca i32, align 4
  %w = alloca i32, align 4
  %last = alloca i32, align 4
  %x = alloca i32, align 4
  %w55 = alloca i32, align 4
  %var = alloca i32, align 4
  %last56 = alloca i32, align 4
  %mask = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 0, i32* %dist, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  store i32 %0, i32* %last, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end.54

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %last, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %last, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** %b.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %3, %6
  store i32 %and, i32* %x, align 4
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %x, align 4
  %shr = lshr i32 %8, 1
  %or = or i32 %7, %shr
  %neg = xor i32 %or, -1
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 4
  %and3 = and i32 %neg, %9
  store i32 %and3, i32* %x, align 4
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %10 = load i32, i32* %x, align 4
  %and5 = and i32 %10, 255
  %idxprom6 = zext i32 %and5 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %12 = load i32, i32* %x, align 4
  %shr8 = lshr i32 %12, 8
  %and9 = and i32 %shr8, 255
  %idxprom10 = zext i32 %and9 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom10
  %13 = load i32, i32* %arrayidx11, align 4
  %add = add nsw i32 %11, %13
  %14 = load i32, i32* %x, align 4
  %shr12 = lshr i32 %14, 16
  %and13 = and i32 %shr12, 255
  %idxprom14 = zext i32 %and13 to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom14
  %15 = load i32, i32* %arrayidx15, align 4
  %add16 = add nsw i32 %add, %15
  %16 = load i32, i32* %x, align 4
  %shr17 = lshr i32 %16, 24
  %and18 = and i32 %shr17, 255
  %idxprom19 = zext i32 %and18 to i64
  %arrayidx20 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom19
  %17 = load i32, i32* %arrayidx20, align 4
  %add21 = add nsw i32 %add16, %17
  store i32 %add21, i32* %dist, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  store i32 1, i32* %w, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %w, align 4
  %19 = load i32, i32* %last, align 4
  %cmp22 = icmp slt i32 %18, %19
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %w, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load i32*, i32** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %21, i64 %idxprom23
  %22 = load i32, i32* %arrayidx24, align 4
  %23 = load i32, i32* %w, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load i32*, i32** %b.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %24, i64 %idxprom25
  %25 = load i32, i32* %arrayidx26, align 4
  %and27 = and i32 %22, %25
  store i32 %and27, i32* %x, align 4
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* %x, align 4
  %shr28 = lshr i32 %27, 1
  %or29 = or i32 %26, %shr28
  %neg30 = xor i32 %or29, -1
  %and31 = and i32 %neg30, 1431655765
  store i32 %and31, i32* %x, align 4
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.53

if.then.33:                                       ; preds = %for.body
  %28 = load i32, i32* %x, align 4
  %and34 = and i32 %28, 255
  %idxprom35 = zext i32 %and34 to i64
  %arrayidx36 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom35
  %29 = load i32, i32* %arrayidx36, align 4
  %30 = load i32, i32* %x, align 4
  %shr37 = lshr i32 %30, 8
  %and38 = and i32 %shr37, 255
  %idxprom39 = zext i32 %and38 to i64
  %arrayidx40 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom39
  %31 = load i32, i32* %arrayidx40, align 4
  %add41 = add nsw i32 %29, %31
  %32 = load i32, i32* %x, align 4
  %shr42 = lshr i32 %32, 16
  %and43 = and i32 %shr42, 255
  %idxprom44 = zext i32 %and43 to i64
  %arrayidx45 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom44
  %33 = load i32, i32* %arrayidx45, align 4
  %add46 = add nsw i32 %add41, %33
  %34 = load i32, i32* %x, align 4
  %shr47 = lshr i32 %34, 24
  %and48 = and i32 %shr47, 255
  %idxprom49 = zext i32 %and48 to i64
  %arrayidx50 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom49
  %35 = load i32, i32* %arrayidx50, align 4
  %add51 = add nsw i32 %add46, %35
  %36 = load i32, i32* %dist, align 4
  %add52 = add nsw i32 %36, %add51
  store i32 %add52, i32* %dist, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.33, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %37 = load i32, i32* %w, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.54

if.end.54:                                        ; preds = %for.end, %entry
  %38 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %38, i32* %var, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.84, %if.end.54
  %39 = load i32, i32* %var, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp58 = icmp slt i32 %39, %40
  br i1 %cmp58, label %for.body.59, label %for.end.86

for.body.59:                                      ; preds = %for.cond.57
  %41 = load i32, i32* %var, align 4
  %idxprom60 = sext i32 %41 to i64
  %42 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx61 = getelementptr inbounds i32*, i32** %42, i64 %idxprom60
  %43 = load i32*, i32** %arrayidx61, align 8
  store i32* %43, i32** %mask, align 8
  %44 = load i32, i32* %var, align 4
  %idxprom62 = sext i32 %44 to i64
  %45 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %45, i64 %idxprom62
  %46 = load i32, i32* %arrayidx63, align 4
  store i32 %46, i32* %last56, align 4
  %47 = load i32, i32* %var, align 4
  %idxprom64 = sext i32 %47 to i64
  %48 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %48, i64 %idxprom64
  %49 = load i32, i32* %arrayidx65, align 4
  store i32 %49, i32* %w55, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.80, %for.body.59
  %50 = load i32, i32* %w55, align 4
  %51 = load i32, i32* %last56, align 4
  %cmp67 = icmp sle i32 %50, %51
  br i1 %cmp67, label %for.body.68, label %for.end.82

for.body.68:                                      ; preds = %for.cond.66
  %52 = load i32, i32* %w55, align 4
  %idxprom69 = sext i32 %52 to i64
  %53 = load i32*, i32** %a.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %53, i64 %idxprom69
  %54 = load i32, i32* %arrayidx70, align 4
  %55 = load i32, i32* %w55, align 4
  %idxprom71 = sext i32 %55 to i64
  %56 = load i32*, i32** %b.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %56, i64 %idxprom71
  %57 = load i32, i32* %arrayidx72, align 4
  %and73 = and i32 %54, %57
  %58 = load i32, i32* %w55, align 4
  %idxprom74 = sext i32 %58 to i64
  %59 = load i32*, i32** %mask, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %59, i64 %idxprom74
  %60 = load i32, i32* %arrayidx75, align 4
  %and76 = and i32 %and73, %60
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %for.body.68
  br label %nextvar

if.end.79:                                        ; preds = %for.body.68
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %61 = load i32, i32* %w55, align 4
  %inc81 = add nsw i32 %61, 1
  store i32 %inc81, i32* %w55, align 4
  br label %for.cond.66

for.end.82:                                       ; preds = %for.cond.66
  %62 = load i32, i32* %dist, align 4
  %inc83 = add nsw i32 %62, 1
  store i32 %inc83, i32* %dist, align 4
  br label %nextvar

nextvar:                                          ; preds = %for.end.82, %if.then.78
  br label %for.inc.84

for.inc.84:                                       ; preds = %nextvar
  %63 = load i32, i32* %var, align 4
  %inc85 = add nsw i32 %63, 1
  store i32 %inc85, i32* %var, align 4
  br label %for.cond.57

for.end.86:                                       ; preds = %for.cond.57
  %64 = load i32, i32* %dist, align 4
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define i32* @force_lower(i32* %xlower, i32* %a, i32* %b) #0 {
entry:
  %xlower.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %w = alloca i32, align 4
  %last = alloca i32, align 4
  %x = alloca i32, align 4
  %w34 = alloca i32, align 4
  %var = alloca i32, align 4
  %last35 = alloca i32, align 4
  %mask = alloca i32*, align 8
  store i32* %xlower, i32** %xlower.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  store i32 %0, i32* %last, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %last, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %last, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** %b.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %3, %6
  store i32 %and, i32* %x, align 4
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %x, align 4
  %shr = lshr i32 %8, 1
  %or = or i32 %7, %shr
  %neg = xor i32 %or, -1
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 4
  %and3 = and i32 %neg, %9
  store i32 %and3, i32* %x, align 4
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %x, align 4
  %shl = shl i32 %11, 1
  %or5 = or i32 %10, %shl
  %12 = load i32, i32* %last, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i32*, i32** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %or5, %14
  %15 = load i32, i32* %last, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32*, i32** %xlower.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  %17 = load i32, i32* %arrayidx10, align 4
  %or11 = or i32 %17, %and8
  store i32 %or11, i32* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  store i32 1, i32* %w, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %w, align 4
  %19 = load i32, i32* %last, align 4
  %cmp12 = icmp slt i32 %18, %19
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %w, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load i32*, i32** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 %idxprom13
  %22 = load i32, i32* %arrayidx14, align 4
  %23 = load i32, i32* %w, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load i32*, i32** %b.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %24, i64 %idxprom15
  %25 = load i32, i32* %arrayidx16, align 4
  %and17 = and i32 %22, %25
  store i32 %and17, i32* %x, align 4
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* %x, align 4
  %shr18 = lshr i32 %27, 1
  %or19 = or i32 %26, %shr18
  %neg20 = xor i32 %or19, -1
  %and21 = and i32 %neg20, 1431655765
  store i32 %and21, i32* %x, align 4
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %for.body
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %x, align 4
  %shl24 = shl i32 %29, 1
  %or25 = or i32 %28, %shl24
  %30 = load i32, i32* %w, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load i32*, i32** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %31, i64 %idxprom26
  %32 = load i32, i32* %arrayidx27, align 4
  %and28 = and i32 %or25, %32
  %33 = load i32, i32* %w, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load i32*, i32** %xlower.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %34, i64 %idxprom29
  %35 = load i32, i32* %arrayidx30, align 4
  %or31 = or i32 %35, %and28
  store i32 %or31, i32* %arrayidx30, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %36 = load i32, i32* %w, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %entry
  %37 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %37, i32* %var, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.78, %if.end.33
  %38 = load i32, i32* %var, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp37 = icmp slt i32 %38, %39
  br i1 %cmp37, label %for.body.38, label %for.end.80

for.body.38:                                      ; preds = %for.cond.36
  %40 = load i32, i32* %var, align 4
  %idxprom39 = sext i32 %40 to i64
  %41 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %41, i64 %idxprom39
  %42 = load i32*, i32** %arrayidx40, align 8
  store i32* %42, i32** %mask, align 8
  %43 = load i32, i32* %var, align 4
  %idxprom41 = sext i32 %43 to i64
  %44 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %44, i64 %idxprom41
  %45 = load i32, i32* %arrayidx42, align 4
  store i32 %45, i32* %last35, align 4
  %46 = load i32, i32* %var, align 4
  %idxprom43 = sext i32 %46 to i64
  %47 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %47, i64 %idxprom43
  %48 = load i32, i32* %arrayidx44, align 4
  store i32 %48, i32* %w34, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.59, %for.body.38
  %49 = load i32, i32* %w34, align 4
  %50 = load i32, i32* %last35, align 4
  %cmp46 = icmp sle i32 %49, %50
  br i1 %cmp46, label %for.body.47, label %for.end.61

for.body.47:                                      ; preds = %for.cond.45
  %51 = load i32, i32* %w34, align 4
  %idxprom48 = sext i32 %51 to i64
  %52 = load i32*, i32** %a.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %52, i64 %idxprom48
  %53 = load i32, i32* %arrayidx49, align 4
  %54 = load i32, i32* %w34, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load i32*, i32** %b.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %55, i64 %idxprom50
  %56 = load i32, i32* %arrayidx51, align 4
  %and52 = and i32 %53, %56
  %57 = load i32, i32* %w34, align 4
  %idxprom53 = sext i32 %57 to i64
  %58 = load i32*, i32** %mask, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %58, i64 %idxprom53
  %59 = load i32, i32* %arrayidx54, align 4
  %and55 = and i32 %and52, %59
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %for.body.47
  br label %nextvar

if.end.58:                                        ; preds = %for.body.47
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %60 = load i32, i32* %w34, align 4
  %inc60 = add nsw i32 %60, 1
  store i32 %inc60, i32* %w34, align 4
  br label %for.cond.45

for.end.61:                                       ; preds = %for.cond.45
  %61 = load i32, i32* %var, align 4
  %idxprom62 = sext i32 %61 to i64
  %62 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %62, i64 %idxprom62
  %63 = load i32, i32* %arrayidx63, align 4
  store i32 %63, i32* %w34, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.75, %for.end.61
  %64 = load i32, i32* %w34, align 4
  %65 = load i32, i32* %last35, align 4
  %cmp65 = icmp sle i32 %64, %65
  br i1 %cmp65, label %for.body.66, label %for.end.77

for.body.66:                                      ; preds = %for.cond.64
  %66 = load i32, i32* %w34, align 4
  %idxprom67 = sext i32 %66 to i64
  %67 = load i32*, i32** %a.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %67, i64 %idxprom67
  %68 = load i32, i32* %arrayidx68, align 4
  %69 = load i32, i32* %w34, align 4
  %idxprom69 = sext i32 %69 to i64
  %70 = load i32*, i32** %mask, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %70, i64 %idxprom69
  %71 = load i32, i32* %arrayidx70, align 4
  %and71 = and i32 %68, %71
  %72 = load i32, i32* %w34, align 4
  %idxprom72 = sext i32 %72 to i64
  %73 = load i32*, i32** %xlower.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %73, i64 %idxprom72
  %74 = load i32, i32* %arrayidx73, align 4
  %or74 = or i32 %74, %and71
  store i32 %or74, i32* %arrayidx73, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.66
  %75 = load i32, i32* %w34, align 4
  %inc76 = add nsw i32 %75, 1
  store i32 %inc76, i32* %w34, align 4
  br label %for.cond.64

for.end.77:                                       ; preds = %for.cond.64
  br label %nextvar

nextvar:                                          ; preds = %for.end.77, %if.then.57
  br label %for.inc.78

for.inc.78:                                       ; preds = %nextvar
  %76 = load i32, i32* %var, align 4
  %inc79 = add nsw i32 %76, 1
  store i32 %inc79, i32* %var, align 4
  br label %for.cond.36

for.end.80:                                       ; preds = %for.cond.36
  %77 = load i32*, i32** %xlower.addr, align 8
  ret i32* %77
}

; Function Attrs: nounwind uwtable
define void @consensus(i32* %r, i32* %a, i32* %b) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i_ = alloca i32, align 4
  %w = alloca i32, align 4
  %last = alloca i32, align 4
  %x = alloca i32, align 4
  %empty = alloca i32, align 4
  %var = alloca i32, align 4
  %x49 = alloca i32, align 4
  %w50 = alloca i32, align 4
  %last51 = alloca i32, align 4
  %mask = alloca i32*, align 8
  store i32* %r, i32** %r.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %0, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %1, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %i_, align 4
  %2 = load i32, i32* %i_, align 4
  %3 = load i32*, i32** %r.addr, align 8
  store i32 %2, i32* %3, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %4 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %r.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i_, align 4
  %cmp1 = icmp sgt i32 %dec, 0
  br i1 %cmp1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  store i32 %7, i32* %last, align 4
  %cmp2 = icmp ne i32 %7, -1
  br i1 %cmp2, label %if.then, label %if.end.48

if.then:                                          ; preds = %do.end
  %8 = load i32, i32* %last, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i32*, i32** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  %11 = load i32, i32* %last, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load i32*, i32** %b.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4
  %and = and i32 %10, %13
  store i32 %and, i32* %x, align 4
  %14 = load i32, i32* %last, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i32*, i32** %r.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 %idxprom7
  store i32 %and, i32* %arrayidx8, align 4
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %x, align 4
  %shr9 = lshr i32 %17, 1
  %or = or i32 %16, %shr9
  %neg = xor i32 %or, -1
  %18 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 4
  %and10 = and i32 %neg, %18
  store i32 %and10, i32* %x, align 4
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %x, align 4
  %shl = shl i32 %20, 1
  %or12 = or i32 %19, %shl
  %21 = load i32, i32* %last, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load i32*, i32** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %22, i64 %idxprom13
  %23 = load i32, i32* %arrayidx14, align 4
  %24 = load i32, i32* %last, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i32*, i32** %b.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %25, i64 %idxprom15
  %26 = load i32, i32* %arrayidx16, align 4
  %or17 = or i32 %23, %26
  %and18 = and i32 %or12, %or17
  %27 = load i32, i32* %last, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load i32*, i32** %r.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %28, i64 %idxprom19
  %29 = load i32, i32* %arrayidx20, align 4
  %or21 = or i32 %29, %and18
  store i32 %or21, i32* %arrayidx20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  store i32 1, i32* %w, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, i32* %w, align 4
  %31 = load i32, i32* %last, align 4
  %cmp22 = icmp slt i32 %30, %31
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %w, align 4
  %idxprom23 = sext i32 %32 to i64
  %33 = load i32*, i32** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %33, i64 %idxprom23
  %34 = load i32, i32* %arrayidx24, align 4
  %35 = load i32, i32* %w, align 4
  %idxprom25 = sext i32 %35 to i64
  %36 = load i32*, i32** %b.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %36, i64 %idxprom25
  %37 = load i32, i32* %arrayidx26, align 4
  %and27 = and i32 %34, %37
  store i32 %and27, i32* %x, align 4
  %38 = load i32, i32* %w, align 4
  %idxprom28 = sext i32 %38 to i64
  %39 = load i32*, i32** %r.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %39, i64 %idxprom28
  store i32 %and27, i32* %arrayidx29, align 4
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %x, align 4
  %shr30 = lshr i32 %41, 1
  %or31 = or i32 %40, %shr30
  %neg32 = xor i32 %or31, -1
  %and33 = and i32 %neg32, 1431655765
  store i32 %and33, i32* %x, align 4
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %for.body
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %x, align 4
  %shl36 = shl i32 %43, 1
  %or37 = or i32 %42, %shl36
  %44 = load i32, i32* %w, align 4
  %idxprom38 = sext i32 %44 to i64
  %45 = load i32*, i32** %a.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %45, i64 %idxprom38
  %46 = load i32, i32* %arrayidx39, align 4
  %47 = load i32, i32* %w, align 4
  %idxprom40 = sext i32 %47 to i64
  %48 = load i32*, i32** %b.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %48, i64 %idxprom40
  %49 = load i32, i32* %arrayidx41, align 4
  %or42 = or i32 %46, %49
  %and43 = and i32 %or37, %or42
  %50 = load i32, i32* %w, align 4
  %idxprom44 = sext i32 %50 to i64
  %51 = load i32*, i32** %r.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %51, i64 %idxprom44
  %52 = load i32, i32* %arrayidx45, align 4
  %or46 = or i32 %52, %and43
  store i32 %or46, i32* %arrayidx45, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.35, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %53 = load i32, i32* %w, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.48

if.end.48:                                        ; preds = %for.end, %do.end
  %54 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %54, i32* %var, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.103, %if.end.48
  %55 = load i32, i32* %var, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp53 = icmp slt i32 %55, %56
  br i1 %cmp53, label %for.body.54, label %for.end.105

for.body.54:                                      ; preds = %for.cond.52
  %57 = load i32, i32* %var, align 4
  %idxprom55 = sext i32 %57 to i64
  %58 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx56 = getelementptr inbounds i32*, i32** %58, i64 %idxprom55
  %59 = load i32*, i32** %arrayidx56, align 8
  store i32* %59, i32** %mask, align 8
  %60 = load i32, i32* %var, align 4
  %idxprom57 = sext i32 %60 to i64
  %61 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %61, i64 %idxprom57
  %62 = load i32, i32* %arrayidx58, align 4
  store i32 %62, i32* %last51, align 4
  store i32 1, i32* %empty, align 4
  %63 = load i32, i32* %var, align 4
  %idxprom59 = sext i32 %63 to i64
  %64 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %64, i64 %idxprom59
  %65 = load i32, i32* %arrayidx60, align 4
  store i32 %65, i32* %w50, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.78, %for.body.54
  %66 = load i32, i32* %w50, align 4
  %67 = load i32, i32* %last51, align 4
  %cmp62 = icmp sle i32 %66, %67
  br i1 %cmp62, label %for.body.63, label %for.end.80

for.body.63:                                      ; preds = %for.cond.61
  %68 = load i32, i32* %w50, align 4
  %idxprom64 = sext i32 %68 to i64
  %69 = load i32*, i32** %a.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %69, i64 %idxprom64
  %70 = load i32, i32* %arrayidx65, align 4
  %71 = load i32, i32* %w50, align 4
  %idxprom66 = sext i32 %71 to i64
  %72 = load i32*, i32** %b.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %72, i64 %idxprom66
  %73 = load i32, i32* %arrayidx67, align 4
  %and68 = and i32 %70, %73
  %74 = load i32, i32* %w50, align 4
  %idxprom69 = sext i32 %74 to i64
  %75 = load i32*, i32** %mask, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %75, i64 %idxprom69
  %76 = load i32, i32* %arrayidx70, align 4
  %and71 = and i32 %and68, %76
  store i32 %and71, i32* %x49, align 4
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %for.body.63
  store i32 0, i32* %empty, align 4
  %77 = load i32, i32* %x49, align 4
  %78 = load i32, i32* %w50, align 4
  %idxprom74 = sext i32 %78 to i64
  %79 = load i32*, i32** %r.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %79, i64 %idxprom74
  %80 = load i32, i32* %arrayidx75, align 4
  %or76 = or i32 %80, %77
  store i32 %or76, i32* %arrayidx75, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %for.body.63
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %81 = load i32, i32* %w50, align 4
  %inc79 = add nsw i32 %81, 1
  store i32 %inc79, i32* %w50, align 4
  br label %for.cond.61

for.end.80:                                       ; preds = %for.cond.61
  %82 = load i32, i32* %empty, align 4
  %tobool81 = icmp ne i32 %82, 0
  br i1 %tobool81, label %if.then.82, label %if.end.102

if.then.82:                                       ; preds = %for.end.80
  %83 = load i32, i32* %var, align 4
  %idxprom83 = sext i32 %83 to i64
  %84 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %84, i64 %idxprom83
  %85 = load i32, i32* %arrayidx84, align 4
  store i32 %85, i32* %w50, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.99, %if.then.82
  %86 = load i32, i32* %w50, align 4
  %87 = load i32, i32* %last51, align 4
  %cmp86 = icmp sle i32 %86, %87
  br i1 %cmp86, label %for.body.87, label %for.end.101

for.body.87:                                      ; preds = %for.cond.85
  %88 = load i32, i32* %w50, align 4
  %idxprom88 = sext i32 %88 to i64
  %89 = load i32*, i32** %mask, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %89, i64 %idxprom88
  %90 = load i32, i32* %arrayidx89, align 4
  %91 = load i32, i32* %w50, align 4
  %idxprom90 = sext i32 %91 to i64
  %92 = load i32*, i32** %a.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %92, i64 %idxprom90
  %93 = load i32, i32* %arrayidx91, align 4
  %94 = load i32, i32* %w50, align 4
  %idxprom92 = sext i32 %94 to i64
  %95 = load i32*, i32** %b.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %95, i64 %idxprom92
  %96 = load i32, i32* %arrayidx93, align 4
  %or94 = or i32 %93, %96
  %and95 = and i32 %90, %or94
  %97 = load i32, i32* %w50, align 4
  %idxprom96 = sext i32 %97 to i64
  %98 = load i32*, i32** %r.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %98, i64 %idxprom96
  %99 = load i32, i32* %arrayidx97, align 4
  %or98 = or i32 %99, %and95
  store i32 %or98, i32* %arrayidx97, align 4
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.87
  %100 = load i32, i32* %w50, align 4
  %inc100 = add nsw i32 %100, 1
  store i32 %inc100, i32* %w50, align 4
  br label %for.cond.85

for.end.101:                                      ; preds = %for.cond.85
  br label %if.end.102

if.end.102:                                       ; preds = %for.end.101, %for.end.80
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %101 = load i32, i32* %var, align 4
  %inc104 = add nsw i32 %101, 1
  store i32 %inc104, i32* %var, align 4
  br label %for.cond.52

for.end.105:                                      ; preds = %for.cond.52
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cactive(i32* %a) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %active = alloca i32, align 4
  %dist = alloca i32, align 4
  %w = alloca i32, align 4
  %last = alloca i32, align 4
  %x = alloca i32, align 4
  %w62 = alloca i32, align 4
  %var = alloca i32, align 4
  %last63 = alloca i32, align 4
  %mask = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32 -1, i32* %active, align 4
  store i32 0, i32* %dist, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  store i32 %0, i32* %last, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end.61

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %last, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %x, align 4
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %x, align 4
  %shr = lshr i32 %5, 1
  %and = and i32 %4, %shr
  %neg = xor i32 %and, -1
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 4
  %and1 = and i32 %neg, %6
  store i32 %and1, i32* %x, align 4
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then.2, label %if.end.23

if.then.2:                                        ; preds = %if.then
  %7 = load i32, i32* %x, align 4
  %and3 = and i32 %7, 255
  %idxprom4 = zext i32 %and3 to i64
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %x, align 4
  %shr6 = lshr i32 %9, 8
  %and7 = and i32 %shr6, 255
  %idxprom8 = zext i32 %and7 to i64
  %arrayidx9 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom8
  %10 = load i32, i32* %arrayidx9, align 4
  %add = add nsw i32 %8, %10
  %11 = load i32, i32* %x, align 4
  %shr10 = lshr i32 %11, 16
  %and11 = and i32 %shr10, 255
  %idxprom12 = zext i32 %and11 to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom12
  %12 = load i32, i32* %arrayidx13, align 4
  %add14 = add nsw i32 %add, %12
  %13 = load i32, i32* %x, align 4
  %shr15 = lshr i32 %13, 24
  %and16 = and i32 %shr15, 255
  %idxprom17 = zext i32 %and16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom17
  %14 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %add14, %14
  store i32 %add19, i32* %dist, align 4
  %cmp20 = icmp sgt i32 %add19, 1
  br i1 %cmp20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  %15 = load i32, i32* %last, align 4
  %sub = sub nsw i32 %15, 1
  %mul = mul nsw i32 %sub, 16
  %16 = load i32, i32* %x, align 4
  %call = call i32 (i32, ...) bitcast (i32 (...)* @bit_index to i32 (i32, ...)*)(i32 %16)
  %div = sdiv i32 %call, 2
  %add22 = add nsw i32 %mul, %div
  store i32 %add22, i32* %active, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then
  store i32 1, i32* %w, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %17 = load i32, i32* %w, align 4
  %18 = load i32, i32* %last, align 4
  %cmp24 = icmp slt i32 %17, %18
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %w, align 4
  %idxprom25 = sext i32 %19 to i64
  %20 = load i32*, i32** %a.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %20, i64 %idxprom25
  %21 = load i32, i32* %arrayidx26, align 4
  store i32 %21, i32* %x, align 4
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %x, align 4
  %shr27 = lshr i32 %23, 1
  %and28 = and i32 %22, %shr27
  %neg29 = xor i32 %and28, -1
  %and30 = and i32 %neg29, 1431655765
  store i32 %and30, i32* %x, align 4
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.60

if.then.32:                                       ; preds = %for.body
  %24 = load i32, i32* %x, align 4
  %and33 = and i32 %24, 255
  %idxprom34 = zext i32 %and33 to i64
  %arrayidx35 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom34
  %25 = load i32, i32* %arrayidx35, align 4
  %26 = load i32, i32* %x, align 4
  %shr36 = lshr i32 %26, 8
  %and37 = and i32 %shr36, 255
  %idxprom38 = zext i32 %and37 to i64
  %arrayidx39 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom38
  %27 = load i32, i32* %arrayidx39, align 4
  %add40 = add nsw i32 %25, %27
  %28 = load i32, i32* %x, align 4
  %shr41 = lshr i32 %28, 16
  %and42 = and i32 %shr41, 255
  %idxprom43 = zext i32 %and42 to i64
  %arrayidx44 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom43
  %29 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %add40, %29
  %30 = load i32, i32* %x, align 4
  %shr46 = lshr i32 %30, 24
  %and47 = and i32 %shr46, 255
  %idxprom48 = zext i32 %and47 to i64
  %arrayidx49 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom48
  %31 = load i32, i32* %arrayidx49, align 4
  %add50 = add nsw i32 %add45, %31
  %32 = load i32, i32* %dist, align 4
  %add51 = add nsw i32 %32, %add50
  store i32 %add51, i32* %dist, align 4
  %cmp52 = icmp sgt i32 %add51, 1
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.32
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.then.32
  %33 = load i32, i32* %w, align 4
  %sub55 = sub nsw i32 %33, 1
  %mul56 = mul nsw i32 %sub55, 16
  %34 = load i32, i32* %x, align 4
  %call57 = call i32 (i32, ...) bitcast (i32 (...)* @bit_index to i32 (i32, ...)*)(i32 %34)
  %div58 = sdiv i32 %call57, 2
  %add59 = add nsw i32 %mul56, %div58
  store i32 %add59, i32* %active, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.54, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %35 = load i32, i32* %w, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.61

if.end.61:                                        ; preds = %for.end, %entry
  %36 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %36, i32* %var, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.92, %if.end.61
  %37 = load i32, i32* %var, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp65 = icmp slt i32 %37, %38
  br i1 %cmp65, label %for.body.66, label %for.end.94

for.body.66:                                      ; preds = %for.cond.64
  %39 = load i32, i32* %var, align 4
  %idxprom67 = sext i32 %39 to i64
  %40 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx68 = getelementptr inbounds i32*, i32** %40, i64 %idxprom67
  %41 = load i32*, i32** %arrayidx68, align 8
  store i32* %41, i32** %mask, align 8
  %42 = load i32, i32* %var, align 4
  %idxprom69 = sext i32 %42 to i64
  %43 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %43, i64 %idxprom69
  %44 = load i32, i32* %arrayidx70, align 4
  store i32 %44, i32* %last63, align 4
  %45 = load i32, i32* %var, align 4
  %idxprom71 = sext i32 %45 to i64
  %46 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %46, i64 %idxprom71
  %47 = load i32, i32* %arrayidx72, align 4
  store i32 %47, i32* %w62, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.89, %for.body.66
  %48 = load i32, i32* %w62, align 4
  %49 = load i32, i32* %last63, align 4
  %cmp74 = icmp sle i32 %48, %49
  br i1 %cmp74, label %for.body.75, label %for.end.91

for.body.75:                                      ; preds = %for.cond.73
  %50 = load i32, i32* %w62, align 4
  %idxprom76 = sext i32 %50 to i64
  %51 = load i32*, i32** %mask, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %51, i64 %idxprom76
  %52 = load i32, i32* %arrayidx77, align 4
  %53 = load i32, i32* %w62, align 4
  %idxprom78 = sext i32 %53 to i64
  %54 = load i32*, i32** %a.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %54, i64 %idxprom78
  %55 = load i32, i32* %arrayidx79, align 4
  %neg80 = xor i32 %55, -1
  %and81 = and i32 %52, %neg80
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %for.body.75
  %56 = load i32, i32* %dist, align 4
  %inc84 = add nsw i32 %56, 1
  store i32 %inc84, i32* %dist, align 4
  %cmp85 = icmp sgt i32 %inc84, 1
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.83
  store i32 -1, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.then.83
  %57 = load i32, i32* %var, align 4
  store i32 %57, i32* %active, align 4
  br label %for.end.91

if.end.88:                                        ; preds = %for.body.75
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %58 = load i32, i32* %w62, align 4
  %inc90 = add nsw i32 %58, 1
  store i32 %inc90, i32* %w62, align 4
  br label %for.cond.73

for.end.91:                                       ; preds = %if.end.87, %for.cond.73
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.end.91
  %59 = load i32, i32* %var, align 4
  %inc93 = add nsw i32 %59, 1
  store i32 %inc93, i32* %var, align 4
  br label %for.cond.64

for.end.94:                                       ; preds = %for.cond.64
  %60 = load i32, i32* %active, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %for.end.94, %if.then.86, %if.then.53, %if.then.21
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare i32 @bit_index(...) #1

; Function Attrs: nounwind uwtable
define i32 @ccommon(i32* %a, i32* %b, i32* %cof) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %cof.addr = alloca i32*, align 8
  %last = alloca i32, align 4
  %w = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %var = alloca i32, align 4
  %w37 = alloca i32, align 4
  %last38 = alloca i32, align 4
  %mask = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %cof, i32** %cof.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  store i32 %0, i32* %last, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end.36

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %last, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %last, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** %cof.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %or = or i32 %3, %6
  store i32 %or, i32* %x, align 4
  %7 = load i32, i32* %last, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i32*, i32** %b.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %last, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** %cof.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %or7 = or i32 %9, %12
  store i32 %or7, i32* %y, align 4
  %13 = load i32, i32* %x, align 4
  %14 = load i32, i32* %x, align 4
  %shr = lshr i32 %14, 1
  %and = and i32 %13, %shr
  %neg = xor i32 %and, -1
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %y, align 4
  %shr8 = lshr i32 %16, 1
  %and9 = and i32 %15, %shr8
  %neg10 = xor i32 %and9, -1
  %and11 = and i32 %neg, %neg10
  %17 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 4
  %and12 = and i32 %and11, %17
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i32 1, i32* %w, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %w, align 4
  %19 = load i32, i32* %last, align 4
  %cmp14 = icmp slt i32 %18, %19
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %w, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load i32*, i32** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %21, i64 %idxprom15
  %22 = load i32, i32* %arrayidx16, align 4
  %23 = load i32, i32* %w, align 4
  %idxprom17 = sext i32 %23 to i64
  %24 = load i32*, i32** %cof.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %24, i64 %idxprom17
  %25 = load i32, i32* %arrayidx18, align 4
  %or19 = or i32 %22, %25
  store i32 %or19, i32* %x, align 4
  %26 = load i32, i32* %w, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load i32*, i32** %b.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %27, i64 %idxprom20
  %28 = load i32, i32* %arrayidx21, align 4
  %29 = load i32, i32* %w, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load i32*, i32** %cof.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %30, i64 %idxprom22
  %31 = load i32, i32* %arrayidx23, align 4
  %or24 = or i32 %28, %31
  store i32 %or24, i32* %y, align 4
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %x, align 4
  %shr25 = lshr i32 %33, 1
  %and26 = and i32 %32, %shr25
  %neg27 = xor i32 %and26, -1
  %34 = load i32, i32* %y, align 4
  %35 = load i32, i32* %y, align 4
  %shr28 = lshr i32 %35, 1
  %and29 = and i32 %34, %shr28
  %neg30 = xor i32 %and29, -1
  %and31 = and i32 %neg27, %neg30
  %and32 = and i32 %and31, 1431655765
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %36 = load i32, i32* %w, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.36

if.end.36:                                        ; preds = %for.end, %entry
  %37 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %37, i32* %var, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.88, %if.end.36
  %38 = load i32, i32* %var, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp40 = icmp slt i32 %38, %39
  br i1 %cmp40, label %for.body.41, label %for.end.90

for.body.41:                                      ; preds = %for.cond.39
  %40 = load i32, i32* %var, align 4
  %idxprom42 = sext i32 %40 to i64
  %41 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %41, i64 %idxprom42
  %42 = load i32*, i32** %arrayidx43, align 8
  store i32* %42, i32** %mask, align 8
  %43 = load i32, i32* %var, align 4
  %idxprom44 = sext i32 %43 to i64
  %44 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %44, i64 %idxprom44
  %45 = load i32, i32* %arrayidx45, align 4
  store i32 %45, i32* %last38, align 4
  %46 = load i32, i32* %var, align 4
  %idxprom46 = sext i32 %46 to i64
  %47 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %47, i64 %idxprom46
  %48 = load i32, i32* %arrayidx47, align 4
  store i32 %48, i32* %w37, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.85, %for.body.41
  %49 = load i32, i32* %w37, align 4
  %50 = load i32, i32* %last38, align 4
  %cmp49 = icmp sle i32 %49, %50
  br i1 %cmp49, label %for.body.50, label %for.end.87

for.body.50:                                      ; preds = %for.cond.48
  %51 = load i32, i32* %w37, align 4
  %idxprom51 = sext i32 %51 to i64
  %52 = load i32*, i32** %mask, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %52, i64 %idxprom51
  %53 = load i32, i32* %arrayidx52, align 4
  %54 = load i32, i32* %w37, align 4
  %idxprom53 = sext i32 %54 to i64
  %55 = load i32*, i32** %a.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %55, i64 %idxprom53
  %56 = load i32, i32* %arrayidx54, align 4
  %neg55 = xor i32 %56, -1
  %and56 = and i32 %53, %neg55
  %57 = load i32, i32* %w37, align 4
  %idxprom57 = sext i32 %57 to i64
  %58 = load i32*, i32** %cof.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %58, i64 %idxprom57
  %59 = load i32, i32* %arrayidx58, align 4
  %neg59 = xor i32 %59, -1
  %and60 = and i32 %and56, %neg59
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.84

if.then.62:                                       ; preds = %for.body.50
  %60 = load i32, i32* %var, align 4
  %idxprom63 = sext i32 %60 to i64
  %61 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %61, i64 %idxprom63
  %62 = load i32, i32* %arrayidx64, align 4
  store i32 %62, i32* %w37, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.81, %if.then.62
  %63 = load i32, i32* %w37, align 4
  %64 = load i32, i32* %last38, align 4
  %cmp66 = icmp sle i32 %63, %64
  br i1 %cmp66, label %for.body.67, label %for.end.83

for.body.67:                                      ; preds = %for.cond.65
  %65 = load i32, i32* %w37, align 4
  %idxprom68 = sext i32 %65 to i64
  %66 = load i32*, i32** %mask, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %66, i64 %idxprom68
  %67 = load i32, i32* %arrayidx69, align 4
  %68 = load i32, i32* %w37, align 4
  %idxprom70 = sext i32 %68 to i64
  %69 = load i32*, i32** %b.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %69, i64 %idxprom70
  %70 = load i32, i32* %arrayidx71, align 4
  %neg72 = xor i32 %70, -1
  %and73 = and i32 %67, %neg72
  %71 = load i32, i32* %w37, align 4
  %idxprom74 = sext i32 %71 to i64
  %72 = load i32*, i32** %cof.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %72, i64 %idxprom74
  %73 = load i32, i32* %arrayidx75, align 4
  %neg76 = xor i32 %73, -1
  %and77 = and i32 %and73, %neg76
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body.67
  store i32 1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %for.body.67
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %74 = load i32, i32* %w37, align 4
  %inc82 = add nsw i32 %74, 1
  store i32 %inc82, i32* %w37, align 4
  br label %for.cond.65

for.end.83:                                       ; preds = %for.cond.65
  br label %for.end.87

if.end.84:                                        ; preds = %for.body.50
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %75 = load i32, i32* %w37, align 4
  %inc86 = add nsw i32 %75, 1
  store i32 %inc86, i32* %w37, align 4
  br label %for.cond.48

for.end.87:                                       ; preds = %for.end.83, %for.cond.48
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.87
  %76 = load i32, i32* %var, align 4
  %inc89 = add nsw i32 %76, 1
  store i32 %inc89, i32* %var, align 4
  br label %for.cond.39

for.end.90:                                       ; preds = %for.cond.39
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.90, %if.then.79, %if.then.34, %if.then.13
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define i32 @descend(i32** %a, i32** %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %a1 = alloca i32*, align 8
  %b1 = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32** %a, i32*** %a.addr, align 8
  store i32** %b, i32*** %b.addr, align 8
  %0 = load i32**, i32*** %a.addr, align 8
  %1 = load i32*, i32** %0, align 8
  store i32* %1, i32** %a1, align 8
  %2 = load i32**, i32*** %b.addr, align 8
  %3 = load i32*, i32** %2, align 8
  store i32* %3, i32** %b1, align 8
  %4 = load i32*, i32** %a1, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %5, 16
  %6 = load i32*, i32** %b1, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx1, align 4
  %shr2 = lshr i32 %7, 16
  %cmp = icmp ugt i32 %shr, %shr2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load i32*, i32** %a1, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  %shr4 = lshr i32 %9, 16
  %10 = load i32*, i32** %b1, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx5, align 4
  %shr6 = lshr i32 %11, 16
  %cmp7 = icmp ult i32 %shr4, %shr6
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.else
  %12 = load i32*, i32** %a1, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx10, align 4
  %and = and i32 %13, 1023
  store i32 %and, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.9
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i32*, i32** %a1, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = load i32, i32* %arrayidx11, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load i32*, i32** %b1, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 %idxprom12
  %19 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp ugt i32 %16, %19
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.else.16:                                       ; preds = %do.body
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load i32*, i32** %a1, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %21, i64 %idxprom17
  %22 = load i32, i32* %arrayidx18, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load i32*, i32** %b1, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %24, i64 %idxprom19
  %25 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp ult i32 %22, %25
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.else.16
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.16
  br label %if.end.23

if.end.23:                                        ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  %26 = load i32, i32* %i, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %i, align 4
  %cmp24 = icmp sgt i32 %dec, 0
  br i1 %cmp24, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.25

if.end.25:                                        ; preds = %do.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.22, %if.then.15, %if.then.8, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @ascend(i32** %a, i32** %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %a1 = alloca i32*, align 8
  %b1 = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32** %a, i32*** %a.addr, align 8
  store i32** %b, i32*** %b.addr, align 8
  %0 = load i32**, i32*** %a.addr, align 8
  %1 = load i32*, i32** %0, align 8
  store i32* %1, i32** %a1, align 8
  %2 = load i32**, i32*** %b.addr, align 8
  %3 = load i32*, i32** %2, align 8
  store i32* %3, i32** %b1, align 8
  %4 = load i32*, i32** %a1, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %5, 16
  %6 = load i32*, i32** %b1, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx1, align 4
  %shr2 = lshr i32 %7, 16
  %cmp = icmp ugt i32 %shr, %shr2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load i32*, i32** %a1, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  %shr4 = lshr i32 %9, 16
  %10 = load i32*, i32** %b1, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx5, align 4
  %shr6 = lshr i32 %11, 16
  %cmp7 = icmp ult i32 %shr4, %shr6
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.else
  %12 = load i32*, i32** %a1, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx10, align 4
  %and = and i32 %13, 1023
  store i32 %and, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.9
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i32*, i32** %a1, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = load i32, i32* %arrayidx11, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load i32*, i32** %b1, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 %idxprom12
  %19 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp ugt i32 %16, %19
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body
  store i32 1, i32* %retval
  br label %return

if.else.16:                                       ; preds = %do.body
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load i32*, i32** %a1, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %21, i64 %idxprom17
  %22 = load i32, i32* %arrayidx18, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load i32*, i32** %b1, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %24, i64 %idxprom19
  %25 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp ult i32 %22, %25
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.else.16
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.16
  br label %if.end.23

if.end.23:                                        ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  %26 = load i32, i32* %i, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %i, align 4
  %cmp24 = icmp sgt i32 %dec, 0
  br i1 %cmp24, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.25

if.end.25:                                        ; preds = %do.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.22, %if.then.15, %if.then.8, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @lex_order(i32** %a, i32** %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %a1 = alloca i32*, align 8
  %b1 = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32** %a, i32*** %a.addr, align 8
  store i32** %b, i32*** %b.addr, align 8
  %0 = load i32**, i32*** %a.addr, align 8
  %1 = load i32*, i32** %0, align 8
  store i32* %1, i32** %a1, align 8
  %2 = load i32**, i32*** %b.addr, align 8
  %3 = load i32*, i32** %2, align 8
  store i32* %3, i32** %b1, align 8
  %4 = load i32*, i32** %a1, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %and = and i32 %5, 1023
  store i32 %and, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %a1, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx1, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load i32*, i32** %b1, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 %idxprom2
  %11 = load i32, i32* %arrayidx3, align 4
  %cmp = icmp ugt i32 %8, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %do.body
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load i32*, i32** %a1, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 %idxprom4
  %14 = load i32, i32* %arrayidx5, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load i32*, i32** %b1, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 %idxprom6
  %17 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp ult i32 %14, %17
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  %18 = load i32, i32* %i, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %i, align 4
  %cmp11 = icmp sgt i32 %dec, 0
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.9, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @d1_order(i32** %a, i32** %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %a1 = alloca i32*, align 8
  %b1 = alloca i32*, align 8
  %c1 = alloca i32*, align 8
  %i = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  store i32** %a, i32*** %a.addr, align 8
  store i32** %b, i32*** %b.addr, align 8
  %0 = load i32**, i32*** %a.addr, align 8
  %1 = load i32*, i32** %0, align 8
  store i32* %1, i32** %a1, align 8
  %2 = load i32**, i32*** %b.addr, align 8
  %3 = load i32*, i32** %2, align 8
  store i32* %3, i32** %b1, align 8
  %4 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %4, i64 0
  %5 = load i32*, i32** %arrayidx, align 8
  store i32* %5, i32** %c1, align 8
  %6 = load i32*, i32** %a1, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx1, align 4
  %and = and i32 %7, 1023
  store i32 %and, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32*, i32** %a1, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx2, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load i32*, i32** %c1, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %12, i64 %idxprom3
  %13 = load i32, i32* %arrayidx4, align 4
  %or = or i32 %10, %13
  store i32 %or, i32* %x1, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %14 to i64
  %15 = load i32*, i32** %b1, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom5
  %16 = load i32, i32* %arrayidx6, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load i32*, i32** %c1, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %18, i64 %idxprom7
  %19 = load i32, i32* %arrayidx8, align 4
  %or9 = or i32 %16, %19
  store i32 %or9, i32* %x2, align 4
  %cmp = icmp ugt i32 %or, %or9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %do.body
  %20 = load i32, i32* %x1, align 4
  %21 = load i32, i32* %x2, align 4
  %cmp10 = icmp ult i32 %20, %21
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  %22 = load i32, i32* %i, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i, align 4
  %cmp13 = icmp sgt i32 %dec, 0
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.11, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @desc1(i32* %a, i32* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %b.addr, align 8
  %cmp1 = icmp eq i32* %1, null
  %cond = select i1 %cmp1, i32 0, i32 1
  store i32 %cond, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32*, i32** %b.addr, align 8
  %cmp2 = icmp eq i32* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  %3 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %4, 16
  %5 = load i32*, i32** %b.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx5, align 4
  %shr6 = lshr i32 %6, 16
  %cmp7 = icmp ugt i32 %shr, %shr6
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.4
  store i32 -1, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.end.4
  %7 = load i32*, i32** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx10, align 4
  %shr11 = lshr i32 %8, 16
  %9 = load i32*, i32** %b.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx12, align 4
  %shr13 = lshr i32 %10, 16
  %cmp14 = icmp ult i32 %shr11, %shr13
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.9
  store i32 1, i32* %retval
  br label %return

if.else.16:                                       ; preds = %if.else.9
  %11 = load i32*, i32** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx17, align 4
  %and = and i32 %12, 1023
  store i32 %and, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.16
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i32*, i32** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx18, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %16 to i64
  %17 = load i32*, i32** %b.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %17, i64 %idxprom19
  %18 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp ugt i32 %15, %18
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.else.23:                                       ; preds = %do.body
  %19 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %19 to i64
  %20 = load i32*, i32** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %20, i64 %idxprom24
  %21 = load i32, i32* %arrayidx25, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load i32*, i32** %b.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %23, i64 %idxprom26
  %24 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp ult i32 %21, %24
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.23
  store i32 1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.else.23
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %do.cond

do.cond:                                          ; preds = %if.end.31
  %25 = load i32, i32* %i, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %i, align 4
  %cmp32 = icmp sgt i32 %dec, 0
  br i1 %cmp32, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.33

if.end.33:                                        ; preds = %do.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.29, %if.then.22, %if.then.15, %if.then.8, %if.then.3, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
