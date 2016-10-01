; ModuleID = './MultiSource.Benchmarks.Olden/9.power.compute.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.root = type { %struct.demand, double, double, %struct.demand, double, double, [11 x %struct.lateral*] }
%struct.demand = type { double, double }
%struct.lateral = type { %struct.demand, double, double, double, double, %struct.lateral*, %struct.branch* }
%struct.branch = type { %struct.demand, double, double, double, double, %struct.branch*, [12 x %struct.leaf*] }
%struct.leaf = type { %struct.demand, double, double }

@P = internal global double 1.000000e+00, align 8
@Q = internal global double 1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @Compute_Tree(%struct.root* %r) #0 {
entry:
  %r.addr = alloca %struct.root*, align 8
  %i = alloca i32, align 4
  %l = alloca %struct.lateral*, align 8
  %a = alloca %struct.demand, align 8
  %tmp = alloca %struct.demand, align 8
  %theta_R = alloca double, align 8
  %theta_I = alloca double, align 8
  %coerce = alloca %struct.demand, align 8
  store %struct.root* %r, %struct.root** %r.addr, align 8
  %P = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 0
  store double 0.000000e+00, double* %P, align 8
  %Q = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 1
  store double 0.000000e+00, double* %Q, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.root*, %struct.root** %r.addr, align 8
  %feeders = getelementptr inbounds %struct.root, %struct.root* %2, i32 0, i32 6
  %arrayidx = getelementptr inbounds [11 x %struct.lateral*], [11 x %struct.lateral*]* %feeders, i32 0, i64 %idxprom
  %3 = load %struct.lateral*, %struct.lateral** %arrayidx, align 8
  store %struct.lateral* %3, %struct.lateral** %l, align 8
  %4 = load %struct.root*, %struct.root** %r.addr, align 8
  %theta_R3 = getelementptr inbounds %struct.root, %struct.root* %4, i32 0, i32 1
  %5 = load double, double* %theta_R3, align 8
  store double %5, double* %theta_R, align 8
  %6 = load %struct.root*, %struct.root** %r.addr, align 8
  %theta_I4 = getelementptr inbounds %struct.root, %struct.root* %6, i32 0, i32 2
  %7 = load double, double* %theta_I4, align 8
  store double %7, double* %theta_I, align 8
  %8 = load %struct.lateral*, %struct.lateral** %l, align 8
  %9 = load double, double* %theta_R, align 8
  %10 = load double, double* %theta_I, align 8
  %11 = load double, double* %theta_R, align 8
  %12 = load double, double* %theta_I, align 8
  %call = call { double, double } @Compute_Lateral(%struct.lateral* %8, double %9, double %10, double %11, double %12)
  %13 = bitcast %struct.demand* %coerce to { double, double }*
  %14 = getelementptr { double, double }, { double, double }* %13, i32 0, i32 0
  %15 = extractvalue { double, double } %call, 0
  store double %15, double* %14, align 8
  %16 = getelementptr { double, double }, { double, double }* %13, i32 0, i32 1
  %17 = extractvalue { double, double } %call, 1
  store double %17, double* %16, align 8
  %18 = bitcast %struct.demand* %a to i8*
  %19 = bitcast %struct.demand* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  %P5 = getelementptr inbounds %struct.demand, %struct.demand* %a, i32 0, i32 0
  %20 = load double, double* %P5, align 8
  %P6 = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 0
  %21 = load double, double* %P6, align 8
  %add = fadd double %21, %20
  store double %add, double* %P6, align 8
  %Q7 = getelementptr inbounds %struct.demand, %struct.demand* %a, i32 0, i32 1
  %22 = load double, double* %Q7, align 8
  %Q8 = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 1
  %23 = load double, double* %Q8, align 8
  %add9 = fadd double %23, %22
  store double %add9, double* %Q8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %P10 = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 0
  %25 = load double, double* %P10, align 8
  %26 = load %struct.root*, %struct.root** %r.addr, align 8
  %D = getelementptr inbounds %struct.root, %struct.root* %26, i32 0, i32 0
  %P11 = getelementptr inbounds %struct.demand, %struct.demand* %D, i32 0, i32 0
  store double %25, double* %P11, align 8
  %Q12 = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 1
  %27 = load double, double* %Q12, align 8
  %28 = load %struct.root*, %struct.root** %r.addr, align 8
  %D13 = getelementptr inbounds %struct.root, %struct.root* %28, i32 0, i32 0
  %Q14 = getelementptr inbounds %struct.demand, %struct.demand* %D13, i32 0, i32 1
  store double %27, double* %Q14, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define { double, double } @Compute_Lateral(%struct.lateral* %l, double %theta_R, double %theta_I, double %pi_R, double %pi_I) #0 {
entry:
  %retval = alloca %struct.demand, align 8
  %l.addr = alloca %struct.lateral*, align 8
  %theta_R.addr = alloca double, align 8
  %theta_I.addr = alloca double, align 8
  %pi_R.addr = alloca double, align 8
  %pi_I.addr = alloca double, align 8
  %a1 = alloca %struct.demand, align 8
  %a2 = alloca %struct.demand, align 8
  %new_pi_R = alloca double, align 8
  %new_pi_I = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %root = alloca double, align 8
  %next = alloca %struct.lateral*, align 8
  %br = alloca %struct.branch*, align 8
  %coerce = alloca %struct.demand, align 8
  %coerce11 = alloca %struct.demand, align 8
  store %struct.lateral* %l, %struct.lateral** %l.addr, align 8
  store double %theta_R, double* %theta_R.addr, align 8
  store double %theta_I, double* %theta_I.addr, align 8
  store double %pi_R, double* %pi_R.addr, align 8
  store double %pi_I, double* %pi_I.addr, align 8
  %0 = load double, double* %pi_R.addr, align 8
  %1 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %alpha = getelementptr inbounds %struct.lateral, %struct.lateral* %1, i32 0, i32 1
  %2 = load double, double* %alpha, align 8
  %3 = load double, double* %theta_R.addr, align 8
  %4 = load double, double* %theta_I.addr, align 8
  %5 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %X = getelementptr inbounds %struct.lateral, %struct.lateral* %5, i32 0, i32 4
  %6 = load double, double* %X, align 8
  %mul = fmul double %4, %6
  %7 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %R = getelementptr inbounds %struct.lateral, %struct.lateral* %7, i32 0, i32 3
  %8 = load double, double* %R, align 8
  %div = fdiv double %mul, %8
  %add = fadd double %3, %div
  %mul1 = fmul double %2, %add
  %add2 = fadd double %0, %mul1
  store double %add2, double* %new_pi_R, align 8
  %9 = load double, double* %pi_I.addr, align 8
  %10 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %beta = getelementptr inbounds %struct.lateral, %struct.lateral* %10, i32 0, i32 2
  %11 = load double, double* %beta, align 8
  %12 = load double, double* %theta_I.addr, align 8
  %13 = load double, double* %theta_R.addr, align 8
  %14 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %R3 = getelementptr inbounds %struct.lateral, %struct.lateral* %14, i32 0, i32 3
  %15 = load double, double* %R3, align 8
  %mul4 = fmul double %13, %15
  %16 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %X5 = getelementptr inbounds %struct.lateral, %struct.lateral* %16, i32 0, i32 4
  %17 = load double, double* %X5, align 8
  %div6 = fdiv double %mul4, %17
  %add7 = fadd double %12, %div6
  %mul8 = fmul double %11, %add7
  %add9 = fadd double %9, %mul8
  store double %add9, double* %new_pi_I, align 8
  %18 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %next_lateral = getelementptr inbounds %struct.lateral, %struct.lateral* %18, i32 0, i32 5
  %19 = load %struct.lateral*, %struct.lateral** %next_lateral, align 8
  store %struct.lateral* %19, %struct.lateral** %next, align 8
  %20 = load %struct.lateral*, %struct.lateral** %next, align 8
  %cmp = icmp ne %struct.lateral* %20, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct.lateral*, %struct.lateral** %next, align 8
  %22 = load double, double* %theta_R.addr, align 8
  %23 = load double, double* %theta_I.addr, align 8
  %24 = load double, double* %new_pi_R, align 8
  %25 = load double, double* %new_pi_I, align 8
  %call = call { double, double } @Compute_Lateral(%struct.lateral* %21, double %22, double %23, double %24, double %25)
  %26 = bitcast %struct.demand* %coerce to { double, double }*
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0
  %28 = extractvalue { double, double } %call, 0
  store double %28, double* %27, align 8
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1
  %30 = extractvalue { double, double } %call, 1
  store double %30, double* %29, align 8
  %31 = bitcast %struct.demand* %a1 to i8*
  %32 = bitcast %struct.demand* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %33 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %branch = getelementptr inbounds %struct.lateral, %struct.lateral* %33, i32 0, i32 6
  %34 = load %struct.branch*, %struct.branch** %branch, align 8
  store %struct.branch* %34, %struct.branch** %br, align 8
  %35 = load %struct.branch*, %struct.branch** %br, align 8
  %36 = load double, double* %theta_R.addr, align 8
  %37 = load double, double* %theta_I.addr, align 8
  %38 = load double, double* %new_pi_R, align 8
  %39 = load double, double* %new_pi_I, align 8
  %call10 = call { double, double } @Compute_Branch(%struct.branch* %35, double %36, double %37, double %38, double %39)
  %40 = bitcast %struct.demand* %coerce11 to { double, double }*
  %41 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 0
  %42 = extractvalue { double, double } %call10, 0
  store double %42, double* %41, align 8
  %43 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 1
  %44 = extractvalue { double, double } %call10, 1
  store double %44, double* %43, align 8
  %45 = bitcast %struct.demand* %a2 to i8*
  %46 = bitcast %struct.demand* %coerce11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 16, i32 8, i1 false)
  %47 = load %struct.lateral*, %struct.lateral** %next, align 8
  %cmp12 = icmp ne %struct.lateral* %47, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %P = getelementptr inbounds %struct.demand, %struct.demand* %a1, i32 0, i32 0
  %48 = load double, double* %P, align 8
  %P14 = getelementptr inbounds %struct.demand, %struct.demand* %a2, i32 0, i32 0
  %49 = load double, double* %P14, align 8
  %add15 = fadd double %48, %49
  %50 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D = getelementptr inbounds %struct.lateral, %struct.lateral* %50, i32 0, i32 0
  %P16 = getelementptr inbounds %struct.demand, %struct.demand* %D, i32 0, i32 0
  store double %add15, double* %P16, align 8
  %Q = getelementptr inbounds %struct.demand, %struct.demand* %a1, i32 0, i32 1
  %51 = load double, double* %Q, align 8
  %Q17 = getelementptr inbounds %struct.demand, %struct.demand* %a2, i32 0, i32 1
  %52 = load double, double* %Q17, align 8
  %add18 = fadd double %51, %52
  %53 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D19 = getelementptr inbounds %struct.lateral, %struct.lateral* %53, i32 0, i32 0
  %Q20 = getelementptr inbounds %struct.demand, %struct.demand* %D19, i32 0, i32 1
  store double %add18, double* %Q20, align 8
  br label %if.end.27

