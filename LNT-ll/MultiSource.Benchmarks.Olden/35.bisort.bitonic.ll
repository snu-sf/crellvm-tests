; ModuleID = './MultiSource.Benchmarks.Olden/35.bisort.bitonic.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node*, %struct.node* }
%struct.future_cell_int = type { %struct.node* }

@flag = global i32 0, align 4
@foo = global i32 0, align 4
@InOrder.counter = internal global i8 0, align 1
@.str = private unnamed_addr constant [11 x i8] c"%d @ 0x%x\0A\00", align 1
@NDim = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Bisort with %d size of dim %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"**************************************\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"BEGINNING BITONIC SORT ALGORITHM HERE\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Sorted Tree:\0A\00", align 1
@NumNodes = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @InOrder(%struct.node* %h) #0 {
entry:
  %h.addr = alloca %struct.node*, align 8
  %l = alloca %struct.node*, align 8
  %r = alloca %struct.node*, align 8
  store %struct.node* %h, %struct.node** %h.addr, align 8
  %0 = load %struct.node*, %struct.node** %h.addr, align 8
  %cmp = icmp ne %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct.node*, %struct.node** %h.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  %2 = load %struct.node*, %struct.node** %left, align 8
  store %struct.node* %2, %struct.node** %l, align 8
  %3 = load %struct.node*, %struct.node** %h.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 2
  %4 = load %struct.node*, %struct.node** %right, align 8
  store %struct.node* %4, %struct.node** %r, align 8
  %5 = load %struct.node*, %struct.node** %l, align 8
  call void @InOrder(%struct.node* %5)
  %6 = load i8, i8* @InOrder.counter, align 1
  %inc = add i8 %6, 1
  store i8 %inc, i8* @InOrder.counter, align 1
  %conv = zext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.node*, %struct.node** %h.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  %8 = load i32, i32* %value, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %8, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %9 = load %struct.node*, %struct.node** %r, align 8
  call void @InOrder(%struct.node* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @mult(i32 %p, i32 %q) #0 {
entry:
  %p.addr = alloca i32, align 4
  %q.addr = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p0 = alloca i32, align 4
  %q1 = alloca i32, align 4
  %q0 = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %q, i32* %q.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %div = sdiv i32 %0, 10000
  store i32 %div, i32* %p1, align 4
  %1 = load i32, i32* %p.addr, align 4
  %rem = srem i32 %1, 10000
  store i32 %rem, i32* %p0, align 4
  %2 = load i32, i32* %q.addr, align 4
  %div1 = sdiv i32 %2, 10000
  store i32 %div1, i32* %q1, align 4
  %3 = load i32, i32* %q.addr, align 4
  %rem2 = srem i32 %3, 10000
  store i32 %rem2, i32* %q0, align 4
  %4 = load i32, i32* %p0, align 4
  %5 = load i32, i32* %q1, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %p1, align 4
  %7 = load i32, i32* %q0, align 4
  %mul3 = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, %mul3
  %rem4 = srem i32 %add, 10000
  %mul5 = mul nsw i32 %rem4, 10000
  %8 = load i32, i32* %p0, align 4
  %9 = load i32, i32* %q0, align 4
  %mul6 = mul nsw i32 %8, %9
  %add7 = add nsw i32 %mul5, %mul6
  ret i32 %add7
}

