; ModuleID = './MultiSource.Benchmarks.McCat/25.09-vor.splay2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHsplay_node = type { %struct.CHsplay_element, %struct.CHsplay_node*, %struct.CHsplay_node*, %struct.CHsplay_node* }
%struct.CHsplay_element = type { %struct.key, %struct.CHpoints* }
%struct.key = type { double, double, i32 }
%struct.CHpoints = type { i32, %struct.point, i32, %struct.CHpoints*, %struct.CHpoints* }
%struct.point = type { i32, i32 }
%struct.dpoint = type { double, double }

@.str = private unnamed_addr constant [26 x i8] c"(%d,%d)  key: (%f,%f,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't create node\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"No elements in tree! [CHdelete_max]\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"No elements in tree! [CHdelete]\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* %root, %struct.key* byval align 8 %key) #0 {
entry:
  %retval = alloca %struct.CHsplay_node*, align 8
  %root.addr = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node* %root, %struct.CHsplay_node** %root.addr, align 8
  %0 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i32 0, i32 0
  %key1 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element, i32 0, i32 0
  %radius = getelementptr inbounds %struct.key, %struct.key* %key1, i32 0, i32 0
  %1 = load double, double* %radius, align 8
  %radius2 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 0
  %2 = load double, double* %radius2, align 8
  %cmp = fcmp olt double %1, %2
  br i1 %cmp, label %land.lhs.true.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element3 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i32 0, i32 0
  %key4 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element3, i32 0, i32 0
  %radius5 = getelementptr inbounds %struct.key, %struct.key* %key4, i32 0, i32 0
  %4 = load double, double* %radius5, align 8
  %radius6 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 0
  %5 = load double, double* %radius6, align 8
  %cmp7 = fcmp oeq double %4, %5
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false.12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element8 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i32 0, i32 0
  %key9 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element8, i32 0, i32 0
  %angle = getelementptr inbounds %struct.key, %struct.key* %key9, i32 0, i32 1
  %7 = load double, double* %angle, align 8
  %angle10 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 1
  %8 = load double, double* %angle10, align 8
  %cmp11 = fcmp ogt double %7, %8
  br i1 %cmp11, label %land.lhs.true.29, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element13 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %9, i32 0, i32 0
  %key14 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element13, i32 0, i32 0
  %radius15 = getelementptr inbounds %struct.key, %struct.key* %key14, i32 0, i32 0
  %10 = load double, double* %radius15, align 8
  %radius16 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 0
  %11 = load double, double* %radius16, align 8
  %cmp17 = fcmp oeq double %10, %11
  br i1 %cmp17, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %lor.lhs.false.12
  %12 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element19 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %12, i32 0, i32 0
  %key20 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element19, i32 0, i32 0
  %angle21 = getelementptr inbounds %struct.key, %struct.key* %key20, i32 0, i32 1
  %13 = load double, double* %angle21, align 8
  %angle22 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 1
  %14 = load double, double* %angle22, align 8
  %cmp23 = fcmp oeq double %13, %14
  br i1 %cmp23, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %land.lhs.true.18
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element25 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %15, i32 0, i32 0
  %key26 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element25, i32 0, i32 0
  %number = getelementptr inbounds %struct.key, %struct.key* %key26, i32 0, i32 2
  %16 = load i32, i32* %number, align 4
  %number27 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 2
  %17 = load i32, i32* %number27, align 4
  %cmp28 = icmp slt i32 %16, %17
  br i1 %cmp28, label %land.lhs.true.29, label %if.else

land.lhs.true.29:                                 ; preds = %land.lhs.true.24, %land.lhs.true, %entry
  %18 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %right = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %18, i32 0, i32 3
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right, align 8
  %cmp30 = icmp ne %struct.CHsplay_node* %19, null
  br i1 %cmp30, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.29
  %20 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %right31 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %20, i32 0, i32 3
  %21 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right31, align 8
  %call = call %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* %21, %struct.key* byval align 8 %key)
  store %struct.CHsplay_node* %call, %struct.CHsplay_node** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.29, %land.lhs.true.24, %land.lhs.true.18, %lor.lhs.false.12
  %22 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element32 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %22, i32 0, i32 0
  %key33 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element32, i32 0, i32 0
  %radius34 = getelementptr inbounds %struct.key, %struct.key* %key33, i32 0, i32 0
  %23 = load double, double* %radius34, align 8
  %radius35 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 0
  %24 = load double, double* %radius35, align 8
  %cmp36 = fcmp ogt double %23, %24
  br i1 %cmp36, label %land.lhs.true.67, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.else
  %25 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element38 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %25, i32 0, i32 0
  %key39 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element38, i32 0, i32 0
  %radius40 = getelementptr inbounds %struct.key, %struct.key* %key39, i32 0, i32 0
  %26 = load double, double* %radius40, align 8
  %radius41 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 0
  %27 = load double, double* %radius41, align 8
  %cmp42 = fcmp oeq double %26, %27
  br i1 %cmp42, label %land.lhs.true.43, label %lor.lhs.false.49