if.else:                                          ; preds = %if.end
  %P21 = getelementptr inbounds %struct.demand, %struct.demand* %a2, i32 0, i32 0
  %54 = load double, double* %P21, align 8
  %55 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D22 = getelementptr inbounds %struct.lateral, %struct.lateral* %55, i32 0, i32 0
  %P23 = getelementptr inbounds %struct.demand, %struct.demand* %D22, i32 0, i32 0
  store double %54, double* %P23, align 8
  %Q24 = getelementptr inbounds %struct.demand, %struct.demand* %a2, i32 0, i32 1
  %56 = load double, double* %Q24, align 8
  %57 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D25 = getelementptr inbounds %struct.lateral, %struct.lateral* %57, i32 0, i32 0
  %Q26 = getelementptr inbounds %struct.demand, %struct.demand* %D25, i32 0, i32 1
  store double %56, double* %Q26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.13
  %58 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %R28 = getelementptr inbounds %struct.lateral, %struct.lateral* %58, i32 0, i32 3
  %59 = load double, double* %R28, align 8
  %60 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %R29 = getelementptr inbounds %struct.lateral, %struct.lateral* %60, i32 0, i32 3
  %61 = load double, double* %R29, align 8
  %mul30 = fmul double %59, %61
  %62 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %X31 = getelementptr inbounds %struct.lateral, %struct.lateral* %62, i32 0, i32 4
  %63 = load double, double* %X31, align 8
  %64 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %X32 = getelementptr inbounds %struct.lateral, %struct.lateral* %64, i32 0, i32 4
  %65 = load double, double* %X32, align 8
  %mul33 = fmul double %63, %65
  %add34 = fadd double %mul30, %mul33
  store double %add34, double* %a, align 8
  %66 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %R35 = getelementptr inbounds %struct.lateral, %struct.lateral* %66, i32 0, i32 3
  %67 = load double, double* %R35, align 8
  %mul36 = fmul double 2.000000e+00, %67
  %68 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %X37 = getelementptr inbounds %struct.lateral, %struct.lateral* %68, i32 0, i32 4
  %69 = load double, double* %X37, align 8
  %mul38 = fmul double %mul36, %69
  %70 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D39 = getelementptr inbounds %struct.lateral, %struct.lateral* %70, i32 0, i32 0
  %Q40 = getelementptr inbounds %struct.demand, %struct.demand* %D39, i32 0, i32 1
  %71 = load double, double* %Q40, align 8
  %mul41 = fmul double %mul38, %71
  %72 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %X42 = getelementptr inbounds %struct.lateral, %struct.lateral* %72, i32 0, i32 4
  %73 = load double, double* %X42, align 8
  %mul43 = fmul double 2.000000e+00, %73
  %74 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %X44 = getelementptr inbounds %struct.lateral, %struct.lateral* %74, i32 0, i32 4
  %75 = load double, double* %X44, align 8
  %mul45 = fmul double %mul43, %75
  %76 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D46 = getelementptr inbounds %struct.lateral, %struct.lateral* %76, i32 0, i32 0
  %P47 = getelementptr inbounds %struct.demand, %struct.demand* %D46, i32 0, i32 0
  %77 = load double, double* %P47, align 8
  %mul48 = fmul double %mul45, %77
  %sub = fsub double %mul41, %mul48
  %78 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %R49 = getelementptr inbounds %struct.lateral, %struct.lateral* %78, i32 0, i32 3
  %79 = load double, double* %R49, align 8
  %sub50 = fsub double %sub, %79
  store double %sub50, double* %b, align 8
  %80 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %R51 = getelementptr inbounds %struct.lateral, %struct.lateral* %80, i32 0, i32 3
  %81 = load double, double* %R51, align 8
  %82 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D52 = getelementptr inbounds %struct.lateral, %struct.lateral* %82, i32 0, i32 0
  %Q53 = getelementptr inbounds %struct.demand, %struct.demand* %D52, i32 0, i32 1
  %83 = load double, double* %Q53, align 8
  %mul54 = fmul double %81, %83
  %84 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %X55 = getelementptr inbounds %struct.lateral, %struct.lateral* %84, i32 0, i32 4
  %85 = load double, double* %X55, align 8
  %86 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D56 = getelementptr inbounds %struct.lateral, %struct.lateral* %86, i32 0, i32 0
  %P57 = getelementptr inbounds %struct.demand, %struct.demand* %D56, i32 0, i32 0
  %87 = load double, double* %P57, align 8
  %mul58 = fmul double %85, %87
  %sub59 = fsub double %mul54, %mul58
  store double %sub59, double* %c, align 8
  %88 = load double, double* %c, align 8
  %89 = load double, double* %c, align 8
  %mul60 = fmul double %88, %89
  %90 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %R61 = getelementptr inbounds %struct.lateral, %struct.lateral* %90, i32 0, i32 3
  %91 = load double, double* %R61, align 8
  %92 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D62 = getelementptr inbounds %struct.lateral, %struct.lateral* %92, i32 0, i32 0
  %P63 = getelementptr inbounds %struct.demand, %struct.demand* %D62, i32 0, i32 0
  %93 = load double, double* %P63, align 8
  %mul64 = fmul double %91, %93
  %add65 = fadd double %mul60, %mul64
  store double %add65, double* %c, align 8
  %94 = load double, double* %b, align 8
  %sub66 = fsub double -0.000000e+00, %94
  %95 = load double, double* %b, align 8
  %96 = load double, double* %b, align 8
  %mul67 = fmul double %95, %96
  %97 = load double, double* %a, align 8
  %mul68 = fmul double 4.000000e+00, %97
  %98 = load double, double* %c, align 8
  %mul69 = fmul double %mul68, %98
  %sub70 = fsub double %mul67, %mul69
  %call71 = call double @sqrt(double %sub70) #1
  %sub72 = fsub double %sub66, %call71
  %99 = load double, double* %a, align 8
  %mul73 = fmul double 2.000000e+00, %99
  %div74 = fdiv double %sub72, %mul73
  store double %div74, double* %root, align 8
  %100 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D75 = getelementptr inbounds %struct.lateral, %struct.lateral* %100, i32 0, i32 0
  %Q76 = getelementptr inbounds %struct.demand, %struct.demand* %D75, i32 0, i32 1
  %101 = load double, double* %Q76, align 8
  %102 = load double, double* %root, align 8
  %103 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D77 = getelementptr inbounds %struct.lateral, %struct.lateral* %103, i32 0, i32 0
  %P78 = getelementptr inbounds %struct.demand, %struct.demand* %D77, i32 0, i32 0
  %104 = load double, double* %P78, align 8
  %sub79 = fsub double %102, %104
  %105 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %X80 = getelementptr inbounds %struct.lateral, %struct.lateral* %105, i32 0, i32 4
  %106 = load double, double* %X80, align 8
  %mul81 = fmul double %sub79, %106
  %107 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %R82 = getelementptr inbounds %struct.lateral, %struct.lateral* %107, i32 0, i32 3
  %108 = load double, double* %R82, align 8
  %div83 = fdiv double %mul81, %108
  %add84 = fadd double %101, %div83
  %109 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D85 = getelementptr inbounds %struct.lateral, %struct.lateral* %109, i32 0, i32 0
  %Q86 = getelementptr inbounds %struct.demand, %struct.demand* %D85, i32 0, i32 1
  store double %add84, double* %Q86, align 8
  %110 = load double, double* %root, align 8
  %111 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D87 = getelementptr inbounds %struct.lateral, %struct.lateral* %111, i32 0, i32 0
  %P88 = getelementptr inbounds %struct.demand, %struct.demand* %D87, i32 0, i32 0
  store double %110, double* %P88, align 8
  %112 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %R89 = getelementptr inbounds %struct.lateral, %struct.lateral* %112, i32 0, i32 3
  %113 = load double, double* %R89, align 8
  %mul90 = fmul double 2.000000e+00, %113
  %114 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D91 = getelementptr inbounds %struct.lateral, %struct.lateral* %114, i32 0, i32 0
  %P92 = getelementptr inbounds %struct.demand, %struct.demand* %D91, i32 0, i32 0
  %115 = load double, double* %P92, align 8
  %mul93 = fmul double %mul90, %115
  store double %mul93, double* %a, align 8
  %116 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %X94 = getelementptr inbounds %struct.lateral, %struct.lateral* %116, i32 0, i32 4
  %117 = load double, double* %X94, align 8
  %mul95 = fmul double 2.000000e+00, %117
  %118 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D96 = getelementptr inbounds %struct.lateral, %struct.lateral* %118, i32 0, i32 0
  %Q97 = getelementptr inbounds %struct.demand, %struct.demand* %D96, i32 0, i32 1
  %119 = load double, double* %Q97, align 8
  %mul98 = fmul double %mul95, %119
  store double %mul98, double* %b, align 8
  %120 = load double, double* %a, align 8
  %121 = load double, double* %a, align 8
  %sub99 = fsub double 1.000000e+00, %121
  %122 = load double, double* %b, align 8
  %sub100 = fsub double %sub99, %122
  %div101 = fdiv double %120, %sub100
  %123 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %alpha102 = getelementptr inbounds %struct.lateral, %struct.lateral* %123, i32 0, i32 1
  store double %div101, double* %alpha102, align 8
  %124 = load double, double* %b, align 8
  %125 = load double, double* %a, align 8
  %sub103 = fsub double 1.000000e+00, %125
  %126 = load double, double* %b, align 8
  %sub104 = fsub double %sub103, %126
  %div105 = fdiv double %124, %sub104
  %127 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %beta106 = getelementptr inbounds %struct.lateral, %struct.lateral* %127, i32 0, i32 2
  store double %div105, double* %beta106, align 8
  %128 = load %struct.lateral*, %struct.lateral** %l.addr, align 8
  %D107 = getelementptr inbounds %struct.lateral, %struct.lateral* %128, i32 0, i32 0
  %129 = bitcast %struct.demand* %retval to i8*
  %130 = bitcast %struct.demand* %D107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %130, i64 16, i32 8, i1 false)
  %131 = bitcast %struct.demand* %retval to { double, double }*
  %132 = load { double, double }, { double, double }* %131, align 8
  ret { double, double } %132
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define { double, double } @Compute_Branch(%struct.branch* %br, double %theta_R, double %theta_I, double %pi_R, double %pi_I) #0 {
entry:
  %retval = alloca %struct.demand, align 8
  %br.addr = alloca %struct.branch*, align 8
  %theta_R.addr = alloca double, align 8
  %theta_I.addr = alloca double, align 8
  %pi_R.addr = alloca double, align 8
  %pi_I.addr = alloca double, align 8
  %a2 = alloca %struct.demand, align 8
  %tmp = alloca %struct.demand, align 8
  %new_pi_R = alloca double, align 8
  %new_pi_I = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %root = alloca double, align 8
  %l = alloca %struct.leaf*, align 8
  %next = alloca %struct.branch*, align 8
  %i = alloca i32, align 4
  %a1 = alloca %struct.demand, align 8
  %coerce = alloca %struct.demand, align 8
  %coerce22 = alloca %struct.demand, align 8
  store %struct.branch* %br, %struct.branch** %br.addr, align 8
  store double %theta_R, double* %theta_R.addr, align 8
  store double %theta_I, double* %theta_I.addr, align 8
  store double %pi_R, double* %pi_R.addr, align 8
  store double %pi_I, double* %pi_I.addr, align 8
  %0 = load double, double* %pi_R.addr, align 8
  %1 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %alpha = getelementptr inbounds %struct.branch, %struct.branch* %1, i32 0, i32 1
  %2 = load double, double* %alpha, align 8
  %3 = load double, double* %theta_R.addr, align 8
  %4 = load double, double* %theta_I.addr, align 8
  %5 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %X = getelementptr inbounds %struct.branch, %struct.branch* %5, i32 0, i32 4
  %6 = load double, double* %X, align 8
  %mul = fmul double %4, %6
  %7 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %R = getelementptr inbounds %struct.branch, %struct.branch* %7, i32 0, i32 3
  %8 = load double, double* %R, align 8
  %div = fdiv double %mul, %8
  %add = fadd double %3, %div
  %mul11 = fmul double %2, %add
  %add12 = fadd double %0, %mul11
  store double %add12, double* %new_pi_R, align 8
  %9 = load double, double* %pi_I.addr, align 8
  %10 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %beta = getelementptr inbounds %struct.branch, %struct.branch* %10, i32 0, i32 2
  %11 = load double, double* %beta, align 8
  %12 = load double, double* %theta_I.addr, align 8
  %13 = load double, double* %theta_R.addr, align 8
  %14 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %R13 = getelementptr inbounds %struct.branch, %struct.branch* %14, i32 0, i32 3
  %15 = load double, double* %R13, align 8
  %mul14 = fmul double %13, %15
  %16 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %X15 = getelementptr inbounds %struct.branch, %struct.branch* %16, i32 0, i32 4
  %17 = load double, double* %X15, align 8
  %div16 = fdiv double %mul14, %17
  %add17 = fadd double %12, %div16
  %mul18 = fmul double %11, %add17
  %add19 = fadd double %9, %mul18
  store double %add19, double* %new_pi_I, align 8
  %18 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %next_branch = getelementptr inbounds %struct.branch, %struct.branch* %18, i32 0, i32 5
  %19 = load %struct.branch*, %struct.branch** %next_branch, align 8
  store %struct.branch* %19, %struct.branch** %next, align 8
  %20 = load %struct.branch*, %struct.branch** %next, align 8
  %cmp = icmp ne %struct.branch* %20, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct.branch*, %struct.branch** %next, align 8
  %22 = load double, double* %theta_R.addr, align 8
  %23 = load double, double* %theta_I.addr, align 8
  %24 = load double, double* %new_pi_R, align 8
  %25 = load double, double* %new_pi_I, align 8
  %call = call { double, double } @Compute_Branch(%struct.branch* %21, double %22, double %23, double %24, double %25)
  %26 = bitcast %struct.demand* %coerce to { double, double }*
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0
  %28 = extractvalue { double, double } %call, 0
  store double %28, double* %27, align 8
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1
  %30 = extractvalue { double, double } %call, 1
  store double %30, double* %29, align 8
  %31 = bitcast %struct.demand* %a1 to i8*
  %32 = bitcast %struct.demand* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %P = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 0
  store double 0.000000e+00, double* %P, align 8
  %Q = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 1
  store double 0.000000e+00, double* %Q, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %33 = load i32, i32* %i, align 4
  %cmp20 = icmp slt i32 %33, 12
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %leaves = getelementptr inbounds %struct.branch, %struct.branch* %35, i32 0, i32 6
  %arrayidx = getelementptr inbounds [12 x %struct.leaf*], [12 x %struct.leaf*]* %leaves, i32 0, i64 %idxprom
  %36 = load %struct.leaf*, %struct.leaf** %arrayidx, align 8
  store %struct.leaf* %36, %struct.leaf** %l, align 8
  %37 = load %struct.leaf*, %struct.leaf** %l, align 8
  %38 = load double, double* %new_pi_R, align 8
  %39 = load double, double* %new_pi_I, align 8
  %call21 = call { double, double } @Compute_Leaf(%struct.leaf* %37, double %38, double %39)
  %40 = bitcast %struct.demand* %coerce22 to { double, double }*
  %41 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 0
  %42 = extractvalue { double, double } %call21, 0
  store double %42, double* %41, align 8
  %43 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 1
  %44 = extractvalue { double, double } %call21, 1
  store double %44, double* %43, align 8
  %45 = bitcast %struct.demand* %a2 to i8*
  %46 = bitcast %struct.demand* %coerce22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 16, i32 8, i1 false)
  %P23 = getelementptr inbounds %struct.demand, %struct.demand* %a2, i32 0, i32 0
  %47 = load double, double* %P23, align 8
  %P24 = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 0
  %48 = load double, double* %P24, align 8
  %add25 = fadd double %48, %47
  store double %add25, double* %P24, align 8
  %Q26 = getelementptr inbounds %struct.demand, %struct.demand* %a2, i32 0, i32 1
  %49 = load double, double* %Q26, align 8
  %Q27 = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 1
  %50 = load double, double* %Q27, align 8
  %add28 = fadd double %50, %49
  store double %add28, double* %Q27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load %struct.branch*, %struct.branch** %next, align 8
  %cmp29 = icmp ne %struct.branch* %52, null
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %for.end
  %P31 = getelementptr inbounds %struct.demand, %struct.demand* %a1, i32 0, i32 0
  %53 = load double, double* %P31, align 8
  %P32 = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 0
  %54 = load double, double* %P32, align 8
  %add33 = fadd double %53, %54
  %55 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D = getelementptr inbounds %struct.branch, %struct.branch* %55, i32 0, i32 0
  %P34 = getelementptr inbounds %struct.demand, %struct.demand* %D, i32 0, i32 0
  store double %add33, double* %P34, align 8
  %Q35 = getelementptr inbounds %struct.demand, %struct.demand* %a1, i32 0, i32 1
  %56 = load double, double* %Q35, align 8
  %Q36 = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 1
  %57 = load double, double* %Q36, align 8
  %add37 = fadd double %56, %57
  %58 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D38 = getelementptr inbounds %struct.branch, %struct.branch* %58, i32 0, i32 0
  %Q39 = getelementptr inbounds %struct.demand, %struct.demand* %D38, i32 0, i32 1
  store double %add37, double* %Q39, align 8
  br label %if.end.46

