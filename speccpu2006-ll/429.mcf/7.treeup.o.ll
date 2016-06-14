; ModuleID = 'treeup.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind uwtable
define void @update_tree(i64 %cycle_ori, i64 %new_orientation, i64 %delta, i64 %new_flow, %struct.node* %iplus, %struct.node* %jplus, %struct.node* %iminus, %struct.node* %jminus, %struct.node* %w, %struct.arc* %bea, i64 %sigma, i64 %feas_tol) #0 {
entry:
  %cycle_ori.addr = alloca i64, align 8
  %new_orientation.addr = alloca i64, align 8
  %delta.addr = alloca i64, align 8
  %new_flow.addr = alloca i64, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %iminus.addr = alloca %struct.node*, align 8
  %jminus.addr = alloca %struct.node*, align 8
  %w.addr = alloca %struct.node*, align 8
  %bea.addr = alloca %struct.arc*, align 8
  %sigma.addr = alloca i64, align 8
  %feas_tol.addr = alloca i64, align 8
  %basic_arc_temp = alloca %struct.arc*, align 8
  %new_basic_arc = alloca %struct.arc*, align 8
  %father = alloca %struct.node*, align 8
  %temp = alloca %struct.node*, align 8
  %new_pred = alloca %struct.node*, align 8
  %orientation_temp = alloca i64, align 8
  %depth_temp = alloca i64, align 8
  %depth_iminus = alloca i64, align 8
  %new_depth = alloca i64, align 8
  %flow_temp = alloca i64, align 8
  store i64 %cycle_ori, i64* %cycle_ori.addr, align 8
  store i64 %new_orientation, i64* %new_orientation.addr, align 8
  store i64 %delta, i64* %delta.addr, align 8
  store i64 %new_flow, i64* %new_flow.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node* %iminus, %struct.node** %iminus.addr, align 8
  store %struct.node* %jminus, %struct.node** %jminus.addr, align 8
  store %struct.node* %w, %struct.node** %w.addr, align 8
  store %struct.arc* %bea, %struct.arc** %bea.addr, align 8
  store i64 %sigma, i64* %sigma.addr, align 8
  store i64 %feas_tol, i64* %feas_tol.addr, align 8
  %0 = load %struct.arc*, %struct.arc** %bea.addr, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %0, i32 0, i32 1
  %1 = load %struct.node*, %struct.node** %tail, align 8
  %2 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp eq %struct.node* %1, %2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %sigma.addr, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load %struct.arc*, %struct.arc** %bea.addr, align 8
  %tail2 = getelementptr inbounds %struct.arc, %struct.arc* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %tail2, align 8
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %cmp3 = icmp eq %struct.node* %5, %6
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %7 = load i64, i64* %sigma.addr, align 8
  %cmp5 = icmp sgt i64 %7, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4, %land.lhs.true
  %8 = load i64, i64* %sigma.addr, align 8
  %cmp6 = icmp sge i64 %8, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load i64, i64* %sigma.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %10 = load i64, i64* %sigma.addr, align 8
  %sub = sub nsw i64 0, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %sub, %cond.false ]
  store i64 %cond, i64* %sigma.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.4, %lor.lhs.false
  %11 = load i64, i64* %sigma.addr, align 8
  %cmp7 = icmp sge i64 %11, 0
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %if.else
  %12 = load i64, i64* %sigma.addr, align 8
  br label %cond.end.11

cond.false.9:                                     ; preds = %if.else
  %13 = load i64, i64* %sigma.addr, align 8
  %sub10 = sub nsw i64 0, %13
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.9, %cond.true.8
  %cond12 = phi i64 [ %12, %cond.true.8 ], [ %sub10, %cond.false.9 ]
  %sub13 = sub nsw i64 0, %cond12
  store i64 %sub13, i64* %sigma.addr, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.11, %cond.end
  %14 = load %struct.node*, %struct.node** %iminus.addr, align 8
  store %struct.node* %14, %struct.node** %father, align 8
  %15 = load i64, i64* %sigma.addr, align 8
  %16 = load %struct.node*, %struct.node** %father, align 8
  %potential = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %17 = load i64, i64* %potential, align 8
  %add = add nsw i64 %17, %15
  store i64 %add, i64* %potential, align 8
  br label %RECURSION

RECURSION:                                        ; preds = %ITERATION, %if.end
  %18 = load %struct.node*, %struct.node** %father, align 8
  %child = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 2
  %19 = load %struct.node*, %struct.node** %child, align 8
  store %struct.node* %19, %struct.node** %temp, align 8
  %20 = load %struct.node*, %struct.node** %temp, align 8
  %tobool = icmp ne %struct.node* %20, null
  br i1 %tobool, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %RECURSION
  br label %ITERATION