land.lhs.true.43:                                 ; preds = %lor.lhs.false.37
  %28 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element44 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %28, i32 0, i32 0
  %key45 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element44, i32 0, i32 0
  %angle46 = getelementptr inbounds %struct.key, %struct.key* %key45, i32 0, i32 1
  %29 = load double, double* %angle46, align 8
  %angle47 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 1
  %30 = load double, double* %angle47, align 8
  %cmp48 = fcmp olt double %29, %30
  br i1 %cmp48, label %land.lhs.true.67, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %land.lhs.true.43, %lor.lhs.false.37
  %31 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element50 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %31, i32 0, i32 0
  %key51 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element50, i32 0, i32 0
  %radius52 = getelementptr inbounds %struct.key, %struct.key* %key51, i32 0, i32 0
  %32 = load double, double* %radius52, align 8
  %radius53 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 0
  %33 = load double, double* %radius53, align 8
  %cmp54 = fcmp oeq double %32, %33
  br i1 %cmp54, label %land.lhs.true.55, label %if.else.72

land.lhs.true.55:                                 ; preds = %lor.lhs.false.49
  %34 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element56 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %34, i32 0, i32 0
  %key57 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element56, i32 0, i32 0
  %angle58 = getelementptr inbounds %struct.key, %struct.key* %key57, i32 0, i32 1
  %35 = load double, double* %angle58, align 8
  %angle59 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 1
  %36 = load double, double* %angle59, align 8
  %cmp60 = fcmp oeq double %35, %36
  br i1 %cmp60, label %land.lhs.true.61, label %if.else.72

land.lhs.true.61:                                 ; preds = %land.lhs.true.55
  %37 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element62 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %37, i32 0, i32 0
  %key63 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element62, i32 0, i32 0
  %number64 = getelementptr inbounds %struct.key, %struct.key* %key63, i32 0, i32 2
  %38 = load i32, i32* %number64, align 4
  %number65 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 2
  %39 = load i32, i32* %number65, align 4
  %cmp66 = icmp sgt i32 %38, %39
  br i1 %cmp66, label %land.lhs.true.67, label %if.else.72

land.lhs.true.67:                                 ; preds = %land.lhs.true.61, %land.lhs.true.43, %if.else
  %40 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %left = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %40, i32 0, i32 2
  %41 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left, align 8
  %cmp68 = icmp ne %struct.CHsplay_node* %41, null
  br i1 %cmp68, label %if.then.69, label %if.else.72

if.then.69:                                       ; preds = %land.lhs.true.67
  %42 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %left70 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %42, i32 0, i32 2
  %43 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left70, align 8
  %call71 = call %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* %43, %struct.key* byval align 8 %key)
  store %struct.CHsplay_node* %call71, %struct.CHsplay_node** %retval
  br label %return

if.else.72:                                       ; preds = %land.lhs.true.67, %land.lhs.true.61, %land.lhs.true.55, %lor.lhs.false.49
  %44 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  store %struct.CHsplay_node* %44, %struct.CHsplay_node** %retval
  br label %return

return:                                           ; preds = %if.else.72, %if.then.69, %if.then
  %45 = load %struct.CHsplay_node*, %struct.CHsplay_node** %retval
  ret %struct.CHsplay_node* %45
}

; Function Attrs: nounwind uwtable
define %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %sn) #0 {
entry:
  %sn.addr = alloca %struct.CHsplay_node*, align 8
  %temp = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node* %sn, %struct.CHsplay_node** %sn.addr, align 8
  %0 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %father = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i32 0, i32 1
  %1 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father, align 8
  %left = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %1, i32 0, i32 2
  %2 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left, align 8
  %3 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %cmp = icmp eq %struct.CHsplay_node* %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %right = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i32 0, i32 3
  %5 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right, align 8
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %father1 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i32 0, i32 1
  %7 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father1, align 8
  %left2 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %7, i32 0, i32 2
  store %struct.CHsplay_node* %5, %struct.CHsplay_node** %left2, align 8
  %8 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %right3 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %8, i32 0, i32 3
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right3, align 8
  %cmp4 = icmp ne %struct.CHsplay_node* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %10 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %father6 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %10, i32 0, i32 1
  %11 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father6, align 8
  %12 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %right7 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %12, i32 0, i32 3
  %13 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right7, align 8
  %father8 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %13, i32 0, i32 1
  store %struct.CHsplay_node* %11, %struct.CHsplay_node** %father8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %14 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %father9 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %14, i32 0, i32 1
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father9, align 8
  %16 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %right10 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %16, i32 0, i32 3
  store %struct.CHsplay_node* %15, %struct.CHsplay_node** %right10, align 8
  br label %if.end.23