if.else:                                          ; preds = %for.end
  %P40 = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 0
  %59 = load double, double* %P40, align 8
  %60 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D41 = getelementptr inbounds %struct.branch, %struct.branch* %60, i32 0, i32 0
  %P42 = getelementptr inbounds %struct.demand, %struct.demand* %D41, i32 0, i32 0
  store double %59, double* %P42, align 8
  %Q43 = getelementptr inbounds %struct.demand, %struct.demand* %tmp, i32 0, i32 1
  %61 = load double, double* %Q43, align 8
  %62 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D44 = getelementptr inbounds %struct.branch, %struct.branch* %62, i32 0, i32 0
  %Q45 = getelementptr inbounds %struct.demand, %struct.demand* %D44, i32 0, i32 1
  store double %61, double* %Q45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.30
  %63 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %R47 = getelementptr inbounds %struct.branch, %struct.branch* %63, i32 0, i32 3
  %64 = load double, double* %R47, align 8
  %65 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %R48 = getelementptr inbounds %struct.branch, %struct.branch* %65, i32 0, i32 3
  %66 = load double, double* %R48, align 8
  %mul49 = fmul double %64, %66
  %67 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %X50 = getelementptr inbounds %struct.branch, %struct.branch* %67, i32 0, i32 4
  %68 = load double, double* %X50, align 8
  %69 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %X51 = getelementptr inbounds %struct.branch, %struct.branch* %69, i32 0, i32 4
  %70 = load double, double* %X51, align 8
  %mul52 = fmul double %68, %70
  %add53 = fadd double %mul49, %mul52
  store double %add53, double* %a, align 8
  %71 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %R54 = getelementptr inbounds %struct.branch, %struct.branch* %71, i32 0, i32 3
  %72 = load double, double* %R54, align 8
  %mul55 = fmul double 2.000000e+00, %72
  %73 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %X56 = getelementptr inbounds %struct.branch, %struct.branch* %73, i32 0, i32 4
  %74 = load double, double* %X56, align 8
  %mul57 = fmul double %mul55, %74
  %75 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D58 = getelementptr inbounds %struct.branch, %struct.branch* %75, i32 0, i32 0
  %Q59 = getelementptr inbounds %struct.demand, %struct.demand* %D58, i32 0, i32 1
  %76 = load double, double* %Q59, align 8
  %mul60 = fmul double %mul57, %76
  %77 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %X61 = getelementptr inbounds %struct.branch, %struct.branch* %77, i32 0, i32 4
  %78 = load double, double* %X61, align 8
  %mul62 = fmul double 2.000000e+00, %78
  %79 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %X63 = getelementptr inbounds %struct.branch, %struct.branch* %79, i32 0, i32 4
  %80 = load double, double* %X63, align 8
  %mul64 = fmul double %mul62, %80
  %81 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D65 = getelementptr inbounds %struct.branch, %struct.branch* %81, i32 0, i32 0
  %P66 = getelementptr inbounds %struct.demand, %struct.demand* %D65, i32 0, i32 0
  %82 = load double, double* %P66, align 8
  %mul67 = fmul double %mul64, %82
  %sub = fsub double %mul60, %mul67
  %83 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %R68 = getelementptr inbounds %struct.branch, %struct.branch* %83, i32 0, i32 3
  %84 = load double, double* %R68, align 8
  %sub69 = fsub double %sub, %84
  store double %sub69, double* %b, align 8
  %85 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %R70 = getelementptr inbounds %struct.branch, %struct.branch* %85, i32 0, i32 3
  %86 = load double, double* %R70, align 8
  %87 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D71 = getelementptr inbounds %struct.branch, %struct.branch* %87, i32 0, i32 0
  %Q72 = getelementptr inbounds %struct.demand, %struct.demand* %D71, i32 0, i32 1
  %88 = load double, double* %Q72, align 8
  %mul73 = fmul double %86, %88
  %89 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %X74 = getelementptr inbounds %struct.branch, %struct.branch* %89, i32 0, i32 4
  %90 = load double, double* %X74, align 8
  %91 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D75 = getelementptr inbounds %struct.branch, %struct.branch* %91, i32 0, i32 0
  %P76 = getelementptr inbounds %struct.demand, %struct.demand* %D75, i32 0, i32 0
  %92 = load double, double* %P76, align 8
  %mul77 = fmul double %90, %92
  %sub78 = fsub double %mul73, %mul77
  store double %sub78, double* %c, align 8
  %93 = load double, double* %c, align 8
  %94 = load double, double* %c, align 8
  %mul79 = fmul double %93, %94
  %95 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %R80 = getelementptr inbounds %struct.branch, %struct.branch* %95, i32 0, i32 3
  %96 = load double, double* %R80, align 8
  %97 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D81 = getelementptr inbounds %struct.branch, %struct.branch* %97, i32 0, i32 0
  %P82 = getelementptr inbounds %struct.demand, %struct.demand* %D81, i32 0, i32 0
  %98 = load double, double* %P82, align 8
  %mul83 = fmul double %96, %98
  %add84 = fadd double %mul79, %mul83
  store double %add84, double* %c, align 8
  %99 = load double, double* %b, align 8
  %sub85 = fsub double -0.000000e+00, %99
  %100 = load double, double* %b, align 8
  %101 = load double, double* %b, align 8
  %mul86 = fmul double %100, %101
  %102 = load double, double* %a, align 8
  %mul87 = fmul double 4.000000e+00, %102
  %103 = load double, double* %c, align 8
  %mul88 = fmul double %mul87, %103
  %sub89 = fsub double %mul86, %mul88
  %call90 = call double @sqrt(double %sub89) #1
  %sub91 = fsub double %sub85, %call90
  %104 = load double, double* %a, align 8
  %mul92 = fmul double 2.000000e+00, %104
  %div93 = fdiv double %sub91, %mul92
  store double %div93, double* %root, align 8
  %105 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D94 = getelementptr inbounds %struct.branch, %struct.branch* %105, i32 0, i32 0
  %Q95 = getelementptr inbounds %struct.demand, %struct.demand* %D94, i32 0, i32 1
  %106 = load double, double* %Q95, align 8
  %107 = load double, double* %root, align 8
  %108 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D96 = getelementptr inbounds %struct.branch, %struct.branch* %108, i32 0, i32 0
  %P97 = getelementptr inbounds %struct.demand, %struct.demand* %D96, i32 0, i32 0
  %109 = load double, double* %P97, align 8
  %sub98 = fsub double %107, %109
  %110 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %X99 = getelementptr inbounds %struct.branch, %struct.branch* %110, i32 0, i32 4
  %111 = load double, double* %X99, align 8
  %mul100 = fmul double %sub98, %111
  %112 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %R101 = getelementptr inbounds %struct.branch, %struct.branch* %112, i32 0, i32 3
  %113 = load double, double* %R101, align 8
  %div102 = fdiv double %mul100, %113
  %add103 = fadd double %106, %div102
  %114 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D104 = getelementptr inbounds %struct.branch, %struct.branch* %114, i32 0, i32 0
  %Q105 = getelementptr inbounds %struct.demand, %struct.demand* %D104, i32 0, i32 1
  store double %add103, double* %Q105, align 8
  %115 = load double, double* %root, align 8
  %116 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D106 = getelementptr inbounds %struct.branch, %struct.branch* %116, i32 0, i32 0
  %P107 = getelementptr inbounds %struct.demand, %struct.demand* %D106, i32 0, i32 0
  store double %115, double* %P107, align 8
  %117 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %R108 = getelementptr inbounds %struct.branch, %struct.branch* %117, i32 0, i32 3
  %118 = load double, double* %R108, align 8
  %mul109 = fmul double 2.000000e+00, %118
  %119 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D110 = getelementptr inbounds %struct.branch, %struct.branch* %119, i32 0, i32 0
  %P111 = getelementptr inbounds %struct.demand, %struct.demand* %D110, i32 0, i32 0
  %120 = load double, double* %P111, align 8
  %mul112 = fmul double %mul109, %120
  store double %mul112, double* %a, align 8
  %121 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %X113 = getelementptr inbounds %struct.branch, %struct.branch* %121, i32 0, i32 4
  %122 = load double, double* %X113, align 8
  %mul114 = fmul double 2.000000e+00, %122
  %123 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D115 = getelementptr inbounds %struct.branch, %struct.branch* %123, i32 0, i32 0
  %Q116 = getelementptr inbounds %struct.demand, %struct.demand* %D115, i32 0, i32 1
  %124 = load double, double* %Q116, align 8
  %mul117 = fmul double %mul114, %124
  store double %mul117, double* %b, align 8
  %125 = load double, double* %a, align 8
  %126 = load double, double* %a, align 8
  %sub118 = fsub double 1.000000e+00, %126
  %127 = load double, double* %b, align 8
  %sub119 = fsub double %sub118, %127
  %div120 = fdiv double %125, %sub119
  %128 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %alpha121 = getelementptr inbounds %struct.branch, %struct.branch* %128, i32 0, i32 1
  store double %div120, double* %alpha121, align 8
  %129 = load double, double* %b, align 8
  %130 = load double, double* %a, align 8
  %sub122 = fsub double 1.000000e+00, %130
  %131 = load double, double* %b, align 8
  %sub123 = fsub double %sub122, %131
  %div124 = fdiv double %129, %sub123
  %132 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %beta125 = getelementptr inbounds %struct.branch, %struct.branch* %132, i32 0, i32 2
  store double %div124, double* %beta125, align 8
  %133 = load %struct.branch*, %struct.branch** %br.addr, align 8
  %D126 = getelementptr inbounds %struct.branch, %struct.branch* %133, i32 0, i32 0
  %134 = bitcast %struct.demand* %retval to i8*
  %135 = bitcast %struct.demand* %D126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 16, i32 8, i1 false)
  %136 = bitcast %struct.demand* %retval to { double, double }*
  %137 = load { double, double }, { double, double }* %136, align 8
  ret { double, double } %137
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define { double, double } @Compute_Leaf(%struct.leaf* %l, double %pi_R, double %pi_I) #0 {
entry:
  %retval = alloca %struct.demand, align 8
  %l.addr = alloca %struct.leaf*, align 8
  %pi_R.addr = alloca double, align 8
  %pi_I.addr = alloca double, align 8
  store %struct.leaf* %l, %struct.leaf** %l.addr, align 8
  store double %pi_R, double* %pi_R.addr, align 8
  store double %pi_I, double* %pi_I.addr, align 8
  %0 = load %struct.leaf*, %struct.leaf** %l.addr, align 8
  %D = getelementptr inbounds %struct.leaf, %struct.leaf* %0, i32 0, i32 0
  %P = getelementptr inbounds %struct.demand, %struct.demand* %D, i32 0, i32 0
  %1 = load double, double* %P, align 8
  store double %1, double* @P, align 8
  %2 = load %struct.leaf*, %struct.leaf** %l.addr, align 8
  %D1 = getelementptr inbounds %struct.leaf, %struct.leaf* %2, i32 0, i32 0
  %Q = getelementptr inbounds %struct.demand, %struct.demand* %D1, i32 0, i32 1
  %3 = load double, double* %Q, align 8
  store double %3, double* @Q, align 8
  %4 = load double, double* %pi_R.addr, align 8
  %5 = load double, double* %pi_I.addr, align 8
  call void @optimize_node(double %4, double %5)
  %6 = load double, double* @P, align 8
  %cmp = fcmp olt double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* @P, align 8
  store double 0.000000e+00, double* @Q, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load double, double* @P, align 8
  %8 = load %struct.leaf*, %struct.leaf** %l.addr, align 8
  %D2 = getelementptr inbounds %struct.leaf, %struct.leaf* %8, i32 0, i32 0
  %P3 = getelementptr inbounds %struct.demand, %struct.demand* %D2, i32 0, i32 0
  store double %7, double* %P3, align 8
  %9 = load double, double* @Q, align 8
  %10 = load %struct.leaf*, %struct.leaf** %l.addr, align 8
  %D4 = getelementptr inbounds %struct.leaf, %struct.leaf* %10, i32 0, i32 0
  %Q5 = getelementptr inbounds %struct.demand, %struct.demand* %D4, i32 0, i32 1
  store double %9, double* %Q5, align 8
  %11 = load %struct.leaf*, %struct.leaf** %l.addr, align 8
  %D6 = getelementptr inbounds %struct.leaf, %struct.leaf* %11, i32 0, i32 0
  %12 = bitcast %struct.demand* %retval to i8*
  %13 = bitcast %struct.demand* %D6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false)
  %14 = bitcast %struct.demand* %retval to { double, double }*
  %15 = load { double, double }, { double, double }* %14, align 8
  ret { double, double } %15
}

