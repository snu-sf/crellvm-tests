; ModuleID = './MultiSource.Benchmarks.McCat/22.09-vor.splay.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.splay_node = type { %struct.splay_element, %struct.splay_node*, %struct.splay_node*, %struct.splay_node* }
%struct.splay_element = type { i64, %struct.point }
%struct.point = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Can't create node\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"No elements in tree! [delete_min]\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.splay_node* @find(%struct.splay_node* %root, i64 %key) #0 {
entry:
  %retval = alloca %struct.splay_node*, align 8
  %root.addr = alloca %struct.splay_node*, align 8
  %key.addr = alloca i64, align 8
  store %struct.splay_node* %root, %struct.splay_node** %root.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  %0 = load %struct.splay_node*, %struct.splay_node** %root.addr, align 8
  %element = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i32 0, i32 0
  %key1 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %element, i32 0, i32 0
  %1 = load i64, i64* %key1, align 8
  %2 = load i64, i64* %key.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.splay_node*, %struct.splay_node** %root.addr, align 8
  %right = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i32 0, i32 3
  %4 = load %struct.splay_node*, %struct.splay_node** %right, align 8
  %cmp2 = icmp ne %struct.splay_node* %4, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.splay_node*, %struct.splay_node** %root.addr, align 8
  %right3 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %5, i32 0, i32 3
  %6 = load %struct.splay_node*, %struct.splay_node** %right3, align 8
  %7 = load i64, i64* %key.addr, align 8
  %call = call %struct.splay_node* @find(%struct.splay_node* %6, i64 %7)
  store %struct.splay_node* %call, %struct.splay_node** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %struct.splay_node*, %struct.splay_node** %root.addr, align 8
  %element4 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %8, i32 0, i32 0
  %key5 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %element4, i32 0, i32 0
  %9 = load i64, i64* %key5, align 8
  %10 = load i64, i64* %key.addr, align 8
  %cmp6 = icmp sgt i64 %9, %10
  br i1 %cmp6, label %land.lhs.true.7, label %if.else.12

land.lhs.true.7:                                  ; preds = %if.else
  %11 = load %struct.splay_node*, %struct.splay_node** %root.addr, align 8
  %left = getelementptr inbounds %struct.splay_node, %struct.splay_node* %11, i32 0, i32 2
  %12 = load %struct.splay_node*, %struct.splay_node** %left, align 8
  %cmp8 = icmp ne %struct.splay_node* %12, null
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %land.lhs.true.7
  %13 = load %struct.splay_node*, %struct.splay_node** %root.addr, align 8
  %left10 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %13, i32 0, i32 2
  %14 = load %struct.splay_node*, %struct.splay_node** %left10, align 8
  %15 = load i64, i64* %key.addr, align 8
  %call11 = call %struct.splay_node* @find(%struct.splay_node* %14, i64 %15)
  store %struct.splay_node* %call11, %struct.splay_node** %retval
  br label %return

if.else.12:                                       ; preds = %land.lhs.true.7, %if.else
  %16 = load %struct.splay_node*, %struct.splay_node** %root.addr, align 8
  store %struct.splay_node* %16, %struct.splay_node** %retval
  br label %return

return:                                           ; preds = %if.else.12, %if.then.9, %if.then
  %17 = load %struct.splay_node*, %struct.splay_node** %retval
  ret %struct.splay_node* %17
}

