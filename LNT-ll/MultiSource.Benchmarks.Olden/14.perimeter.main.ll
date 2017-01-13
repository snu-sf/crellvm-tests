; ModuleID = './MultiSource.Benchmarks.Olden/14.perimeter.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quad_struct = type { i32, i32, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct* }

@.str = private unnamed_addr constant [43 x i8] c"Perimeter with %d levels on %d processors\0A\00", align 1
@NumNodes = external global i32, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"# of leaves is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"perimeter is %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @CountTree(%struct.quad_struct* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct.quad_struct*, align 8
  %nw = alloca %struct.quad_struct*, align 8
  %ne = alloca %struct.quad_struct*, align 8
  %sw = alloca %struct.quad_struct*, align 8
  %se = alloca %struct.quad_struct*, align 8
  store %struct.quad_struct* %tree, %struct.quad_struct** %tree.addr, align 8
  %0 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %nw1 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %0, i32 0, i32 2
  %1 = load %struct.quad_struct*, %struct.quad_struct** %nw1, align 8
  store %struct.quad_struct* %1, %struct.quad_struct** %nw, align 8
  %2 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %ne2 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %2, i32 0, i32 3
  %3 = load %struct.quad_struct*, %struct.quad_struct** %ne2, align 8
  store %struct.quad_struct* %3, %struct.quad_struct** %ne, align 8
  %4 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %sw3 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %4, i32 0, i32 4
  %5 = load %struct.quad_struct*, %struct.quad_struct** %sw3, align 8
  store %struct.quad_struct* %5, %struct.quad_struct** %sw, align 8
  %6 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %se4 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %6, i32 0, i32 5
  %7 = load %struct.quad_struct*, %struct.quad_struct** %se4, align 8
  store %struct.quad_struct* %7, %struct.quad_struct** %se, align 8
  %8 = load %struct.quad_struct*, %struct.quad_struct** %nw, align 8
  %cmp = icmp eq %struct.quad_struct* %8, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.quad_struct*, %struct.quad_struct** %ne, align 8
  %cmp5 = icmp eq %struct.quad_struct* %9, null
  br i1 %cmp5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %10 = load %struct.quad_struct*, %struct.quad_struct** %sw, align 8
  %cmp7 = icmp eq %struct.quad_struct* %10, null
  br i1 %cmp7, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %11 = load %struct.quad_struct*, %struct.quad_struct** %se, align 8
  %cmp9 = icmp eq %struct.quad_struct* %11, null
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.8
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true, %entry
  %12 = load %struct.quad_struct*, %struct.quad_struct** %nw, align 8
  %call = call i32 @CountTree(%struct.quad_struct* %12)
  %13 = load %struct.quad_struct*, %struct.quad_struct** %ne, align 8
  %call10 = call i32 @CountTree(%struct.quad_struct* %13)
  %add = add nsw i32 %call, %call10
  %14 = load %struct.quad_struct*, %struct.quad_struct** %sw, align 8
  %call11 = call i32 @CountTree(%struct.quad_struct* %14)
  %add12 = add nsw i32 %add, %call11
  %15 = load %struct.quad_struct*, %struct.quad_struct** %se, align 8
  %call13 = call i32 @CountTree(%struct.quad_struct* %15)
  %add14 = add nsw i32 %add12, %call13
  store i32 %add14, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @perimeter(%struct.quad_struct* %tree, i32 %size) #0 {
entry:
  %tree.addr = alloca %struct.quad_struct*, align 8
  %size.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %neighbor = alloca %struct.quad_struct*, align 8
  %child = alloca %struct.quad_struct*, align 8
  store %struct.quad_struct* %tree, %struct.quad_struct** %tree.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %retval1, align 4
  %0 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %color = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %sw = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %2, i32 0, i32 4
  %3 = load %struct.quad_struct*, %struct.quad_struct** %sw, align 8
  store %struct.quad_struct* %3, %struct.quad_struct** %child, align 8
  %4 = load %struct.quad_struct*, %struct.quad_struct** %child, align 8
  %5 = load i32, i32* %size.addr, align 4
  %div = sdiv i32 %5, 2
  %call = call i32 @perimeter(%struct.quad_struct* %4, i32 %div)
  %6 = load i32, i32* %retval1, align 4
  %add = add nsw i32 %6, %call
  store i32 %add, i32* %retval1, align 4
  %7 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %se = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %7, i32 0, i32 5
  %8 = load %struct.quad_struct*, %struct.quad_struct** %se, align 8
  store %struct.quad_struct* %8, %struct.quad_struct** %child, align 8
  %9 = load %struct.quad_struct*, %struct.quad_struct** %child, align 8
  %10 = load i32, i32* %size.addr, align 4
  %div2 = sdiv i32 %10, 2
  %call3 = call i32 @perimeter(%struct.quad_struct* %9, i32 %div2)
  %11 = load i32, i32* %retval1, align 4
  %add4 = add nsw i32 %11, %call3
  store i32 %add4, i32* %retval1, align 4
  %12 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %ne = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %12, i32 0, i32 3
  %13 = load %struct.quad_struct*, %struct.quad_struct** %ne, align 8
  store %struct.quad_struct* %13, %struct.quad_struct** %child, align 8
  %14 = load %struct.quad_struct*, %struct.quad_struct** %child, align 8
  %15 = load i32, i32* %size.addr, align 4
  %div5 = sdiv i32 %15, 2
  %call6 = call i32 @perimeter(%struct.quad_struct* %14, i32 %div5)
  %16 = load i32, i32* %retval1, align 4
  %add7 = add nsw i32 %16, %call6
  store i32 %add7, i32* %retval1, align 4
  %17 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %nw = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %17, i32 0, i32 2
  %18 = load %struct.quad_struct*, %struct.quad_struct** %nw, align 8
  store %struct.quad_struct* %18, %struct.quad_struct** %child, align 8
  %19 = load %struct.quad_struct*, %struct.quad_struct** %child, align 8
  %20 = load i32, i32* %size.addr, align 4
  %div8 = sdiv i32 %20, 2
  %call9 = call i32 @perimeter(%struct.quad_struct* %19, i32 %div8)
  %21 = load i32, i32* %retval1, align 4
  %add10 = add nsw i32 %21, %call9
  store i32 %add10, i32* %retval1, align 4
  br label %if.end.73

if.else:                                          ; preds = %entry
  %22 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %color11 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %22, i32 0, i32 0
  %23 = load i32, i32* %color11, align 4
  %cmp12 = icmp eq i32 %23, 0
  br i1 %cmp12, label %if.then.13, label %if.end.72

if.then.13:                                       ; preds = %if.else
  %24 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %call14 = call %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %24, i32 0)
  store %struct.quad_struct* %call14, %struct.quad_struct** %neighbor, align 8
  %25 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %cmp15 = icmp eq %struct.quad_struct* %25, null
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.13
  %26 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %color16 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %26, i32 0, i32 0
  %27 = load i32, i32* %color16, align 4
  %cmp17 = icmp eq i32 %27, 1
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %lor.lhs.false, %if.then.13
  %28 = load i32, i32* %size.addr, align 4
  %29 = load i32, i32* %retval1, align 4
  %add19 = add nsw i32 %29, %28
  store i32 %add19, i32* %retval1, align 4
  br label %if.end.26