; Function Attrs: nounwind uwtable
define void @optimize_node(double %pi_R, double %pi_I) #0 {
entry:
  %pi_R.addr = alloca double, align 8
  %pi_I.addr = alloca double, align 8
  %g = alloca double, align 8
  %h = alloca double, align 8
  %grad_f = alloca [2 x double], align 16
  %grad_g = alloca [2 x double], align 16
  %grad_h = alloca [2 x double], align 16
  %dd_grad_f = alloca [2 x double], align 16
  %magnitude = alloca double, align 8
  %i = alloca i32, align 4
  %total = alloca double, align 8
  %max_dist = alloca double, align 8
  store double %pi_R, double* %pi_R.addr, align 8
  store double %pi_I, double* %pi_I.addr, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %call = call double @find_h()
  store double %call, double* %h, align 8
  %0 = load double, double* %h, align 8
  %call1 = call double @fabs(double %0) #4
  %cmp = fcmp ogt double %call1, 1.000000e-06
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %grad_h, i32 0, i32 0
  %call2 = call double @find_gradient_h(double* %arraydecay)
  store double %call2, double* %magnitude, align 8
  %1 = load double, double* %h, align 8
  %2 = load double, double* %magnitude, align 8
  %div = fdiv double %1, %2
  store double %div, double* %total, align 8
  %3 = load double, double* %total, align 8
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %grad_h, i32 0, i64 0
  %4 = load double, double* %arrayidx, align 8
  %mul = fmul double %3, %4
  %5 = load double, double* @P, align 8
  %sub = fsub double %5, %mul
  store double %sub, double* @P, align 8
  %6 = load double, double* %total, align 8
  %arrayidx3 = getelementptr inbounds [2 x double], [2 x double]* %grad_h, i32 0, i64 1
  %7 = load double, double* %arrayidx3, align 8
  %mul4 = fmul double %6, %7
  %8 = load double, double* @Q, align 8
  %sub5 = fsub double %8, %mul4
  store double %sub5, double* @Q, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %call6 = call double @find_g()
  store double %call6, double* %g, align 8
  %9 = load double, double* %g, align 8
  %cmp7 = fcmp ogt double %9, 1.000000e-06
  br i1 %cmp7, label %if.then.8, label %if.end.24