; Function Attrs: nounwind uwtable
define %struct.splay_node* @rotate(%struct.splay_node* %sn) #0 {
entry:
  %sn.addr = alloca %struct.splay_node*, align 8
  %temp = alloca %struct.splay_node*, align 8
  store %struct.splay_node* %sn, %struct.splay_node** %sn.addr, align 8
  %0 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %father = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i32 0, i32 1
  %1 = load %struct.splay_node*, %struct.splay_node** %father, align 8
  %left = getelementptr inbounds %struct.splay_node, %struct.splay_node* %1, i32 0, i32 2
  %2 = load %struct.splay_node*, %struct.splay_node** %left, align 8
  %3 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %cmp = icmp eq %struct.splay_node* %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %right = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i32 0, i32 3
  %5 = load %struct.splay_node*, %struct.splay_node** %right, align 8
  %6 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %father1 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %6, i32 0, i32 1
  %7 = load %struct.splay_node*, %struct.splay_node** %father1, align 8
  %left2 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %7, i32 0, i32 2
  store %struct.splay_node* %5, %struct.splay_node** %left2, align 8
  %8 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %right3 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %8, i32 0, i32 3
  %9 = load %struct.splay_node*, %struct.splay_node** %right3, align 8
  %cmp4 = icmp ne %struct.splay_node* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %10 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %father6 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %10, i32 0, i32 1
  %11 = load %struct.splay_node*, %struct.splay_node** %father6, align 8
  %12 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %right7 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %12, i32 0, i32 3
  %13 = load %struct.splay_node*, %struct.splay_node** %right7, align 8
  %father8 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %13, i32 0, i32 1
  store %struct.splay_node* %11, %struct.splay_node** %father8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %14 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %father9 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %14, i32 0, i32 1
  %15 = load %struct.splay_node*, %struct.splay_node** %father9, align 8
  %16 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %right10 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %16, i32 0, i32 3
  store %struct.splay_node* %15, %struct.splay_node** %right10, align 8
  br label %if.end.23

if.else:                                          ; preds = %entry
  %17 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %left11 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %17, i32 0, i32 2
  %18 = load %struct.splay_node*, %struct.splay_node** %left11, align 8
  %19 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %father12 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %19, i32 0, i32 1
  %20 = load %struct.splay_node*, %struct.splay_node** %father12, align 8
  %right13 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %20, i32 0, i32 3
  store %struct.splay_node* %18, %struct.splay_node** %right13, align 8
  %21 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %left14 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %21, i32 0, i32 2
  %22 = load %struct.splay_node*, %struct.splay_node** %left14, align 8
  %cmp15 = icmp ne %struct.splay_node* %22, null
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.else
  %23 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %father17 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %23, i32 0, i32 1
  %24 = load %struct.splay_node*, %struct.splay_node** %father17, align 8
  %25 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %left18 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %25, i32 0, i32 2
  %26 = load %struct.splay_node*, %struct.splay_node** %left18, align 8
  %father19 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %26, i32 0, i32 1
  store %struct.splay_node* %24, %struct.splay_node** %father19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.else
  %27 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %father21 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %27, i32 0, i32 1
  %28 = load %struct.splay_node*, %struct.splay_node** %father21, align 8
  %29 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %left22 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %29, i32 0, i32 2
  store %struct.splay_node* %28, %struct.splay_node** %left22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.20, %if.end
  %30 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %father24 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %30, i32 0, i32 1
  %31 = load %struct.splay_node*, %struct.splay_node** %father24, align 8
  %father25 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %31, i32 0, i32 1
  %32 = load %struct.splay_node*, %struct.splay_node** %father25, align 8
  store %struct.splay_node* %32, %struct.splay_node** %temp, align 8
  %33 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %34 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %father26 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %34, i32 0, i32 1
  %35 = load %struct.splay_node*, %struct.splay_node** %father26, align 8
  %father27 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %35, i32 0, i32 1
  store %struct.splay_node* %33, %struct.splay_node** %father27, align 8
  %36 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %cmp28 = icmp ne %struct.splay_node* %36, null
  br i1 %cmp28, label %if.then.29, label %if.end.38

if.then.29:                                       ; preds = %if.end.23
  %37 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %left30 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %37, i32 0, i32 2
  %38 = load %struct.splay_node*, %struct.splay_node** %left30, align 8
  %39 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %father31 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %39, i32 0, i32 1
  %40 = load %struct.splay_node*, %struct.splay_node** %father31, align 8
  %cmp32 = icmp eq %struct.splay_node* %38, %40
  br i1 %cmp32, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.then.29
  %41 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %42 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %left34 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %42, i32 0, i32 2
  store %struct.splay_node* %41, %struct.splay_node** %left34, align 8
  br label %if.end.37

if.else.35:                                       ; preds = %if.then.29
  %43 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %44 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %right36 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %44, i32 0, i32 3
  store %struct.splay_node* %43, %struct.splay_node** %right36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.23
  %45 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %46 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  %father39 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %46, i32 0, i32 1
  store %struct.splay_node* %45, %struct.splay_node** %father39, align 8
  %47 = load %struct.splay_node*, %struct.splay_node** %sn.addr, align 8
  ret %struct.splay_node* %47
}