ITERATION:                                        ; preds = %if.then.22, %if.then.14
  %21 = load i64, i64* %sigma.addr, align 8
  %22 = load %struct.node*, %struct.node** %temp, align 8
  %potential15 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 0
  %23 = load i64, i64* %potential15, align 8
  %add16 = add nsw i64 %23, %21
  store i64 %add16, i64* %potential15, align 8
  %24 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %24, %struct.node** %father, align 8
  br label %RECURSION

if.end.17:                                        ; preds = %RECURSION
  br label %TEST

TEST:                                             ; preds = %if.end.23, %if.end.17
  %25 = load %struct.node*, %struct.node** %father, align 8
  %26 = load %struct.node*, %struct.node** %iminus.addr, align 8
  %cmp18 = icmp eq %struct.node* %25, %26
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %TEST
  br label %CONTINUE

if.end.20:                                        ; preds = %TEST
  %27 = load %struct.node*, %struct.node** %father, align 8
  %sibling = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 4
  %28 = load %struct.node*, %struct.node** %sibling, align 8
  store %struct.node* %28, %struct.node** %temp, align 8
  %29 = load %struct.node*, %struct.node** %temp, align 8
  %tobool21 = icmp ne %struct.node* %29, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  br label %ITERATION

if.end.23:                                        ; preds = %if.end.20
  %30 = load %struct.node*, %struct.node** %father, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 3
  %31 = load %struct.node*, %struct.node** %pred, align 8
  store %struct.node* %31, %struct.node** %father, align 8
  br label %TEST

CONTINUE:                                         ; preds = %if.then.19
  %32 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %32, %struct.node** %temp, align 8
  %33 = load %struct.node*, %struct.node** %temp, align 8
  %pred24 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 3
  %34 = load %struct.node*, %struct.node** %pred24, align 8
  store %struct.node* %34, %struct.node** %father, align 8
  %35 = load %struct.node*, %struct.node** %iminus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 11
  %36 = load i64, i64* %depth, align 8
  store i64 %36, i64* %depth_iminus, align 8
  store i64 %36, i64* %new_depth, align 8
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %new_pred, align 8
  %38 = load %struct.arc*, %struct.arc** %bea.addr, align 8
  store %struct.arc* %38, %struct.arc** %new_basic_arc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.61, %CONTINUE
  %39 = load %struct.node*, %struct.node** %temp, align 8
  %40 = load %struct.node*, %struct.node** %jminus.addr, align 8
  %cmp25 = icmp ne %struct.node* %39, %40
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.node*, %struct.node** %temp, align 8
  %sibling26 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 4
  %42 = load %struct.node*, %struct.node** %sibling26, align 8
  %tobool27 = icmp ne %struct.node* %42, null
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %while.body
  %43 = load %struct.node*, %struct.node** %temp, align 8
  %sibling_prev = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 5
  %44 = load %struct.node*, %struct.node** %sibling_prev, align 8
  %45 = load %struct.node*, %struct.node** %temp, align 8
  %sibling29 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 4
  %46 = load %struct.node*, %struct.node** %sibling29, align 8
  %sibling_prev30 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 5
  store %struct.node* %44, %struct.node** %sibling_prev30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %while.body
  %47 = load %struct.node*, %struct.node** %temp, align 8
  %sibling_prev32 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 5
  %48 = load %struct.node*, %struct.node** %sibling_prev32, align 8
  %tobool33 = icmp ne %struct.node* %48, null
  br i1 %tobool33, label %if.then.34, label %if.else.38

if.then.34:                                       ; preds = %if.end.31
  %49 = load %struct.node*, %struct.node** %temp, align 8
  %sibling35 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 4
  %50 = load %struct.node*, %struct.node** %sibling35, align 8
  %51 = load %struct.node*, %struct.node** %temp, align 8
  %sibling_prev36 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 5
  %52 = load %struct.node*, %struct.node** %sibling_prev36, align 8
  %sibling37 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 4
  store %struct.node* %50, %struct.node** %sibling37, align 8
  br label %if.end.41