if.then.8:                                        ; preds = %if.end
  %arraydecay9 = getelementptr inbounds [2 x double], [2 x double]* %grad_g, i32 0, i32 0
  %call10 = call double @find_gradient_g(double* %arraydecay9)
  store double %call10, double* %magnitude, align 8
  %arraydecay11 = getelementptr inbounds [2 x double], [2 x double]* %grad_h, i32 0, i32 0
  %call12 = call double @find_gradient_h(double* %arraydecay11)
  %arraydecay13 = getelementptr inbounds [2 x double], [2 x double]* %grad_g, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [2 x double], [2 x double]* %grad_h, i32 0, i32 0
  %call15 = call double @make_orthogonal(double* %arraydecay13, double* %arraydecay14)
  %10 = load double, double* %magnitude, align 8
  %mul16 = fmul double %10, %call15
  store double %mul16, double* %magnitude, align 8
  %11 = load double, double* %g, align 8
  %12 = load double, double* %magnitude, align 8
  %div17 = fdiv double %11, %12
  store double %div17, double* %total, align 8
  %13 = load double, double* %total, align 8
  %arrayidx18 = getelementptr inbounds [2 x double], [2 x double]* %grad_g, i32 0, i64 0
  %14 = load double, double* %arrayidx18, align 8
  %mul19 = fmul double %13, %14
  %15 = load double, double* @P, align 8
  %sub20 = fsub double %15, %mul19
  store double %sub20, double* @P, align 8
  %16 = load double, double* %total, align 8
  %arrayidx21 = getelementptr inbounds [2 x double], [2 x double]* %grad_g, i32 0, i64 1
  %17 = load double, double* %arrayidx21, align 8
  %mul22 = fmul double %16, %17
  %18 = load double, double* @Q, align 8
  %sub23 = fsub double %18, %mul22
  store double %sub23, double* @Q, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.8, %if.end
  %19 = load double, double* %pi_R.addr, align 8
  %20 = load double, double* %pi_I.addr, align 8
  %arraydecay25 = getelementptr inbounds [2 x double], [2 x double]* %grad_f, i32 0, i32 0
  %call26 = call double @find_gradient_f(double %19, double %20, double* %arraydecay25)
  store double %call26, double* %magnitude, align 8
  %21 = load double, double* %pi_R.addr, align 8
  %22 = load double, double* %pi_I.addr, align 8
  %arraydecay27 = getelementptr inbounds [2 x double], [2 x double]* %dd_grad_f, i32 0, i32 0
  call void @find_dd_grad_f(double %21, double %22, double* %arraydecay27)
  store double 0.000000e+00, double* %total, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %23 = load i32, i32* %i, align 4
  %cmp28 = icmp slt i32 %23, 2
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [2 x double], [2 x double]* %grad_f, i32 0, i64 %idxprom
  %25 = load double, double* %arrayidx29, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds [2 x double], [2 x double]* %dd_grad_f, i32 0, i64 %idxprom30
  %27 = load double, double* %arrayidx31, align 8
  %mul32 = fmul double %25, %27
  %28 = load double, double* %total, align 8
  %add = fadd double %28, %mul32
  store double %add, double* %total, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load double, double* %total, align 8
  %call33 = call double @fabs(double %30) #4
  %31 = load double, double* %magnitude, align 8
  %div34 = fdiv double %31, %call33
  store double %div34, double* %magnitude, align 8
  %arraydecay35 = getelementptr inbounds [2 x double], [2 x double]* %grad_h, i32 0, i32 0
  %call36 = call double @find_gradient_h(double* %arraydecay35)
  %arraydecay37 = getelementptr inbounds [2 x double], [2 x double]* %grad_f, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [2 x double], [2 x double]* %grad_h, i32 0, i32 0
  %call39 = call double @make_orthogonal(double* %arraydecay37, double* %arraydecay38)
  %32 = load double, double* %magnitude, align 8
  %mul40 = fmul double %32, %call39
  store double %mul40, double* %magnitude, align 8
  %arraydecay41 = getelementptr inbounds [2 x double], [2 x double]* %grad_g, i32 0, i32 0
  %call42 = call double @find_gradient_g(double* %arraydecay41)
  store double 0.000000e+00, double* %total, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.52, %for.end
  %33 = load i32, i32* %i, align 4
  %cmp44 = icmp slt i32 %33, 2
  br i1 %cmp44, label %for.body.45, label %for.end.54

