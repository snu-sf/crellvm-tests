; ModuleID = 'layout_hyper.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"LAYOUT = Hypercubes, options = \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"EVENFIRST,\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@nx = external global i32, align 4
@squaresize = common global [4 x i32] zeroinitializer, align 16
@ny = external global i32, align 4
@nz = external global i32, align 4
@nt = external global i32, align 4
@nsquares = common global [4 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [61 x i8] c"LAYOUT: Can't lay out this lattice, not enough factors of 2\0A\00", align 1
@sites_on_node = external global i32, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"SORRY, CAN'T LAY OUT THIS LATTICE\0A\00", align 1
@odd_sites_on_node = external global i32, align 4
@even_sites_on_node = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @setup_layout() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %dir = alloca i32, align 4
  %call = call i32 (...) @mynode()
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, i32* @nx, align 4
  store i32 %0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 0), align 4
  %1 = load i32, i32* @ny, align 4
  store i32 %1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 1), align 4
  %2 = load i32, i32* @nz, align 4
  store i32 %2, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 2), align 4
  %3 = load i32, i32* @nt, align 4
  store i32 %3, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 3), align 4
  store i32 1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @nsquares, i32 0, i64 3), align 4
  store i32 1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @nsquares, i32 0, i64 2), align 4
  store i32 1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @nsquares, i32 0, i64 1), align 4
  store i32 1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @nsquares, i32 0, i64 0), align 4
  store i32 1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.51, %if.end
  %4 = load i32, i32* %i, align 4
  %call4 = call i32 (...) @numnodes()
  %cmp5 = icmp slt i32 %4, %call4
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 1, i32* %j, align 4
  store i32 0, i32* %dir, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, i32* %dir, align 4
  %cmp6 = icmp sle i32 %5, 3
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @squaresize, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %j, align 4
  %cmp7 = icmp sgt i32 %7, %8
  br i1 %cmp7, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %dir, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* @squaresize, i32 0, i64 %idxprom8
  %10 = load i32, i32* %arrayidx9, align 4
  %rem = srem i32 %10, 2
  %cmp10 = icmp eq i32 %rem, 0
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %land.lhs.true
  %11 = load i32, i32* %dir, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* @squaresize, i32 0, i64 %idxprom12
  %12 = load i32, i32* %arrayidx13, align 4
  store i32 %12, i32* %j, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %13 = load i32, i32* %dir, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %dir, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %dir, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.27, %for.end
  %14 = load i32, i32* %dir, align 4
  %cmp16 = icmp sle i32 %14, 3
  br i1 %cmp16, label %for.body.17, label %for.end.29

for.body.17:                                      ; preds = %for.cond.15
  %15 = load i32, i32* %dir, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* @squaresize, i32 0, i64 %idxprom18
  %16 = load i32, i32* %arrayidx19, align 4
  %17 = load i32, i32* %j, align 4
  %cmp20 = icmp eq i32 %16, %17
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.26

land.lhs.true.21:                                 ; preds = %for.body.17
  %18 = load i32, i32* %dir, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* @nsquares, i32 0, i64 %idxprom22
  %19 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp sgt i32 %19, 1
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.21
  br label %for.end.29

if.end.26:                                        ; preds = %land.lhs.true.21, %for.body.17
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %20 = load i32, i32* %dir, align 4
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, i32* %dir, align 4
  br label %for.cond.15

for.end.29:                                       ; preds = %if.then.25, %for.cond.15
  %21 = load i32, i32* %dir, align 4
  %cmp30 = icmp sgt i32 %21, 3
  br i1 %cmp30, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %for.end.29
  store i32 0, i32* %dir, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.40, %if.then.31
  %22 = load i32, i32* %dir, align 4
  %cmp33 = icmp sle i32 %22, 3
  br i1 %cmp33, label %for.body.34, label %for.end.42

for.body.34:                                      ; preds = %for.cond.32
  %23 = load i32, i32* %dir, align 4
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* @squaresize, i32 0, i64 %idxprom35
  %24 = load i32, i32* %arrayidx36, align 4
  %25 = load i32, i32* %j, align 4
  %cmp37 = icmp eq i32 %24, %25
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.body.34
  br label %for.end.42

if.end.39:                                        ; preds = %for.body.34
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %26 = load i32, i32* %dir, align 4
  %inc41 = add nsw i32 %26, 1
  store i32 %inc41, i32* %dir, align 4
  br label %for.cond.32

for.end.42:                                       ; preds = %if.then.38, %for.cond.32
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.42, %for.end.29
  %27 = load i32, i32* %dir, align 4
  %cmp44 = icmp sgt i32 %27, 3
  br i1 %cmp44, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %if.end.43
  %call46 = call i32 (...) @mynode()
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.then.45
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.then.45
  call void @terminate(i32 1)
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.43
  %28 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %28, 2
  store i32 %mul, i32* %i, align 4
  %29 = load i32, i32* %dir, align 4
  %idxprom52 = sext i32 %29 to i64
  %arrayidx53 = getelementptr inbounds [4 x i32], [4 x i32]* @squaresize, i32 0, i64 %idxprom52
  %30 = load i32, i32* %arrayidx53, align 4
  %div = sdiv i32 %30, 2
  store i32 %div, i32* %arrayidx53, align 4
  %31 = load i32, i32* %dir, align 4
  %idxprom54 = sext i32 %31 to i64
  %arrayidx55 = getelementptr inbounds [4 x i32], [4 x i32]* @nsquares, i32 0, i64 %idxprom54
  %32 = load i32, i32* %arrayidx55, align 4
  %mul56 = mul nsw i32 %32, 2
  store i32 %mul56, i32* %arrayidx55, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 0), align 4
  %34 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 1), align 4
  %mul57 = mul nsw i32 %33, %34
  %35 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 2), align 4
  %mul58 = mul nsw i32 %mul57, %35
  %36 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 3), align 4
  %mul59 = mul nsw i32 %mul58, %36
  store i32 %mul59, i32* @sites_on_node, align 4
  %call60 = call i32 (...) @mynode()
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then.62, label %if.end.68