; Function Attrs: nounwind uwtable
define i8* @splay(%struct.splay_node** %root, i64 %key) #0 {
entry:
  %retval = alloca i8*, align 8
  %root.addr = alloca %struct.splay_node**, align 8
  %key.addr = alloca i64, align 8
  %temp = alloca %struct.splay_node*, align 8
  store %struct.splay_node** %root, %struct.splay_node*** %root.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  %0 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %1 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %2 = load i64, i64* %key.addr, align 8
  %call = call %struct.splay_node* @find(%struct.splay_node* %1, i64 %2)
  store %struct.splay_node* %call, %struct.splay_node** %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %entry
  %3 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %father = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i32 0, i32 1
  %4 = load %struct.splay_node*, %struct.splay_node** %father, align 8
  %cmp = icmp ne %struct.splay_node* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %father1 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %5, i32 0, i32 1
  %6 = load %struct.splay_node*, %struct.splay_node** %father1, align 8
  %father2 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %6, i32 0, i32 1
  %7 = load %struct.splay_node*, %struct.splay_node** %father2, align 8
  %cmp3 = icmp eq %struct.splay_node* %7, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %call4 = call %struct.splay_node* @rotate(%struct.splay_node* %8)
  store %struct.splay_node* %call4, %struct.splay_node** %temp, align 8
  br label %if.end.33

if.else:                                          ; preds = %while.body
  %9 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %father5 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %9, i32 0, i32 1
  %10 = load %struct.splay_node*, %struct.splay_node** %father5, align 8
  %left = getelementptr inbounds %struct.splay_node, %struct.splay_node* %10, i32 0, i32 2
  %11 = load %struct.splay_node*, %struct.splay_node** %left, align 8
  %12 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %cmp6 = icmp eq %struct.splay_node* %11, %12
  br i1 %cmp6, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %father7 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %13, i32 0, i32 1
  %14 = load %struct.splay_node*, %struct.splay_node** %father7, align 8
  %father8 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %14, i32 0, i32 1
  %15 = load %struct.splay_node*, %struct.splay_node** %father8, align 8
  %left9 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %15, i32 0, i32 2
  %16 = load %struct.splay_node*, %struct.splay_node** %left9, align 8
  %17 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %father10 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %17, i32 0, i32 1
  %18 = load %struct.splay_node*, %struct.splay_node** %father10, align 8
  %cmp11 = icmp eq %struct.splay_node* %16, %18
  br i1 %cmp11, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %land.lhs.true
  %19 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %father13 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %19, i32 0, i32 1
  %20 = load %struct.splay_node*, %struct.splay_node** %father13, align 8
  %call14 = call %struct.splay_node* @rotate(%struct.splay_node* %20)
  %21 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %call15 = call %struct.splay_node* @rotate(%struct.splay_node* %21)
  store %struct.splay_node* %call15, %struct.splay_node** %temp, align 8
  br label %if.end.32

if.else.16:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %father17 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %22, i32 0, i32 1
  %23 = load %struct.splay_node*, %struct.splay_node** %father17, align 8
  %right = getelementptr inbounds %struct.splay_node, %struct.splay_node* %23, i32 0, i32 3
  %24 = load %struct.splay_node*, %struct.splay_node** %right, align 8
  %25 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %cmp18 = icmp eq %struct.splay_node* %24, %25
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.29

land.lhs.true.19:                                 ; preds = %if.else.16
  %26 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %father20 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %26, i32 0, i32 1
  %27 = load %struct.splay_node*, %struct.splay_node** %father20, align 8
  %father21 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %27, i32 0, i32 1
  %28 = load %struct.splay_node*, %struct.splay_node** %father21, align 8
  %right22 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %28, i32 0, i32 3
  %29 = load %struct.splay_node*, %struct.splay_node** %right22, align 8
  %30 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %father23 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %30, i32 0, i32 1
  %31 = load %struct.splay_node*, %struct.splay_node** %father23, align 8
  %cmp24 = icmp eq %struct.splay_node* %29, %31
  br i1 %cmp24, label %if.then.25, label %if.else.29

