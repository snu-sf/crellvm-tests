; ModuleID = './MultiSource.Benchmarks.Olden/11.power.build.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.root = type { %struct.demand, double, double, %struct.demand, double, double, [11 x %struct.lateral*] }
%struct.demand = type { double, double }
%struct.lateral = type { %struct.demand, double, double, double, double, %struct.lateral*, %struct.branch* }
%struct.branch = type { %struct.demand, double, double, double, double, %struct.branch*, [12 x %struct.leaf*] }
%struct.leaf = type { %struct.demand, double, double }

; Function Attrs: nounwind uwtable
define %struct.root* @build_tree() #0 {
entry:
  %i = alloca i32, align 4
  %t = alloca %struct.root*, align 8
  %l = alloca %struct.lateral*, align 8
  %call = call i8* @malloc(i32 152)
  %0 = bitcast i8* %call to %struct.root*
  store %struct.root* %0, %struct.root** %t, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 21
  %call1 = call %struct.lateral* @build_lateral(i32 %mul, i32 21)
  store %struct.lateral* %call1, %struct.lateral** %l, align 8
  %3 = load %struct.lateral*, %struct.lateral** %l, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.root*, %struct.root** %t, align 8
  %feeders = getelementptr inbounds %struct.root, %struct.root* %5, i32 0, i32 6
  %arrayidx = getelementptr inbounds [11 x %struct.lateral*], [11 x %struct.lateral*]* %feeders, i32 0, i64 %idxprom
  store %struct.lateral* %3, %struct.lateral** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.root*, %struct.root** %t, align 8
  %theta_R = getelementptr inbounds %struct.root, %struct.root* %7, i32 0, i32 1
  store double 8.000000e-01, double* %theta_R, align 8
  %8 = load %struct.root*, %struct.root** %t, align 8
  %theta_I = getelementptr inbounds %struct.root, %struct.root* %8, i32 0, i32 2
  store double 1.600000e-01, double* %theta_I, align 8
  %9 = load %struct.root*, %struct.root** %t, align 8
  ret %struct.root* %9
}

declare i8* @malloc(i32) #1

; Function Attrs: nounwind uwtable
define %struct.lateral* @build_lateral(i32 %i, i32 %num) #0 {
entry:
  %retval = alloca %struct.lateral*, align 8
  %i.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %l = alloca %struct.lateral*, align 8
  %b = alloca %struct.branch*, align 8
  %next = alloca %struct.lateral*, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.lateral* null, %struct.lateral** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @malloc(i32 64)
  %1 = bitcast i8* %call to %struct.lateral*
  store %struct.lateral* %1, %struct.lateral** %l, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %num.addr, align 4
  %sub = sub nsw i32 %3, 1
  %call1 = call %struct.lateral* @build_lateral(i32 %2, i32 %sub)
  store %struct.lateral* %call1, %struct.lateral** %next, align 8
  %4 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %4, 6
  %5 = load i32, i32* %num.addr, align 4
  %sub2 = sub nsw i32 %5, 1
  %mul3 = mul nsw i32 %sub2, 6
  %call4 = call %struct.branch* @build_branch(i32 %mul, i32 %mul3, i32 6)
  store %struct.branch* %call4, %struct.branch** %b, align 8
  %6 = load %struct.lateral*, %struct.lateral** %next, align 8
  %7 = load %struct.lateral*, %struct.lateral** %l, align 8
  %next_lateral = getelementptr inbounds %struct.lateral, %struct.lateral* %7, i32 0, i32 5
  store %struct.lateral* %6, %struct.lateral** %next_lateral, align 8
  %8 = load %struct.branch*, %struct.branch** %b, align 8
  %9 = load %struct.lateral*, %struct.lateral** %l, align 8
  %branch = getelementptr inbounds %struct.lateral, %struct.lateral* %9, i32 0, i32 6
  store %struct.branch* %8, %struct.branch** %branch, align 8
  %10 = load %struct.lateral*, %struct.lateral** %l, align 8
  %R = getelementptr inbounds %struct.lateral, %struct.lateral* %10, i32 0, i32 3
  store double 0x3ECBF647612F3696, double* %R, align 8
  %11 = load %struct.lateral*, %struct.lateral** %l, align 8
  %X = getelementptr inbounds %struct.lateral, %struct.lateral* %11, i32 0, i32 4
  store double 1.000000e-06, double* %X, align 8
  %12 = load %struct.lateral*, %struct.lateral** %l, align 8
  %alpha = getelementptr inbounds %struct.lateral, %struct.lateral* %12, i32 0, i32 1
  store double 0.000000e+00, double* %alpha, align 8
  %13 = load %struct.lateral*, %struct.lateral** %l, align 8
  %beta = getelementptr inbounds %struct.lateral, %struct.lateral* %13, i32 0, i32 2
  store double 0.000000e+00, double* %beta, align 8
  %14 = load %struct.lateral*, %struct.lateral** %l, align 8
  store %struct.lateral* %14, %struct.lateral** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct.lateral*, %struct.lateral** %retval
  ret %struct.lateral* %15
}