if.else:                                          ; preds = %entry
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %left11 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %17, i32 0, i32 2
  %18 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left11, align 8
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %father12 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %19, i32 0, i32 1
  %20 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father12, align 8
  %right13 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %20, i32 0, i32 3
  store %struct.CHsplay_node* %18, %struct.CHsplay_node** %right13, align 8
  %21 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %left14 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %21, i32 0, i32 2
  %22 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left14, align 8
  %cmp15 = icmp ne %struct.CHsplay_node* %22, null
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.else
  %23 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %father17 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %23, i32 0, i32 1
  %24 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father17, align 8
  %25 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %left18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %25, i32 0, i32 2
  %26 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left18, align 8
  %father19 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %26, i32 0, i32 1
  store %struct.CHsplay_node* %24, %struct.CHsplay_node** %father19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.else
  %27 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %father21 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %27, i32 0, i32 1
  %28 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father21, align 8
  %29 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %left22 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %29, i32 0, i32 2
  store %struct.CHsplay_node* %28, %struct.CHsplay_node** %left22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.20, %if.end
  %30 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %father24 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %30, i32 0, i32 1
  %31 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father24, align 8
  %father25 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %31, i32 0, i32 1
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father25, align 8
  store %struct.CHsplay_node* %32, %struct.CHsplay_node** %temp, align 8
  %33 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %34 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %father26 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %34, i32 0, i32 1
  %35 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father26, align 8
  %father27 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %35, i32 0, i32 1
  store %struct.CHsplay_node* %33, %struct.CHsplay_node** %father27, align 8
  %36 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %cmp28 = icmp ne %struct.CHsplay_node* %36, null
  br i1 %cmp28, label %if.then.29, label %if.end.38

if.then.29:                                       ; preds = %if.end.23
  %37 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %left30 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %37, i32 0, i32 2
  %38 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left30, align 8
  %39 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %father31 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %39, i32 0, i32 1
  %40 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father31, align 8
  %cmp32 = icmp eq %struct.CHsplay_node* %38, %40
  br i1 %cmp32, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.then.29
  %41 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %42 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %left34 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %42, i32 0, i32 2
  store %struct.CHsplay_node* %41, %struct.CHsplay_node** %left34, align 8
  br label %if.end.37

if.else.35:                                       ; preds = %if.then.29
  %43 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %44 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %right36 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %44, i32 0, i32 3
  store %struct.CHsplay_node* %43, %struct.CHsplay_node** %right36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.23
  %45 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %46 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  %father39 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %46, i32 0, i32 1
  store %struct.CHsplay_node* %45, %struct.CHsplay_node** %father39, align 8
  %47 = load %struct.CHsplay_node*, %struct.CHsplay_node** %sn.addr, align 8
  ret %struct.CHsplay_node* %47
}

; Function Attrs: nounwind uwtable
define i8* @CHsplay(%struct.CHsplay_node** %root, %struct.key* byval align 8 %key) #0 {
entry:
  %retval = alloca i8*, align 8
  %root.addr = alloca %struct.CHsplay_node**, align 8
  %temp = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node** %root, %struct.CHsplay_node*** %root.addr, align 8
  %0 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %1 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %call = call %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* %1, %struct.key* byval align 8 %key)
  store %struct.CHsplay_node* %call, %struct.CHsplay_node** %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %entry
  %2 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %father = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %2, i32 0, i32 1
  %3 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father, align 8
  %cmp = icmp ne %struct.CHsplay_node* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %father1 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i32 0, i32 1
  %5 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father1, align 8
  %father2 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %5, i32 0, i32 1
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father2, align 8
  %cmp3 = icmp eq %struct.CHsplay_node* %6, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %call4 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %7)
  store %struct.CHsplay_node* %call4, %struct.CHsplay_node** %temp, align 8
  br label %if.end.33

if.else:                                          ; preds = %while.body
  %8 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %father5 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %8, i32 0, i32 1
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father5, align 8
  %left = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %9, i32 0, i32 2
  %10 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left, align 8
  %11 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %cmp6 = icmp eq %struct.CHsplay_node* %10, %11
  br i1 %cmp6, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %father7 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %12, i32 0, i32 1
  %13 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father7, align 8
  %father8 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %13, i32 0, i32 1
  %14 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father8, align 8
  %left9 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %14, i32 0, i32 2
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left9, align 8
  %16 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %father10 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %16, i32 0, i32 1
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father10, align 8
  %cmp11 = icmp eq %struct.CHsplay_node* %15, %17
  br i1 %cmp11, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %land.lhs.true
  %18 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %father13 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %18, i32 0, i32 1
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father13, align 8
  %call14 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %19)
  %20 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %call15 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %20)
  store %struct.CHsplay_node* %call15, %struct.CHsplay_node** %temp, align 8
  br label %if.end.32

if.else.16:                                       ; preds = %land.lhs.true, %if.else
  %21 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %father17 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %21, i32 0, i32 1
  %22 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father17, align 8
  %right = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %22, i32 0, i32 3
  %23 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right, align 8
  %24 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %cmp18 = icmp eq %struct.CHsplay_node* %23, %24
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.29

land.lhs.true.19:                                 ; preds = %if.else.16
  %25 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %father20 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %25, i32 0, i32 1
  %26 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father20, align 8
  %father21 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %26, i32 0, i32 1
  %27 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father21, align 8
  %right22 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %27, i32 0, i32 3
  %28 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right22, align 8
  %29 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %father23 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %29, i32 0, i32 1
  %30 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father23, align 8
  %cmp24 = icmp eq %struct.CHsplay_node* %28, %30
  br i1 %cmp24, label %if.then.25, label %if.else.29