if.then.62:                                       ; preds = %while.end
  %37 = load i32, i32* @sites_on_node, align 4
  %rem63 = srem i32 %37, 2
  %cmp64 = icmp ne i32 %rem63, 0
  br i1 %cmp64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.then.62
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  call void @terminate(i32 0)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.then.62
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %while.end
  %38 = load i32, i32* @sites_on_node, align 4
  %div69 = sdiv i32 %38, 2
  store i32 %div69, i32* @odd_sites_on_node, align 4
  store i32 %div69, i32* @even_sites_on_node, align 4
  ret void
}

declare i32 @mynode(...) #1

declare i32 @printf(i8*, ...) #1

declare i32 @numnodes(...) #1

declare void @terminate(i32) #1

; Function Attrs: nounwind uwtable
define i32 @node_number(i32 %x, i32 %y, i32 %z, i32 %t) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 0), align 4
  %1 = load i32, i32* %x.addr, align 4
  %div = sdiv i32 %1, %0
  store i32 %div, i32* %x.addr, align 4
  %2 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 1), align 4
  %3 = load i32, i32* %y.addr, align 4
  %div1 = sdiv i32 %3, %2
  store i32 %div1, i32* %y.addr, align 4
  %4 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 2), align 4
  %5 = load i32, i32* %z.addr, align 4
  %div2 = sdiv i32 %5, %4
  store i32 %div2, i32* %z.addr, align 4
  %6 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 3), align 4
  %7 = load i32, i32* %t.addr, align 4
  %div3 = sdiv i32 %7, %6
  store i32 %div3, i32* %t.addr, align 4
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @nsquares, i32 0, i64 0), align 4
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @nsquares, i32 0, i64 1), align 4
  %12 = load i32, i32* %z.addr, align 4
  %13 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @nsquares, i32 0, i64 2), align 4
  %14 = load i32, i32* %t.addr, align 4
  %mul = mul nsw i32 %13, %14
  %add = add nsw i32 %12, %mul
  %mul4 = mul nsw i32 %11, %add
  %add5 = add nsw i32 %10, %mul4
  %mul6 = mul nsw i32 %9, %add5
  %add7 = add nsw i32 %8, %mul6
  store i32 %add7, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @node_index(i32 %x, i32 %y, i32 %z, i32 %t) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %xr = alloca i32, align 4
  %yr = alloca i32, align 4
  %zr = alloca i32, align 4
  %tr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 0), align 4
  %rem = srem i32 %0, %1
  store i32 %rem, i32* %xr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 1), align 4
  %rem1 = srem i32 %2, %3
  store i32 %rem1, i32* %yr, align 4
  %4 = load i32, i32* %z.addr, align 4
  %5 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 2), align 4
  %rem2 = srem i32 %4, %5
  store i32 %rem2, i32* %zr, align 4
  %6 = load i32, i32* %t.addr, align 4
  %7 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 3), align 4
  %rem3 = srem i32 %6, %7
  store i32 %rem3, i32* %tr, align 4
  %8 = load i32, i32* %xr, align 4
  %9 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 0), align 4
  %10 = load i32, i32* %yr, align 4
  %11 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 1), align 4
  %12 = load i32, i32* %zr, align 4
  %13 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @squaresize, i32 0, i64 2), align 4
  %14 = load i32, i32* %tr, align 4
  %mul = mul nsw i32 %13, %14
  %add = add nsw i32 %12, %mul
  %mul4 = mul nsw i32 %11, %add
  %add5 = add nsw i32 %10, %mul4
  %mul6 = mul nsw i32 %9, %add5
  %add7 = add nsw i32 %8, %mul6
  store i32 %add7, i32* %i, align 4
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %y.addr, align 4
  %add8 = add nsw i32 %15, %16
  %17 = load i32, i32* %z.addr, align 4
  %add9 = add nsw i32 %add8, %17
  %18 = load i32, i32* %t.addr, align 4
  %add10 = add nsw i32 %add9, %18
  %rem11 = srem i32 %add10, 2
  %cmp = icmp eq i32 %rem11, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %19 = load i32, i32* %i, align 4
  %div = sdiv i32 %19, 2
  store i32 %div, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* @sites_on_node, align 4
  %add12 = add nsw i32 %20, %21
  %div13 = sdiv i32 %add12, 2
  store i32 %div13, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @num_sites(i32 %node) #0 {
entry:
  %node.addr = alloca i32, align 4
  store i32 %node, i32* %node.addr, align 4
  %0 = load i32, i32* @sites_on_node, align 4
  ret i32 %0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
