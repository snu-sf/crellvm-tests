; ModuleID = './MultiSource.Benchmarks.Olden/34.tsp.tsp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, double, double, %struct.tree*, %struct.tree*, %struct.tree*, %struct.tree* }

; Function Attrs: nounwind uwtable
define %struct.tree* @tsp(%struct.tree* %t, i32 %sz, i32 %nproc) #0 {
entry:
  %retval = alloca %struct.tree*, align 8
  %t.addr = alloca %struct.tree*, align 8
  %sz.addr = alloca i32, align 4
  %nproc.addr = alloca i32, align 4
  %left = alloca %struct.tree*, align 8
  %right = alloca %struct.tree*, align 8
  %leftval = alloca %struct.tree*, align 8
  %rightval = alloca %struct.tree*, align 8
  %nproc_2 = alloca i32, align 4
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  store i32 %sz, i32* %sz.addr, align 4
  store i32 %nproc, i32* %nproc.addr, align 4
  %0 = load i32, i32* %nproc.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %nproc_2, align 4
  %1 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %sz1 = getelementptr inbounds %struct.tree, %struct.tree* %1, i32 0, i32 0
  %2 = load i32, i32* %sz1, align 4
  %3 = load i32, i32* %sz.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %call = call %struct.tree* @conquer(%struct.tree* %4)
  store %struct.tree* %call, %struct.tree** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %left2 = getelementptr inbounds %struct.tree, %struct.tree* %5, i32 0, i32 3
  %6 = load %struct.tree*, %struct.tree** %left2, align 8
  store %struct.tree* %6, %struct.tree** %left, align 8
  %7 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %right3 = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 4
  %8 = load %struct.tree*, %struct.tree** %right3, align 8
  store %struct.tree* %8, %struct.tree** %right, align 8
  %9 = load %struct.tree*, %struct.tree** %left, align 8
  %10 = load i32, i32* %sz.addr, align 4
  %11 = load i32, i32* %nproc_2, align 4
  %call4 = call %struct.tree* @tsp(%struct.tree* %9, i32 %10, i32 %11)
  store %struct.tree* %call4, %struct.tree** %leftval, align 8
  %12 = load %struct.tree*, %struct.tree** %right, align 8
  %13 = load i32, i32* %sz.addr, align 4
  %14 = load i32, i32* %nproc_2, align 4
  %call5 = call %struct.tree* @tsp(%struct.tree* %12, i32 %13, i32 %14)
  store %struct.tree* %call5, %struct.tree** %rightval, align 8
  %15 = load %struct.tree*, %struct.tree** %leftval, align 8
  %16 = load %struct.tree*, %struct.tree** %rightval, align 8
  %17 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %18 = load i32, i32* %nproc.addr, align 4
  %call6 = call %struct.tree* @merge(%struct.tree* %15, %struct.tree* %16, %struct.tree* %17, i32 %18)
  store %struct.tree* %call6, %struct.tree** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load %struct.tree*, %struct.tree** %retval
  ret %struct.tree* %19
}