if.then.25:                                       ; preds = %land.lhs.true.19
  %31 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %father26 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %31, i32 0, i32 1
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %father26, align 8
  %call27 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %32)
  %33 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %call28 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %33)
  store %struct.CHsplay_node* %call28, %struct.CHsplay_node** %temp, align 8
  br label %if.end

if.else.29:                                       ; preds = %land.lhs.true.19, %if.else.16
  %34 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %call30 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %34)
  store %struct.CHsplay_node* %call30, %struct.CHsplay_node** %temp, align 8
  %35 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %call31 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %35)
  store %struct.CHsplay_node* %call31, %struct.CHsplay_node** %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.29, %if.then.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then.12
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %37 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  store %struct.CHsplay_node* %36, %struct.CHsplay_node** %37, align 8
  %38 = load i8*, i8** %retval
  ret i8* %38
}

; Function Attrs: nounwind uwtable
define void @CHtraverse(%struct.CHsplay_node* %root) #0 {
entry:
  %root.addr = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node* %root, %struct.CHsplay_node** %root.addr, align 8
  %0 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %cmp = icmp ne %struct.CHsplay_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %left = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %1, i32 0, i32 2
  %2 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left, align 8
  call void @CHtraverse(%struct.CHsplay_node* %2)
  %3 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i32 0, i32 0
  %point = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element, i32 0, i32 1
  %4 = load %struct.CHpoints*, %struct.CHpoints** %point, align 8
  %node = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %4, i32 0, i32 1
  %x = getelementptr inbounds %struct.point, %struct.point* %node, i32 0, i32 0
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element1 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i32 0, i32 0
  %point2 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element1, i32 0, i32 1
  %7 = load %struct.CHpoints*, %struct.CHpoints** %point2, align 8
  %node3 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %7, i32 0, i32 1
  %y = getelementptr inbounds %struct.point, %struct.point* %node3, i32 0, i32 1
  %8 = load i32, i32* %y, align 4
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element4 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %9, i32 0, i32 0
  %key = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element4, i32 0, i32 0
  %radius = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 0
  %10 = load double, double* %radius, align 8
  %11 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element5 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %11, i32 0, i32 0
  %key6 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element5, i32 0, i32 0
  %angle = getelementptr inbounds %struct.key, %struct.key* %key6, i32 0, i32 1
  %12 = load double, double* %angle, align 8
  %13 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %element7 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %13, i32 0, i32 0
  %key8 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element7, i32 0, i32 0
  %number = getelementptr inbounds %struct.key, %struct.key* %key8, i32 0, i32 2
  %14 = load i32, i32* %number, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %5, i32 %8, double %10, double %12, i32 %14)
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %right = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %15, i32 0, i32 3
  %16 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right, align 8
  call void @CHtraverse(%struct.CHsplay_node* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @CHfree_tree(%struct.CHsplay_node* %root) #0 {
entry:
  %root.addr = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node* %root, %struct.CHsplay_node** %root.addr, align 8
  %0 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %cmp = icmp ne %struct.CHsplay_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %left = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %1, i32 0, i32 2
  %2 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left, align 8
  call void @CHfree_tree(%struct.CHsplay_node* %2)
  %3 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %right = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i32 0, i32 3
  %4 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right, align 8
  call void @CHfree_tree(%struct.CHsplay_node* %4)
  %5 = load %struct.CHsplay_node*, %struct.CHsplay_node** %root.addr, align 8
  %6 = bitcast %struct.CHsplay_node* %5 to i8*
  call void @free(i8* %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.CHsplay_node* @CHcreate_node(%struct.CHpoints* %p) #0 {
entry:
  %p.addr = alloca %struct.CHpoints*, align 8
  %new_node = alloca %struct.CHsplay_node*, align 8
  %c = alloca %struct.dpoint, align 8
  %key = alloca %struct.key, align 8
  %coerce = alloca %struct.dpoint, align 8
  store %struct.CHpoints* %p, %struct.CHpoints** %p.addr, align 8
  %call = call noalias i8* @malloc(i64 56) #4
  %0 = bitcast i8* %call to %struct.CHsplay_node*
  store %struct.CHsplay_node* %0, %struct.CHsplay_node** %new_node, align 8
  %tobool = icmp ne %struct.CHsplay_node* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.CHsplay_node*, %struct.CHsplay_node** %new_node, align 8
  %left = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %1, i32 0, i32 2
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %left, align 8
  %2 = load %struct.CHsplay_node*, %struct.CHsplay_node** %new_node, align 8
  %right = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %2, i32 0, i32 3
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %right, align 8
  %3 = load %struct.CHsplay_node*, %struct.CHsplay_node** %new_node, align 8
  %father = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %father, align 8
  %4 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call2 = call %struct.CHpoints* @before(%struct.CHpoints* %4)
  %node = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call2, i32 0, i32 1
  %5 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %node3 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %5, i32 0, i32 1
  %6 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call4 = call %struct.CHpoints* @next(%struct.CHpoints* %6)
  %node5 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call4, i32 0, i32 1
  %7 = bitcast %struct.point* %node to i64*
  %8 = load i64, i64* %7, align 4
  %9 = bitcast %struct.point* %node3 to i64*
  %10 = load i64, i64* %9, align 4
  %11 = bitcast %struct.point* %node5 to i64*
  %12 = load i64, i64* %11, align 4
  %call6 = call { double, double } @centre(i64 %8, i64 %10, i64 %12)
  %13 = bitcast %struct.dpoint* %coerce to { double, double }*
  %14 = getelementptr { double, double }, { double, double }* %13, i32 0, i32 0
  %15 = extractvalue { double, double } %call6, 0
  store double %15, double* %14, align 8
  %16 = getelementptr { double, double }, { double, double }* %13, i32 0, i32 1
  %17 = extractvalue { double, double } %call6, 1
  store double %17, double* %16, align 8
  %18 = bitcast %struct.dpoint* %c to i8*
  %19 = bitcast %struct.dpoint* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  %20 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %node7 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 1
  %21 = bitcast %struct.point* %node7 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = bitcast %struct.dpoint* %c to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = load double, double* %24, align 1
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = load double, double* %26, align 1
  %call8 = call double @radius2(i64 %22, double %25, double %27)
  %radius = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 0
  store double %call8, double* %radius, align 8
  %28 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call9 = call %struct.CHpoints* @before(%struct.CHpoints* %28)
  %29 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %30 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call10 = call %struct.CHpoints* @next(%struct.CHpoints* %30)
  %call11 = call double @angle(%struct.CHpoints* %call9, %struct.CHpoints* %29, %struct.CHpoints* %call10)
  %angle = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 1
  store double %call11, double* %angle, align 8
  %31 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %number = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %31, i32 0, i32 0
  %32 = load i32, i32* %number, align 4
  %number12 = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 2
  store i32 %32, i32* %number12, align 4
  %33 = load %struct.CHsplay_node*, %struct.CHsplay_node** %new_node, align 8
  %element = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %33, i32 0, i32 0
  %key13 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element, i32 0, i32 0
  %34 = bitcast %struct.key* %key13 to i8*
  %35 = bitcast %struct.key* %key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 24, i32 8, i1 false)
  %36 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %37 = load %struct.CHsplay_node*, %struct.CHsplay_node** %new_node, align 8
  %element14 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %37, i32 0, i32 0
  %point = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element14, i32 0, i32 1
  store %struct.CHpoints* %36, %struct.CHpoints** %point, align 8
  %38 = load %struct.CHsplay_node*, %struct.CHsplay_node** %new_node, align 8
  ret %struct.CHsplay_node* %38
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare { double, double } @centre(i64, i64, i64) #1

declare %struct.CHpoints* @before(%struct.CHpoints*) #1

declare %struct.CHpoints* @next(%struct.CHpoints*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare double @radius2(i64, double, double) #1

declare double @angle(%struct.CHpoints*, %struct.CHpoints*, %struct.CHpoints*) #1

; Function Attrs: nounwind uwtable
define %struct.CHsplay_node* @CHinit() #0 {
entry:
  ret %struct.CHsplay_node* null
}

; Function Attrs: nounwind uwtable
define i8* @CHinsert(%struct.CHsplay_node** %root, %struct.CHpoints* %p) #0 {
entry:
  %retval = alloca i8*, align 8
  %root.addr = alloca %struct.CHsplay_node**, align 8
  %p.addr = alloca %struct.CHpoints*, align 8
  %temp = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node** %root, %struct.CHsplay_node*** %root.addr, align 8
  store %struct.CHpoints* %p, %struct.CHpoints** %p.addr, align 8
  %0 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call = call %struct.CHsplay_node* @CHcreate_node(%struct.CHpoints* %0)
  store %struct.CHsplay_node* %call, %struct.CHsplay_node** %temp, align 8
  %1 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %2 = load %struct.CHsplay_node*, %struct.CHsplay_node** %1, align 8
  %cmp = icmp ne %struct.CHsplay_node* %2, null
  br i1 %cmp, label %if.then, label %if.end.63

if.then:                                          ; preds = %entry
  %3 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %4 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %element = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i32 0, i32 0
  %key = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element, i32 0, i32 0
  %call1 = call i8* @CHsplay(%struct.CHsplay_node** %3, %struct.key* byval align 8 %key)
  %5 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %element2 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i32 0, i32 0
  %key3 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element2, i32 0, i32 0
  %radius = getelementptr inbounds %struct.key, %struct.key* %key3, i32 0, i32 0
  %7 = load double, double* %radius, align 8
  %8 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %element4 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %8, i32 0, i32 0
  %key5 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element4, i32 0, i32 0
  %radius6 = getelementptr inbounds %struct.key, %struct.key* %key5, i32 0, i32 0
  %9 = load double, double* %radius6, align 8
  %cmp7 = fcmp ogt double %7, %9
  br i1 %cmp7, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %10 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %11 = load %struct.CHsplay_node*, %struct.CHsplay_node** %10, align 8
  %element8 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %11, i32 0, i32 0
  %key9 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element8, i32 0, i32 0
  %radius10 = getelementptr inbounds %struct.key, %struct.key* %key9, i32 0, i32 0
  %12 = load double, double* %radius10, align 8
  %13 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %element11 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %13, i32 0, i32 0
  %key12 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element11, i32 0, i32 0
  %radius13 = getelementptr inbounds %struct.key, %struct.key* %key12, i32 0, i32 0
  %14 = load double, double* %radius13, align 8
  %cmp14 = fcmp oeq double %12, %14
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false.21

land.lhs.true:                                    ; preds = %lor.lhs.false
  %15 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %16 = load %struct.CHsplay_node*, %struct.CHsplay_node** %15, align 8
  %element15 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %16, i32 0, i32 0
  %key16 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element15, i32 0, i32 0
  %angle = getelementptr inbounds %struct.key, %struct.key* %key16, i32 0, i32 1
  %17 = load double, double* %angle, align 8
  %18 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %element17 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %18, i32 0, i32 0
  %key18 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element17, i32 0, i32 0
  %angle19 = getelementptr inbounds %struct.key, %struct.key* %key18, i32 0, i32 1
  %19 = load double, double* %angle19, align 8
  %cmp20 = fcmp olt double %17, %19
  br i1 %cmp20, label %if.then.44, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %20 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %21 = load %struct.CHsplay_node*, %struct.CHsplay_node** %20, align 8
  %element22 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %21, i32 0, i32 0
  %key23 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element22, i32 0, i32 0
  %radius24 = getelementptr inbounds %struct.key, %struct.key* %key23, i32 0, i32 0
  %22 = load double, double* %radius24, align 8
  %23 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %element25 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %23, i32 0, i32 0
  %key26 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element25, i32 0, i32 0
  %radius27 = getelementptr inbounds %struct.key, %struct.key* %key26, i32 0, i32 0
  %24 = load double, double* %radius27, align 8
  %cmp28 = fcmp oeq double %22, %24
  br i1 %cmp28, label %land.lhs.true.29, label %if.else

land.lhs.true.29:                                 ; preds = %lor.lhs.false.21
  %25 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %26 = load %struct.CHsplay_node*, %struct.CHsplay_node** %25, align 8
  %element30 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %26, i32 0, i32 0
  %key31 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element30, i32 0, i32 0
  %angle32 = getelementptr inbounds %struct.key, %struct.key* %key31, i32 0, i32 1
  %27 = load double, double* %angle32, align 8
  %28 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %element33 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %28, i32 0, i32 0
  %key34 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element33, i32 0, i32 0
  %angle35 = getelementptr inbounds %struct.key, %struct.key* %key34, i32 0, i32 1
  %29 = load double, double* %angle35, align 8
  %cmp36 = fcmp oeq double %27, %29
  br i1 %cmp36, label %land.lhs.true.37, label %if.else

land.lhs.true.37:                                 ; preds = %land.lhs.true.29
  %30 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %31 = load %struct.CHsplay_node*, %struct.CHsplay_node** %30, align 8
  %element38 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %31, i32 0, i32 0
  %key39 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element38, i32 0, i32 0
  %number = getelementptr inbounds %struct.key, %struct.key* %key39, i32 0, i32 2
  %32 = load i32, i32* %number, align 4
  %33 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %element40 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %33, i32 0, i32 0
  %key41 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %element40, i32 0, i32 0
  %number42 = getelementptr inbounds %struct.key, %struct.key* %key41, i32 0, i32 2
  %34 = load i32, i32* %number42, align 4
  %cmp43 = icmp sgt i32 %32, %34
  br i1 %cmp43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %land.lhs.true.37, %land.lhs.true, %if.then
  %35 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %36 = load %struct.CHsplay_node*, %struct.CHsplay_node** %35, align 8
  %left = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %36, i32 0, i32 2
  %37 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left, align 8
  %38 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %left45 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %38, i32 0, i32 2
  store %struct.CHsplay_node* %37, %struct.CHsplay_node** %left45, align 8
  %39 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %left46 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %39, i32 0, i32 2
  %40 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left46, align 8
  %cmp47 = icmp ne %struct.CHsplay_node* %40, null
  br i1 %cmp47, label %if.then.48, label %if.end

if.then.48:                                       ; preds = %if.then.44
  %41 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %42 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %left49 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %42, i32 0, i32 2
  %43 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left49, align 8
  %father = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %43, i32 0, i32 1
  store %struct.CHsplay_node* %41, %struct.CHsplay_node** %father, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.48, %if.then.44
  %44 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %45 = load %struct.CHsplay_node*, %struct.CHsplay_node** %44, align 8
  %46 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %right = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %46, i32 0, i32 3
  store %struct.CHsplay_node* %45, %struct.CHsplay_node** %right, align 8
  %47 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %48 = load %struct.CHsplay_node*, %struct.CHsplay_node** %47, align 8
  %left50 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %48, i32 0, i32 2
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %left50, align 8
  br label %if.end.61

if.else:                                          ; preds = %land.lhs.true.37, %land.lhs.true.29, %lor.lhs.false.21
  %49 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %50 = load %struct.CHsplay_node*, %struct.CHsplay_node** %49, align 8
  %right51 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %50, i32 0, i32 3
  %51 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right51, align 8
  %52 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %right52 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %52, i32 0, i32 3
  store %struct.CHsplay_node* %51, %struct.CHsplay_node** %right52, align 8
  %53 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %right53 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %53, i32 0, i32 3
  %54 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right53, align 8
  %cmp54 = icmp ne %struct.CHsplay_node* %54, null
  br i1 %cmp54, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.else
  %55 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %56 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %right56 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %56, i32 0, i32 3
  %57 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right56, align 8
  %father57 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %57, i32 0, i32 1
  store %struct.CHsplay_node* %55, %struct.CHsplay_node** %father57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.else
  %58 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %59 = load %struct.CHsplay_node*, %struct.CHsplay_node** %58, align 8
  %60 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %left59 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %60, i32 0, i32 2
  store %struct.CHsplay_node* %59, %struct.CHsplay_node** %left59, align 8
  %61 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %62 = load %struct.CHsplay_node*, %struct.CHsplay_node** %61, align 8
  %right60 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %62, i32 0, i32 3
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %right60, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.58, %if.end
  %63 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %64 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %65 = load %struct.CHsplay_node*, %struct.CHsplay_node** %64, align 8
  %father62 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %65, i32 0, i32 1
  store %struct.CHsplay_node* %63, %struct.CHsplay_node** %father62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.61, %entry
  %66 = load %struct.CHsplay_node*, %struct.CHsplay_node** %temp, align 8
  %67 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  store %struct.CHsplay_node* %66, %struct.CHsplay_node** %67, align 8
  %68 = load i8*, i8** %retval
  ret i8* %68
}

