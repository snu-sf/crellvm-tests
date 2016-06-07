; ModuleID = 'psimplex.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind uwtable
define i64 @primal_net_simplex(%struct.network* %net) #0 {
entry:
  %net.addr = alloca %struct.network*, align 8
  %delta = alloca i64, align 8
  %new_flow = alloca i64, align 8
  %opt = alloca i64, align 8
  %xchange = alloca i64, align 8
  %new_orientation = alloca i64, align 8
  %iplus = alloca %struct.node*, align 8
  %jplus = alloca %struct.node*, align 8
  %iminus = alloca %struct.node*, align 8
  %jminus = alloca %struct.node*, align 8
  %w = alloca %struct.node*, align 8
  %bea = alloca %struct.arc*, align 8
  %bla = alloca %struct.arc*, align 8
  %arcs = alloca %struct.arc*, align 8
  %stop_arcs = alloca %struct.arc*, align 8
  %temp = alloca %struct.node*, align 8
  %m = alloca i64, align 8
  %new_set = alloca i64, align 8
  %red_cost_of_bea = alloca i64, align 8
  %iterations = alloca i64*, align 8
  %bound_exchanges = alloca i64*, align 8
  %checksum = alloca i64*, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  store i64 0, i64* %opt, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs1 = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 23
  %1 = load %struct.arc*, %struct.arc** %arcs1, align 8
  store %struct.arc* %1, %struct.arc** %arcs, align 8
  %2 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs2 = getelementptr inbounds %struct.network, %struct.network* %2, i32 0, i32 24
  %3 = load %struct.arc*, %struct.arc** %stop_arcs2, align 8
  store %struct.arc* %3, %struct.arc** %stop_arcs, align 8
  %4 = load %struct.network*, %struct.network** %net.addr, align 8
  %m3 = getelementptr inbounds %struct.network, %struct.network* %4, i32 0, i32 5
  %5 = load i64, i64* %m3, align 8
  store i64 %5, i64* %m, align 8
  %6 = load %struct.network*, %struct.network** %net.addr, align 8
  %iterations4 = getelementptr inbounds %struct.network, %struct.network* %6, i32 0, i32 27
  store i64* %iterations4, i64** %iterations, align 8
  %7 = load %struct.network*, %struct.network** %net.addr, align 8
  %bound_exchanges5 = getelementptr inbounds %struct.network, %struct.network* %7, i32 0, i32 28
  store i64* %bound_exchanges5, i64** %bound_exchanges, align 8
  %8 = load %struct.network*, %struct.network** %net.addr, align 8
  %checksum6 = getelementptr inbounds %struct.network, %struct.network* %8, i32 0, i32 29
  store i64* %checksum6, i64** %checksum, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.57, %entry
  %9 = load i64, i64* %opt, align 8
  %tobool = icmp ne i64 %9, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %m, align 8
  %11 = load %struct.arc*, %struct.arc** %arcs, align 8
  %12 = load %struct.arc*, %struct.arc** %stop_arcs, align 8
  %call = call %struct.arc* @primal_bea_mpp(i64 %10, %struct.arc* %11, %struct.arc* %12, i64* %red_cost_of_bea)
  store %struct.arc* %call, %struct.arc** %bea, align 8
  %tobool7 = icmp ne %struct.arc* %call, null
  br i1 %tobool7, label %if.then, label %if.else.56