if.then.25:                                       ; preds = %land.lhs.true.19
  %32 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %father26 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %32, i32 0, i32 1
  %33 = load %struct.splay_node*, %struct.splay_node** %father26, align 8
  %call27 = call %struct.splay_node* @rotate(%struct.splay_node* %33)
  %34 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %call28 = call %struct.splay_node* @rotate(%struct.splay_node* %34)
  store %struct.splay_node* %call28, %struct.splay_node** %temp, align 8
  br label %if.end

if.else.29:                                       ; preds = %land.lhs.true.19, %if.else.16
  %35 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %call30 = call %struct.splay_node* @rotate(%struct.splay_node* %35)
  store %struct.splay_node* %call30, %struct.splay_node** %temp, align 8
  %36 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %call31 = call %struct.splay_node* @rotate(%struct.splay_node* %36)
  store %struct.splay_node* %call31, %struct.splay_node** %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.29, %if.then.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then.12
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %38 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  store %struct.splay_node* %37, %struct.splay_node** %38, align 8
  %39 = load i8*, i8** %retval
  ret i8* %39
}

; Function Attrs: nounwind uwtable
define void @free_tree(%struct.splay_node* %root) #0 {
entry:
  %root.addr = alloca %struct.splay_node*, align 8
  store %struct.splay_node* %root, %struct.splay_node** %root.addr, align 8
  %0 = load %struct.splay_node*, %struct.splay_node** %root.addr, align 8
  %cmp = icmp ne %struct.splay_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.splay_node*, %struct.splay_node** %root.addr, align 8
  %left = getelementptr inbounds %struct.splay_node, %struct.splay_node* %1, i32 0, i32 2
  %2 = load %struct.splay_node*, %struct.splay_node** %left, align 8
  call void @free_tree(%struct.splay_node* %2)
  %3 = load %struct.splay_node*, %struct.splay_node** %root.addr, align 8
  %right = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i32 0, i32 3
  %4 = load %struct.splay_node*, %struct.splay_node** %right, align 8
  call void @free_tree(%struct.splay_node* %4)
  %5 = load %struct.splay_node*, %struct.splay_node** %root.addr, align 8
  %6 = bitcast %struct.splay_node* %5 to i8*
  call void @free(i8* %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.splay_node* @create_node(i64 %p.coerce) #0 {
entry:
  %p = alloca %struct.point, align 8
  %new_node = alloca %struct.splay_node*, align 8
  %0 = bitcast %struct.point* %p to i64*
  store i64 %p.coerce, i64* %0, align 8
  %call = call noalias i8* @malloc(i64 40) #4
  %1 = bitcast i8* %call to %struct.splay_node*
  store %struct.splay_node* %1, %struct.splay_node** %new_node, align 8
  %tobool = icmp ne %struct.splay_node* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.splay_node*, %struct.splay_node** %new_node, align 8
  %left = getelementptr inbounds %struct.splay_node, %struct.splay_node* %2, i32 0, i32 2
  store %struct.splay_node* null, %struct.splay_node** %left, align 8
  %3 = load %struct.splay_node*, %struct.splay_node** %new_node, align 8
  %right = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i32 0, i32 3
  store %struct.splay_node* null, %struct.splay_node** %right, align 8
  %4 = load %struct.splay_node*, %struct.splay_node** %new_node, align 8
  %father = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i32 0, i32 1
  store %struct.splay_node* null, %struct.splay_node** %father, align 8
  %x = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  %5 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %5, 10000
  %y = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  %6 = load i32, i32* %y, align 4
  %add = add nsw i32 %mul, %6
  %conv = sext i32 %add to i64
  %7 = load %struct.splay_node*, %struct.splay_node** %new_node, align 8
  %element = getelementptr inbounds %struct.splay_node, %struct.splay_node* %7, i32 0, i32 0
  %key = getelementptr inbounds %struct.splay_element, %struct.splay_element* %element, i32 0, i32 0
  store i64 %conv, i64* %key, align 8
  %8 = load %struct.splay_node*, %struct.splay_node** %new_node, align 8
  %element2 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %8, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %element2, i32 0, i32 1
  %9 = bitcast %struct.point* %p3 to i8*
  %10 = bitcast %struct.point* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 4, i1 false)
  %11 = load %struct.splay_node*, %struct.splay_node** %new_node, align 8
  ret %struct.splay_node* %11
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define %struct.splay_node* @init() #0 {
entry:
  ret %struct.splay_node* null
}