; Function Attrs: nounwind uwtable
define %struct.CHpoints* @CHdelete_max(%struct.CHsplay_node** %root) #0 {
entry:
  %retval = alloca %struct.CHpoints*, align 8
  %root.addr = alloca %struct.CHsplay_node**, align 8
  %max_elm = alloca %struct.CHsplay_element, align 8
  %max_node = alloca %struct.CHsplay_node*, align 8
  %key = alloca %struct.key, align 8
  store %struct.CHsplay_node** %root, %struct.CHsplay_node*** %root.addr, align 8
  %radius = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 0
  store double 0x47EFFFFFE0000000, double* %radius, align 8
  %angle = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 1
  store double 1.000000e+03, double* %angle, align 8
  %number = getelementptr inbounds %struct.key, %struct.key* %key, i32 0, i32 2
  store i32 1000, i32* %number, align 4
  %0 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %1 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %cmp = icmp ne %struct.CHsplay_node* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %call = call i8* @CHsplay(%struct.CHsplay_node** %2, %struct.key* byval align 8 %key)
  %3 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %4 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %element = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i32 0, i32 0
  %5 = bitcast %struct.CHsplay_element* %max_elm to i8*
  %6 = bitcast %struct.CHsplay_element* %element to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %8 = load %struct.CHsplay_node*, %struct.CHsplay_node** %7, align 8
  store %struct.CHsplay_node* %8, %struct.CHsplay_node** %max_node, align 8
  %9 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %10 = load %struct.CHsplay_node*, %struct.CHsplay_node** %9, align 8
  %left = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %10, i32 0, i32 2
  %11 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left, align 8
  %12 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  store %struct.CHsplay_node* %11, %struct.CHsplay_node** %12, align 8
  %13 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %14 = load %struct.CHsplay_node*, %struct.CHsplay_node** %13, align 8
  %tobool = icmp ne %struct.CHsplay_node* %14, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %15 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %16 = load %struct.CHsplay_node*, %struct.CHsplay_node** %15, align 8
  %father = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %16, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %father, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %max_node, align 8
  %18 = bitcast %struct.CHsplay_node* %17 to i8*
  call void @free(i8* %18) #4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  store %struct.CHpoints* null, %struct.CHpoints** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %point = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %max_elm, i32 0, i32 1
  %19 = load %struct.CHpoints*, %struct.CHpoints** %point, align 8
  store %struct.CHpoints* %19, %struct.CHpoints** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.else
  %20 = load %struct.CHpoints*, %struct.CHpoints** %retval
  ret %struct.CHpoints* %20
}