; Function Attrs: nounwind uwtable
define i32 @skiprand(i32 %seed, i32 %n) #0 {
entry:
  %seed.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %seed.addr, align 4
  %call = call i32 @random(i32 %1)
  store i32 %call, i32* %seed.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %seed.addr, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @random(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32, i32* %seed.addr, align 4
  %call = call i32 @mult(i32 %0, i32 31415821)
  %add = add nsw i32 %call, 1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define %struct.node* @RandTree(i32 %n, i32 %seed, i32 %node, i32 %level) #0 {
entry:
  %n.addr = alloca i32, align 4
  %seed.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %next_val = alloca i32, align 4
  %my_name = alloca i32, align 4
  %f_left = alloca %struct.future_cell_int, align 8
  %f_right = alloca %struct.future_cell_int, align 8
  %h = alloca %struct.node*, align 8
  %newnode = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %seed, i32* %seed.addr, align 4
  store i32 %node, i32* %node.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  %0 = load i32, i32* @foo, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @foo, align 4
  store i32 %0, i32* %my_name, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else.18

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %level.addr, align 4
  %3 = load i32, i32* @NDim, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load i32, i32* %node.addr, align 4
  %5 = load i32, i32* @NDim, align 4
  %6 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %5, %6
  %sub3 = sub nsw i32 %sub, 1
  %shl = shl i32 1, %sub3
  %add = add nsw i32 %4, %shl
  store i32 %add, i32* %newnode, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load i32, i32* %node.addr, align 4
  store i32 %7, i32* %newnode, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %8 = load i32, i32* %seed.addr, align 4
  %call = call i32 @random(i32 %8)
  store i32 %call, i32* %seed.addr, align 4
  %9 = load i32, i32* %seed.addr, align 4
  %rem = srem i32 %9, 100
  store i32 %rem, i32* %next_val, align 4
  %call4 = call i8* @malloc(i32 24)
  %10 = bitcast i8* %call4 to %struct.node*
  store %struct.node* %10, %struct.node** %h, align 8
  %11 = load i32, i32* %next_val, align 4
  %12 = load %struct.node*, %struct.node** %h, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 0
  store i32 %11, i32* %value, align 4
  %13 = load %struct.node*, %struct.node** %h, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  store %struct.node* null, %struct.node** %left, align 8
  %14 = load %struct.node*, %struct.node** %h, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 2
  store %struct.node* null, %struct.node** %right, align 8
  %15 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %15, 2
  %16 = load i32, i32* %seed.addr, align 4
  %17 = load i32, i32* %newnode, align 4
  %18 = load i32, i32* %level.addr, align 4
  %add5 = add nsw i32 %18, 1
  %call6 = call %struct.node* @RandTree(i32 %div, i32 %16, i32 %17, i32 %add5)
  %value7 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %f_left, i32 0, i32 0
  store %struct.node* %call6, %struct.node** %value7, align 8
  %19 = load i32, i32* %n.addr, align 4
  %div8 = sdiv i32 %19, 2
  %20 = load i32, i32* %seed.addr, align 4
  %21 = load i32, i32* %n.addr, align 4
  %add9 = add nsw i32 %21, 1
  %call10 = call i32 @skiprand(i32 %20, i32 %add9)
  %22 = load i32, i32* %node.addr, align 4
  %23 = load i32, i32* %level.addr, align 4
  %add11 = add nsw i32 %23, 1
  %call12 = call %struct.node* @RandTree(i32 %div8, i32 %call10, i32 %22, i32 %add11)
  %value13 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %f_right, i32 0, i32 0
  store %struct.node* %call12, %struct.node** %value13, align 8
  %value14 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %f_left, i32 0, i32 0
  %24 = load %struct.node*, %struct.node** %value14, align 8
  %25 = load %struct.node*, %struct.node** %h, align 8
  %left15 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 1
  store %struct.node* %24, %struct.node** %left15, align 8
  %value16 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %f_right, i32 0, i32 0
  %26 = load %struct.node*, %struct.node** %value16, align 8
  %27 = load %struct.node*, %struct.node** %h, align 8
  %right17 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 2
  store %struct.node* %26, %struct.node** %right17, align 8
  br label %if.end.19

if.else.18:                                       ; preds = %entry
  store %struct.node* null, %struct.node** %h, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.end
  %28 = load %struct.node*, %struct.node** %h, align 8
  ret %struct.node* %28
}

declare i8* @malloc(i32) #1

; Function Attrs: nounwind uwtable
define void @SwapValue(%struct.node* %l, %struct.node* %r) #0 {
entry:
  %l.addr = alloca %struct.node*, align 8
  %r.addr = alloca %struct.node*, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  store %struct.node* %l, %struct.node** %l.addr, align 8
  store %struct.node* %r, %struct.node** %r.addr, align 8
  %0 = load %struct.node*, %struct.node** %l.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 0
  %1 = load i32, i32* %value, align 4
  store i32 %1, i32* %temp, align 4
  %2 = load %struct.node*, %struct.node** %r.addr, align 8
  %value1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %3 = load i32, i32* %value1, align 4
  store i32 %3, i32* %temp2, align 4
  %4 = load i32, i32* %temp, align 4
  %5 = load %struct.node*, %struct.node** %r.addr, align 8
  %value2 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 0
  store i32 %4, i32* %value2, align 4
  %6 = load i32, i32* %temp2, align 4
  %7 = load %struct.node*, %struct.node** %l.addr, align 8
  %value3 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  store i32 %6, i32* %value3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @SwapValLeft(%struct.node* %l, %struct.node* %r, %struct.node* %ll, %struct.node* %rl, i32 %lval, i32 %rval) #0 {