; Function Attrs: nounwind uwtable
define i8* @insert(%struct.splay_node** %root, i64 %p.coerce) #0 {
entry:
  %retval = alloca i8*, align 8
  %p = alloca %struct.point, align 8
  %root.addr = alloca %struct.splay_node**, align 8
  %temp = alloca %struct.splay_node*, align 8
  %0 = bitcast %struct.point* %p to i64*
  store i64 %p.coerce, i64* %0, align 8
  store %struct.splay_node** %root, %struct.splay_node*** %root.addr, align 8
  %1 = bitcast %struct.point* %p to i64*
  %2 = load i64, i64* %1, align 4
  %call = call %struct.splay_node* @create_node(i64 %2)
  store %struct.splay_node* %call, %struct.splay_node** %temp, align 8
  %3 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %4 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %cmp = icmp ne %struct.splay_node* %4, null
  br i1 %cmp, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %5 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %6 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %element = getelementptr inbounds %struct.splay_node, %struct.splay_node* %6, i32 0, i32 0
  %key = getelementptr inbounds %struct.splay_element, %struct.splay_element* %element, i32 0, i32 0
  %7 = load i64, i64* %key, align 8
  %call1 = call i8* @splay(%struct.splay_node** %5, i64 %7)
  %8 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %element2 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %8, i32 0, i32 0
  %key3 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %element2, i32 0, i32 0
  %9 = load i64, i64* %key3, align 8
  %10 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %11 = load %struct.splay_node*, %struct.splay_node** %10, align 8
  %element4 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %11, i32 0, i32 0
  %key5 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %element4, i32 0, i32 0
  %12 = load i64, i64* %key5, align 8
  %cmp6 = icmp eq i64 %9, %12
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %13 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %14 = load %struct.splay_node*, %struct.splay_node** %13, align 8
  %element8 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %14, i32 0, i32 0
  %key9 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %element8, i32 0, i32 0
  %15 = load i64, i64* %key9, align 8
  %16 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %element10 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %16, i32 0, i32 0
  %key11 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %element10, i32 0, i32 0
  %17 = load i64, i64* %key11, align 8
  %cmp12 = icmp sgt i64 %15, %17
  br i1 %cmp12, label %if.then.13, label %if.else.20

if.then.13:                                       ; preds = %if.else
  %18 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %19 = load %struct.splay_node*, %struct.splay_node** %18, align 8
  %left = getelementptr inbounds %struct.splay_node, %struct.splay_node* %19, i32 0, i32 2
  %20 = load %struct.splay_node*, %struct.splay_node** %left, align 8
  %21 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %left14 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %21, i32 0, i32 2
  store %struct.splay_node* %20, %struct.splay_node** %left14, align 8
  %22 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %left15 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %22, i32 0, i32 2
  %23 = load %struct.splay_node*, %struct.splay_node** %left15, align 8
  %cmp16 = icmp ne %struct.splay_node* %23, null
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.13
  %24 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %25 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %left18 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %25, i32 0, i32 2
  %26 = load %struct.splay_node*, %struct.splay_node** %left18, align 8
  %father = getelementptr inbounds %struct.splay_node, %struct.splay_node* %26, i32 0, i32 1
  store %struct.splay_node* %24, %struct.splay_node** %father, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.13
  %27 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %28 = load %struct.splay_node*, %struct.splay_node** %27, align 8
  %29 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %right = getelementptr inbounds %struct.splay_node, %struct.splay_node* %29, i32 0, i32 3
  store %struct.splay_node* %28, %struct.splay_node** %right, align 8
  %30 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %31 = load %struct.splay_node*, %struct.splay_node** %30, align 8
  %left19 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %31, i32 0, i32 2
  store %struct.splay_node* null, %struct.splay_node** %left19, align 8
  br label %if.end.31