; Function Attrs: nounwind uwtable
define internal %struct.tree* @conquer(%struct.tree* %t) #0 {
entry:
  %retval = alloca %struct.tree*, align 8
  %t.addr = alloca %struct.tree*, align 8
  %cycle = alloca %struct.tree*, align 8
  %tmp = alloca %struct.tree*, align 8
  %min = alloca %struct.tree*, align 8
  %prev = alloca %struct.tree*, align 8
  %next = alloca %struct.tree*, align 8
  %donext = alloca %struct.tree*, align 8
  %mindist = alloca double, align 8
  %test = alloca double, align 8
  %mintonext = alloca double, align 8
  %mintoprev = alloca double, align 8
  %ttonext = alloca double, align 8
  %ttoprev = alloca double, align 8
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  %0 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %tobool = icmp ne %struct.tree* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.tree* null, %struct.tree** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %call = call %struct.tree* @makelist(%struct.tree* %1)
  store %struct.tree* %call, %struct.tree** %t.addr, align 8
  %2 = load %struct.tree*, %struct.tree** %t.addr, align 8
  store %struct.tree* %2, %struct.tree** %cycle, align 8
  %3 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next11 = getelementptr inbounds %struct.tree, %struct.tree* %3, i32 0, i32 5
  %4 = load %struct.tree*, %struct.tree** %next11, align 8
  store %struct.tree* %4, %struct.tree** %t.addr, align 8
  %5 = load %struct.tree*, %struct.tree** %cycle, align 8
  %6 = load %struct.tree*, %struct.tree** %cycle, align 8
  %next12 = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 5
  store %struct.tree* %5, %struct.tree** %next12, align 8
  %7 = load %struct.tree*, %struct.tree** %cycle, align 8
  %8 = load %struct.tree*, %struct.tree** %cycle, align 8
  %prev13 = getelementptr inbounds %struct.tree, %struct.tree* %8, i32 0, i32 6
  store %struct.tree* %7, %struct.tree** %prev13, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %if.end
  %9 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %tobool14 = icmp ne %struct.tree* %9, null
  br i1 %tobool14, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  %10 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next15 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 5
  %11 = load %struct.tree*, %struct.tree** %next15, align 8
  store %struct.tree* %11, %struct.tree** %donext, align 8
  %12 = load %struct.tree*, %struct.tree** %cycle, align 8
  store %struct.tree* %12, %struct.tree** %min, align 8
  %13 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %14 = load %struct.tree*, %struct.tree** %cycle, align 8
  %call16 = call double @distance(%struct.tree* %13, %struct.tree* %14)
  store double %call16, double* %mindist, align 8
  %15 = load %struct.tree*, %struct.tree** %cycle, align 8
  %next17 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 5
  %16 = load %struct.tree*, %struct.tree** %next17, align 8
  store %struct.tree* %16, %struct.tree** %tmp, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body
  %17 = load %struct.tree*, %struct.tree** %tmp, align 8
  %18 = load %struct.tree*, %struct.tree** %cycle, align 8
  %cmp = icmp ne %struct.tree* %17, %18
  br i1 %cmp, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.18
  %19 = load %struct.tree*, %struct.tree** %tmp, align 8
  %20 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %call20 = call double @distance(%struct.tree* %19, %struct.tree* %20)
  store double %call20, double* %test, align 8
  %21 = load double, double* %test, align 8
  %22 = load double, double* %mindist, align 8
  %cmp21 = fcmp olt double %21, %22
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body.19
  %23 = load double, double* %test, align 8
  store double %23, double* %mindist, align 8
  %24 = load %struct.tree*, %struct.tree** %tmp, align 8
  store %struct.tree* %24, %struct.tree** %min, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %for.body.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %25 = load %struct.tree*, %struct.tree** %tmp, align 8
  %next24 = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 5
  %26 = load %struct.tree*, %struct.tree** %next24, align 8
  store %struct.tree* %26, %struct.tree** %tmp, align 8
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %27 = load %struct.tree*, %struct.tree** %min, align 8
  %next25 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 5
  %28 = load %struct.tree*, %struct.tree** %next25, align 8
  store %struct.tree* %28, %struct.tree** %next, align 8
  %29 = load %struct.tree*, %struct.tree** %min, align 8
  %prev26 = getelementptr inbounds %struct.tree, %struct.tree* %29, i32 0, i32 6
  %30 = load %struct.tree*, %struct.tree** %prev26, align 8
  store %struct.tree* %30, %struct.tree** %prev, align 8
  %31 = load %struct.tree*, %struct.tree** %min, align 8
  %32 = load %struct.tree*, %struct.tree** %next, align 8
  %call27 = call double @distance(%struct.tree* %31, %struct.tree* %32)
  store double %call27, double* %mintonext, align 8
  %33 = load %struct.tree*, %struct.tree** %min, align 8
  %34 = load %struct.tree*, %struct.tree** %prev, align 8
  %call28 = call double @distance(%struct.tree* %33, %struct.tree* %34)
  store double %call28, double* %mintoprev, align 8
  %35 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %36 = load %struct.tree*, %struct.tree** %next, align 8
  %call29 = call double @distance(%struct.tree* %35, %struct.tree* %36)
  store double %call29, double* %ttonext, align 8
  %37 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %38 = load %struct.tree*, %struct.tree** %prev, align 8
  %call30 = call double @distance(%struct.tree* %37, %struct.tree* %38)
  store double %call30, double* %ttoprev, align 8
  %39 = load double, double* %ttoprev, align 8
  %40 = load double, double* %mintoprev, align 8
  %sub = fsub double %39, %40
  %41 = load double, double* %ttonext, align 8
  %42 = load double, double* %mintonext, align 8
  %sub31 = fsub double %41, %42
  %cmp32 = fcmp olt double %sub, %sub31
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %for.end
  %43 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %44 = load %struct.tree*, %struct.tree** %prev, align 8
  %next34 = getelementptr inbounds %struct.tree, %struct.tree* %44, i32 0, i32 5
  store %struct.tree* %43, %struct.tree** %next34, align 8
  %45 = load %struct.tree*, %struct.tree** %min, align 8
  %46 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next35 = getelementptr inbounds %struct.tree, %struct.tree* %46, i32 0, i32 5
  store %struct.tree* %45, %struct.tree** %next35, align 8
  %47 = load %struct.tree*, %struct.tree** %prev, align 8
  %48 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %prev36 = getelementptr inbounds %struct.tree, %struct.tree* %48, i32 0, i32 6
  store %struct.tree* %47, %struct.tree** %prev36, align 8
  %49 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %50 = load %struct.tree*, %struct.tree** %min, align 8
  %prev37 = getelementptr inbounds %struct.tree, %struct.tree* %50, i32 0, i32 6
  store %struct.tree* %49, %struct.tree** %prev37, align 8
  br label %if.end.42

