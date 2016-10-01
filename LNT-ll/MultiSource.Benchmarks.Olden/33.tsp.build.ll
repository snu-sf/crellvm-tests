; ModuleID = './MultiSource.Benchmarks.Olden/33.tsp.build.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, double, double, %struct.tree*, %struct.tree*, %struct.tree*, %struct.tree* }

; Function Attrs: nounwind uwtable
define %struct.tree* @build_tree(i32 %n, i32 %dir, i32 %lo, i32 %num_proc, double %min_x, double %max_x, double %min_y, double %max_y) #0 {
entry:
  %retval = alloca %struct.tree*, align 8
  %n.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %lo.addr = alloca i32, align 4
  %num_proc.addr = alloca i32, align 4
  %min_x.addr = alloca double, align 8
  %max_x.addr = alloca double, align 8
  %min_y.addr = alloca double, align 8
  %max_y.addr = alloca double, align 8
  %med = alloca double, align 8
  %t = alloca %struct.tree*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  store i32 %lo, i32* %lo.addr, align 4
  store i32 %num_proc, i32* %num_proc.addr, align 4
  store double %min_x, double* %min_x.addr, align 8
  store double %max_x, double* %max_x.addr, align 8
  store double %min_y, double* %min_y.addr, align 8
  store double %max_y, double* %max_y.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.tree* null, %struct.tree** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call noalias i8* @malloc(i64 56) #2
  %1 = bitcast i8* %call to %struct.tree*
  store %struct.tree* %1, %struct.tree** %t, align 8
  %2 = load i32, i32* %dir.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %3 = load i32, i32* %dir.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %dir.addr, align 4
  %4 = load double, double* %min_x.addr, align 8
  %5 = load double, double* %max_x.addr, align 8
  %6 = load i32, i32* %n.addr, align 4
  %call3 = call double @median(double %4, double %5, i32 %6)
  store double %call3, double* %med, align 8
  %7 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %7, 2
  %8 = load i32, i32* %dir.addr, align 4
  %9 = load i32, i32* %lo.addr, align 4
  %10 = load i32, i32* %num_proc.addr, align 4
  %div4 = sdiv i32 %10, 2
  %add = add nsw i32 %9, %div4
  %11 = load i32, i32* %num_proc.addr, align 4
  %div5 = sdiv i32 %11, 2
  %12 = load double, double* %min_x.addr, align 8
  %13 = load double, double* %med, align 8
  %14 = load double, double* %min_y.addr, align 8
  %15 = load double, double* %max_y.addr, align 8
  %call6 = call %struct.tree* @build_tree(i32 %div, i32 %8, i32 %add, i32 %div5, double %12, double %13, double %14, double %15)
  %16 = load %struct.tree*, %struct.tree** %t, align 8
  %left = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 3
  store %struct.tree* %call6, %struct.tree** %left, align 8
  %17 = load i32, i32* %n.addr, align 4
  %div7 = sdiv i32 %17, 2
  %18 = load i32, i32* %dir.addr, align 4
  %19 = load i32, i32* %lo.addr, align 4
  %20 = load i32, i32* %num_proc.addr, align 4
  %div8 = sdiv i32 %20, 2
  %21 = load double, double* %med, align 8
  %22 = load double, double* %max_x.addr, align 8
  %23 = load double, double* %min_y.addr, align 8
  %24 = load double, double* %max_y.addr, align 8
  %call9 = call %struct.tree* @build_tree(i32 %div7, i32 %18, i32 %19, i32 %div8, double %21, double %22, double %23, double %24)
  %25 = load %struct.tree*, %struct.tree** %t, align 8
  %right = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 4
  store %struct.tree* %call9, %struct.tree** %right, align 8
  %26 = load double, double* %med, align 8
  %27 = load %struct.tree*, %struct.tree** %t, align 8
  %x = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 1
  store double %26, double* %x, align 8
  %28 = load double, double* %min_y.addr, align 8
  %29 = load double, double* %max_y.addr, align 8
  %call10 = call double @uniform(double %28, double %29)
  %30 = load %struct.tree*, %struct.tree** %t, align 8
  %y = getelementptr inbounds %struct.tree, %struct.tree* %30, i32 0, i32 2
  store double %call10, double* %y, align 8
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %31 = load i32, i32* %dir.addr, align 4
  %tobool11 = icmp ne i32 %31, 0
  %lnot12 = xor i1 %tobool11, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  store i32 %lnot.ext13, i32* %dir.addr, align 4
  %32 = load double, double* %min_y.addr, align 8
  %33 = load double, double* %max_y.addr, align 8
  %34 = load i32, i32* %n.addr, align 4
  %call14 = call double @median(double %32, double %33, i32 %34)
  store double %call14, double* %med, align 8
  %35 = load i32, i32* %n.addr, align 4
  %div15 = sdiv i32 %35, 2
  %36 = load i32, i32* %dir.addr, align 4
  %37 = load i32, i32* %lo.addr, align 4
  %38 = load i32, i32* %num_proc.addr, align 4
  %div16 = sdiv i32 %38, 2
  %add17 = add nsw i32 %37, %div16
  %39 = load i32, i32* %num_proc.addr, align 4
  %div18 = sdiv i32 %39, 2
  %40 = load double, double* %min_x.addr, align 8
  %41 = load double, double* %max_x.addr, align 8
  %42 = load double, double* %min_y.addr, align 8
  %43 = load double, double* %med, align 8
  %call19 = call %struct.tree* @build_tree(i32 %div15, i32 %36, i32 %add17, i32 %div18, double %40, double %41, double %42, double %43)
  %44 = load %struct.tree*, %struct.tree** %t, align 8
  %left20 = getelementptr inbounds %struct.tree, %struct.tree* %44, i32 0, i32 3
  store %struct.tree* %call19, %struct.tree** %left20, align 8
  %45 = load i32, i32* %n.addr, align 4
  %div21 = sdiv i32 %45, 2
  %46 = load i32, i32* %dir.addr, align 4
  %47 = load i32, i32* %lo.addr, align 4
  %48 = load i32, i32* %num_proc.addr, align 4
  %div22 = sdiv i32 %48, 2
  %49 = load double, double* %min_x.addr, align 8
  %50 = load double, double* %max_x.addr, align 8
  %51 = load double, double* %med, align 8
  %52 = load double, double* %max_y.addr, align 8
  %call23 = call %struct.tree* @build_tree(i32 %div21, i32 %46, i32 %47, i32 %div22, double %49, double %50, double %51, double %52)
  %53 = load %struct.tree*, %struct.tree** %t, align 8
  %right24 = getelementptr inbounds %struct.tree, %struct.tree* %53, i32 0, i32 4
  store %struct.tree* %call23, %struct.tree** %right24, align 8
  %54 = load double, double* %med, align 8
  %55 = load %struct.tree*, %struct.tree** %t, align 8
  %y25 = getelementptr inbounds %struct.tree, %struct.tree* %55, i32 0, i32 2
  store double %54, double* %y25, align 8
  %56 = load double, double* %min_x.addr, align 8
  %57 = load double, double* %max_x.addr, align 8
  %call26 = call double @uniform(double %56, double %57)
  %58 = load %struct.tree*, %struct.tree** %t, align 8
  %x27 = getelementptr inbounds %struct.tree, %struct.tree* %58, i32 0, i32 1
  store double %call26, double* %x27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.1
  %59 = load i32, i32* %n.addr, align 4
  %60 = load %struct.tree*, %struct.tree** %t, align 8
  %sz = getelementptr inbounds %struct.tree, %struct.tree* %60, i32 0, i32 0
  store i32 %59, i32* %sz, align 4
  %61 = load %struct.tree*, %struct.tree** %t, align 8
  %next = getelementptr inbounds %struct.tree, %struct.tree* %61, i32 0, i32 5
  store %struct.tree* null, %struct.tree** %next, align 8
  %62 = load %struct.tree*, %struct.tree** %t, align 8
  %prev = getelementptr inbounds %struct.tree, %struct.tree* %62, i32 0, i32 6
  store %struct.tree* null, %struct.tree** %prev, align 8
  %63 = load %struct.tree*, %struct.tree** %t, align 8
  store %struct.tree* %63, %struct.tree** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then
  %64 = load %struct.tree*, %struct.tree** %retval
  ret %struct.tree* %64
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal double @median(double %min, double %max, i32 %n) #0 {
entry:
  %min.addr = alloca double, align 8
  %max.addr = alloca double, align 8
  %n.addr = alloca i32, align 4
  %t = alloca double, align 8
  %retval1 = alloca double, align 8
  store double %min, double* %min.addr, align 8
  store double %max, double* %max.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %call = call double @drand48() #2
  store double %call, double* %t, align 8
  %0 = load double, double* %t, align 8
  %cmp = fcmp ogt double %0, 5.000000e-01
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %t, align 8
  %sub = fsub double %1, 5.000000e-01
  %mul = fmul double 0x4113DE0E54D37C9A, %sub
  %div = fdiv double %mul, 0x4103DE1654D37C9A
  %sub2 = fsub double 1.000000e+00, %div
  %call3 = call double @log(double %sub2) #2
  %div4 = fdiv double %call3, 1.200000e+01
  store double %div4, double* %retval1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load double, double* %t, align 8
  %mul5 = fmul double 0x4113DE0E54D37C9A, %2
  %div6 = fdiv double %mul5, 0x4103DE1654D37C9A
  %sub7 = fsub double 1.000000e+00, %div6
  %call8 = call double @log(double %sub7) #2
  %sub9 = fsub double -0.000000e+00, %call8
  %div10 = fdiv double %sub9, 1.200000e+01
  store double %div10, double* %retval1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load double, double* %retval1, align 8
  %add = fadd double %3, 1.000000e+00
  %4 = load double, double* %max.addr, align 8
  %5 = load double, double* %min.addr, align 8
  %sub11 = fsub double %4, %5
  %mul12 = fmul double %add, %sub11
  %div13 = fdiv double %mul12, 2.000000e+00
  store double %div13, double* %retval1, align 8
  %6 = load double, double* %retval1, align 8
  %7 = load double, double* %min.addr, align 8
  %add14 = fadd double %6, %7
  store double %add14, double* %retval1, align 8
  %8 = load double, double* %retval1, align 8
  ret double %8
}

; Function Attrs: nounwind uwtable
define internal double @uniform(double %min, double %max) #0 {
entry:
  %min.addr = alloca double, align 8
  %max.addr = alloca double, align 8
  %retval1 = alloca double, align 8
  store double %min, double* %min.addr, align 8
  store double %max, double* %max.addr, align 8
  %call = call double @drand48() #2
  store double %call, double* %retval1, align 8
  %0 = load double, double* %retval1, align 8
  %1 = load double, double* %max.addr, align 8
  %2 = load double, double* %min.addr, align 8
  %sub = fsub double %1, %2
  %mul = fmul double %0, %sub
  store double %mul, double* %retval1, align 8
  %3 = load double, double* %retval1, align 8
  %4 = load double, double* %min.addr, align 8
  %add = fadd double %3, %4
  ret double %add
}

; Function Attrs: nounwind
declare double @drand48() #1

; Function Attrs: nounwind
declare double @log(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