if.else.38:                                       ; preds = %if.end.31
  %53 = load %struct.node*, %struct.node** %temp, align 8
  %sibling39 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 4
  %54 = load %struct.node*, %struct.node** %sibling39, align 8
  %55 = load %struct.node*, %struct.node** %father, align 8
  %child40 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 2
  store %struct.node* %54, %struct.node** %child40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.34
  %56 = load %struct.node*, %struct.node** %new_pred, align 8
  %57 = load %struct.node*, %struct.node** %temp, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 3
  store %struct.node* %56, %struct.node** %pred42, align 8
  %58 = load %struct.node*, %struct.node** %new_pred, align 8
  %child43 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 2
  %59 = load %struct.node*, %struct.node** %child43, align 8
  %60 = load %struct.node*, %struct.node** %temp, align 8
  %sibling44 = getelementptr inbounds %struct.node, %struct.node* %60, i32 0, i32 4
  store %struct.node* %59, %struct.node** %sibling44, align 8
  %61 = load %struct.node*, %struct.node** %temp, align 8
  %sibling45 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 4
  %62 = load %struct.node*, %struct.node** %sibling45, align 8
  %tobool46 = icmp ne %struct.node* %62, null
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.41
  %63 = load %struct.node*, %struct.node** %temp, align 8
  %64 = load %struct.node*, %struct.node** %temp, align 8
  %sibling48 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 4
  %65 = load %struct.node*, %struct.node** %sibling48, align 8
  %sibling_prev49 = getelementptr inbounds %struct.node, %struct.node* %65, i32 0, i32 5
  store %struct.node* %63, %struct.node** %sibling_prev49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.41
  %66 = load %struct.node*, %struct.node** %temp, align 8
  %67 = load %struct.node*, %struct.node** %new_pred, align 8
  %child51 = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 2
  store %struct.node* %66, %struct.node** %child51, align 8
  %68 = load %struct.node*, %struct.node** %temp, align 8
  %sibling_prev52 = getelementptr inbounds %struct.node, %struct.node* %68, i32 0, i32 5
  store %struct.node* null, %struct.node** %sibling_prev52, align 8
  %69 = load %struct.node*, %struct.node** %temp, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 1
  %70 = load i32, i32* %orientation, align 4
  %tobool53 = icmp ne i32 %70, 0
  %lnot = xor i1 %tobool53, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  store i64 %conv, i64* %orientation_temp, align 8
  %71 = load i64, i64* %orientation_temp, align 8
  %72 = load i64, i64* %cycle_ori.addr, align 8
  %cmp54 = icmp eq i64 %71, %72
  br i1 %cmp54, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.end.50
  %73 = load %struct.node*, %struct.node** %temp, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 10
  %74 = load i64, i64* %flow, align 8
  %75 = load i64, i64* %delta.addr, align 8
  %add57 = add nsw i64 %74, %75
  store i64 %add57, i64* %flow_temp, align 8
  br label %if.end.61

if.else.58:                                       ; preds = %if.end.50
  %76 = load %struct.node*, %struct.node** %temp, align 8
  %flow59 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 10
  %77 = load i64, i64* %flow59, align 8
  %78 = load i64, i64* %delta.addr, align 8
  %sub60 = sub nsw i64 %77, %78
  store i64 %sub60, i64* %flow_temp, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.56
  %79 = load %struct.node*, %struct.node** %temp, align 8
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 6
  %80 = load %struct.arc*, %struct.arc** %basic_arc, align 8
  store %struct.arc* %80, %struct.arc** %basic_arc_temp, align 8
  %81 = load %struct.node*, %struct.node** %temp, align 8
  %depth62 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 11
  %82 = load i64, i64* %depth62, align 8
  store i64 %82, i64* %depth_temp, align 8
  %83 = load i64, i64* %new_orientation.addr, align 8
  %conv63 = trunc i64 %83 to i32
  %84 = load %struct.node*, %struct.node** %temp, align 8
  %orientation64 = getelementptr inbounds %struct.node, %struct.node* %84, i32 0, i32 1
  store i32 %conv63, i32* %orientation64, align 4
  %85 = load i64, i64* %new_flow.addr, align 8
  %86 = load %struct.node*, %struct.node** %temp, align 8
  %flow65 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 10
  store i64 %85, i64* %flow65, align 8
  %87 = load %struct.arc*, %struct.arc** %new_basic_arc, align 8
  %88 = load %struct.node*, %struct.node** %temp, align 8
  %basic_arc66 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 6
  store %struct.arc* %87, %struct.arc** %basic_arc66, align 8
  %89 = load i64, i64* %new_depth, align 8
  %90 = load %struct.node*, %struct.node** %temp, align 8
  %depth67 = getelementptr inbounds %struct.node, %struct.node* %90, i32 0, i32 11
  store i64 %89, i64* %depth67, align 8
  %91 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %91, %struct.node** %new_pred, align 8
  %92 = load i64, i64* %orientation_temp, align 8
  store i64 %92, i64* %new_orientation.addr, align 8
  %93 = load i64, i64* %flow_temp, align 8
  store i64 %93, i64* %new_flow.addr, align 8
  %94 = load %struct.arc*, %struct.arc** %basic_arc_temp, align 8
  store %struct.arc* %94, %struct.arc** %new_basic_arc, align 8
  %95 = load i64, i64* %depth_iminus, align 8
  %96 = load i64, i64* %depth_temp, align 8
  %sub68 = sub nsw i64 %95, %96
  store i64 %sub68, i64* %new_depth, align 8
  %97 = load %struct.node*, %struct.node** %father, align 8
  store %struct.node* %97, %struct.node** %temp, align 8
  %98 = load %struct.node*, %struct.node** %temp, align 8
  %pred69 = getelementptr inbounds %struct.node, %struct.node* %98, i32 0, i32 3
  %99 = load %struct.node*, %struct.node** %pred69, align 8
  store %struct.node* %99, %struct.node** %father, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %100 = load i64, i64* %delta.addr, align 8
  %101 = load i64, i64* %feas_tol.addr, align 8
  %cmp70 = icmp sgt i64 %100, %101
  br i1 %cmp70, label %if.then.72, label %if.else.109