; Function Attrs: nounwind uwtable
define void @CHdelete(%struct.CHsplay_node** %root, %struct.key* byval align 8 %key) #0 {
entry:
  %root.addr = alloca %struct.CHsplay_node**, align 8
  %node = alloca %struct.CHsplay_node*, align 8
  %tmp1 = alloca %struct.CHsplay_node*, align 8
  %tmp2 = alloca %struct.CHsplay_node*, align 8
  %tmp_key = alloca %struct.key, align 8
  store %struct.CHsplay_node** %root, %struct.CHsplay_node*** %root.addr, align 8
  %0 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %1 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %cmp = icmp ne %struct.CHsplay_node* %1, null
  br i1 %cmp, label %if.then, label %if.else.27

if.then:                                          ; preds = %entry
  %2 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %call = call i8* @CHsplay(%struct.CHsplay_node** %2, %struct.key* byval align 8 %key)
  %3 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %4 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  store %struct.CHsplay_node* %4, %struct.CHsplay_node** %node, align 8
  %5 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %left = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i32 0, i32 2
  %7 = load %struct.CHsplay_node*, %struct.CHsplay_node** %left, align 8
  store %struct.CHsplay_node* %7, %struct.CHsplay_node** %tmp1, align 8
  %8 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %8, align 8
  %right = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %9, i32 0, i32 3
  %10 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right, align 8
  store %struct.CHsplay_node* %10, %struct.CHsplay_node** %tmp2, align 8
  %11 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp1, align 8
  %cmp1 = icmp eq %struct.CHsplay_node* %11, null
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp2, align 8
  %cmp2 = icmp eq %struct.CHsplay_node* %12, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %13 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %13, align 8
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true, %if.then
  %14 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp1, align 8
  %cmp4 = icmp eq %struct.CHsplay_node* %14, null
  br i1 %cmp4, label %land.lhs.true.5, label %if.else.8