if.else:                                          ; preds = %for.end
  %51 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %52 = load %struct.tree*, %struct.tree** %next, align 8
  %prev38 = getelementptr inbounds %struct.tree, %struct.tree* %52, i32 0, i32 6
  store %struct.tree* %51, %struct.tree** %prev38, align 8
  %53 = load %struct.tree*, %struct.tree** %next, align 8
  %54 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next39 = getelementptr inbounds %struct.tree, %struct.tree* %54, i32 0, i32 5
  store %struct.tree* %53, %struct.tree** %next39, align 8
  %55 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %56 = load %struct.tree*, %struct.tree** %min, align 8
  %next40 = getelementptr inbounds %struct.tree, %struct.tree* %56, i32 0, i32 5
  store %struct.tree* %55, %struct.tree** %next40, align 8
  %57 = load %struct.tree*, %struct.tree** %min, align 8
  %58 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %prev41 = getelementptr inbounds %struct.tree, %struct.tree* %58, i32 0, i32 6
  store %struct.tree* %57, %struct.tree** %prev41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.33
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %59 = load %struct.tree*, %struct.tree** %donext, align 8
  store %struct.tree* %59, %struct.tree** %t.addr, align 8
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  %60 = load %struct.tree*, %struct.tree** %cycle, align 8
  store %struct.tree* %60, %struct.tree** %retval
  br label %return

return:                                           ; preds = %for.end.44, %if.then
  %61 = load %struct.tree*, %struct.tree** %retval
  ret %struct.tree* %61
}

; Function Attrs: nounwind uwtable
define internal %struct.tree* @merge(%struct.tree* %a, %struct.tree* %b, %struct.tree* %t, i32 %nproc) #0 {
entry:
  %a.addr = alloca %struct.tree*, align 8
  %b.addr = alloca %struct.tree*, align 8
  %t.addr = alloca %struct.tree*, align 8
  %nproc.addr = alloca i32, align 4
  %min = alloca %struct.tree*, align 8
  %next = alloca %struct.tree*, align 8
  %prev = alloca %struct.tree*, align 8
  %tmp = alloca %struct.tree*, align 8
  %mindist = alloca double, align 8
  %test = alloca double, align 8
  %mintonext = alloca double, align 8
  %mintoprev = alloca double, align 8
  %ttonext = alloca double, align 8
  %ttoprev = alloca double, align 8
  %n1 = alloca %struct.tree*, align 8
  %p1 = alloca %struct.tree*, align 8
  %n2 = alloca %struct.tree*, align 8
  %p2 = alloca %struct.tree*, align 8
  %tton1 = alloca double, align 8
  %ttop1 = alloca double, align 8
  %tton2 = alloca double, align 8
  %ttop2 = alloca double, align 8
  %n1ton2 = alloca double, align 8
  %n1top2 = alloca double, align 8
  %p1ton2 = alloca double, align 8
  %p1top2 = alloca double, align 8
  %choice = alloca i32, align 4
  store %struct.tree* %a, %struct.tree** %a.addr, align 8
  store %struct.tree* %b, %struct.tree** %b.addr, align 8
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  store i32 %nproc, i32* %nproc.addr, align 4
  %0 = load %struct.tree*, %struct.tree** %a.addr, align 8
  store %struct.tree* %0, %struct.tree** %min, align 8
  %1 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %2 = load %struct.tree*, %struct.tree** %a.addr, align 8
  %call = call double @distance(%struct.tree* %1, %struct.tree* %2)
  store double %call, double* %mindist, align 8
  %3 = load %struct.tree*, %struct.tree** %a.addr, align 8
  store %struct.tree* %3, %struct.tree** %tmp, align 8
  %4 = load %struct.tree*, %struct.tree** %a.addr, align 8
  %next20 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 5
  %5 = load %struct.tree*, %struct.tree** %next20, align 8
  store %struct.tree* %5, %struct.tree** %a.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.tree*, %struct.tree** %a.addr, align 8
  %7 = load %struct.tree*, %struct.tree** %tmp, align 8
  %cmp = icmp ne %struct.tree* %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.tree*, %struct.tree** %a.addr, align 8
  %9 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %call21 = call double @distance(%struct.tree* %8, %struct.tree* %9)
  store double %call21, double* %test, align 8
  %10 = load double, double* %test, align 8
  %11 = load double, double* %mindist, align 8
  %cmp22 = fcmp olt double %10, %11
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load double, double* %test, align 8
  store double %12, double* %mindist, align 8
  %13 = load %struct.tree*, %struct.tree** %a.addr, align 8
  store %struct.tree* %13, %struct.tree** %min, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.tree*, %struct.tree** %a.addr, align 8
  %next23 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 5
  %15 = load %struct.tree*, %struct.tree** %next23, align 8
  store %struct.tree* %15, %struct.tree** %a.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.tree*, %struct.tree** %min, align 8
  %next24 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 5
  %17 = load %struct.tree*, %struct.tree** %next24, align 8
  store %struct.tree* %17, %struct.tree** %next, align 8
  %18 = load %struct.tree*, %struct.tree** %min, align 8
  %prev25 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 6
  %19 = load %struct.tree*, %struct.tree** %prev25, align 8
  store %struct.tree* %19, %struct.tree** %prev, align 8
  %20 = load %struct.tree*, %struct.tree** %min, align 8
  %21 = load %struct.tree*, %struct.tree** %next, align 8
  %call26 = call double @distance(%struct.tree* %20, %struct.tree* %21)
  store double %call26, double* %mintonext, align 8
  %22 = load %struct.tree*, %struct.tree** %min, align 8
  %23 = load %struct.tree*, %struct.tree** %prev, align 8
  %call27 = call double @distance(%struct.tree* %22, %struct.tree* %23)
  store double %call27, double* %mintoprev, align 8
  %24 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %25 = load %struct.tree*, %struct.tree** %next, align 8
  %call28 = call double @distance(%struct.tree* %24, %struct.tree* %25)
  store double %call28, double* %ttonext, align 8
  %26 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %27 = load %struct.tree*, %struct.tree** %prev, align 8
  %call29 = call double @distance(%struct.tree* %26, %struct.tree* %27)
  store double %call29, double* %ttoprev, align 8
  %28 = load double, double* %ttoprev, align 8
  %29 = load double, double* %mintoprev, align 8
  %sub = fsub double %28, %29
  %30 = load double, double* %ttonext, align 8
  %31 = load double, double* %mintonext, align 8
  %sub30 = fsub double %30, %31
  %cmp31 = fcmp olt double %sub, %sub30
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %for.end
  %32 = load %struct.tree*, %struct.tree** %prev, align 8
  store %struct.tree* %32, %struct.tree** %p1, align 8
  %33 = load %struct.tree*, %struct.tree** %min, align 8
  store %struct.tree* %33, %struct.tree** %n1, align 8
  %34 = load double, double* %mindist, align 8
  store double %34, double* %tton1, align 8
  %35 = load double, double* %ttoprev, align 8
  store double %35, double* %ttop1, align 8
  br label %if.end.33

