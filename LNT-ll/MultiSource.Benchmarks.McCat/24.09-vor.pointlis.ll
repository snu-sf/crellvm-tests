; ModuleID = './MultiSource.Benchmarks.McCat/24.09-vor.pointlis.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHpoints = type { i32, %struct.point, i32, %struct.CHpoints*, %struct.CHpoints* }
%struct.point = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Can't create point\0A\00", align 1
@CHno = external global i32, align 4

; Function Attrs: nounwind uwtable
define %struct.CHpoints* @create_point(i64 %p.coerce) #0 {
entry:
  %p = alloca %struct.point, align 8
  %new_point = alloca %struct.CHpoints*, align 8
  %0 = bitcast %struct.point* %p to i64*
  store i64 %p.coerce, i64* %0, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %1 = bitcast i8* %call to %struct.CHpoints*
  store %struct.CHpoints* %1, %struct.CHpoints** %new_point, align 8
  %tobool = icmp ne %struct.CHpoints* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.CHpoints*, %struct.CHpoints** %new_point, align 8
  %prev = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %2, i32 0, i32 4
  store %struct.CHpoints* null, %struct.CHpoints** %prev, align 8
  %3 = load %struct.CHpoints*, %struct.CHpoints** %new_point, align 8
  %next = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %3, i32 0, i32 3
  store %struct.CHpoints* null, %struct.CHpoints** %next, align 8
  %4 = load %struct.CHpoints*, %struct.CHpoints** %new_point, align 8
  %node = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %4, i32 0, i32 1
  %5 = bitcast %struct.point* %node to i8*
  %6 = bitcast %struct.point* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 4, i1 false)
  %7 = load i32, i32* @CHno, align 4
  %8 = load %struct.CHpoints*, %struct.CHpoints** %new_point, align 8
  %number = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %8, i32 0, i32 0
  store i32 %7, i32* %number, align 4
  %9 = load %struct.CHpoints*, %struct.CHpoints** %new_point, align 8
  ret %struct.CHpoints* %9
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @point_list_insert(%struct.CHpoints** %PL, i64 %p.coerce) #0 {
entry:
  %p = alloca %struct.point, align 8
  %PL.addr = alloca %struct.CHpoints**, align 8
  %temp = alloca %struct.CHpoints*, align 8
  %0 = bitcast %struct.point* %p to i64*
  store i64 %p.coerce, i64* %0, align 8
  store %struct.CHpoints** %PL, %struct.CHpoints*** %PL.addr, align 8
  %1 = load i32, i32* @CHno, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @CHno, align 4
  %2 = bitcast %struct.point* %p to i64*
  %3 = load i64, i64* %2, align 4
  %call = call %struct.CHpoints* @create_point(i64 %3)
  store %struct.CHpoints* %call, %struct.CHpoints** %temp, align 8
  %4 = load %struct.CHpoints**, %struct.CHpoints*** %PL.addr, align 8
  %5 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %cmp = icmp eq %struct.CHpoints* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %7 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %prev = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %7, i32 0, i32 4
  store %struct.CHpoints* %6, %struct.CHpoints** %prev, align 8
  %8 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %9 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %9, i32 0, i32 3
  store %struct.CHpoints* %8, %struct.CHpoints** %next, align 8
  %10 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %11 = load %struct.CHpoints**, %struct.CHpoints*** %PL.addr, align 8
  store %struct.CHpoints* %10, %struct.CHpoints** %11, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.CHpoints**, %struct.CHpoints*** %PL.addr, align 8
  %13 = load %struct.CHpoints*, %struct.CHpoints** %12, align 8
  %14 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next1 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %14, i32 0, i32 3
  store %struct.CHpoints* %13, %struct.CHpoints** %next1, align 8
  %15 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %16 = load %struct.CHpoints**, %struct.CHpoints*** %PL.addr, align 8
  %17 = load %struct.CHpoints*, %struct.CHpoints** %16, align 8
  %prev2 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %17, i32 0, i32 4
  %18 = load %struct.CHpoints*, %struct.CHpoints** %prev2, align 8
  %next3 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %18, i32 0, i32 3
  store %struct.CHpoints* %15, %struct.CHpoints** %next3, align 8
  %19 = load %struct.CHpoints**, %struct.CHpoints*** %PL.addr, align 8
  %20 = load %struct.CHpoints*, %struct.CHpoints** %19, align 8
  %prev4 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 4
  %21 = load %struct.CHpoints*, %struct.CHpoints** %prev4, align 8
  %22 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %prev5 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %22, i32 0, i32 4
  store %struct.CHpoints* %21, %struct.CHpoints** %prev5, align 8
  %23 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %24 = load %struct.CHpoints**, %struct.CHpoints*** %PL.addr, align 8
  %25 = load %struct.CHpoints*, %struct.CHpoints** %24, align 8
  %prev6 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %25, i32 0, i32 4
  store %struct.CHpoints* %23, %struct.CHpoints** %prev6, align 8
  %26 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %27 = load %struct.CHpoints**, %struct.CHpoints*** %PL.addr, align 8
  store %struct.CHpoints* %26, %struct.CHpoints** %27, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.CHpoints* @before(%struct.CHpoints* %P) #0 {