land.lhs.true.5:                                  ; preds = %if.else
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp2, align 8
  %cmp6 = icmp ne %struct.CHsplay_node* %15, null
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true.5
  %16 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp2, align 8
  %17 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  store %struct.CHsplay_node* %16, %struct.CHsplay_node** %17, align 8
  %18 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %18, align 8
  %father = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %19, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %father, align 8
  br label %if.end.25

if.else.8:                                        ; preds = %land.lhs.true.5, %if.else
  %20 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp1, align 8
  %cmp9 = icmp ne %struct.CHsplay_node* %20, null
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.14

land.lhs.true.10:                                 ; preds = %if.else.8
  %21 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp2, align 8
  %cmp11 = icmp eq %struct.CHsplay_node* %21, null
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %land.lhs.true.10
  %22 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp1, align 8
  %23 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  store %struct.CHsplay_node* %22, %struct.CHsplay_node** %23, align 8
  %24 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  %25 = load %struct.CHsplay_node*, %struct.CHsplay_node** %24, align 8
  %father13 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %25, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %father13, align 8
  br label %if.end

if.else.14:                                       ; preds = %land.lhs.true.10, %if.else.8
  %radius = getelementptr inbounds %struct.key, %struct.key* %tmp_key, i32 0, i32 0
  store double 0x47EFFFFFE0000000, double* %radius, align 8
  %angle = getelementptr inbounds %struct.key, %struct.key* %tmp_key, i32 0, i32 1
  store double 1.000000e+03, double* %angle, align 8
  %number = getelementptr inbounds %struct.key, %struct.key* %tmp_key, i32 0, i32 2
  store i32 1000, i32* %number, align 4
  %26 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp1, align 8
  %father15 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %26, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %father15, align 8
  %call16 = call i8* @CHsplay(%struct.CHsplay_node** %tmp1, %struct.key* byval align 8 %tmp_key)
  %radius17 = getelementptr inbounds %struct.key, %struct.key* %tmp_key, i32 0, i32 0
  store double -1.000000e+00, double* %radius17, align 8
  %angle18 = getelementptr inbounds %struct.key, %struct.key* %tmp_key, i32 0, i32 1
  store double -1.000000e+00, double* %angle18, align 8
  %number19 = getelementptr inbounds %struct.key, %struct.key* %tmp_key, i32 0, i32 2
  store i32 -1, i32* %number19, align 4
  %27 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp2, align 8
  %father20 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %27, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %father20, align 8
  %call21 = call i8* @CHsplay(%struct.CHsplay_node** %tmp2, %struct.key* byval align 8 %tmp_key)
  %28 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp2, align 8
  %29 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp1, align 8
  %right22 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %29, i32 0, i32 3
  store %struct.CHsplay_node* %28, %struct.CHsplay_node** %right22, align 8
  %30 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp1, align 8
  %31 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp1, align 8
  %right23 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %31, i32 0, i32 3
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %right23, align 8
  %father24 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %32, i32 0, i32 1
  store %struct.CHsplay_node* %30, %struct.CHsplay_node** %father24, align 8
  %33 = load %struct.CHsplay_node*, %struct.CHsplay_node** %tmp1, align 8
  %34 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %root.addr, align 8
  store %struct.CHsplay_node* %33, %struct.CHsplay_node** %34, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.12
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.7
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.3
  %35 = load %struct.CHsplay_node*, %struct.CHsplay_node** %node, align 8
  %36 = bitcast %struct.CHsplay_node* %35 to i8*
  call void @free(i8* %36) #4
  br label %if.end.29

if.else.27:                                       ; preds = %entry
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.end.26
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