if.else.20:                                       ; preds = %lor.lhs.false
  %30 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %color21 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %30, i32 0, i32 0
  %31 = load i32, i32* %color21, align 4
  %cmp22 = icmp eq i32 %31, 2
  br i1 %cmp22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.else.20
  %32 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %33 = load i32, i32* %size.addr, align 4
  %call24 = call i32 @sum_adjacent(%struct.quad_struct* %32, i32 3, i32 2, i32 %33)
  %34 = load i32, i32* %retval1, align 4
  %add25 = add nsw i32 %34, %call24
  store i32 %add25, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.else.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then.18
  %35 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %call27 = call %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %35, i32 1)
  store %struct.quad_struct* %call27, %struct.quad_struct** %neighbor, align 8
  %36 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %cmp28 = icmp eq %struct.quad_struct* %36, null
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.end.26
  %37 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %color30 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %37, i32 0, i32 0
  %38 = load i32, i32* %color30, align 4
  %cmp31 = icmp eq i32 %38, 1
  br i1 %cmp31, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %lor.lhs.false.29, %if.end.26
  %39 = load i32, i32* %size.addr, align 4
  %40 = load i32, i32* %retval1, align 4
  %add33 = add nsw i32 %40, %39
  store i32 %add33, i32* %retval1, align 4
  br label %if.end.41