for.body.45:                                      ; preds = %for.cond.43
  %34 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %34 to i64
  %arrayidx47 = getelementptr inbounds [2 x double], [2 x double]* %grad_f, i32 0, i64 %idxprom46
  %35 = load double, double* %arrayidx47, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %36 to i64
  %arrayidx49 = getelementptr inbounds [2 x double], [2 x double]* %grad_g, i32 0, i64 %idxprom48
  %37 = load double, double* %arrayidx49, align 8
  %mul50 = fmul double %35, %37
  %38 = load double, double* %total, align 8
  %add51 = fadd double %38, %mul50
  store double %add51, double* %total, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.45
  %39 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %39, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.43

for.end.54:                                       ; preds = %for.cond.43
  %40 = load double, double* %total, align 8
  %cmp55 = fcmp ogt double %40, 0.000000e+00
  br i1 %cmp55, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %for.end.54
  %call57 = call double @find_g()
  %sub58 = fsub double -0.000000e+00, %call57
  %41 = load double, double* %total, align 8
  %div59 = fdiv double %sub58, %41
  store double %div59, double* %max_dist, align 8
  %42 = load double, double* %magnitude, align 8
  %43 = load double, double* %max_dist, align 8
  %cmp60 = fcmp ogt double %42, %43
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.56
  %44 = load double, double* %max_dist, align 8
  store double %44, double* %magnitude, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.then.56
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %for.end.54
  %45 = load double, double* %magnitude, align 8
  %arrayidx64 = getelementptr inbounds [2 x double], [2 x double]* %grad_f, i32 0, i64 0
  %46 = load double, double* %arrayidx64, align 8
  %mul65 = fmul double %45, %46
  %47 = load double, double* @P, align 8
  %add66 = fadd double %47, %mul65
  store double %add66, double* @P, align 8
  %48 = load double, double* %magnitude, align 8
  %arrayidx67 = getelementptr inbounds [2 x double], [2 x double]* %grad_f, i32 0, i64 1
  %49 = load double, double* %arrayidx67, align 8
  %mul68 = fmul double %48, %49
  %50 = load double, double* @Q, align 8
  %add69 = fadd double %50, %mul68
  store double %add69, double* @Q, align 8
  %call70 = call double @find_h()
  store double %call70, double* %h, align 8
  %call71 = call double @find_g()
  store double %call71, double* %g, align 8
  %51 = load double, double* %pi_R.addr, align 8
  %52 = load double, double* %pi_I.addr, align 8
  %arraydecay72 = getelementptr inbounds [2 x double], [2 x double]* %grad_f, i32 0, i32 0
  %call73 = call double @find_gradient_f(double %51, double %52, double* %arraydecay72)
  %arraydecay74 = getelementptr inbounds [2 x double], [2 x double]* %grad_h, i32 0, i32 0
  %call75 = call double @find_gradient_h(double* %arraydecay74)
  br label %do.cond