entry:
  %l.addr = alloca %struct.node*, align 8
  %r.addr = alloca %struct.node*, align 8
  %ll.addr = alloca %struct.node*, align 8
  %rl.addr = alloca %struct.node*, align 8
  %lval.addr = alloca i32, align 4
  %rval.addr = alloca i32, align 4
  store %struct.node* %l, %struct.node** %l.addr, align 8
  store %struct.node* %r, %struct.node** %r.addr, align 8
  store %struct.node* %ll, %struct.node** %ll.addr, align 8
  store %struct.node* %rl, %struct.node** %rl.addr, align 8
  store i32 %lval, i32* %lval.addr, align 4
  store i32 %rval, i32* %rval.addr, align 4
  %0 = load i32, i32* %lval.addr, align 4
  %1 = load %struct.node*, %struct.node** %r.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  store i32 %0, i32* %value, align 4
  %2 = load %struct.node*, %struct.node** %ll.addr, align 8
  %3 = load %struct.node*, %struct.node** %r.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  store %struct.node* %2, %struct.node** %left, align 8
  %4 = load %struct.node*, %struct.node** %rl.addr, align 8
  %5 = load %struct.node*, %struct.node** %l.addr, align 8
  %left1 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  store %struct.node* %4, %struct.node** %left1, align 8
  %6 = load i32, i32* %rval.addr, align 4
  %7 = load %struct.node*, %struct.node** %l.addr, align 8
  %value2 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  store i32 %6, i32* %value2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @SwapValRight(%struct.node* %l, %struct.node* %r, %struct.node* %lr, %struct.node* %rr, i32 %lval, i32 %rval) #0 {
entry:
  %l.addr = alloca %struct.node*, align 8
  %r.addr = alloca %struct.node*, align 8
  %lr.addr = alloca %struct.node*, align 8
  %rr.addr = alloca %struct.node*, align 8
  %lval.addr = alloca i32, align 4
  %rval.addr = alloca i32, align 4
  store %struct.node* %l, %struct.node** %l.addr, align 8
  store %struct.node* %r, %struct.node** %r.addr, align 8
  store %struct.node* %lr, %struct.node** %lr.addr, align 8
  store %struct.node* %rr, %struct.node** %rr.addr, align 8
  store i32 %lval, i32* %lval.addr, align 4
  store i32 %rval, i32* %rval.addr, align 4
  %0 = load i32, i32* %lval.addr, align 4
  %1 = load %struct.node*, %struct.node** %r.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  store i32 %0, i32* %value, align 4
  %2 = load %struct.node*, %struct.node** %lr.addr, align 8
  %3 = load %struct.node*, %struct.node** %r.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 2
  store %struct.node* %2, %struct.node** %right, align 8
  %4 = load %struct.node*, %struct.node** %rr.addr, align 8
  %5 = load %struct.node*, %struct.node** %l.addr, align 8
  %right1 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  store %struct.node* %4, %struct.node** %right1, align 8
  %6 = load i32, i32* %rval.addr, align 4
  %7 = load %struct.node*, %struct.node** %l.addr, align 8
  %value2 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  store i32 %6, i32* %value2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Bimerge(%struct.node* %root, i32 %spr_val, i32 %dir) #0 {