entry:
  %P.addr = alloca %struct.CHpoints*, align 8
  store %struct.CHpoints* %P, %struct.CHpoints** %P.addr, align 8
  %0 = load %struct.CHpoints*, %struct.CHpoints** %P.addr, align 8
  %prev = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i32 0, i32 4
  %1 = load %struct.CHpoints*, %struct.CHpoints** %prev, align 8
  ret %struct.CHpoints* %1
}

; Function Attrs: nounwind uwtable
define %struct.CHpoints* @next(%struct.CHpoints* %P) #0 {
entry:
  %P.addr = alloca %struct.CHpoints*, align 8
  store %struct.CHpoints* %P, %struct.CHpoints** %P.addr, align 8
  %0 = load %struct.CHpoints*, %struct.CHpoints** %P.addr, align 8
  %next = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i32 0, i32 3
  %1 = load %struct.CHpoints*, %struct.CHpoints** %next, align 8
  ret %struct.CHpoints* %1
}

; Function Attrs: nounwind uwtable
define double @angle(%struct.CHpoints* %p1, %struct.CHpoints* %p2, %struct.CHpoints* %p3) #0 {
entry:
  %retval = alloca double, align 8
  %p1.addr = alloca %struct.CHpoints*, align 8
  %p2.addr = alloca %struct.CHpoints*, align 8
  %p3.addr = alloca %struct.CHpoints*, align 8
  %dot_product = alloca double, align 8
  %la2 = alloca double, align 8
  %lb2 = alloca double, align 8
  %v = alloca double, align 8
  %a = alloca %struct.point, align 4
  %b = alloca %struct.point, align 4
  %coerce = alloca %struct.point, align 4
  %coerce5 = alloca %struct.point, align 4
  store %struct.CHpoints* %p1, %struct.CHpoints** %p1.addr, align 8
  store %struct.CHpoints* %p2, %struct.CHpoints** %p2.addr, align 8
  store %struct.CHpoints* %p3, %struct.CHpoints** %p3.addr, align 8
  %0 = load %struct.CHpoints*, %struct.CHpoints** %p2.addr, align 8
  %node = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i32 0, i32 1
  %1 = load %struct.CHpoints*, %struct.CHpoints** %p1.addr, align 8
  %node1 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %1, i32 0, i32 1
  %2 = bitcast %struct.point* %node to i64*
  %3 = load i64, i64* %2, align 4
  %4 = bitcast %struct.point* %node1 to i64*
  %5 = load i64, i64* %4, align 4
  %call = call i64 @vector(i64 %3, i64 %5)
  %6 = bitcast %struct.point* %coerce to i64*
  store i64 %call, i64* %6, align 4
  %7 = bitcast %struct.point* %a to i8*
  %8 = bitcast %struct.point* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 4, i1 false)
  %9 = load %struct.CHpoints*, %struct.CHpoints** %p2.addr, align 8
  %node2 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %9, i32 0, i32 1
  %10 = load %struct.CHpoints*, %struct.CHpoints** %p3.addr, align 8
  %node3 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %10, i32 0, i32 1
  %11 = bitcast %struct.point* %node2 to i64*
  %12 = load i64, i64* %11, align 4
  %13 = bitcast %struct.point* %node3 to i64*
  %14 = load i64, i64* %13, align 4
  %call4 = call i64 @vector(i64 %12, i64 %14)
  %15 = bitcast %struct.point* %coerce5 to i64*
  store i64 %call4, i64* %15, align 4
  %16 = bitcast %struct.point* %b to i8*
  %17 = bitcast %struct.point* %coerce5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 4, i1 false)
  %x = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %18 = load i32, i32* %x, align 4
  %x6 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %19 = load i32, i32* %x6, align 4
  %mul = mul nsw i32 %18, %19
  %y = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 1
  %20 = load i32, i32* %y, align 4
  %y7 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %21 = load i32, i32* %y7, align 4
  %mul8 = mul nsw i32 %20, %21
  %add = add nsw i32 %mul, %mul8
  %conv = sitofp i32 %add to double
  store double %conv, double* %dot_product, align 8
  %x9 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %22 = load i32, i32* %x9, align 4
  %x10 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %23 = load i32, i32* %x10, align 4
  %mul11 = mul nsw i32 %22, %23
  %y12 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 1
  %24 = load i32, i32* %y12, align 4
  %y13 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 1
  %25 = load i32, i32* %y13, align 4
  %mul14 = mul nsw i32 %24, %25
  %add15 = add nsw i32 %mul11, %mul14
  %conv16 = sitofp i32 %add15 to double
  store double %conv16, double* %la2, align 8
  %x17 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %26 = load i32, i32* %x17, align 4
  %x18 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %27 = load i32, i32* %x18, align 4
  %mul19 = mul nsw i32 %26, %27
  %y20 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %28 = load i32, i32* %y20, align 4
  %y21 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %29 = load i32, i32* %y21, align 4
  %mul22 = mul nsw i32 %28, %29
  %add23 = add nsw i32 %mul19, %mul22
  %conv24 = sitofp i32 %add23 to double
  store double %conv24, double* %lb2, align 8
  %30 = load double, double* %dot_product, align 8
  %31 = load double, double* %dot_product, align 8
  %mul25 = fmul double %30, %31
  %32 = load double, double* %la2, align 8
  %33 = load double, double* %lb2, align 8
  %mul26 = fmul double %32, %33
  %div = fdiv double %mul25, %mul26
  store double %div, double* %v, align 8
  %34 = load double, double* %dot_product, align 8
  %cmp = fcmp olt double %34, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %35 = load double, double* %v, align 8
  %sub = fsub double -0.000000e+00, %35
  store double %sub, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %36 = load double, double* %v, align 8
  store double %36, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %37 = load double, double* %retval
  ret double %37
}