do.cond:                                          ; preds = %if.end.63
  %53 = load double, double* %h, align 8
  %call76 = call double @fabs(double %53) #4
  %cmp77 = fcmp ogt double %call76, 1.000000e-06
  br i1 %cmp77, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %54 = load double, double* %g, align 8
  %cmp78 = fcmp ogt double %54, 1.000000e-06
  br i1 %cmp78, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %55 = load double, double* %g, align 8
  %call79 = call double @fabs(double %55) #4
  %cmp80 = fcmp ogt double %call79, 1.000000e-06
  br i1 %cmp80, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %arrayidx81 = getelementptr inbounds [2 x double], [2 x double]* %grad_f, i32 0, i64 0
  %56 = load double, double* %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds [2 x double], [2 x double]* %grad_h, i32 0, i64 1
  %57 = load double, double* %arrayidx82, align 8
  %mul83 = fmul double %56, %57
  %arrayidx84 = getelementptr inbounds [2 x double], [2 x double]* %grad_f, i32 0, i64 1
  %58 = load double, double* %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds [2 x double], [2 x double]* %grad_h, i32 0, i64 0
  %59 = load double, double* %arrayidx85, align 8
  %mul86 = fmul double %58, %59
  %sub87 = fsub double %mul83, %mul86
  %call88 = call double @fabs(double %sub87) #4
  %cmp89 = fcmp ogt double %call88, 1.000000e-06
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %60 = phi i1 [ false, %lor.rhs ], [ %cmp89, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %do.cond
  %61 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %60, %land.end ]
  br i1 %61, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define double @find_gradient_h(double* %gradient) #0 {
entry:
  %gradient.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %magnitude = alloca double, align 8
  store double* %gradient, double** %gradient.addr, align 8
  store double 0.000000e+00, double* %magnitude, align 8
  %0 = load double*, double** %gradient.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  store double 1.000000e+00, double* %arrayidx, align 8
  %1 = load double*, double** %gradient.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %1, i64 1
  store double -5.000000e+00, double* %arrayidx1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** %gradient.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx2, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load double*, double** %gradient.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %7, i64 %idxprom3
  %8 = load double, double* %arrayidx4, align 8
  %mul = fmul double %5, %8
  %9 = load double, double* %magnitude, align 8
  %add = fadd double %9, %mul
  store double %add, double* %magnitude, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load double, double* %magnitude, align 8
  %call = call double @sqrt(double %11) #1
  store double %call, double* %magnitude, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.10, %for.end
  %12 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %12, 2
  br i1 %cmp6, label %for.body.7, label %for.end.12

for.body.7:                                       ; preds = %for.cond.5
  %13 = load double, double* %magnitude, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load double*, double** %gradient.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %15, i64 %idxprom8
  %16 = load double, double* %arrayidx9, align 8
  %div = fdiv double %16, %13
  store double %div, double* %arrayidx9, align 8
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.7
  %17 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.5

for.end.12:                                       ; preds = %for.cond.5
  %18 = load double, double* %magnitude, align 8
  ret double %18
}

; Function Attrs: nounwind uwtable
define double @find_gradient_g(double* %gradient) #0 {
entry:
  %gradient.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %magnitude = alloca double, align 8
  store double* %gradient, double** %gradient.addr, align 8
  store double 0.000000e+00, double* %magnitude, align 8
  %0 = load double, double* @P, align 8
  %mul = fmul double 2.000000e+00, %0
  %1 = load double*, double** %gradient.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %1, i64 0
  store double %mul, double* %arrayidx, align 8
  %2 = load double, double* @Q, align 8
  %mul1 = fmul double 2.000000e+00, %2
  %3 = load double*, double** %gradient.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %3, i64 1
  store double %mul1, double* %arrayidx2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load double*, double** %gradient.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 %idxprom
  %7 = load double, double* %arrayidx3, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load double*, double** %gradient.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4
  %10 = load double, double* %arrayidx5, align 8
  %mul6 = fmul double %7, %10
  %11 = load double, double* %magnitude, align 8
  %add = fadd double %11, %mul6
  store double %add, double* %magnitude, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load double, double* %magnitude, align 8
  %call = call double @sqrt(double %13) #1
  store double %call, double* %magnitude, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.12, %for.end
  %14 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %14, 2
  br i1 %cmp8, label %for.body.9, label %for.end.14

for.body.9:                                       ; preds = %for.cond.7
  %15 = load double, double* %magnitude, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load double*, double** %gradient.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %17, i64 %idxprom10
  %18 = load double, double* %arrayidx11, align 8
  %div = fdiv double %18, %15
  store double %div, double* %arrayidx11, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.9
  %19 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond.7

for.end.14:                                       ; preds = %for.cond.7
  %20 = load double, double* %magnitude, align 8
  ret double %20
}

; Function Attrs: nounwind uwtable
define double @make_orthogonal(double* %v_mod, double* %v_static) #0 {
entry:
  %retval = alloca double, align 8
  %v_mod.addr = alloca double*, align 8
  %v_static.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %total = alloca double, align 8
  %length = alloca double, align 8
  store double* %v_mod, double** %v_mod.addr, align 8
  store double* %v_static, double** %v_static.addr, align 8
  store double 0.000000e+00, double* %total, align 8
  store double 0.000000e+00, double* %length, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load double*, double** %v_mod.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load double*, double** %v_static.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %5, i64 %idxprom1
  %6 = load double, double* %arrayidx2, align 8
  %mul = fmul double %3, %6
  %7 = load double, double* %total, align 8
  %add = fadd double %7, %mul
  store double %add, double* %total, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.17, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %9, 2
  br i1 %cmp4, label %for.body.5, label %for.end.19

