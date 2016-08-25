; ModuleID = './rotatingtree.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rotating_node_s = type { i8*, %struct.rotating_node_s*, %struct.rotating_node_s* }

@random_stream = internal global i32 0, align 4
@random_value = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @RotatingTree_Add(%struct.rotating_node_s** %root, %struct.rotating_node_s* %node) #0 {
entry:
  %root.addr = alloca %struct.rotating_node_s**, align 8
  %node.addr = alloca %struct.rotating_node_s*, align 8
  store %struct.rotating_node_s** %root, %struct.rotating_node_s*** %root.addr, align 8
  store %struct.rotating_node_s* %node, %struct.rotating_node_s** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8
  %1 = load %struct.rotating_node_s*, %struct.rotating_node_s** %0, align 8
  %cmp = icmp ne %struct.rotating_node_s* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node.addr, align 8
  %key = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %key, align 8
  %4 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8
  %5 = load %struct.rotating_node_s*, %struct.rotating_node_s** %4, align 8
  %key1 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %key1, align 8
  %cmp2 = icmp ult i8* %3, %6
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8
  %8 = load %struct.rotating_node_s*, %struct.rotating_node_s** %7, align 8
  %left = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %8, i32 0, i32 1
  store %struct.rotating_node_s** %left, %struct.rotating_node_s*** %root.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %9 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8
  %10 = load %struct.rotating_node_s*, %struct.rotating_node_s** %9, align 8
  %right = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %10, i32 0, i32 2
  store %struct.rotating_node_s** %right, %struct.rotating_node_s*** %root.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node.addr, align 8
  %left3 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %11, i32 0, i32 1
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %left3, align 8
  %12 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node.addr, align 8
  %right4 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %12, i32 0, i32 2
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %right4, align 8
  %13 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node.addr, align 8
  %14 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8
  store %struct.rotating_node_s* %13, %struct.rotating_node_s** %14, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rotating_node_s* @RotatingTree_Get(%struct.rotating_node_s** %root, i8* %key) #0 {
entry:
  %retval = alloca %struct.rotating_node_s*, align 8
  %root.addr = alloca %struct.rotating_node_s**, align 8
  %key.addr = alloca i8*, align 8
  %node = alloca %struct.rotating_node_s*, align 8
  %pnode = alloca %struct.rotating_node_s**, align 8
  %node10 = alloca %struct.rotating_node_s*, align 8
  %next = alloca %struct.rotating_node_s*, align 8
  %rotate = alloca i32, align 4
  store %struct.rotating_node_s** %root, %struct.rotating_node_s*** %root.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %call = call i32 @randombits(i32 3)
  %cmp = icmp ne i32 %call, 4
  br i1 %cmp, label %if.then, label %if.else.9

if.then:                                          ; preds = %entry
  %0 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8
  %1 = load %struct.rotating_node_s*, %struct.rotating_node_s** %0, align 8
  store %struct.rotating_node_s* %1, %struct.rotating_node_s** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.then
  %2 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8
  %cmp1 = icmp ne %struct.rotating_node_s* %2, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8
  %key2 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %key2, align 8
  %5 = load i8*, i8** %key.addr, align 8
  %cmp3 = icmp eq i8* %4, %5
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %while.body
  %6 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8
  store %struct.rotating_node_s* %6, %struct.rotating_node_s** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load i8*, i8** %key.addr, align 8
  %8 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8
  %key5 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %key5, align 8
  %cmp6 = icmp ult i8* %7, %9
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %10 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8
  %left = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %10, i32 0, i32 1
  %11 = load %struct.rotating_node_s*, %struct.rotating_node_s** %left, align 8
  store %struct.rotating_node_s* %11, %struct.rotating_node_s** %node, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %12 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8
  %right = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %12, i32 0, i32 2
  %13 = load %struct.rotating_node_s*, %struct.rotating_node_s** %right, align 8
  store %struct.rotating_node_s* %13, %struct.rotating_node_s** %node, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %retval
  br label %return