declare i64 @vector(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @number_points(%struct.CHpoints* %PL) #0 {
entry:
  %PL.addr = alloca %struct.CHpoints*, align 8
  %temp = alloca %struct.CHpoints*, align 8
  %c = alloca [5 x i8], align 1
  store %struct.CHpoints* %PL, %struct.CHpoints** %PL.addr, align 8
  %0 = load %struct.CHpoints*, %struct.CHpoints** %PL.addr, align 8
  %next = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i32 0, i32 3
  %1 = load %struct.CHpoints*, %struct.CHpoints** %next, align 8
  store %struct.CHpoints* %1, %struct.CHpoints** %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %3 = load %struct.CHpoints*, %struct.CHpoints** %PL.addr, align 8
  %cmp = icmp ne %struct.CHpoints* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next1 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %4, i32 0, i32 3
  %5 = load %struct.CHpoints*, %struct.CHpoints** %next1, align 8
  store %struct.CHpoints* %5, %struct.CHpoints** %temp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.CHpoints* @remove_points(%struct.CHpoints* %PL) #0 {
entry:
  %PL.addr = alloca %struct.CHpoints*, align 8
  %temp = alloca %struct.CHpoints*, align 8
  %rem = alloca %struct.CHpoints*, align 8
  %a = alloca %struct.point, align 4
  %c = alloca %struct.point, align 4
  %b = alloca %struct.point, align 4
  %i = alloca i32, align 4
  %done = alloca i32, align 4
  store %struct.CHpoints* %PL, %struct.CHpoints** %PL.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %done, align 4
  %0 = load %struct.CHpoints*, %struct.CHpoints** %PL.addr, align 8
  %next = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i32 0, i32 3
  %1 = load %struct.CHpoints*, %struct.CHpoints** %next, align 8
  store %struct.CHpoints* %1, %struct.CHpoints** %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %3 = load %struct.CHpoints*, %struct.CHpoints** %PL.addr, align 8
  %cmp = icmp ne %struct.CHpoints* %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next1 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %4, i32 0, i32 3
  %5 = load %struct.CHpoints*, %struct.CHpoints** %next1, align 8
  %6 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %cmp2 = icmp ne %struct.CHpoints* %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %prev = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %8, i32 0, i32 4
  %9 = load %struct.CHpoints*, %struct.CHpoints** %prev, align 8
  %node = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %9, i32 0, i32 1
  %10 = bitcast %struct.point* %a to i8*
  %11 = bitcast %struct.point* %node to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 4, i1 false)
  %12 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %node3 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %12, i32 0, i32 1
  %13 = bitcast %struct.point* %b to i8*
  %14 = bitcast %struct.point* %node3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 4, i1 false)
  %15 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next4 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %15, i32 0, i32 3
  %16 = load %struct.CHpoints*, %struct.CHpoints** %next4, align 8
  %node5 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %16, i32 0, i32 1
  %17 = bitcast %struct.point* %c to i8*
  %18 = bitcast %struct.point* %node5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 4, i1 false)
  %y = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %19 = load i32, i32* %y, align 4
  %y6 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 1
  %20 = load i32, i32* %y6, align 4
  %sub = sub nsw i32 %19, %20
  %x = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %21 = load i32, i32* %x, align 4
  %x7 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %22 = load i32, i32* %x7, align 4
  %sub8 = sub nsw i32 %21, %22
  %mul = mul nsw i32 %sub, %sub8
  %x9 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 0
  %23 = load i32, i32* %x9, align 4
  %x10 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %24 = load i32, i32* %x10, align 4
  %sub11 = sub nsw i32 %23, %24
  %y12 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %25 = load i32, i32* %y12, align 4
  %y13 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 1
  %26 = load i32, i32* %y13, align 4
  %sub14 = sub nsw i32 %25, %26
  %mul15 = mul nsw i32 %sub11, %sub14
  %add = add nsw i32 %mul, %mul15
  %cmp16 = icmp eq i32 %add, 0
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %x17 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %27 = load i32, i32* %x17, align 4
  %x18 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %28 = load i32, i32* %x18, align 4
  %cmp19 = icmp slt i32 %27, %28
  br i1 %cmp19, label %land.lhs.true.20, label %lor.lhs.false