if.else.34:                                       ; preds = %lor.lhs.false.29
  %41 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %color35 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %41, i32 0, i32 0
  %42 = load i32, i32* %color35, align 4
  %cmp36 = icmp eq i32 %42, 2
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.else.34
  %43 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %44 = load i32, i32* %size.addr, align 4
  %call38 = call i32 @sum_adjacent(%struct.quad_struct* %43, i32 2, i32 0, i32 %44)
  %45 = load i32, i32* %retval1, align 4
  %add39 = add nsw i32 %45, %call38
  store i32 %add39, i32* %retval1, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.else.34
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.32
  %46 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %call42 = call %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %46, i32 2)
  store %struct.quad_struct* %call42, %struct.quad_struct** %neighbor, align 8
  %47 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %cmp43 = icmp eq %struct.quad_struct* %47, null
  br i1 %cmp43, label %if.then.47, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end.41
  %48 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %color45 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %48, i32 0, i32 0
  %49 = load i32, i32* %color45, align 4
  %cmp46 = icmp eq i32 %49, 1
  br i1 %cmp46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %lor.lhs.false.44, %if.end.41
  %50 = load i32, i32* %size.addr, align 4
  %51 = load i32, i32* %retval1, align 4
  %add48 = add nsw i32 %51, %50
  store i32 %add48, i32* %retval1, align 4
  br label %if.end.56

if.else.49:                                       ; preds = %lor.lhs.false.44
  %52 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %color50 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %52, i32 0, i32 0
  %53 = load i32, i32* %color50, align 4
  %cmp51 = icmp eq i32 %53, 2
  br i1 %cmp51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.else.49
  %54 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %55 = load i32, i32* %size.addr, align 4
  %call53 = call i32 @sum_adjacent(%struct.quad_struct* %54, i32 0, i32 1, i32 %55)
  %56 = load i32, i32* %retval1, align 4
  %add54 = add nsw i32 %56, %call53
  store i32 %add54, i32* %retval1, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.else.49
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.47
  %57 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %call57 = call %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %57, i32 3)
  store %struct.quad_struct* %call57, %struct.quad_struct** %neighbor, align 8
  %58 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %cmp58 = icmp eq %struct.quad_struct* %58, null
  br i1 %cmp58, label %if.then.62, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.end.56
  %59 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %color60 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %59, i32 0, i32 0
  %60 = load i32, i32* %color60, align 4
  %cmp61 = icmp eq i32 %60, 1
  br i1 %cmp61, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %lor.lhs.false.59, %if.end.56
  %61 = load i32, i32* %size.addr, align 4
  %62 = load i32, i32* %retval1, align 4
  %add63 = add nsw i32 %62, %61
  store i32 %add63, i32* %retval1, align 4
  br label %if.end.71