entry:
  %root.addr = alloca %struct.node*, align 8
  %spr_val.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %rightexchange = alloca i32, align 4
  %elementexchange = alloca i32, align 4
  %pl = alloca %struct.node*, align 8
  %pll = alloca %struct.node*, align 8
  %plr = alloca %struct.node*, align 8
  %pr = alloca %struct.node*, align 8
  %prl = alloca %struct.node*, align 8
  %prr = alloca %struct.node*, align 8
  %rl = alloca %struct.node*, align 8
  %rr = alloca %struct.node*, align 8
  %rv = alloca i32, align 4
  %lv = alloca i32, align 4
  %value28 = alloca i32, align 4
  store %struct.node* %root, %struct.node** %root.addr, align 8
  store i32 %spr_val, i32* %spr_val.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load %struct.node*, %struct.node** %root.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 0
  %1 = load i32, i32* %value, align 4
  store i32 %1, i32* %rv, align 4
  %2 = load %struct.node*, %struct.node** %root.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %3 = load %struct.node*, %struct.node** %left, align 8
  store %struct.node* %3, %struct.node** %pl, align 8
  %4 = load %struct.node*, %struct.node** %root.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 2
  %5 = load %struct.node*, %struct.node** %right, align 8
  store %struct.node* %5, %struct.node** %pr, align 8
  %6 = load i32, i32* %rv, align 4
  %7 = load i32, i32* %spr_val.addr, align 4
  %cmp = icmp sgt i32 %6, %7
  %conv = zext i1 %cmp to i32
  %8 = load i32, i32* %dir.addr, align 4
  %xor = xor i32 %conv, %8
  store i32 %xor, i32* %rightexchange, align 4
  %9 = load i32, i32* %rightexchange, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %spr_val.addr, align 4
  %11 = load %struct.node*, %struct.node** %root.addr, align 8
  %value1 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  store i32 %10, i32* %value1, align 4
  %12 = load i32, i32* %rv, align 4
  store i32 %12, i32* %spr_val.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %if.end
  %13 = load %struct.node*, %struct.node** %pl, align 8
  %cmp2 = icmp ne %struct.node* %13, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.node*, %struct.node** %pl, align 8
  %value4 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %15 = load i32, i32* %value4, align 4
  store i32 %15, i32* %lv, align 4
  %16 = load %struct.node*, %struct.node** %pl, align 8
  %left5 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 1
  %17 = load %struct.node*, %struct.node** %left5, align 8
  store %struct.node* %17, %struct.node** %pll, align 8
  %18 = load %struct.node*, %struct.node** %pl, align 8
  %right6 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 2
  %19 = load %struct.node*, %struct.node** %right6, align 8
  store %struct.node* %19, %struct.node** %plr, align 8
  %20 = load %struct.node*, %struct.node** %pr, align 8
  %value7 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  %21 = load i32, i32* %value7, align 4
  store i32 %21, i32* %rv, align 4
  %22 = load %struct.node*, %struct.node** %pr, align 8
  %left8 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 1
  %23 = load %struct.node*, %struct.node** %left8, align 8
  store %struct.node* %23, %struct.node** %prl, align 8
  %24 = load %struct.node*, %struct.node** %pr, align 8
  %right9 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 2
  %25 = load %struct.node*, %struct.node** %right9, align 8
  store %struct.node* %25, %struct.node** %prr, align 8
  %26 = load i32, i32* %lv, align 4
  %27 = load i32, i32* %rv, align 4
  %cmp10 = icmp sgt i32 %26, %27
  %conv11 = zext i1 %cmp10 to i32
  %28 = load i32, i32* %dir.addr, align 4
  %xor12 = xor i32 %conv11, %28
  store i32 %xor12, i32* %elementexchange, align 4
  %29 = load i32, i32* %rightexchange, align 4
  %tobool13 = icmp ne i32 %29, 0
  br i1 %tobool13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %while.body
  %30 = load i32, i32* %elementexchange, align 4
  %tobool15 = icmp ne i32 %30, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.14
  %31 = load %struct.node*, %struct.node** %pl, align 8
  %32 = load %struct.node*, %struct.node** %pr, align 8
  %33 = load %struct.node*, %struct.node** %plr, align 8
  %34 = load %struct.node*, %struct.node** %prr, align 8
  %35 = load i32, i32* %lv, align 4
  %36 = load i32, i32* %rv, align 4
  call void @SwapValRight(%struct.node* %31, %struct.node* %32, %struct.node* %33, %struct.node* %34, i32 %35, i32 %36)
  %37 = load %struct.node*, %struct.node** %pll, align 8
  store %struct.node* %37, %struct.node** %pl, align 8
  %38 = load %struct.node*, %struct.node** %prl, align 8
  store %struct.node* %38, %struct.node** %pr, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.then.14
  %39 = load %struct.node*, %struct.node** %plr, align 8
  store %struct.node* %39, %struct.node** %pl, align 8
  %40 = load %struct.node*, %struct.node** %prr, align 8
  store %struct.node* %40, %struct.node** %pr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %if.end.23