if.then:                                          ; preds = %while.body
  %13 = load i64*, i64** %iterations, align 8
  %14 = load i64, i64* %13, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %13, align 8
  %15 = load i64, i64* %red_cost_of_bea, align 8
  %cmp = icmp sgt i64 %15, 0
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %16 = load %struct.arc*, %struct.arc** %bea, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %16, i32 0, i32 2
  %17 = load %struct.node*, %struct.node** %head, align 8
  store %struct.node* %17, %struct.node** %iplus, align 8
  %18 = load %struct.arc*, %struct.arc** %bea, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %18, i32 0, i32 1
  %19 = load %struct.node*, %struct.node** %tail, align 8
  store %struct.node* %19, %struct.node** %jplus, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load %struct.arc*, %struct.arc** %bea, align 8
  %tail9 = getelementptr inbounds %struct.arc, %struct.arc* %20, i32 0, i32 1
  %21 = load %struct.node*, %struct.node** %tail9, align 8
  store %struct.node* %21, %struct.node** %iplus, align 8
  %22 = load %struct.arc*, %struct.arc** %bea, align 8
  %head10 = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 0, i32 2
  %23 = load %struct.node*, %struct.node** %head10, align 8
  store %struct.node* %23, %struct.node** %jplus, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  store i64 1, i64* %delta, align 8
  %24 = load %struct.node*, %struct.node** %iplus, align 8
  %25 = load %struct.node*, %struct.node** %jplus, align 8
  %call11 = call %struct.node* @primal_iminus(i64* %delta, i64* %xchange, %struct.node* %24, %struct.node* %25, %struct.node** %w)
  store %struct.node* %call11, %struct.node** %iminus, align 8
  %26 = load %struct.node*, %struct.node** %iminus, align 8
  %tobool12 = icmp ne %struct.node* %26, null
  br i1 %tobool12, label %if.else.24, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %27 = load i64*, i64** %bound_exchanges, align 8
  %28 = load i64, i64* %27, align 8
  %inc14 = add nsw i64 %28, 1
  store i64 %inc14, i64* %27, align 8
  %29 = load %struct.arc*, %struct.arc** %bea, align 8
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %29, i32 0, i32 3
  %30 = load i32, i32* %ident, align 4
  %cmp15 = icmp eq i32 %30, 2
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.then.13
  %31 = load %struct.arc*, %struct.arc** %bea, align 8
  %ident17 = getelementptr inbounds %struct.arc, %struct.arc* %31, i32 0, i32 3
  store i32 1, i32* %ident17, align 4
  br label %if.end.20

if.else.18:                                       ; preds = %if.then.13
  %32 = load %struct.arc*, %struct.arc** %bea, align 8
  %ident19 = getelementptr inbounds %struct.arc, %struct.arc* %32, i32 0, i32 3
  store i32 2, i32* %ident19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.16
  %33 = load i64, i64* %delta, align 8
  %tobool21 = icmp ne i64 %33, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %34 = load %struct.node*, %struct.node** %iplus, align 8
  %35 = load %struct.node*, %struct.node** %jplus, align 8
  %36 = load %struct.node*, %struct.node** %w, align 8
  call void @primal_update_flow(%struct.node* %34, %struct.node* %35, %struct.node* %36)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  br label %if.end.55