if.then.72:                                       ; preds = %while.end
  %102 = load %struct.node*, %struct.node** %jminus.addr, align 8
  store %struct.node* %102, %struct.node** %temp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.72
  %103 = load %struct.node*, %struct.node** %temp, align 8
  %104 = load %struct.node*, %struct.node** %w.addr, align 8
  %cmp73 = icmp ne %struct.node* %103, %104
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %105 = load i64, i64* %depth_iminus, align 8
  %106 = load %struct.node*, %struct.node** %temp, align 8
  %depth75 = getelementptr inbounds %struct.node, %struct.node* %106, i32 0, i32 11
  %107 = load i64, i64* %depth75, align 8
  %sub76 = sub nsw i64 %107, %105
  store i64 %sub76, i64* %depth75, align 8
  %108 = load %struct.node*, %struct.node** %temp, align 8
  %orientation77 = getelementptr inbounds %struct.node, %struct.node* %108, i32 0, i32 1
  %109 = load i32, i32* %orientation77, align 4
  %conv78 = sext i32 %109 to i64
  %110 = load i64, i64* %cycle_ori.addr, align 8
  %cmp79 = icmp ne i64 %conv78, %110
  br i1 %cmp79, label %if.then.81, label %if.else.84

if.then.81:                                       ; preds = %for.body
  %111 = load i64, i64* %delta.addr, align 8
  %112 = load %struct.node*, %struct.node** %temp, align 8
  %flow82 = getelementptr inbounds %struct.node, %struct.node* %112, i32 0, i32 10
  %113 = load i64, i64* %flow82, align 8
  %add83 = add nsw i64 %113, %111
  store i64 %add83, i64* %flow82, align 8
  br label %if.end.87

if.else.84:                                       ; preds = %for.body
  %114 = load i64, i64* %delta.addr, align 8
  %115 = load %struct.node*, %struct.node** %temp, align 8
  %flow85 = getelementptr inbounds %struct.node, %struct.node* %115, i32 0, i32 10
  %116 = load i64, i64* %flow85, align 8
  %sub86 = sub nsw i64 %116, %114
  store i64 %sub86, i64* %flow85, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.81
  br label %for.inc

for.inc:                                          ; preds = %if.end.87
  %117 = load %struct.node*, %struct.node** %temp, align 8
  %pred88 = getelementptr inbounds %struct.node, %struct.node* %117, i32 0, i32 3
  %118 = load %struct.node*, %struct.node** %pred88, align 8
  store %struct.node* %118, %struct.node** %temp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %119 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %119, %struct.node** %temp, align 8
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.106, %for.end
  %120 = load %struct.node*, %struct.node** %temp, align 8
  %121 = load %struct.node*, %struct.node** %w.addr, align 8
  %cmp90 = icmp ne %struct.node* %120, %121
  br i1 %cmp90, label %for.body.92, label %for.end.108