if.else.20:                                       ; preds = %if.else
  %32 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %33 = load %struct.splay_node*, %struct.splay_node** %32, align 8
  %right21 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %33, i32 0, i32 3
  %34 = load %struct.splay_node*, %struct.splay_node** %right21, align 8
  %35 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %right22 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %35, i32 0, i32 3
  store %struct.splay_node* %34, %struct.splay_node** %right22, align 8
  %36 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %right23 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %36, i32 0, i32 3
  %37 = load %struct.splay_node*, %struct.splay_node** %right23, align 8
  %cmp24 = icmp ne %struct.splay_node* %37, null
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.else.20
  %38 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %39 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %right26 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %39, i32 0, i32 3
  %40 = load %struct.splay_node*, %struct.splay_node** %right26, align 8
  %father27 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %40, i32 0, i32 1
  store %struct.splay_node* %38, %struct.splay_node** %father27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.else.20
  %41 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %42 = load %struct.splay_node*, %struct.splay_node** %41, align 8
  %43 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %left29 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %43, i32 0, i32 2
  store %struct.splay_node* %42, %struct.splay_node** %left29, align 8
  %44 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %45 = load %struct.splay_node*, %struct.splay_node** %44, align 8
  %right30 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %45, i32 0, i32 3
  store %struct.splay_node* null, %struct.splay_node** %right30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.28, %if.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  %46 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %47 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %48 = load %struct.splay_node*, %struct.splay_node** %47, align 8
  %father33 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %48, i32 0, i32 1
  store %struct.splay_node* %46, %struct.splay_node** %father33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.32, %entry
  %49 = load %struct.splay_node*, %struct.splay_node** %temp, align 8
  %50 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  store %struct.splay_node* %49, %struct.splay_node** %50, align 8
  br label %return

return:                                           ; preds = %if.end.34, %if.then.7
  %51 = load i8*, i8** %retval
  ret i8* %51
}

; Function Attrs: nounwind uwtable
define i64 @delete_min(%struct.splay_node** %root) #0 {
entry:
  %retval = alloca %struct.point, align 4
  %root.addr = alloca %struct.splay_node**, align 8
  %min_elm = alloca %struct.splay_element, align 8
  %min_node = alloca %struct.splay_node*, align 8
  store %struct.splay_node** %root, %struct.splay_node*** %root.addr, align 8
  %0 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %1 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %cmp = icmp ne %struct.splay_node* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %call = call i8* @splay(%struct.splay_node** %2, i64 -1)
  %3 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %4 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %element = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i32 0, i32 0
  %5 = bitcast %struct.splay_element* %min_elm to i8*
  %6 = bitcast %struct.splay_element* %element to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %8 = load %struct.splay_node*, %struct.splay_node** %7, align 8
  store %struct.splay_node* %8, %struct.splay_node** %min_node, align 8
  %9 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %10 = load %struct.splay_node*, %struct.splay_node** %9, align 8
  %right = getelementptr inbounds %struct.splay_node, %struct.splay_node* %10, i32 0, i32 3
  %11 = load %struct.splay_node*, %struct.splay_node** %right, align 8
  %12 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  store %struct.splay_node* %11, %struct.splay_node** %12, align 8
  %13 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %14 = load %struct.splay_node*, %struct.splay_node** %13, align 8
  %tobool = icmp ne %struct.splay_node* %14, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %15 = load %struct.splay_node**, %struct.splay_node*** %root.addr, align 8
  %16 = load %struct.splay_node*, %struct.splay_node** %15, align 8
  %father = getelementptr inbounds %struct.splay_node, %struct.splay_node* %16, i32 0, i32 1
  store %struct.splay_node* null, %struct.splay_node** %father, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %17 = load %struct.splay_node*, %struct.splay_node** %min_node, align 8
  %18 = bitcast %struct.splay_node* %17 to i8*
  call void @free(i8* %18) #4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  %p = getelementptr inbounds %struct.splay_element, %struct.splay_element* %min_elm, i32 0, i32 1
  %19 = bitcast %struct.point* %retval to i8*
  %20 = bitcast %struct.point* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 4, i1 false)
  br label %return

if.end.3:                                         ; preds = %if.end
  %p4 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %min_elm, i32 0, i32 1
  %21 = bitcast %struct.point* %retval to i8*
  %22 = bitcast %struct.point* %p4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 8, i32 4, i1 false)
  br label %return

return:                                           ; preds = %if.end.3, %if.else
  %23 = bitcast %struct.point* %retval to i64*
  %24 = load i64, i64* %23, align 4
  ret i64 %24
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