land.lhs.true.20:                                 ; preds = %land.lhs.true
  %x21 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %29 = load i32, i32* %x21, align 4
  %x22 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 0
  %30 = load i32, i32* %x22, align 4
  %cmp23 = icmp slt i32 %29, %30
  br i1 %cmp23, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.20, %land.lhs.true
  %x24 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %31 = load i32, i32* %x24, align 4
  %x25 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %32 = load i32, i32* %x25, align 4
  %cmp26 = icmp sgt i32 %31, %32
  br i1 %cmp26, label %land.lhs.true.27, label %lor.lhs.false.31

land.lhs.true.27:                                 ; preds = %lor.lhs.false
  %x28 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %33 = load i32, i32* %x28, align 4
  %x29 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 0
  %34 = load i32, i32* %x29, align 4
  %cmp30 = icmp sgt i32 %33, %34
  br i1 %cmp30, label %if.then, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %land.lhs.true.27, %lor.lhs.false
  %x32 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %35 = load i32, i32* %x32, align 4
  %x33 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %36 = load i32, i32* %x33, align 4
  %cmp34 = icmp eq i32 %35, %36
  br i1 %cmp34, label %land.lhs.true.35, label %lor.lhs.false.47

land.lhs.true.35:                                 ; preds = %lor.lhs.false.31
  %x36 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %37 = load i32, i32* %x36, align 4
  %x37 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 0
  %38 = load i32, i32* %x37, align 4
  %cmp38 = icmp eq i32 %37, %38
  br i1 %cmp38, label %land.lhs.true.39, label %lor.lhs.false.47