; Function Attrs: nounwind uwtable
define %struct.branch* @build_branch(i32 %i, i32 %j, i32 %num) #0 {
entry:
  %retval = alloca %struct.branch*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %l = alloca %struct.leaf*, align 8
  %b = alloca %struct.branch*, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.branch* null, %struct.branch** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @malloc(i32 152)
  %1 = bitcast i8* %call to %struct.branch*
  store %struct.branch* %1, %struct.branch** %b, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %j.addr, align 4
  %4 = load i32, i32* %num.addr, align 4
  %sub = sub nsw i32 %4, 1
  %call1 = call %struct.branch* @build_branch(i32 %2, i32 %3, i32 %sub)
  %5 = load %struct.branch*, %struct.branch** %b, align 8
  %next_branch = getelementptr inbounds %struct.branch, %struct.branch* %5, i32 0, i32 5
  store %struct.branch* %call1, %struct.branch** %next_branch, align 8
  store i32 0, i32* %i.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i.addr, align 4
  %cmp2 = icmp slt i32 %6, 12
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call %struct.leaf* @build_leaf()
  store %struct.leaf* %call3, %struct.leaf** %l, align 8
  %7 = load %struct.leaf*, %struct.leaf** %l, align 8
  %8 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.branch*, %struct.branch** %b, align 8
  %leaves = getelementptr inbounds %struct.branch, %struct.branch* %9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [12 x %struct.leaf*], [12 x %struct.leaf*]* %leaves, i32 0, i64 %idxprom
  store %struct.leaf* %7, %struct.leaf** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i.addr, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.branch*, %struct.branch** %b, align 8
  %R = getelementptr inbounds %struct.branch, %struct.branch* %11, i32 0, i32 3
  store double 1.000000e-04, double* %R, align 8
  %12 = load %struct.branch*, %struct.branch** %b, align 8
  %X = getelementptr inbounds %struct.branch, %struct.branch* %12, i32 0, i32 4
  store double 2.000000e-05, double* %X, align 8
  %13 = load %struct.branch*, %struct.branch** %b, align 8
  %alpha = getelementptr inbounds %struct.branch, %struct.branch* %13, i32 0, i32 1
  store double 0.000000e+00, double* %alpha, align 8
  %14 = load %struct.branch*, %struct.branch** %b, align 8
  %beta = getelementptr inbounds %struct.branch, %struct.branch* %14, i32 0, i32 2
  store double 0.000000e+00, double* %beta, align 8
  %15 = load %struct.branch*, %struct.branch** %b, align 8
  store %struct.branch* %15, %struct.branch** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load %struct.branch*, %struct.branch** %retval
  ret %struct.branch* %16
}

; Function Attrs: nounwind uwtable
define %struct.leaf* @build_leaf() #0 {
entry:
  %l = alloca %struct.leaf*, align 8
  %call = call i8* @malloc(i32 32)
  %0 = bitcast i8* %call to %struct.leaf*
  store %struct.leaf* %0, %struct.leaf** %l, align 8
  %1 = load %struct.leaf*, %struct.leaf** %l, align 8
  %D = getelementptr inbounds %struct.leaf, %struct.leaf* %1, i32 0, i32 0
  %P = getelementptr inbounds %struct.demand, %struct.demand* %D, i32 0, i32 0
  store double 1.000000e+00, double* %P, align 8
  %2 = load %struct.leaf*, %struct.leaf** %l, align 8
  %D1 = getelementptr inbounds %struct.leaf, %struct.leaf* %2, i32 0, i32 0
  %Q = getelementptr inbounds %struct.demand, %struct.demand* %D1, i32 0, i32 1
  store double 1.000000e+00, double* %Q, align 8
  %3 = load %struct.leaf*, %struct.leaf** %l, align 8
  ret %struct.leaf* %3
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