if.else.64:                                       ; preds = %lor.lhs.false.59
  %63 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %color65 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %63, i32 0, i32 0
  %64 = load i32, i32* %color65, align 4
  %cmp66 = icmp eq i32 %64, 2
  br i1 %cmp66, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.else.64
  %65 = load %struct.quad_struct*, %struct.quad_struct** %neighbor, align 8
  %66 = load i32, i32* %size.addr, align 4
  %call68 = call i32 @sum_adjacent(%struct.quad_struct* %65, i32 1, i32 3, i32 %66)
  %67 = load i32, i32* %retval1, align 4
  %add69 = add nsw i32 %67, %call68
  store i32 %add69, i32* %retval1, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %if.else.64
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.62
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.else
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then
  %68 = load i32, i32* %retval1, align 4
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %tree, i32 %d) #0 {
entry:
  %retval = alloca %struct.quad_struct*, align 8
  %tree.addr = alloca %struct.quad_struct*, align 8
  %d.addr = alloca i32, align 4
  %q = alloca %struct.quad_struct*, align 8
  %parent = alloca %struct.quad_struct*, align 8
  %ct = alloca i32, align 4
  store %struct.quad_struct* %tree, %struct.quad_struct** %tree.addr, align 8
  store i32 %d, i32* %d.addr, align 4
  %0 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %parent1 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %0, i32 0, i32 6
  %1 = load %struct.quad_struct*, %struct.quad_struct** %parent1, align 8
  store %struct.quad_struct* %1, %struct.quad_struct** %parent, align 8
  %2 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %childtype = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %childtype, align 4
  store i32 %3, i32* %ct, align 4
  %4 = load %struct.quad_struct*, %struct.quad_struct** %parent, align 8
  %cmp = icmp ne %struct.quad_struct* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %d.addr, align 4
  %6 = load i32, i32* %ct, align 4
  %call = call i32 @adj(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.quad_struct*, %struct.quad_struct** %parent, align 8
  %8 = load i32, i32* %d.addr, align 4
  %call2 = call %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %7, i32 %8)
  store %struct.quad_struct* %call2, %struct.quad_struct** %q, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct.quad_struct*, %struct.quad_struct** %parent, align 8
  store %struct.quad_struct* %9, %struct.quad_struct** %q, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.quad_struct*, %struct.quad_struct** %q, align 8
  %tobool3 = icmp ne %struct.quad_struct* %10, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.else.9

land.lhs.true.4:                                  ; preds = %if.end
  %11 = load %struct.quad_struct*, %struct.quad_struct** %q, align 8
  %color = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %11, i32 0, i32 0
  %12 = load i32, i32* %color, align 4
  %cmp5 = icmp eq i32 %12, 2
  br i1 %cmp5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %land.lhs.true.4
  %13 = load %struct.quad_struct*, %struct.quad_struct** %q, align 8
  %14 = load i32, i32* %d.addr, align 4
  %15 = load i32, i32* %ct, align 4
  %call7 = call i32 @reflect(i32 %14, i32 %15)
  %call8 = call %struct.quad_struct* @child(%struct.quad_struct* %13, i32 %call7)
  store %struct.quad_struct* %call8, %struct.quad_struct** %retval
  br label %return

if.else.9:                                        ; preds = %land.lhs.true.4, %if.end
  %16 = load %struct.quad_struct*, %struct.quad_struct** %q, align 8
  store %struct.quad_struct* %16, %struct.quad_struct** %retval
  br label %return

return:                                           ; preds = %if.else.9, %if.then.6
  %17 = load %struct.quad_struct*, %struct.quad_struct** %retval
  ret %struct.quad_struct* %17
}