if.else.18:                                       ; preds = %while.body
  %41 = load i32, i32* %elementexchange, align 4
  %tobool19 = icmp ne i32 %41, 0
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.18
  %42 = load %struct.node*, %struct.node** %pl, align 8
  %43 = load %struct.node*, %struct.node** %pr, align 8
  %44 = load %struct.node*, %struct.node** %pll, align 8
  %45 = load %struct.node*, %struct.node** %prl, align 8
  %46 = load i32, i32* %lv, align 4
  %47 = load i32, i32* %rv, align 4
  call void @SwapValLeft(%struct.node* %42, %struct.node* %43, %struct.node* %44, %struct.node* %45, i32 %46, i32 %47)
  %48 = load %struct.node*, %struct.node** %plr, align 8
  store %struct.node* %48, %struct.node** %pl, align 8
  %49 = load %struct.node*, %struct.node** %prr, align 8
  store %struct.node* %49, %struct.node** %pr, align 8
  br label %if.end.22

if.else.21:                                       ; preds = %if.else.18
  %50 = load %struct.node*, %struct.node** %pll, align 8
  store %struct.node* %50, %struct.node** %pl, align 8
  %51 = load %struct.node*, %struct.node** %prl, align 8
  store %struct.node* %51, %struct.node** %pr, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load %struct.node*, %struct.node** %root.addr, align 8
  %left24 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 1
  %53 = load %struct.node*, %struct.node** %left24, align 8
  %cmp25 = icmp ne %struct.node* %53, null
  br i1 %cmp25, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %while.end
  %54 = load %struct.node*, %struct.node** %root.addr, align 8
  %left29 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 1
  %55 = load %struct.node*, %struct.node** %left29, align 8
  store %struct.node* %55, %struct.node** %rl, align 8
  %56 = load %struct.node*, %struct.node** %root.addr, align 8
  %right30 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 2
  %57 = load %struct.node*, %struct.node** %right30, align 8
  store %struct.node* %57, %struct.node** %rr, align 8
  %58 = load %struct.node*, %struct.node** %root.addr, align 8
  %value31 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 0
  %59 = load i32, i32* %value31, align 4
  store i32 %59, i32* %value28, align 4
  %60 = load %struct.node*, %struct.node** %rl, align 8
  %61 = load i32, i32* %value28, align 4
  %62 = load i32, i32* %dir.addr, align 4
  %call = call i32 @Bimerge(%struct.node* %60, i32 %61, i32 %62)
  %63 = load %struct.node*, %struct.node** %root.addr, align 8
  %value32 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 0
  store i32 %call, i32* %value32, align 4
  %64 = load %struct.node*, %struct.node** %rr, align 8
  %65 = load i32, i32* %spr_val.addr, align 4
  %66 = load i32, i32* %dir.addr, align 4
  %call33 = call i32 @Bimerge(%struct.node* %64, i32 %65, i32 %66)
  store i32 %call33, i32* %spr_val.addr, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %while.end
  %67 = load i32, i32* %spr_val.addr, align 4
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define i32 @Bisort(%struct.node* %root, i32 %spr_val, i32 %dir) #0 {
entry:
  %root.addr = alloca %struct.node*, align 8
  %spr_val.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %l = alloca %struct.node*, align 8
  %r = alloca %struct.node*, align 8
  %val = alloca i32, align 4
  %ndir = alloca i32, align 4
  store %struct.node* %root, %struct.node** %root.addr, align 8
  store i32 %spr_val, i32* %spr_val.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load %struct.node*, %struct.node** %root.addr, align 8
  %left = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 1
  %1 = load %struct.node*, %struct.node** %left, align 8
  %cmp = icmp eq %struct.node* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.node*, %struct.node** %root.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %3 = load i32, i32* %value, align 4
  %4 = load i32, i32* %spr_val.addr, align 4
  %cmp1 = icmp sgt i32 %3, %4
  %conv = zext i1 %cmp1 to i32
  %5 = load i32, i32* %dir.addr, align 4
  %xor = xor i32 %conv, %5
  %tobool = icmp ne i32 %xor, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load i32, i32* %spr_val.addr, align 4
  store i32 %6, i32* %val, align 4
  %7 = load %struct.node*, %struct.node** %root.addr, align 8
  %value3 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  %8 = load i32, i32* %value3, align 4
  store i32 %8, i32* %spr_val.addr, align 4
  %9 = load i32, i32* %val, align 4
  %10 = load %struct.node*, %struct.node** %root.addr, align 8
  %value4 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  store i32 %9, i32* %value4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %11 = load %struct.node*, %struct.node** %root.addr, align 8
  %left5 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 1
  %12 = load %struct.node*, %struct.node** %left5, align 8
  store %struct.node* %12, %struct.node** %l, align 8
  %13 = load %struct.node*, %struct.node** %root.addr, align 8
  %right = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  %14 = load %struct.node*, %struct.node** %right, align 8
  store %struct.node* %14, %struct.node** %r, align 8
  %15 = load %struct.node*, %struct.node** %root.addr, align 8
  %value6 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %16 = load i32, i32* %value6, align 4
  store i32 %16, i32* %val, align 4
  %17 = load %struct.node*, %struct.node** %l, align 8
  %18 = load i32, i32* %val, align 4
  %19 = load i32, i32* %dir.addr, align 4
  %call = call i32 @Bisort(%struct.node* %17, i32 %18, i32 %19)
  %20 = load %struct.node*, %struct.node** %root.addr, align 8
  %value7 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  store i32 %call, i32* %value7, align 4
  %21 = load i32, i32* %dir.addr, align 4
  %tobool8 = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool8, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %ndir, align 4
  %22 = load %struct.node*, %struct.node** %r, align 8
  %23 = load i32, i32* %spr_val.addr, align 4
  %24 = load i32, i32* %ndir, align 4
  %call9 = call i32 @Bisort(%struct.node* %22, i32 %23, i32 %24)
  store i32 %call9, i32* %spr_val.addr, align 4
  %25 = load %struct.node*, %struct.node** %root.addr, align 8
  %26 = load i32, i32* %spr_val.addr, align 4
  %27 = load i32, i32* %dir.addr, align 4
  %call10 = call i32 @Bimerge(%struct.node* %25, i32 %26, i32 %27)
  store i32 %call10, i32* %spr_val.addr, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end
  %28 = load i32, i32* %spr_val.addr, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %h = alloca %struct.node*, align 8
  %sval = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @dealwithargs(i32 %0, i8** %1)
  store i32 %call, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %3 = load i32, i32* @NDim, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %2, i32 %3)
  %4 = load i32, i32* %n, align 4
  %call2 = call %struct.node* @RandTree(i32 %4, i32 12345768, i32 0, i32 0)
  store %struct.node* %call2, %struct.node** %h, align 8
  %call3 = call i32 @random(i32 245867)
  %rem = srem i32 %call3, 100
  store i32 %rem, i32* %sval, align 4
  %5 = load i32, i32* @flag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.node*, %struct.node** %h, align 8
  call void @InOrder(%struct.node* %6)
  %7 = load i32, i32* %sval, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0))
  %8 = load %struct.node*, %struct.node** %h, align 8
  %9 = load i32, i32* %sval, align 4
  %call8 = call i32 @Bisort(%struct.node* %8, i32 %9, i32 0)
  store i32 %call8, i32* %sval, align 4
  %10 = load i32, i32* @flag, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %11 = load %struct.node*, %struct.node** %h, align 8
  call void @InOrder(%struct.node* %11)
  %12 = load i32, i32* %sval, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end
  %13 = load %struct.node*, %struct.node** %h, align 8
  %14 = load i32, i32* %sval, align 4
  %call14 = call i32 @Bisort(%struct.node* %13, i32 %14, i32 1)
  store i32 %call14, i32* %sval, align 4
  %15 = load i32, i32* @flag, align 4
  %tobool15 = icmp ne i32 %15, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.13
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %16 = load %struct.node*, %struct.node** %h, align 8
  call void @InOrder(%struct.node* %16)
  %17 = load i32, i32* %sval, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.13
  ret i32 0
}

declare i32 @dealwithargs(i32, i8**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