if.else:                                          ; preds = %for.end
  %36 = load %struct.tree*, %struct.tree** %min, align 8
  store %struct.tree* %36, %struct.tree** %p1, align 8
  %37 = load %struct.tree*, %struct.tree** %next, align 8
  store %struct.tree* %37, %struct.tree** %n1, align 8
  %38 = load double, double* %mindist, align 8
  store double %38, double* %ttop1, align 8
  %39 = load double, double* %ttonext, align 8
  store double %39, double* %tton1, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.32
  %40 = load %struct.tree*, %struct.tree** %b.addr, align 8
  store %struct.tree* %40, %struct.tree** %min, align 8
  %41 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %42 = load %struct.tree*, %struct.tree** %b.addr, align 8
  %call34 = call double @distance(%struct.tree* %41, %struct.tree* %42)
  store double %call34, double* %mindist, align 8
  %43 = load %struct.tree*, %struct.tree** %b.addr, align 8
  store %struct.tree* %43, %struct.tree** %tmp, align 8
  %44 = load %struct.tree*, %struct.tree** %b.addr, align 8
  %next35 = getelementptr inbounds %struct.tree, %struct.tree* %44, i32 0, i32 5
  %45 = load %struct.tree*, %struct.tree** %next35, align 8
  store %struct.tree* %45, %struct.tree** %b.addr, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.43, %if.end.33
  %46 = load %struct.tree*, %struct.tree** %b.addr, align 8
  %47 = load %struct.tree*, %struct.tree** %tmp, align 8
  %cmp37 = icmp ne %struct.tree* %46, %47
  br i1 %cmp37, label %for.body.38, label %for.end.45

for.body.38:                                      ; preds = %for.cond.36
  %48 = load %struct.tree*, %struct.tree** %b.addr, align 8
  %49 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %call39 = call double @distance(%struct.tree* %48, %struct.tree* %49)
  store double %call39, double* %test, align 8
  %50 = load double, double* %test, align 8
  %51 = load double, double* %mindist, align 8
  %cmp40 = fcmp olt double %50, %51
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body.38
  %52 = load double, double* %test, align 8
  store double %52, double* %mindist, align 8
  %53 = load %struct.tree*, %struct.tree** %b.addr, align 8
  store %struct.tree* %53, %struct.tree** %min, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %for.body.38
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %54 = load %struct.tree*, %struct.tree** %b.addr, align 8
  %next44 = getelementptr inbounds %struct.tree, %struct.tree* %54, i32 0, i32 5
  %55 = load %struct.tree*, %struct.tree** %next44, align 8
  store %struct.tree* %55, %struct.tree** %b.addr, align 8
  br label %for.cond.36