land.lhs.true.39:                                 ; preds = %land.lhs.true.35
  %y40 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 1
  %39 = load i32, i32* %y40, align 4
  %y41 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %40 = load i32, i32* %y41, align 4
  %cmp42 = icmp slt i32 %39, %40
  br i1 %cmp42, label %land.lhs.true.43, label %lor.lhs.false.47

land.lhs.true.43:                                 ; preds = %land.lhs.true.39
  %y44 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %41 = load i32, i32* %y44, align 4
  %y45 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 1
  %42 = load i32, i32* %y45, align 4
  %cmp46 = icmp slt i32 %41, %42
  br i1 %cmp46, label %if.then, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true.43, %land.lhs.true.39, %land.lhs.true.35, %lor.lhs.false.31
  %x48 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %43 = load i32, i32* %x48, align 4
  %x49 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %44 = load i32, i32* %x49, align 4
  %cmp50 = icmp eq i32 %43, %44
  br i1 %cmp50, label %land.lhs.true.51, label %if.else

land.lhs.true.51:                                 ; preds = %lor.lhs.false.47
  %x52 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %45 = load i32, i32* %x52, align 4
  %x53 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 0
  %46 = load i32, i32* %x53, align 4
  %cmp54 = icmp eq i32 %45, %46
  br i1 %cmp54, label %land.lhs.true.55, label %if.else

land.lhs.true.55:                                 ; preds = %land.lhs.true.51
  %y56 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 1
  %47 = load i32, i32* %y56, align 4
  %y57 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %48 = load i32, i32* %y57, align 4
  %cmp58 = icmp sgt i32 %47, %48
  br i1 %cmp58, label %land.lhs.true.59, label %if.else