for.body.92:                                      ; preds = %for.cond.89
  %122 = load i64, i64* %depth_iminus, align 8
  %123 = load %struct.node*, %struct.node** %temp, align 8
  %depth93 = getelementptr inbounds %struct.node, %struct.node* %123, i32 0, i32 11
  %124 = load i64, i64* %depth93, align 8
  %add94 = add nsw i64 %124, %122
  store i64 %add94, i64* %depth93, align 8
  %125 = load %struct.node*, %struct.node** %temp, align 8
  %orientation95 = getelementptr inbounds %struct.node, %struct.node* %125, i32 0, i32 1
  %126 = load i32, i32* %orientation95, align 4
  %conv96 = sext i32 %126 to i64
  %127 = load i64, i64* %cycle_ori.addr, align 8
  %cmp97 = icmp eq i64 %conv96, %127
  br i1 %cmp97, label %if.then.99, label %if.else.102

if.then.99:                                       ; preds = %for.body.92
  %128 = load i64, i64* %delta.addr, align 8
  %129 = load %struct.node*, %struct.node** %temp, align 8
  %flow100 = getelementptr inbounds %struct.node, %struct.node* %129, i32 0, i32 10
  %130 = load i64, i64* %flow100, align 8
  %add101 = add nsw i64 %130, %128
  store i64 %add101, i64* %flow100, align 8
  br label %if.end.105

if.else.102:                                      ; preds = %for.body.92
  %131 = load i64, i64* %delta.addr, align 8
  %132 = load %struct.node*, %struct.node** %temp, align 8
  %flow103 = getelementptr inbounds %struct.node, %struct.node* %132, i32 0, i32 10
  %133 = load i64, i64* %flow103, align 8
  %sub104 = sub nsw i64 %133, %131
  store i64 %sub104, i64* %flow103, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.99
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %134 = load %struct.node*, %struct.node** %temp, align 8
  %pred107 = getelementptr inbounds %struct.node, %struct.node* %134, i32 0, i32 3
  %135 = load %struct.node*, %struct.node** %pred107, align 8
  store %struct.node* %135, %struct.node** %temp, align 8
  br label %for.cond.89

for.end.108:                                      ; preds = %for.cond.89
  br label %if.end.128

if.else.109:                                      ; preds = %while.end
  %136 = load %struct.node*, %struct.node** %jminus.addr, align 8
  store %struct.node* %136, %struct.node** %temp, align 8
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.116, %if.else.109
  %137 = load %struct.node*, %struct.node** %temp, align 8
  %138 = load %struct.node*, %struct.node** %w.addr, align 8
  %cmp111 = icmp ne %struct.node* %137, %138
  br i1 %cmp111, label %for.body.113, label %for.end.118

for.body.113:                                     ; preds = %for.cond.110
  %139 = load i64, i64* %depth_iminus, align 8
  %140 = load %struct.node*, %struct.node** %temp, align 8
  %depth114 = getelementptr inbounds %struct.node, %struct.node* %140, i32 0, i32 11
  %141 = load i64, i64* %depth114, align 8
  %sub115 = sub nsw i64 %141, %139
  store i64 %sub115, i64* %depth114, align 8
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.113
  %142 = load %struct.node*, %struct.node** %temp, align 8
  %pred117 = getelementptr inbounds %struct.node, %struct.node* %142, i32 0, i32 3
  %143 = load %struct.node*, %struct.node** %pred117, align 8
  store %struct.node* %143, %struct.node** %temp, align 8
  br label %for.cond.110

for.end.118:                                      ; preds = %for.cond.110
  %144 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %144, %struct.node** %temp, align 8
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.125, %for.end.118
  %145 = load %struct.node*, %struct.node** %temp, align 8
  %146 = load %struct.node*, %struct.node** %w.addr, align 8
  %cmp120 = icmp ne %struct.node* %145, %146
  br i1 %cmp120, label %for.body.122, label %for.end.127

for.body.122:                                     ; preds = %for.cond.119
  %147 = load i64, i64* %depth_iminus, align 8
  %148 = load %struct.node*, %struct.node** %temp, align 8
  %depth123 = getelementptr inbounds %struct.node, %struct.node* %148, i32 0, i32 11
  %149 = load i64, i64* %depth123, align 8
  %add124 = add nsw i64 %149, %147
  store i64 %add124, i64* %depth123, align 8
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.122
  %150 = load %struct.node*, %struct.node** %temp, align 8
  %pred126 = getelementptr inbounds %struct.node, %struct.node* %150, i32 0, i32 3
  %151 = load %struct.node*, %struct.node** %pred126, align 8
  store %struct.node* %151, %struct.node** %temp, align 8
  br label %for.cond.119

for.end.127:                                      ; preds = %for.cond.119
  br label %if.end.128

if.end.128:                                       ; preds = %for.end.127, %for.end.108
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