if.else.9:                                        ; preds = %entry
  %14 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8
  store %struct.rotating_node_s** %14, %struct.rotating_node_s*** %pnode, align 8
  %15 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %pnode, align 8
  %16 = load %struct.rotating_node_s*, %struct.rotating_node_s** %15, align 8
  store %struct.rotating_node_s* %16, %struct.rotating_node_s** %node10, align 8
  %17 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8
  %cmp11 = icmp eq %struct.rotating_node_s* %17, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else.9
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %retval
  br label %return

if.end.13:                                        ; preds = %if.else.9
  br label %while.body.15

while.body.15:                                    ; preds = %if.end.13, %if.end.49
  %18 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8
  %key16 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %18, i32 0, i32 0
  %19 = load i8*, i8** %key16, align 8
  %20 = load i8*, i8** %key.addr, align 8
  %cmp17 = icmp eq i8* %19, %20
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.body.15
  %21 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8
  store %struct.rotating_node_s* %21, %struct.rotating_node_s** %retval
  br label %return

if.end.19:                                        ; preds = %while.body.15
  %call20 = call i32 @randombits(i32 1)
  %tobool = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %rotate, align 4
  %22 = load i8*, i8** %key.addr, align 8
  %23 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8
  %key21 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %23, i32 0, i32 0
  %24 = load i8*, i8** %key21, align 8
  %cmp22 = icmp ult i8* %22, %24
  br i1 %cmp22, label %if.then.23, label %if.else.36

if.then.23:                                       ; preds = %if.end.19
  %25 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8
  %left24 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %25, i32 0, i32 1
  %26 = load %struct.rotating_node_s*, %struct.rotating_node_s** %left24, align 8
  store %struct.rotating_node_s* %26, %struct.rotating_node_s** %next, align 8
  %27 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8
  %cmp25 = icmp eq %struct.rotating_node_s* %27, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.23
  %28 = load i32, i32* %rotate, align 4
  %tobool28 = icmp ne i32 %28, 0
  br i1 %tobool28, label %if.then.29, label %if.else.33

if.then.29:                                       ; preds = %if.end.27
  %29 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8
  %right30 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %29, i32 0, i32 2
  %30 = load %struct.rotating_node_s*, %struct.rotating_node_s** %right30, align 8
  %31 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8
  %left31 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %31, i32 0, i32 1
  store %struct.rotating_node_s* %30, %struct.rotating_node_s** %left31, align 8
  %32 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8
  %33 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8
  %right32 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %33, i32 0, i32 2
  store %struct.rotating_node_s* %32, %struct.rotating_node_s** %right32, align 8
  %34 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8
  %35 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %pnode, align 8
  store %struct.rotating_node_s* %34, %struct.rotating_node_s** %35, align 8
  br label %if.end.35

if.else.33:                                       ; preds = %if.end.27
  %36 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8
  %left34 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %36, i32 0, i32 1
  store %struct.rotating_node_s** %left34, %struct.rotating_node_s*** %pnode, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.29
  br label %if.end.49

if.else.36:                                       ; preds = %if.end.19
  %37 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8
  %right37 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %37, i32 0, i32 2
  %38 = load %struct.rotating_node_s*, %struct.rotating_node_s** %right37, align 8
  store %struct.rotating_node_s* %38, %struct.rotating_node_s** %next, align 8
  %39 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8
  %cmp38 = icmp eq %struct.rotating_node_s* %39, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.else.36
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %retval
  br label %return

if.end.40:                                        ; preds = %if.else.36
  %40 = load i32, i32* %rotate, align 4
  %tobool41 = icmp ne i32 %40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.46

if.then.42:                                       ; preds = %if.end.40
  %41 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8
  %left43 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %41, i32 0, i32 1
  %42 = load %struct.rotating_node_s*, %struct.rotating_node_s** %left43, align 8
  %43 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8
  %right44 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %43, i32 0, i32 2
  store %struct.rotating_node_s* %42, %struct.rotating_node_s** %right44, align 8
  %44 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8
  %45 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8
  %left45 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %45, i32 0, i32 1
  store %struct.rotating_node_s* %44, %struct.rotating_node_s** %left45, align 8
  %46 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8
  %47 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %pnode, align 8
  store %struct.rotating_node_s* %46, %struct.rotating_node_s** %47, align 8
  br label %if.end.48