for.end.45:                                       ; preds = %for.cond.36
  %56 = load %struct.tree*, %struct.tree** %min, align 8
  %next46 = getelementptr inbounds %struct.tree, %struct.tree* %56, i32 0, i32 5
  %57 = load %struct.tree*, %struct.tree** %next46, align 8
  store %struct.tree* %57, %struct.tree** %next, align 8
  %58 = load %struct.tree*, %struct.tree** %min, align 8
  %prev47 = getelementptr inbounds %struct.tree, %struct.tree* %58, i32 0, i32 6
  %59 = load %struct.tree*, %struct.tree** %prev47, align 8
  store %struct.tree* %59, %struct.tree** %prev, align 8
  %60 = load %struct.tree*, %struct.tree** %min, align 8
  %61 = load %struct.tree*, %struct.tree** %next, align 8
  %call48 = call double @distance(%struct.tree* %60, %struct.tree* %61)
  store double %call48, double* %mintonext, align 8
  %62 = load %struct.tree*, %struct.tree** %min, align 8
  %63 = load %struct.tree*, %struct.tree** %prev, align 8
  %call49 = call double @distance(%struct.tree* %62, %struct.tree* %63)
  store double %call49, double* %mintoprev, align 8
  %64 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %65 = load %struct.tree*, %struct.tree** %next, align 8
  %call50 = call double @distance(%struct.tree* %64, %struct.tree* %65)
  store double %call50, double* %ttonext, align 8
  %66 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %67 = load %struct.tree*, %struct.tree** %prev, align 8
  %call51 = call double @distance(%struct.tree* %66, %struct.tree* %67)
  store double %call51, double* %ttoprev, align 8
  %68 = load double, double* %ttoprev, align 8
  %69 = load double, double* %mintoprev, align 8
  %sub52 = fsub double %68, %69
  %70 = load double, double* %ttonext, align 8
  %71 = load double, double* %mintonext, align 8
  %sub53 = fsub double %70, %71
  %cmp54 = fcmp olt double %sub52, %sub53
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %for.end.45
  %72 = load %struct.tree*, %struct.tree** %prev, align 8
  store %struct.tree* %72, %struct.tree** %p2, align 8
  %73 = load %struct.tree*, %struct.tree** %min, align 8
  store %struct.tree* %73, %struct.tree** %n2, align 8
  %74 = load double, double* %mindist, align 8
  store double %74, double* %tton2, align 8
  %75 = load double, double* %ttoprev, align 8
  store double %75, double* %ttop2, align 8
  br label %if.end.57

if.else.56:                                       ; preds = %for.end.45
  %76 = load %struct.tree*, %struct.tree** %min, align 8
  store %struct.tree* %76, %struct.tree** %p2, align 8
  %77 = load %struct.tree*, %struct.tree** %next, align 8
  store %struct.tree* %77, %struct.tree** %n2, align 8
  %78 = load double, double* %mindist, align 8
  store double %78, double* %ttop2, align 8
  %79 = load double, double* %ttonext, align 8
  store double %79, double* %tton2, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.then.55
  %80 = load %struct.tree*, %struct.tree** %n1, align 8
  %81 = load %struct.tree*, %struct.tree** %n2, align 8
  %call58 = call double @distance(%struct.tree* %80, %struct.tree* %81)
  store double %call58, double* %n1ton2, align 8
  %82 = load %struct.tree*, %struct.tree** %n1, align 8
  %83 = load %struct.tree*, %struct.tree** %p2, align 8
  %call59 = call double @distance(%struct.tree* %82, %struct.tree* %83)
  store double %call59, double* %n1top2, align 8
  %84 = load %struct.tree*, %struct.tree** %p1, align 8
  %85 = load %struct.tree*, %struct.tree** %n2, align 8
  %call60 = call double @distance(%struct.tree* %84, %struct.tree* %85)
  store double %call60, double* %p1ton2, align 8
  %86 = load %struct.tree*, %struct.tree** %p1, align 8
  %87 = load %struct.tree*, %struct.tree** %p2, align 8
  %call61 = call double @distance(%struct.tree* %86, %struct.tree* %87)
  store double %call61, double* %p1top2, align 8
  %88 = load double, double* %ttop1, align 8
  %89 = load double, double* %ttop2, align 8
  %add = fadd double %88, %89
  %90 = load double, double* %n1ton2, align 8
  %add62 = fadd double %add, %90
  store double %add62, double* %mindist, align 8
  store i32 1, i32* %choice, align 4
  %91 = load double, double* %ttop1, align 8
  %92 = load double, double* %tton2, align 8
  %add63 = fadd double %91, %92
  %93 = load double, double* %n1top2, align 8
  %add64 = fadd double %add63, %93
  store double %add64, double* %test, align 8
  %94 = load double, double* %test, align 8
  %95 = load double, double* %mindist, align 8
  %cmp65 = fcmp olt double %94, %95
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.57
  store i32 2, i32* %choice, align 4
  %96 = load double, double* %test, align 8
  store double %96, double* %mindist, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.57
  %97 = load double, double* %tton1, align 8
  %98 = load double, double* %ttop2, align 8
  %add68 = fadd double %97, %98
  %99 = load double, double* %p1ton2, align 8
  %add69 = fadd double %add68, %99
  store double %add69, double* %test, align 8
  %100 = load double, double* %test, align 8
  %101 = load double, double* %mindist, align 8
  %cmp70 = fcmp olt double %100, %101
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.67
  store i32 3, i32* %choice, align 4
  %102 = load double, double* %test, align 8
  store double %102, double* %mindist, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.67
  %103 = load double, double* %tton1, align 8
  %104 = load double, double* %tton2, align 8
  %add73 = fadd double %103, %104
  %105 = load double, double* %p1top2, align 8
  %add74 = fadd double %add73, %105
  store double %add74, double* %test, align 8
  %106 = load double, double* %test, align 8
  %107 = load double, double* %mindist, align 8
  %cmp75 = fcmp olt double %106, %107
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.72
  store i32 4, i32* %choice, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.72
  %108 = load i32, i32* %choice, align 4
  switch i32 %108, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.84
    i32 3, label %sw.bb.91
    i32 4, label %sw.bb.98
  ]

