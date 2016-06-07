; ModuleID = 'pbeampp.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basket = type { %struct.arc*, i64, i64 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }

@perm = internal global [351 x %struct.basket*] zeroinitializer, align 16
@initialize = internal global i64 1, align 8
@basket = internal global [351 x %struct.basket] zeroinitializer, align 16
@nr_group = internal global i64 0, align 8
@group_pos = internal global i64 0, align 8
@basket_size = internal global i64 0, align 8

; Function Attrs: nounwind uwtable
define i32 @bea_is_dual_infeasible(%struct.arc* %arc, i64 %red_cost) #0 {
entry:
  %arc.addr = alloca %struct.arc*, align 8
  %red_cost.addr = alloca i64, align 8
  store %struct.arc* %arc, %struct.arc** %arc.addr, align 8
  store i64 %red_cost, i64* %red_cost.addr, align 8
  %0 = load i64, i64* %red_cost.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.arc*, %struct.arc** %arc.addr, align 8
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %1, i32 0, i32 3
  %2 = load i32, i32* %ident, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %3 = load i64, i64* %red_cost.addr, align 8
  %cmp2 = icmp sgt i64 %3, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %4 = load %struct.arc*, %struct.arc** %arc.addr, align 8
  %ident3 = getelementptr inbounds %struct.arc, %struct.arc* %4, i32 0, i32 3
  %5 = load i32, i32* %ident3, align 4
  %cmp4 = icmp eq i32 %5, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %7 = phi i1 [ true, %land.lhs.true ], [ %6, %land.end ]
  %lor.ext = zext i1 %7 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define void @sort_basket(i64 %min, i64 %max) #0 {
entry:
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %l = alloca i64, align 8
  %r = alloca i64, align 8
  %cut = alloca i64, align 8
  %xchange = alloca %struct.basket*, align 8
  store i64 %min, i64* %min.addr, align 8
  store i64 %max, i64* %max.addr, align 8
  %0 = load i64, i64* %min.addr, align 8
  store i64 %0, i64* %l, align 8
  %1 = load i64, i64* %max.addr, align 8
  store i64 %1, i64* %r, align 8
  %2 = load i64, i64* %l, align 8
  %3 = load i64, i64* %r, align 8
  %add = add nsw i64 %2, %3
  %div = sdiv i64 %add, 2
  %arrayidx = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %div
  %4 = load %struct.basket*, %struct.basket** %arrayidx, align 8
  %abs_cost = getelementptr inbounds %struct.basket, %struct.basket* %4, i32 0, i32 2
  %5 = load i64, i64* %abs_cost, align 8
  store i64 %5, i64* %cut, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %6 = load i64, i64* %l, align 8
  %arrayidx1 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %6
  %7 = load %struct.basket*, %struct.basket** %arrayidx1, align 8
  %abs_cost2 = getelementptr inbounds %struct.basket, %struct.basket* %7, i32 0, i32 2
  %8 = load i64, i64* %abs_cost2, align 8
  %9 = load i64, i64* %cut, align 8
  %cmp = icmp sgt i64 %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %l, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %l, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.7, %while.end
  %11 = load i64, i64* %cut, align 8
  %12 = load i64, i64* %r, align 8
  %arrayidx4 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %12
  %13 = load %struct.basket*, %struct.basket** %arrayidx4, align 8
  %abs_cost5 = getelementptr inbounds %struct.basket, %struct.basket* %13, i32 0, i32 2
  %14 = load i64, i64* %abs_cost5, align 8
  %cmp6 = icmp sgt i64 %11, %14
  br i1 %cmp6, label %while.body.7, label %while.end.8

while.body.7:                                     ; preds = %while.cond.3
  %15 = load i64, i64* %r, align 8
  %dec = add nsw i64 %15, -1
  store i64 %dec, i64* %r, align 8
  br label %while.cond.3