; Function Attrs: nounwind uwtable
define internal i32 @sum_adjacent(%struct.quad_struct* %p, i32 %q1, i32 %q2, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.quad_struct*, align 8
  %q1.addr = alloca i32, align 4
  %q2.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store %struct.quad_struct* %p, %struct.quad_struct** %p.addr, align 8
  store i32 %q1, i32* %q1.addr, align 4
  store i32 %q2, i32* %q2.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.quad_struct*, %struct.quad_struct** %p.addr, align 8
  %color = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.quad_struct*, %struct.quad_struct** %p.addr, align 8
  %3 = load i32, i32* %q1.addr, align 4
  %call = call %struct.quad_struct* @child(%struct.quad_struct* %2, i32 %3)
  %4 = load i32, i32* %q1.addr, align 4
  %5 = load i32, i32* %q2.addr, align 4
  %6 = load i32, i32* %size.addr, align 4
  %div = sdiv i32 %6, 2
  %call1 = call i32 @sum_adjacent(%struct.quad_struct* %call, i32 %4, i32 %5, i32 %div)
  %7 = load %struct.quad_struct*, %struct.quad_struct** %p.addr, align 8
  %8 = load i32, i32* %q2.addr, align 4
  %call2 = call %struct.quad_struct* @child(%struct.quad_struct* %7, i32 %8)
  %9 = load i32, i32* %q1.addr, align 4
  %10 = load i32, i32* %q2.addr, align 4
  %11 = load i32, i32* %size.addr, align 4
  %div3 = sdiv i32 %11, 2
  %call4 = call i32 @sum_adjacent(%struct.quad_struct* %call2, i32 %9, i32 %10, i32 %div3)
  %add = add nsw i32 %call1, %call4
  store i32 %add, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %12 = load %struct.quad_struct*, %struct.quad_struct** %p.addr, align 8
  %color5 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %12, i32 0, i32 0
  %13 = load i32, i32* %color5, align 4
  %cmp6 = icmp eq i32 %13, 1
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  %14 = load i32, i32* %size.addr, align 4
  store i32 %14, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.8, %if.then.7, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %tree = alloca %struct.quad_struct*, align 8
  %count = alloca i32, align 4
  %level = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @dealwithargs(i32 %0, i8** %1)
  store i32 %call, i32* %level, align 4
  %2 = load i32, i32* %level, align 4
  %3 = load i32, i32* @NumNodes, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i32 %2, i32 %3)
  %4 = load i32, i32* @NumNodes, align 4
  %sub = sub nsw i32 %4, 1
  %5 = load i32, i32* %level, align 4
  %call2 = call %struct.quad_struct* @MakeTree(i32 2097152, i32 0, i32 0, i32 0, i32 %sub, %struct.quad_struct* null, i32 3, i32 %5)
  store %struct.quad_struct* %call2, %struct.quad_struct** %tree, align 8
  %6 = load %struct.quad_struct*, %struct.quad_struct** %tree, align 8
  %call3 = call i32 @CountTree(%struct.quad_struct* %6)
  store i32 %call3, i32* %count, align 4
  %7 = load i32, i32* %count, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 %7)
  %8 = load %struct.quad_struct*, %struct.quad_struct** %tree, align 8
  %call5 = call i32 @perimeter(%struct.quad_struct* %8, i32 4096)
  store i32 %call5, i32* %count, align 4
  %9 = load i32, i32* %count, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 %9)
  call void @exit(i32 0) #3
  unreachable

return:                                           ; No predecessors!
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @dealwithargs(i32, i8**) #1

declare i32 @printf(i8*, ...) #1