for.body.5:                                       ; preds = %for.cond.3
  %10 = load double, double* %total, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load double*, double** %v_static.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 %idxprom6
  %13 = load double, double* %arrayidx7, align 8
  %mul8 = fmul double %10, %13
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load double*, double** %v_mod.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %15, i64 %idxprom9
  %16 = load double, double* %arrayidx10, align 8
  %sub = fsub double %16, %mul8
  store double %sub, double* %arrayidx10, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load double*, double** %v_mod.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %18, i64 %idxprom11
  %19 = load double, double* %arrayidx12, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load double*, double** %v_mod.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %21, i64 %idxprom13
  %22 = load double, double* %arrayidx14, align 8
  %mul15 = fmul double %19, %22
  %23 = load double, double* %length, align 8
  %add16 = fadd double %23, %mul15
  store double %add16, double* %length, align 8
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.5
  %24 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %24, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.3

for.end.19:                                       ; preds = %for.cond.3
  %25 = load double, double* %length, align 8
  %call = call double @sqrt(double %25) #1
  store double %call, double* %length, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.25, %for.end.19
  %26 = load i32, i32* %i, align 4
  %cmp21 = icmp slt i32 %26, 2
  br i1 %cmp21, label %for.body.22, label %for.end.27

for.body.22:                                      ; preds = %for.cond.20
  %27 = load double, double* %length, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load double*, double** %v_mod.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %29, i64 %idxprom23
  %30 = load double, double* %arrayidx24, align 8
  %div = fdiv double %30, %27
  store double %div, double* %arrayidx24, align 8
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.22
  %31 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %31, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.20

for.end.27:                                       ; preds = %for.cond.20
  %32 = load double, double* %total, align 8
  %33 = load double, double* %total, align 8
  %mul28 = fmul double %32, %33
  %sub29 = fsub double 1.000000e+00, %mul28
  %cmp30 = fcmp olt double %sub29, 0.000000e+00
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.27
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %for.end.27
  %34 = load double, double* %total, align 8
  %35 = load double, double* %total, align 8
  %mul31 = fmul double %34, %35
  %sub32 = fsub double 1.000000e+00, %mul31
  %call33 = call double @sqrt(double %sub32) #1
  store double %call33, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %36 = load double, double* %retval
  ret double %36
}

; Function Attrs: nounwind uwtable
define double @find_gradient_f(double %pi_R, double %pi_I, double* %gradient) #0 {
entry:
  %pi_R.addr = alloca double, align 8
  %pi_I.addr = alloca double, align 8
  %gradient.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %magnitude = alloca double, align 8
  store double %pi_R, double* %pi_R.addr, align 8
  store double %pi_I, double* %pi_I.addr, align 8
  store double* %gradient, double** %gradient.addr, align 8
  store double 0.000000e+00, double* %magnitude, align 8
  %0 = load double, double* @P, align 8
  %add = fadd double 1.000000e+00, %0
  %div = fdiv double 1.000000e+00, %add
  %1 = load double, double* %pi_R.addr, align 8
  %sub = fsub double %div, %1
  %2 = load double*, double** %gradient.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 0
  store double %sub, double* %arrayidx, align 8
  %3 = load double, double* @Q, align 8
  %add1 = fadd double 1.000000e+00, %3
  %div2 = fdiv double 1.000000e+00, %add1
  %4 = load double, double* %pi_I.addr, align 8
  %sub3 = fsub double %div2, %4
  %5 = load double*, double** %gradient.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %5, i64 1
  store double %sub3, double* %arrayidx4, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load double*, double** %gradient.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 %idxprom
  %9 = load double, double* %arrayidx5, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load double*, double** %gradient.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %11, i64 %idxprom6
  %12 = load double, double* %arrayidx7, align 8
  %mul = fmul double %9, %12
  %13 = load double, double* %magnitude, align 8
  %add8 = fadd double %13, %mul
  store double %add8, double* %magnitude, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load double, double* %magnitude, align 8
  %call = call double @sqrt(double %15) #1
  store double %call, double* %magnitude, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.15, %for.end
  %16 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %16, 2
  br i1 %cmp10, label %for.body.11, label %for.end.17

for.body.11:                                      ; preds = %for.cond.9
  %17 = load double, double* %magnitude, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load double*, double** %gradient.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %19, i64 %idxprom12
  %20 = load double, double* %arrayidx13, align 8
  %div14 = fdiv double %20, %17
  store double %div14, double* %arrayidx13, align 8
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.11
  %21 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %21, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.9

for.end.17:                                       ; preds = %for.cond.9
  %22 = load double, double* %magnitude, align 8
  ret double %22
}

; Function Attrs: nounwind uwtable
define void @find_dd_grad_f(double %pi_R, double %pi_I, double* %dd_grad) #0 {
entry:
  %pi_R.addr = alloca double, align 8
  %pi_I.addr = alloca double, align 8
  %dd_grad.addr = alloca double*, align 8
  %P_plus_1_inv = alloca double, align 8
  %Q_plus_1_inv = alloca double, align 8
  %P_grad_term = alloca double, align 8
  %Q_grad_term = alloca double, align 8
  %grad_mag = alloca double, align 8
  store double %pi_R, double* %pi_R.addr, align 8
  store double %pi_I, double* %pi_I.addr, align 8
  store double* %dd_grad, double** %dd_grad.addr, align 8
  %0 = load double, double* @P, align 8
  %add = fadd double %0, 1.000000e+00
  %div = fdiv double 1.000000e+00, %add
  store double %div, double* %P_plus_1_inv, align 8
  %1 = load double, double* @Q, align 8
  %add1 = fadd double %1, 1.000000e+00
  %div2 = fdiv double 1.000000e+00, %add1
  store double %div2, double* %Q_plus_1_inv, align 8
  %2 = load double, double* %P_plus_1_inv, align 8
  %3 = load double, double* %pi_R.addr, align 8
  %sub = fsub double %2, %3
  store double %sub, double* %P_grad_term, align 8
  %4 = load double, double* %Q_plus_1_inv, align 8
  %5 = load double, double* %pi_I.addr, align 8
  %sub3 = fsub double %4, %5
  store double %sub3, double* %Q_grad_term, align 8
  %6 = load double, double* %P_grad_term, align 8
  %7 = load double, double* %P_grad_term, align 8
  %mul = fmul double %6, %7
  %8 = load double, double* %Q_grad_term, align 8
  %9 = load double, double* %Q_grad_term, align 8
  %mul4 = fmul double %8, %9
  %add5 = fadd double %mul, %mul4
  %call = call double @sqrt(double %add5) #1
  store double %call, double* %grad_mag, align 8
  %10 = load double, double* %P_plus_1_inv, align 8
  %sub6 = fsub double -0.000000e+00, %10
  %11 = load double, double* %P_plus_1_inv, align 8
  %mul7 = fmul double %sub6, %11
  %12 = load double, double* %P_grad_term, align 8
  %mul8 = fmul double %mul7, %12
  %13 = load double, double* %grad_mag, align 8
  %div9 = fdiv double %mul8, %13
  %14 = load double*, double** %dd_grad.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %14, i64 0
  store double %div9, double* %arrayidx, align 8
  %15 = load double, double* %Q_plus_1_inv, align 8
  %sub10 = fsub double -0.000000e+00, %15
  %16 = load double, double* %Q_plus_1_inv, align 8
  %mul11 = fmul double %sub10, %16
  %17 = load double, double* %Q_grad_term, align 8
  %mul12 = fmul double %mul11, %17
  %18 = load double, double* %grad_mag, align 8
  %div13 = fdiv double %mul12, %18
  %19 = load double*, double** %dd_grad.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %19, i64 1
  store double %div13, double* %arrayidx14, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define double @find_g() #0 {
entry:
  %0 = load double, double* @P, align 8
  %1 = load double, double* @P, align 8
  %mul = fmul double %0, %1
  %2 = load double, double* @Q, align 8
  %3 = load double, double* @Q, align 8
  %mul1 = fmul double %2, %3
  %add = fadd double %mul, %mul1
  %sub = fsub double %add, 8.000000e-01
  ret double %sub
}

; Function Attrs: nounwind uwtable
define double @find_h() #0 {
entry:
  %0 = load double, double* @P, align 8
  %1 = load double, double* @Q, align 8
  %mul = fmul double 5.000000e+00, %1
  %sub = fsub double %0, %mul
  ret double %sub
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