while.end.8:                                      ; preds = %while.cond.3
  %16 = load i64, i64* %l, align 8
  %17 = load i64, i64* %r, align 8
  %cmp9 = icmp slt i64 %16, %17
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %while.end.8
  %18 = load i64, i64* %l, align 8
  %arrayidx10 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %18
  %19 = load %struct.basket*, %struct.basket** %arrayidx10, align 8
  store %struct.basket* %19, %struct.basket** %xchange, align 8
  %20 = load i64, i64* %r, align 8
  %arrayidx11 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %20
  %21 = load %struct.basket*, %struct.basket** %arrayidx11, align 8
  %22 = load i64, i64* %l, align 8
  %arrayidx12 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %22
  store %struct.basket* %21, %struct.basket** %arrayidx12, align 8
  %23 = load %struct.basket*, %struct.basket** %xchange, align 8
  %24 = load i64, i64* %r, align 8
  %arrayidx13 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %24
  store %struct.basket* %23, %struct.basket** %arrayidx13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.8
  %25 = load i64, i64* %l, align 8
  %26 = load i64, i64* %r, align 8
  %cmp14 = icmp sle i64 %25, %26
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end
  %27 = load i64, i64* %l, align 8
  %inc16 = add nsw i64 %27, 1
  store i64 %inc16, i64* %l, align 8
  %28 = load i64, i64* %r, align 8
  %dec17 = add nsw i64 %28, -1
  store i64 %dec17, i64* %r, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  %29 = load i64, i64* %l, align 8
  %30 = load i64, i64* %r, align 8
  %cmp19 = icmp sle i64 %29, %30
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load i64, i64* %min.addr, align 8
  %32 = load i64, i64* %r, align 8
  %cmp20 = icmp slt i64 %31, %32
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end
  %33 = load i64, i64* %min.addr, align 8
  %34 = load i64, i64* %r, align 8
  call void @sort_basket(i64 %33, i64 %34)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %do.end
  %35 = load i64, i64* %l, align 8
  %36 = load i64, i64* %max.addr, align 8
  %cmp23 = icmp slt i64 %35, %36
  br i1 %cmp23, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.22
  %37 = load i64, i64* %l, align 8
  %cmp24 = icmp sle i64 %37, 50
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  %38 = load i64, i64* %l, align 8
  %39 = load i64, i64* %max.addr, align 8
  call void @sort_basket(i64 %38, i64 %39)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %land.lhs.true, %if.end.22
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.arc* @primal_bea_mpp(i64 %m, %struct.arc* %arcs, %struct.arc* %stop_arcs, i64* %red_cost_of_bea) #0 {
entry:
  %retval = alloca %struct.arc*, align 8
  %m.addr = alloca i64, align 8
  %arcs.addr = alloca %struct.arc*, align 8
  %stop_arcs.addr = alloca %struct.arc*, align 8
  %red_cost_of_bea.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %next = alloca i64, align 8
  %old_group_pos = alloca i64, align 8
  %arc = alloca %struct.arc*, align 8
  %red_cost = alloca i64, align 8
  store i64 %m, i64* %m.addr, align 8
  store %struct.arc* %arcs, %struct.arc** %arcs.addr, align 8
  store %struct.arc* %stop_arcs, %struct.arc** %stop_arcs.addr, align 8
  store i64* %red_cost_of_bea, i64** %red_cost_of_bea.addr, align 8
  %0 = load i64, i64* @initialize, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %1, 351
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [351 x %struct.basket], [351 x %struct.basket]* @basket, i32 0, i64 %2
  %3 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %3
  store %struct.basket* %arrayidx, %struct.basket** %arrayidx1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %i, align 8
  %inc = add nsw i64 %4, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i64, i64* %m.addr, align 8
  %sub = sub nsw i64 %5, 1
  %div = sdiv i64 %sub, 300
  %add = add nsw i64 %div, 1
  store i64 %add, i64* @nr_group, align 8
  store i64 0, i64* @group_pos, align 8
  store i64 0, i64* @basket_size, align 8
  store i64 0, i64* @initialize, align 8
  br label %if.end.28

if.else:                                          ; preds = %entry
  store i64 2, i64* %i, align 8
  store i64 0, i64* %next, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.25, %if.else
  %6 = load i64, i64* %i, align 8
  %cmp3 = icmp sle i64 %6, 50
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.2
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* @basket_size, align 8
  %cmp4 = icmp sle i64 %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.2
  %9 = phi i1 [ false, %for.cond.2 ], [ %cmp4, %land.rhs ]
  br i1 %9, label %for.body.5, label %for.end.27