land.lhs.true.59:                                 ; preds = %land.lhs.true.55
  %y60 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %49 = load i32, i32* %y60, align 4
  %y61 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 1
  %50 = load i32, i32* %y61, align 4
  %cmp62 = icmp sgt i32 %49, %50
  br i1 %cmp62, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.59, %land.lhs.true.43, %land.lhs.true.27, %land.lhs.true.20
  %51 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  store %struct.CHpoints* %51, %struct.CHpoints** %rem, align 8
  %52 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %prev63 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %52, i32 0, i32 4
  %53 = load %struct.CHpoints*, %struct.CHpoints** %prev63, align 8
  %54 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next64 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %54, i32 0, i32 3
  %55 = load %struct.CHpoints*, %struct.CHpoints** %next64, align 8
  %prev65 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %55, i32 0, i32 4
  store %struct.CHpoints* %53, %struct.CHpoints** %prev65, align 8
  %56 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next66 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %56, i32 0, i32 3
  %57 = load %struct.CHpoints*, %struct.CHpoints** %next66, align 8
  %58 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %prev67 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %58, i32 0, i32 4
  %59 = load %struct.CHpoints*, %struct.CHpoints** %prev67, align 8
  %next68 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %59, i32 0, i32 3
  store %struct.CHpoints* %57, %struct.CHpoints** %next68, align 8
  %60 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next69 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %60, i32 0, i32 3
  %61 = load %struct.CHpoints*, %struct.CHpoints** %next69, align 8
  store %struct.CHpoints* %61, %struct.CHpoints** %temp, align 8
  %62 = load %struct.CHpoints*, %struct.CHpoints** %rem, align 8
  %63 = bitcast %struct.CHpoints* %62 to i8*
  call void @free(i8* %63) #4
  %64 = load i32, i32* @CHno, align 4
  %dec = add nsw i32 %64, -1
  store i32 %dec, i32* @CHno, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.59, %land.lhs.true.55, %land.lhs.true.51, %lor.lhs.false.47, %while.body
  %65 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next70 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %65, i32 0, i32 3
  %66 = load %struct.CHpoints*, %struct.CHpoints** %next70, align 8
  store %struct.CHpoints* %66, %struct.CHpoints** %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %67 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %prev71 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %67, i32 0, i32 4
  %68 = load %struct.CHpoints*, %struct.CHpoints** %prev71, align 8
  %node72 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %68, i32 0, i32 1
  %69 = bitcast %struct.point* %a to i8*
  %70 = bitcast %struct.point* %node72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 8, i32 4, i1 false)
  %71 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %node73 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %71, i32 0, i32 1
  %72 = bitcast %struct.point* %b to i8*
  %73 = bitcast %struct.point* %node73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 8, i32 4, i1 false)
  %74 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next74 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %74, i32 0, i32 3
  %75 = load %struct.CHpoints*, %struct.CHpoints** %next74, align 8
  %node75 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %75, i32 0, i32 1
  %76 = bitcast %struct.point* %c to i8*
  %77 = bitcast %struct.point* %node75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 8, i32 4, i1 false)
  %y76 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %78 = load i32, i32* %y76, align 4
  %y77 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 1
  %79 = load i32, i32* %y77, align 4
  %sub78 = sub nsw i32 %78, %79
  %x79 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %80 = load i32, i32* %x79, align 4
  %x80 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %81 = load i32, i32* %x80, align 4
  %sub81 = sub nsw i32 %80, %81
  %mul82 = mul nsw i32 %sub78, %sub81
  %x83 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 0
  %82 = load i32, i32* %x83, align 4
  %x84 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %83 = load i32, i32* %x84, align 4
  %sub85 = sub nsw i32 %82, %83
  %y86 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %84 = load i32, i32* %y86, align 4
  %y87 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 1
  %85 = load i32, i32* %y87, align 4
  %sub88 = sub nsw i32 %84, %85
  %mul89 = mul nsw i32 %sub85, %sub88
  %add90 = add nsw i32 %mul82, %mul89
  %cmp91 = icmp eq i32 %add90, 0
  br i1 %cmp91, label %land.lhs.true.92, label %if.end.149

land.lhs.true.92:                                 ; preds = %while.end
  %x93 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %86 = load i32, i32* %x93, align 4
  %x94 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %87 = load i32, i32* %x94, align 4
  %cmp95 = icmp slt i32 %86, %87
  br i1 %cmp95, label %land.lhs.true.96, label %lor.lhs.false.100

land.lhs.true.96:                                 ; preds = %land.lhs.true.92
  %x97 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %88 = load i32, i32* %x97, align 4
  %x98 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 0
  %89 = load i32, i32* %x98, align 4
  %cmp99 = icmp slt i32 %88, %89
  br i1 %cmp99, label %if.then.140, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %land.lhs.true.96, %land.lhs.true.92
  %x101 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %90 = load i32, i32* %x101, align 4
  %x102 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %91 = load i32, i32* %x102, align 4
  %cmp103 = icmp sgt i32 %90, %91
  br i1 %cmp103, label %land.lhs.true.104, label %lor.lhs.false.108

land.lhs.true.104:                                ; preds = %lor.lhs.false.100
  %x105 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %92 = load i32, i32* %x105, align 4
  %x106 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 0
  %93 = load i32, i32* %x106, align 4
  %cmp107 = icmp sgt i32 %92, %93
  br i1 %cmp107, label %if.then.140, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %land.lhs.true.104, %lor.lhs.false.100
  %x109 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %94 = load i32, i32* %x109, align 4
  %x110 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %95 = load i32, i32* %x110, align 4
  %cmp111 = icmp eq i32 %94, %95
  br i1 %cmp111, label %land.lhs.true.112, label %lor.lhs.false.124

land.lhs.true.112:                                ; preds = %lor.lhs.false.108
  %x113 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %96 = load i32, i32* %x113, align 4
  %x114 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 0
  %97 = load i32, i32* %x114, align 4
  %cmp115 = icmp eq i32 %96, %97
  br i1 %cmp115, label %land.lhs.true.116, label %lor.lhs.false.124