sw.bb:                                            ; preds = %if.end.77
  %109 = load %struct.tree*, %struct.tree** %n2, align 8
  call void @reverse(%struct.tree* %109)
  %110 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %111 = load %struct.tree*, %struct.tree** %p1, align 8
  %next78 = getelementptr inbounds %struct.tree, %struct.tree* %111, i32 0, i32 5
  store %struct.tree* %110, %struct.tree** %next78, align 8
  %112 = load %struct.tree*, %struct.tree** %p1, align 8
  %113 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %prev79 = getelementptr inbounds %struct.tree, %struct.tree* %113, i32 0, i32 6
  store %struct.tree* %112, %struct.tree** %prev79, align 8
  %114 = load %struct.tree*, %struct.tree** %p2, align 8
  %115 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next80 = getelementptr inbounds %struct.tree, %struct.tree* %115, i32 0, i32 5
  store %struct.tree* %114, %struct.tree** %next80, align 8
  %116 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %117 = load %struct.tree*, %struct.tree** %p2, align 8
  %prev81 = getelementptr inbounds %struct.tree, %struct.tree* %117, i32 0, i32 6
  store %struct.tree* %116, %struct.tree** %prev81, align 8
  %118 = load %struct.tree*, %struct.tree** %n1, align 8
  %119 = load %struct.tree*, %struct.tree** %n2, align 8
  %next82 = getelementptr inbounds %struct.tree, %struct.tree* %119, i32 0, i32 5
  store %struct.tree* %118, %struct.tree** %next82, align 8
  %120 = load %struct.tree*, %struct.tree** %n2, align 8
  %121 = load %struct.tree*, %struct.tree** %n1, align 8
  %prev83 = getelementptr inbounds %struct.tree, %struct.tree* %121, i32 0, i32 6
  store %struct.tree* %120, %struct.tree** %prev83, align 8
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.end.77
  %122 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %123 = load %struct.tree*, %struct.tree** %p1, align 8
  %next85 = getelementptr inbounds %struct.tree, %struct.tree* %123, i32 0, i32 5
  store %struct.tree* %122, %struct.tree** %next85, align 8
  %124 = load %struct.tree*, %struct.tree** %p1, align 8
  %125 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %prev86 = getelementptr inbounds %struct.tree, %struct.tree* %125, i32 0, i32 6
  store %struct.tree* %124, %struct.tree** %prev86, align 8
  %126 = load %struct.tree*, %struct.tree** %n2, align 8
  %127 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next87 = getelementptr inbounds %struct.tree, %struct.tree* %127, i32 0, i32 5
  store %struct.tree* %126, %struct.tree** %next87, align 8
  %128 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %129 = load %struct.tree*, %struct.tree** %n2, align 8
  %prev88 = getelementptr inbounds %struct.tree, %struct.tree* %129, i32 0, i32 6
  store %struct.tree* %128, %struct.tree** %prev88, align 8
  %130 = load %struct.tree*, %struct.tree** %n1, align 8
  %131 = load %struct.tree*, %struct.tree** %p2, align 8
  %next89 = getelementptr inbounds %struct.tree, %struct.tree* %131, i32 0, i32 5
  store %struct.tree* %130, %struct.tree** %next89, align 8
  %132 = load %struct.tree*, %struct.tree** %p2, align 8
  %133 = load %struct.tree*, %struct.tree** %n1, align 8
  %prev90 = getelementptr inbounds %struct.tree, %struct.tree* %133, i32 0, i32 6
  store %struct.tree* %132, %struct.tree** %prev90, align 8
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.end.77
  %134 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %135 = load %struct.tree*, %struct.tree** %p2, align 8
  %next92 = getelementptr inbounds %struct.tree, %struct.tree* %135, i32 0, i32 5
  store %struct.tree* %134, %struct.tree** %next92, align 8
  %136 = load %struct.tree*, %struct.tree** %p2, align 8
  %137 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %prev93 = getelementptr inbounds %struct.tree, %struct.tree* %137, i32 0, i32 6
  store %struct.tree* %136, %struct.tree** %prev93, align 8
  %138 = load %struct.tree*, %struct.tree** %n1, align 8
  %139 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next94 = getelementptr inbounds %struct.tree, %struct.tree* %139, i32 0, i32 5
  store %struct.tree* %138, %struct.tree** %next94, align 8
  %140 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %141 = load %struct.tree*, %struct.tree** %n1, align 8
  %prev95 = getelementptr inbounds %struct.tree, %struct.tree* %141, i32 0, i32 6
  store %struct.tree* %140, %struct.tree** %prev95, align 8
  %142 = load %struct.tree*, %struct.tree** %n2, align 8
  %143 = load %struct.tree*, %struct.tree** %p1, align 8
  %next96 = getelementptr inbounds %struct.tree, %struct.tree* %143, i32 0, i32 5
  store %struct.tree* %142, %struct.tree** %next96, align 8
  %144 = load %struct.tree*, %struct.tree** %p1, align 8
  %145 = load %struct.tree*, %struct.tree** %n2, align 8
  %prev97 = getelementptr inbounds %struct.tree, %struct.tree* %145, i32 0, i32 6
  store %struct.tree* %144, %struct.tree** %prev97, align 8
  br label %sw.epilog