for.body.5:                                       ; preds = %land.end
  %10 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %10
  %11 = load %struct.basket*, %struct.basket** %arrayidx6, align 8
  %a = getelementptr inbounds %struct.basket, %struct.basket* %11, i32 0, i32 0
  %12 = load %struct.arc*, %struct.arc** %a, align 8
  store %struct.arc* %12, %struct.arc** %arc, align 8
  %13 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %13, i32 0, i32 0
  %14 = load i64, i64* %cost, align 8
  %15 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %15, i32 0, i32 1
  %16 = load %struct.node*, %struct.node** %tail, align 8
  %potential = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %17 = load i64, i64* %potential, align 8
  %sub7 = sub nsw i64 %14, %17
  %18 = load %struct.arc*, %struct.arc** %arc, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %18, i32 0, i32 2
  %19 = load %struct.node*, %struct.node** %head, align 8
  %potential8 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  %20 = load i64, i64* %potential8, align 8
  %add9 = add nsw i64 %sub7, %20
  store i64 %add9, i64* %red_cost, align 8
  %21 = load i64, i64* %red_cost, align 8
  %cmp10 = icmp slt i64 %21, 0
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body.5
  %22 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 0, i32 3
  %23 = load i32, i32* %ident, align 4
  %cmp11 = icmp eq i32 %23, 1
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body.5
  %24 = load i64, i64* %red_cost, align 8
  %cmp12 = icmp sgt i64 %24, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %lor.lhs.false
  %25 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident14 = getelementptr inbounds %struct.arc, %struct.arc* %25, i32 0, i32 3
  %26 = load i32, i32* %ident14, align 4
  %cmp15 = icmp eq i32 %26, 2
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %land.lhs.true.13, %land.lhs.true
  %27 = load i64, i64* %next, align 8
  %inc17 = add nsw i64 %27, 1
  store i64 %inc17, i64* %next, align 8
  %28 = load %struct.arc*, %struct.arc** %arc, align 8
  %29 = load i64, i64* %next, align 8
  %arrayidx18 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %29
  %30 = load %struct.basket*, %struct.basket** %arrayidx18, align 8
  %a19 = getelementptr inbounds %struct.basket, %struct.basket* %30, i32 0, i32 0
  store %struct.arc* %28, %struct.arc** %a19, align 8
  %31 = load i64, i64* %red_cost, align 8
  %32 = load i64, i64* %next, align 8
  %arrayidx20 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %32
  %33 = load %struct.basket*, %struct.basket** %arrayidx20, align 8
  %cost21 = getelementptr inbounds %struct.basket, %struct.basket* %33, i32 0, i32 1
  store i64 %31, i64* %cost21, align 8
  %34 = load i64, i64* %red_cost, align 8
  %cmp22 = icmp sge i64 %34, 0
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.16
  %35 = load i64, i64* %red_cost, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  %36 = load i64, i64* %red_cost, align 8
  %sub23 = sub nsw i64 0, %36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %35, %cond.true ], [ %sub23, %cond.false ]
  %37 = load i64, i64* %next, align 8
  %arrayidx24 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %37
  %38 = load %struct.basket*, %struct.basket** %arrayidx24, align 8
  %abs_cost = getelementptr inbounds %struct.basket, %struct.basket* %38, i32 0, i32 2
  store i64 %cond, i64* %abs_cost, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true.13, %lor.lhs.false
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end
  %39 = load i64, i64* %i, align 8
  %inc26 = add nsw i64 %39, 1
  store i64 %inc26, i64* %i, align 8
  br label %for.cond.2

for.end.27:                                       ; preds = %land.end
  %40 = load i64, i64* %next, align 8
  store i64 %40, i64* @basket_size, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %for.end.27, %for.end
  %41 = load i64, i64* @group_pos, align 8
  store i64 %41, i64* %old_group_pos, align 8
  br label %NEXT

NEXT:                                             ; preds = %if.then.69, %if.end.28
  %42 = load %struct.arc*, %struct.arc** %arcs.addr, align 8
  %43 = load i64, i64* @group_pos, align 8
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %42, i64 %43
  store %struct.arc* %add.ptr, %struct.arc** %arc, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.59, %NEXT
  %44 = load %struct.arc*, %struct.arc** %arc, align 8
  %45 = load %struct.arc*, %struct.arc** %stop_arcs.addr, align 8
  %cmp30 = icmp ult %struct.arc* %44, %45
  br i1 %cmp30, label %for.body.31, label %for.end.61

for.body.31:                                      ; preds = %for.cond.29
  %46 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident32 = getelementptr inbounds %struct.arc, %struct.arc* %46, i32 0, i32 3
  %47 = load i32, i32* %ident32, align 4
  %cmp33 = icmp sgt i32 %47, 0
  br i1 %cmp33, label %if.then.34, label %if.end.58

if.then.34:                                       ; preds = %for.body.31
  %48 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost35 = getelementptr inbounds %struct.arc, %struct.arc* %48, i32 0, i32 0
  %49 = load i64, i64* %cost35, align 8
  %50 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail36 = getelementptr inbounds %struct.arc, %struct.arc* %50, i32 0, i32 1
  %51 = load %struct.node*, %struct.node** %tail36, align 8
  %potential37 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 0
  %52 = load i64, i64* %potential37, align 8
  %sub38 = sub nsw i64 %49, %52
  %53 = load %struct.arc*, %struct.arc** %arc, align 8
  %head39 = getelementptr inbounds %struct.arc, %struct.arc* %53, i32 0, i32 2
  %54 = load %struct.node*, %struct.node** %head39, align 8
  %potential40 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 0
  %55 = load i64, i64* %potential40, align 8
  %add41 = add nsw i64 %sub38, %55
  store i64 %add41, i64* %red_cost, align 8
  %56 = load %struct.arc*, %struct.arc** %arc, align 8
  %57 = load i64, i64* %red_cost, align 8
  %call = call i32 @bea_is_dual_infeasible(%struct.arc* %56, i64 %57)
  %tobool42 = icmp ne i32 %call, 0
  br i1 %tobool42, label %if.then.43, label %if.end.57