declare %struct.quad_struct* @MakeTree(i32, i32, i32, i32, i32, %struct.quad_struct*, i32, i32) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @adj(i32 %d, i32 %ct) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %ct.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  store i32 %ct, i32* %ct.addr, align 4
  %0 = load i32, i32* %d.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.2
    i32 1, label %sw.bb.8
    i32 3, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %ct.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb
  %2 = load i32, i32* %ct.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb
  %3 = phi i1 [ true, %sw.bb ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  store i32 %lor.ext, i32* %retval
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load i32, i32* %ct.addr, align 4
  %cmp3 = icmp eq i32 %4, 3
  br i1 %cmp3, label %lor.end.6, label %lor.rhs.4

lor.rhs.4:                                        ; preds = %sw.bb.2
  %5 = load i32, i32* %ct.addr, align 4
  %cmp5 = icmp eq i32 %5, 2
  br label %lor.end.6

lor.end.6:                                        ; preds = %lor.rhs.4, %sw.bb.2
  %6 = phi i1 [ true, %sw.bb.2 ], [ %cmp5, %lor.rhs.4 ]
  %lor.ext7 = zext i1 %6 to i32
  store i32 %lor.ext7, i32* %retval
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %7 = load i32, i32* %ct.addr, align 4
  %cmp9 = icmp eq i32 %7, 1
  br i1 %cmp9, label %lor.end.12, label %lor.rhs.10

lor.rhs.10:                                       ; preds = %sw.bb.8
  %8 = load i32, i32* %ct.addr, align 4
  %cmp11 = icmp eq i32 %8, 3
  br label %lor.end.12

lor.end.12:                                       ; preds = %lor.rhs.10, %sw.bb.8
  %9 = phi i1 [ true, %sw.bb.8 ], [ %cmp11, %lor.rhs.10 ]
  %lor.ext13 = zext i1 %9 to i32
  store i32 %lor.ext13, i32* %retval
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %10 = load i32, i32* %ct.addr, align 4
  %cmp15 = icmp eq i32 %10, 2
  br i1 %cmp15, label %lor.end.18, label %lor.rhs.16

lor.rhs.16:                                       ; preds = %sw.bb.14
  %11 = load i32, i32* %ct.addr, align 4
  %cmp17 = icmp eq i32 %11, 0
  br label %lor.end.18

lor.end.18:                                       ; preds = %lor.rhs.16, %sw.bb.14
  %12 = phi i1 [ true, %sw.bb.14 ], [ %cmp17, %lor.rhs.16 ]
  %lor.ext19 = zext i1 %12 to i32
  store i32 %lor.ext19, i32* %retval
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.end, %lor.end.6, %lor.end.12, %lor.end.18, %entry
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal %struct.quad_struct* @child(%struct.quad_struct* %tree, i32 %ct) #0 {
entry:
  %retval = alloca %struct.quad_struct*, align 8
  %tree.addr = alloca %struct.quad_struct*, align 8
  %ct.addr = alloca i32, align 4
  store %struct.quad_struct* %tree, %struct.quad_struct** %tree.addr, align 8
  store i32 %ct, i32* %ct.addr, align 4
  %0 = load i32, i32* %ct.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %ne = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %1, i32 0, i32 3
  %2 = load %struct.quad_struct*, %struct.quad_struct** %ne, align 8
  store %struct.quad_struct* %2, %struct.quad_struct** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %nw = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %3, i32 0, i32 2
  %4 = load %struct.quad_struct*, %struct.quad_struct** %nw, align 8
  store %struct.quad_struct* %4, %struct.quad_struct** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %se = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %5, i32 0, i32 5
  %6 = load %struct.quad_struct*, %struct.quad_struct** %se, align 8
  store %struct.quad_struct* %6, %struct.quad_struct** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct.quad_struct*, %struct.quad_struct** %tree.addr, align 8
  %sw = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %7, i32 0, i32 4
  %8 = load %struct.quad_struct*, %struct.quad_struct** %sw, align 8
  store %struct.quad_struct* %8, %struct.quad_struct** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.quad_struct* null, %struct.quad_struct** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %9 = load %struct.quad_struct*, %struct.quad_struct** %retval
  ret %struct.quad_struct* %9
}

; Function Attrs: nounwind uwtable
define internal i32 @reflect(i32 %d, i32 %ct) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %ct.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  store i32 %ct, i32* %ct.addr, align 4
  %0 = load i32, i32* %d.addr, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %d.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %ct.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.then
  store i32 1, i32* %retval
  br label %sw.epilog.9

sw.bb.2:                                          ; preds = %if.then
  store i32 0, i32* %retval
  br label %sw.epilog.9

sw.bb.3:                                          ; preds = %if.then
  store i32 2, i32* %retval
  br label %sw.epilog.9

sw.bb.4:                                          ; preds = %if.then
  store i32 3, i32* %retval
  br label %sw.epilog.9

sw.epilog:                                        ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %lor.lhs.false
  %3 = load i32, i32* %ct.addr, align 4
  switch i32 %3, label %sw.epilog.9 [
    i32 0, label %sw.bb.5
    i32 1, label %sw.bb.6
    i32 3, label %sw.bb.7
    i32 2, label %sw.bb.8
  ]

sw.bb.5:                                          ; preds = %if.end
  store i32 2, i32* %retval
  br label %sw.epilog.9

sw.bb.6:                                          ; preds = %if.end
  store i32 3, i32* %retval
  br label %sw.epilog.9

sw.bb.7:                                          ; preds = %if.end
  store i32 1, i32* %retval
  br label %sw.epilog.9

sw.bb.8:                                          ; preds = %if.end
  store i32 0, i32* %retval
  br label %sw.epilog.9

sw.epilog.9:                                      ; preds = %sw.bb, %sw.bb.2, %sw.bb.3, %sw.bb.4, %sw.bb.5, %sw.bb.6, %sw.bb.7, %sw.bb.8, %if.end
  %4 = load i32, i32* %retval
  ret i32 %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