sw.bb.98:                                         ; preds = %if.end.77
  %146 = load %struct.tree*, %struct.tree** %n1, align 8
  call void @reverse(%struct.tree* %146)
  %147 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %148 = load %struct.tree*, %struct.tree** %n1, align 8
  %next99 = getelementptr inbounds %struct.tree, %struct.tree* %148, i32 0, i32 5
  store %struct.tree* %147, %struct.tree** %next99, align 8
  %149 = load %struct.tree*, %struct.tree** %n1, align 8
  %150 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %prev100 = getelementptr inbounds %struct.tree, %struct.tree* %150, i32 0, i32 6
  store %struct.tree* %149, %struct.tree** %prev100, align 8
  %151 = load %struct.tree*, %struct.tree** %n2, align 8
  %152 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next101 = getelementptr inbounds %struct.tree, %struct.tree* %152, i32 0, i32 5
  store %struct.tree* %151, %struct.tree** %next101, align 8
  %153 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %154 = load %struct.tree*, %struct.tree** %n2, align 8
  %prev102 = getelementptr inbounds %struct.tree, %struct.tree* %154, i32 0, i32 6
  store %struct.tree* %153, %struct.tree** %prev102, align 8
  %155 = load %struct.tree*, %struct.tree** %p1, align 8
  %156 = load %struct.tree*, %struct.tree** %p2, align 8
  %next103 = getelementptr inbounds %struct.tree, %struct.tree* %156, i32 0, i32 5
  store %struct.tree* %155, %struct.tree** %next103, align 8
  %157 = load %struct.tree*, %struct.tree** %p2, align 8
  %158 = load %struct.tree*, %struct.tree** %p1, align 8
  %prev104 = getelementptr inbounds %struct.tree, %struct.tree* %158, i32 0, i32 6
  store %struct.tree* %157, %struct.tree** %prev104, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.77, %sw.bb.98, %sw.bb.91, %sw.bb.84, %sw.bb
  %159 = load %struct.tree*, %struct.tree** %t.addr, align 8
  ret %struct.tree* %159
}

; Function Attrs: nounwind uwtable
define internal %struct.tree* @makelist(%struct.tree* %t) #0 {
entry:
  %retval = alloca %struct.tree*, align 8
  %t.addr = alloca %struct.tree*, align 8
  %left = alloca %struct.tree*, align 8
  %right = alloca %struct.tree*, align 8
  %tleft = alloca %struct.tree*, align 8
  %tright = alloca %struct.tree*, align 8
  %retval1 = alloca %struct.tree*, align 8
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  %0 = load %struct.tree*, %struct.tree** %t.addr, align 8
  store %struct.tree* %0, %struct.tree** %retval1, align 8
  %1 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %tobool = icmp ne %struct.tree* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.tree* null, %struct.tree** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %left2 = getelementptr inbounds %struct.tree, %struct.tree* %2, i32 0, i32 3
  %3 = load %struct.tree*, %struct.tree** %left2, align 8
  %call = call %struct.tree* @makelist(%struct.tree* %3)
  store %struct.tree* %call, %struct.tree** %left, align 8
  %4 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %right3 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 4
  %5 = load %struct.tree*, %struct.tree** %right3, align 8
  %call4 = call %struct.tree* @makelist(%struct.tree* %5)
  store %struct.tree* %call4, %struct.tree** %right, align 8
  %6 = load %struct.tree*, %struct.tree** %right, align 8
  %tobool5 = icmp ne %struct.tree* %6, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %7 = load %struct.tree*, %struct.tree** %right, align 8
  store %struct.tree* %7, %struct.tree** %retval1, align 8
  %8 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %right7 = getelementptr inbounds %struct.tree, %struct.tree* %8, i32 0, i32 4
  %9 = load %struct.tree*, %struct.tree** %right7, align 8
  store %struct.tree* %9, %struct.tree** %tright, align 8
  %10 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %11 = load %struct.tree*, %struct.tree** %tright, align 8
  %next = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 5
  store %struct.tree* %10, %struct.tree** %next, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %12 = load %struct.tree*, %struct.tree** %left, align 8
  %tobool9 = icmp ne %struct.tree* %12, null
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.8
  %13 = load %struct.tree*, %struct.tree** %left, align 8
  store %struct.tree* %13, %struct.tree** %retval1, align 8
  %14 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %left11 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 3
  %15 = load %struct.tree*, %struct.tree** %left11, align 8
  store %struct.tree* %15, %struct.tree** %tleft, align 8
  %16 = load %struct.tree*, %struct.tree** %right, align 8
  %tobool12 = icmp ne %struct.tree* %16, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %17 = load %struct.tree*, %struct.tree** %right, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %18 = load %struct.tree*, %struct.tree** %t.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.tree* [ %17, %cond.true ], [ %18, %cond.false ]
  %19 = load %struct.tree*, %struct.tree** %tleft, align 8
  %next13 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 5
  store %struct.tree* %cond, %struct.tree** %next13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %cond.end, %if.end.8
  %20 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next15 = getelementptr inbounds %struct.tree, %struct.tree* %20, i32 0, i32 5
  store %struct.tree* null, %struct.tree** %next15, align 8
  %21 = load %struct.tree*, %struct.tree** %retval1, align 8
  store %struct.tree* %21, %struct.tree** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  %22 = load %struct.tree*, %struct.tree** %retval
  ret %struct.tree* %22
}