if.then.43:                                       ; preds = %if.then.34
  %58 = load i64, i64* @basket_size, align 8
  %inc44 = add nsw i64 %58, 1
  store i64 %inc44, i64* @basket_size, align 8
  %59 = load %struct.arc*, %struct.arc** %arc, align 8
  %60 = load i64, i64* @basket_size, align 8
  %arrayidx45 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %60
  %61 = load %struct.basket*, %struct.basket** %arrayidx45, align 8
  %a46 = getelementptr inbounds %struct.basket, %struct.basket* %61, i32 0, i32 0
  store %struct.arc* %59, %struct.arc** %a46, align 8
  %62 = load i64, i64* %red_cost, align 8
  %63 = load i64, i64* @basket_size, align 8
  %arrayidx47 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %63
  %64 = load %struct.basket*, %struct.basket** %arrayidx47, align 8
  %cost48 = getelementptr inbounds %struct.basket, %struct.basket* %64, i32 0, i32 1
  store i64 %62, i64* %cost48, align 8
  %65 = load i64, i64* %red_cost, align 8
  %cmp49 = icmp sge i64 %65, 0
  br i1 %cmp49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %if.then.43
  %66 = load i64, i64* %red_cost, align 8
  br label %cond.end.53

cond.false.51:                                    ; preds = %if.then.43
  %67 = load i64, i64* %red_cost, align 8
  %sub52 = sub nsw i64 0, %67
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.51, %cond.true.50
  %cond54 = phi i64 [ %66, %cond.true.50 ], [ %sub52, %cond.false.51 ]
  %68 = load i64, i64* @basket_size, align 8
  %arrayidx55 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 %68
  %69 = load %struct.basket*, %struct.basket** %arrayidx55, align 8
  %abs_cost56 = getelementptr inbounds %struct.basket, %struct.basket* %69, i32 0, i32 2
  store i64 %cond54, i64* %abs_cost56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %cond.end.53, %if.then.34
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %for.body.31
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %70 = load i64, i64* @nr_group, align 8
  %71 = load %struct.arc*, %struct.arc** %arc, align 8
  %add.ptr60 = getelementptr inbounds %struct.arc, %struct.arc* %71, i64 %70
  store %struct.arc* %add.ptr60, %struct.arc** %arc, align 8
  br label %for.cond.29

for.end.61:                                       ; preds = %for.cond.29
  %72 = load i64, i64* @group_pos, align 8
  %inc62 = add nsw i64 %72, 1
  store i64 %inc62, i64* @group_pos, align 8
  %73 = load i64, i64* @nr_group, align 8
  %cmp63 = icmp eq i64 %inc62, %73
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %for.end.61
  store i64 0, i64* @group_pos, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %for.end.61
  %74 = load i64, i64* @basket_size, align 8
  %cmp66 = icmp slt i64 %74, 50
  br i1 %cmp66, label %land.lhs.true.67, label %if.end.70

land.lhs.true.67:                                 ; preds = %if.end.65
  %75 = load i64, i64* @group_pos, align 8
  %76 = load i64, i64* %old_group_pos, align 8
  %cmp68 = icmp ne i64 %75, %76
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.67
  br label %NEXT

if.end.70:                                        ; preds = %land.lhs.true.67, %if.end.65
  %77 = load i64, i64* @basket_size, align 8
  %cmp71 = icmp eq i64 %77, 0
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.70
  store i64 1, i64* @initialize, align 8
  %78 = load i64*, i64** %red_cost_of_bea.addr, align 8
  store i64 0, i64* %78, align 8
  store %struct.arc* null, %struct.arc** %retval
  br label %return

if.end.73:                                        ; preds = %if.end.70
  %79 = load i64, i64* @basket_size, align 8
  call void @sort_basket(i64 1, i64 %79)
  %80 = load %struct.basket*, %struct.basket** getelementptr inbounds ([351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 1), align 8
  %cost74 = getelementptr inbounds %struct.basket, %struct.basket* %80, i32 0, i32 1
  %81 = load i64, i64* %cost74, align 8
  %82 = load i64*, i64** %red_cost_of_bea.addr, align 8
  store i64 %81, i64* %82, align 8
  %83 = load %struct.basket*, %struct.basket** getelementptr inbounds ([351 x %struct.basket*], [351 x %struct.basket*]* @perm, i32 0, i64 1), align 8
  %a75 = getelementptr inbounds %struct.basket, %struct.basket* %83, i32 0, i32 0
  %84 = load %struct.arc*, %struct.arc** %a75, align 8
  store %struct.arc* %84, %struct.arc** %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.then.72
  %85 = load %struct.arc*, %struct.arc** %retval
  ret %struct.arc* %85
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