if.else.46:                                       ; preds = %if.end.40
  %48 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8
  %right47 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %48, i32 0, i32 2
  store %struct.rotating_node_s** %right47, %struct.rotating_node_s*** %pnode, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.35
  %49 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8
  store %struct.rotating_node_s* %49, %struct.rotating_node_s** %node10, align 8
  br label %while.body.15

return:                                           ; preds = %if.then.39, %if.then.26, %if.then.18, %if.then.12, %while.end, %if.then.4
  %50 = load %struct.rotating_node_s*, %struct.rotating_node_s** %retval
  ret %struct.rotating_node_s* %50
}

; Function Attrs: nounwind uwtable
define internal i32 @randombits(i32 %bits) #0 {
entry:
  %bits.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %bits, i32* %bits.addr, align 4
  %0 = load i32, i32* @random_stream, align 4
  %1 = load i32, i32* %bits.addr, align 4
  %shl = shl i32 1, %1
  %cmp = icmp ult i32 %0, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @random_value, align 4
  %mul = mul i32 %2, 1082527
  store i32 %mul, i32* @random_value, align 4
  %3 = load i32, i32* @random_value, align 4
  store i32 %3, i32* @random_stream, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @random_stream, align 4
  %5 = load i32, i32* %bits.addr, align 4
  %shl1 = shl i32 1, %5
  %sub = sub i32 %shl1, 1
  %and = and i32 %4, %sub
  store i32 %and, i32* %result, align 4
  %6 = load i32, i32* %bits.addr, align 4
  %7 = load i32, i32* @random_stream, align 4
  %shr = lshr i32 %7, %6
  store i32 %shr, i32* @random_stream, align 4
  %8 = load i32, i32* %result, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @RotatingTree_Enum(%struct.rotating_node_s* %root, i32 (%struct.rotating_node_s*, i8*)* %enumfn, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.rotating_node_s*, align 8
  %enumfn.addr = alloca i32 (%struct.rotating_node_s*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %node = alloca %struct.rotating_node_s*, align 8
  store %struct.rotating_node_s* %root, %struct.rotating_node_s** %root.addr, align 8
  store i32 (%struct.rotating_node_s*, i8*)* %enumfn, i32 (%struct.rotating_node_s*, i8*)** %enumfn.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %entry
  %0 = load %struct.rotating_node_s*, %struct.rotating_node_s** %root.addr, align 8
  %cmp = icmp ne %struct.rotating_node_s* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rotating_node_s*, %struct.rotating_node_s** %root.addr, align 8
  %left = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %1, i32 0, i32 1
  %2 = load %struct.rotating_node_s*, %struct.rotating_node_s** %left, align 8
  %3 = load i32 (%struct.rotating_node_s*, i8*)*, i32 (%struct.rotating_node_s*, i8*)** %enumfn.addr, align 8
  %4 = load i8*, i8** %arg.addr, align 8
  %call = call i32 @RotatingTree_Enum(%struct.rotating_node_s* %2, i32 (%struct.rotating_node_s*, i8*)* %3, i8* %4)
  store i32 %call, i32* %result, align 4
  %5 = load i32, i32* %result, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %result, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load %struct.rotating_node_s*, %struct.rotating_node_s** %root.addr, align 8
  %right = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %7, i32 0, i32 2
  %8 = load %struct.rotating_node_s*, %struct.rotating_node_s** %right, align 8
  store %struct.rotating_node_s* %8, %struct.rotating_node_s** %node, align 8
  %9 = load i32 (%struct.rotating_node_s*, i8*)*, i32 (%struct.rotating_node_s*, i8*)** %enumfn.addr, align 8
  %10 = load %struct.rotating_node_s*, %struct.rotating_node_s** %root.addr, align 8
  %11 = load i8*, i8** %arg.addr, align 8
  %call2 = call i32 %9(%struct.rotating_node_s* %10, i8* %11)
  store i32 %call2, i32* %result, align 4
  %12 = load i32, i32* %result, align 4
  %cmp3 = icmp ne i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %13 = load i32, i32* %result, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %14 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8
  store %struct.rotating_node_s* %14, %struct.rotating_node_s** %root.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.4, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