; Function Attrs: nounwind uwtable
define internal double @distance(%struct.tree* %a, %struct.tree* %b) #0 {
entry:
  %a.addr = alloca %struct.tree*, align 8
  %b.addr = alloca %struct.tree*, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  %bx = alloca double, align 8
  %by = alloca double, align 8
  store %struct.tree* %a, %struct.tree** %a.addr, align 8
  store %struct.tree* %b, %struct.tree** %b.addr, align 8
  %0 = load %struct.tree*, %struct.tree** %a.addr, align 8
  %x = getelementptr inbounds %struct.tree, %struct.tree* %0, i32 0, i32 1
  %1 = load double, double* %x, align 8
  store double %1, double* %ax, align 8
  %2 = load %struct.tree*, %struct.tree** %a.addr, align 8
  %y = getelementptr inbounds %struct.tree, %struct.tree* %2, i32 0, i32 2
  %3 = load double, double* %y, align 8
  store double %3, double* %ay, align 8
  %4 = load %struct.tree*, %struct.tree** %b.addr, align 8
  %x1 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 1
  %5 = load double, double* %x1, align 8
  store double %5, double* %bx, align 8
  %6 = load %struct.tree*, %struct.tree** %b.addr, align 8
  %y2 = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 2
  %7 = load double, double* %y2, align 8
  store double %7, double* %by, align 8
  %8 = load double, double* %ax, align 8
  %9 = load double, double* %bx, align 8
  %sub = fsub double %8, %9
  %10 = load double, double* %ax, align 8
  %11 = load double, double* %bx, align 8
  %sub3 = fsub double %10, %11
  %mul = fmul double %sub, %sub3
  %12 = load double, double* %ay, align 8
  %13 = load double, double* %by, align 8
  %sub4 = fsub double %12, %13
  %14 = load double, double* %ay, align 8
  %15 = load double, double* %by, align 8
  %sub5 = fsub double %14, %15
  %mul6 = fmul double %sub4, %sub5
  %add = fadd double %mul, %mul6
  %call = call double @sqrt(double %add) #2
  ret double %call
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define internal void @reverse(%struct.tree* %t) #0 {
entry:
  %t.addr = alloca %struct.tree*, align 8
  %prev = alloca %struct.tree*, align 8
  %back = alloca %struct.tree*, align 8
  %next = alloca %struct.tree*, align 8
  %tmp = alloca %struct.tree*, align 8
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  %0 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %tobool = icmp ne %struct.tree* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %prev1 = getelementptr inbounds %struct.tree, %struct.tree* %1, i32 0, i32 6
  %2 = load %struct.tree*, %struct.tree** %prev1, align 8
  store %struct.tree* %2, %struct.tree** %prev, align 8
  %3 = load %struct.tree*, %struct.tree** %prev, align 8
  %next2 = getelementptr inbounds %struct.tree, %struct.tree* %3, i32 0, i32 5
  store %struct.tree* null, %struct.tree** %next2, align 8
  %4 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %prev3 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 6
  store %struct.tree* null, %struct.tree** %prev3, align 8
  %5 = load %struct.tree*, %struct.tree** %t.addr, align 8
  store %struct.tree* %5, %struct.tree** %back, align 8
  %6 = load %struct.tree*, %struct.tree** %t.addr, align 8
  store %struct.tree* %6, %struct.tree** %tmp, align 8
  %7 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next4 = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 5
  %8 = load %struct.tree*, %struct.tree** %next4, align 8
  store %struct.tree* %8, %struct.tree** %t.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %tobool5 = icmp ne %struct.tree* %9, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next6 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 5
  %11 = load %struct.tree*, %struct.tree** %next6, align 8
  store %struct.tree* %11, %struct.tree** %next, align 8
  %12 = load %struct.tree*, %struct.tree** %back, align 8
  %13 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next7 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 5
  store %struct.tree* %12, %struct.tree** %next7, align 8
  %14 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %15 = load %struct.tree*, %struct.tree** %back, align 8
  %prev8 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 6
  store %struct.tree* %14, %struct.tree** %prev8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct.tree*, %struct.tree** %t.addr, align 8
  store %struct.tree* %16, %struct.tree** %back, align 8
  %17 = load %struct.tree*, %struct.tree** %next, align 8
  store %struct.tree* %17, %struct.tree** %t.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.tree*, %struct.tree** %prev, align 8
  %19 = load %struct.tree*, %struct.tree** %tmp, align 8
  %next9 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 5
  store %struct.tree* %18, %struct.tree** %next9, align 8
  %20 = load %struct.tree*, %struct.tree** %tmp, align 8
  %21 = load %struct.tree*, %struct.tree** %prev, align 8
  %prev10 = getelementptr inbounds %struct.tree, %struct.tree* %21, i32 0, i32 6
  store %struct.tree* %20, %struct.tree** %prev10, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