if.else.24:                                       ; preds = %if.end
  %37 = load i64, i64* %xchange, align 8
  %tobool25 = icmp ne i64 %37, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else.24
  %38 = load %struct.node*, %struct.node** %jplus, align 8
  store %struct.node* %38, %struct.node** %temp, align 8
  %39 = load %struct.node*, %struct.node** %iplus, align 8
  store %struct.node* %39, %struct.node** %jplus, align 8
  %40 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %40, %struct.node** %iplus, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.else.24
  %41 = load %struct.node*, %struct.node** %iminus, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 3
  %42 = load %struct.node*, %struct.node** %pred, align 8
  store %struct.node* %42, %struct.node** %jminus, align 8
  %43 = load %struct.node*, %struct.node** %iminus, align 8
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 6
  %44 = load %struct.arc*, %struct.arc** %basic_arc, align 8
  store %struct.arc* %44, %struct.arc** %bla, align 8
  %45 = load i64, i64* %xchange, align 8
  %46 = load %struct.node*, %struct.node** %iminus, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 1
  %47 = load i32, i32* %orientation, align 4
  %conv = sext i32 %47 to i64
  %cmp28 = icmp ne i64 %45, %conv
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  store i64 1, i64* %new_set, align 8
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.27
  store i64 2, i64* %new_set, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  %48 = load i64, i64* %red_cost_of_bea, align 8
  %cmp33 = icmp sgt i64 %48, 0
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  %49 = load i64, i64* %delta, align 8
  %sub = sub nsw i64 1, %49
  store i64 %sub, i64* %new_flow, align 8
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  %50 = load i64, i64* %delta, align 8
  store i64 %50, i64* %new_flow, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.35
  %51 = load %struct.arc*, %struct.arc** %bea, align 8
  %tail38 = getelementptr inbounds %struct.arc, %struct.arc* %51, i32 0, i32 1
  %52 = load %struct.node*, %struct.node** %tail38, align 8
  %53 = load %struct.node*, %struct.node** %iplus, align 8
  %cmp39 = icmp eq %struct.node* %52, %53
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.37
  store i64 1, i64* %new_orientation, align 8
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.37
  store i64 0, i64* %new_orientation, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  %54 = load i64, i64* %xchange, align 8
  %tobool44 = icmp ne i64 %54, 0
  %lnot45 = xor i1 %tobool44, true
  %lnot.ext = zext i1 %lnot45 to i32
  %conv46 = sext i32 %lnot.ext to i64
  %55 = load i64, i64* %new_orientation, align 8
  %56 = load i64, i64* %delta, align 8
  %57 = load i64, i64* %new_flow, align 8
  %58 = load %struct.node*, %struct.node** %iplus, align 8
  %59 = load %struct.node*, %struct.node** %jplus, align 8
  %60 = load %struct.node*, %struct.node** %iminus, align 8
  %61 = load %struct.node*, %struct.node** %jminus, align 8
  %62 = load %struct.node*, %struct.node** %w, align 8
  %63 = load %struct.arc*, %struct.arc** %bea, align 8
  %64 = load i64, i64* %red_cost_of_bea, align 8
  %65 = load %struct.network*, %struct.network** %net.addr, align 8
  %feas_tol = getelementptr inbounds %struct.network, %struct.network* %65, i32 0, i32 16
  %66 = load i64, i64* %feas_tol, align 8
  call void @update_tree(i64 %conv46, i64 %55, i64 %56, i64 %57, %struct.node* %58, %struct.node* %59, %struct.node* %60, %struct.node* %61, %struct.node* %62, %struct.arc* %63, i64 %64, i64 %66)
  %67 = load %struct.arc*, %struct.arc** %bea, align 8
  %ident47 = getelementptr inbounds %struct.arc, %struct.arc* %67, i32 0, i32 3
  store i32 0, i32* %ident47, align 4
  %68 = load i64, i64* %new_set, align 8
  %conv48 = trunc i64 %68 to i32
  %69 = load %struct.arc*, %struct.arc** %bla, align 8
  %ident49 = getelementptr inbounds %struct.arc, %struct.arc* %69, i32 0, i32 3
  store i32 %conv48, i32* %ident49, align 4
  %70 = load i64*, i64** %iterations, align 8
  %71 = load i64, i64* %70, align 8
  %sub50 = sub nsw i64 %71, 1
  %rem = srem i64 %sub50, 200
  %tobool51 = icmp ne i64 %rem, 0
  br i1 %tobool51, label %if.end.54, label %if.then.52

if.then.52:                                       ; preds = %if.end.43
  %72 = load %struct.network*, %struct.network** %net.addr, align 8
  %call53 = call i64 @refresh_potential(%struct.network* %72)
  %73 = load i64*, i64** %checksum, align 8
  %74 = load i64, i64* %73, align 8
  %add = add nsw i64 %74, %call53
  store i64 %add, i64* %73, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.43
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.23
  br label %if.end.57

if.else.56:                                       ; preds = %while.body
  store i64 1, i64* %opt, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.end.55
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %75 = load %struct.network*, %struct.network** %net.addr, align 8
  %call58 = call i64 @refresh_potential(%struct.network* %75)
  %76 = load i64*, i64** %checksum, align 8
  %77 = load i64, i64* %76, align 8
  %add59 = add nsw i64 %77, %call58
  store i64 %add59, i64* %76, align 8
  %78 = load %struct.network*, %struct.network** %net.addr, align 8
  %call60 = call i64 @primal_feasible(%struct.network* %78)
  %79 = load %struct.network*, %struct.network** %net.addr, align 8
  %call61 = call i64 @dual_feasible(%struct.network* %79)
  ret i64 0
}

declare %struct.arc* @primal_bea_mpp(i64, %struct.arc*, %struct.arc*, i64*) #1

declare %struct.node* @primal_iminus(i64*, i64*, %struct.node*, %struct.node*, %struct.node**) #1

declare void @primal_update_flow(%struct.node*, %struct.node*, %struct.node*) #1

declare void @update_tree(i64, i64, i64, i64, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, i64, i64) #1

declare i64 @refresh_potential(%struct.network*) #1

declare i64 @primal_feasible(%struct.network*) #1

declare i64 @dual_feasible(%struct.network*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