land.lhs.true.116:                                ; preds = %land.lhs.true.112
  %y117 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 1
  %98 = load i32, i32* %y117, align 4
  %y118 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %99 = load i32, i32* %y118, align 4
  %cmp119 = icmp slt i32 %98, %99
  br i1 %cmp119, label %land.lhs.true.120, label %lor.lhs.false.124

land.lhs.true.120:                                ; preds = %land.lhs.true.116
  %y121 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %100 = load i32, i32* %y121, align 4
  %y122 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 1
  %101 = load i32, i32* %y122, align 4
  %cmp123 = icmp slt i32 %100, %101
  br i1 %cmp123, label %if.then.140, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %land.lhs.true.120, %land.lhs.true.116, %land.lhs.true.112, %lor.lhs.false.108
  %x125 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %102 = load i32, i32* %x125, align 4
  %x126 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 0
  %103 = load i32, i32* %x126, align 4
  %cmp127 = icmp eq i32 %102, %103
  br i1 %cmp127, label %land.lhs.true.128, label %if.end.149

land.lhs.true.128:                                ; preds = %lor.lhs.false.124
  %x129 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 0
  %104 = load i32, i32* %x129, align 4
  %x130 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 0
  %105 = load i32, i32* %x130, align 4
  %cmp131 = icmp eq i32 %104, %105
  br i1 %cmp131, label %land.lhs.true.132, label %if.end.149

land.lhs.true.132:                                ; preds = %land.lhs.true.128
  %y133 = getelementptr inbounds %struct.point, %struct.point* %a, i32 0, i32 1
  %106 = load i32, i32* %y133, align 4
  %y134 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %107 = load i32, i32* %y134, align 4
  %cmp135 = icmp sgt i32 %106, %107
  br i1 %cmp135, label %land.lhs.true.136, label %if.end.149

land.lhs.true.136:                                ; preds = %land.lhs.true.132
  %y137 = getelementptr inbounds %struct.point, %struct.point* %b, i32 0, i32 1
  %108 = load i32, i32* %y137, align 4
  %y138 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 1
  %109 = load i32, i32* %y138, align 4
  %cmp139 = icmp sgt i32 %108, %109
  br i1 %cmp139, label %if.then.140, label %if.end.149

if.then.140:                                      ; preds = %land.lhs.true.136, %land.lhs.true.120, %land.lhs.true.104, %land.lhs.true.96
  %110 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  store %struct.CHpoints* %110, %struct.CHpoints** %rem, align 8
  %111 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %prev141 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %111, i32 0, i32 4
  %112 = load %struct.CHpoints*, %struct.CHpoints** %prev141, align 8
  %113 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next142 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %113, i32 0, i32 3
  %114 = load %struct.CHpoints*, %struct.CHpoints** %next142, align 8
  %prev143 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %114, i32 0, i32 4
  store %struct.CHpoints* %112, %struct.CHpoints** %prev143, align 8
  %115 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next144 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %115, i32 0, i32 3
  %116 = load %struct.CHpoints*, %struct.CHpoints** %next144, align 8
  %117 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %prev145 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %117, i32 0, i32 4
  %118 = load %struct.CHpoints*, %struct.CHpoints** %prev145, align 8
  %next146 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %118, i32 0, i32 3
  store %struct.CHpoints* %116, %struct.CHpoints** %next146, align 8
  %119 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next147 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %119, i32 0, i32 3
  %120 = load %struct.CHpoints*, %struct.CHpoints** %next147, align 8
  store %struct.CHpoints* %120, %struct.CHpoints** %temp, align 8
  %121 = load %struct.CHpoints*, %struct.CHpoints** %rem, align 8
  %122 = bitcast %struct.CHpoints* %121 to i8*
  call void @free(i8* %122) #4
  %123 = load i32, i32* @CHno, align 4
  %dec148 = add nsw i32 %123, -1
  store i32 %dec148, i32* @CHno, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.140, %land.lhs.true.136, %land.lhs.true.132, %land.lhs.true.128, %lor.lhs.false.124, %while.end
  %124 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  ret %struct.CHpoints* %124
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
