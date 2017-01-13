; ModuleID = './MultiSource.Benchmarks.MallocBench/29.espresso.contain.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external global %struct.cube_struct, align 8

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_contain(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %cnt = alloca i32, align 4
  %A1 = alloca i32**, align 8
  %R = alloca %struct.set_family*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %call = call i32** @sf_sort(%struct.set_family* %0, i32 (...)* @descend)
  store i32** %call, i32*** %A1, align 8
  %1 = load i32**, i32*** %A1, align 8
  %call1 = call i32 @rm_equal(i32** %1, i32 (...)* @descend)
  store i32 %call1, i32* %cnt, align 4
  %2 = load i32**, i32*** %A1, align 8
  %call2 = call i32 @rm_contain(i32** %2)
  store i32 %call2, i32* %cnt, align 4
  %3 = load i32**, i32*** %A1, align 8
  %4 = load i32, i32* %cnt, align 4
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 1
  %6 = load i32, i32* %sf_size, align 4
  %call3 = call %struct.set_family* @sf_unlist(i32** %3, i32 %4, i32 %6)
  store %struct.set_family* %call3, %struct.set_family** %R, align 8
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %7)
  %8 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %8
}

declare i32 @descend(...) #1

declare void @sf_free(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_rev_contain(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %cnt = alloca i32, align 4
  %A1 = alloca i32**, align 8
  %R = alloca %struct.set_family*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %call = call i32** @sf_sort(%struct.set_family* %0, i32 (...)* @ascend)
  store i32** %call, i32*** %A1, align 8
  %1 = load i32**, i32*** %A1, align 8
  %call1 = call i32 @rm_equal(i32** %1, i32 (...)* @ascend)
  store i32 %call1, i32* %cnt, align 4
  %2 = load i32**, i32*** %A1, align 8
  %call2 = call i32 @rm_rev_contain(i32** %2)
  store i32 %call2, i32* %cnt, align 4
  %3 = load i32**, i32*** %A1, align 8
  %4 = load i32, i32* %cnt, align 4
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 1
  %6 = load i32, i32* %sf_size, align 4
  %call3 = call %struct.set_family* @sf_unlist(i32** %3, i32 %4, i32 %6)
  store %struct.set_family* %call3, %struct.set_family** %R, align 8
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %7)
  %8 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %8
}

declare i32 @ascend(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_ind_contain(%struct.set_family* %A, i32* %row_indices) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %row_indices.addr = alloca i32*, align 8
  %cnt = alloca i32, align 4
  %A1 = alloca i32**, align 8
  %R = alloca %struct.set_family*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32* %row_indices, i32** %row_indices.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %call = call i32** @sf_sort(%struct.set_family* %0, i32 (...)* @descend)
  store i32** %call, i32*** %A1, align 8
  %1 = load i32**, i32*** %A1, align 8
  %call1 = call i32 @rm_equal(i32** %1, i32 (...)* @descend)
  store i32 %call1, i32* %cnt, align 4
  %2 = load i32**, i32*** %A1, align 8
  %call2 = call i32 @rm_contain(i32** %2)
  store i32 %call2, i32* %cnt, align 4
  %3 = load i32**, i32*** %A1, align 8
  %4 = load i32, i32* %cnt, align 4
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 1
  %6 = load i32, i32* %sf_size, align 4
  %7 = load i32*, i32** %row_indices.addr, align 8
  %8 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 5
  %9 = load i32*, i32** %data, align 8
  %call3 = call %struct.set_family* @sf_ind_unlist(i32** %3, i32 %4, i32 %6, i32* %7, i32* %9)
  store %struct.set_family* %call3, %struct.set_family** %R, align 8
  %10 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %10)
  %11 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %11
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_dupl(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %cnt = alloca i32, align 4
  %A1 = alloca i32**, align 8
  %R = alloca %struct.set_family*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %call = call i32** @sf_sort(%struct.set_family* %0, i32 (...)* @descend)
  store i32** %call, i32*** %A1, align 8
  %1 = load i32**, i32*** %A1, align 8
  %call1 = call i32 @rm_equal(i32** %1, i32 (...)* @descend)
  store i32 %call1, i32* %cnt, align 4
  %2 = load i32**, i32*** %A1, align 8
  %3 = load i32, i32* %cnt, align 4
  %4 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 1
  %5 = load i32, i32* %sf_size, align 4
  %call2 = call %struct.set_family* @sf_unlist(i32** %2, i32 %3, i32 %5)
  store %struct.set_family* %call2, %struct.set_family** %R, align 8
  %6 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %6)
  %7 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %7
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_union(%struct.set_family* %A, %struct.set_family* %B) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %B.addr = alloca %struct.set_family*, align 8
  %cnt = alloca i32, align 4
  %R = alloca %struct.set_family*, align 8
  %A1 = alloca i32**, align 8
  %B1 = alloca i32**, align 8
  %E1 = alloca i32**, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store %struct.set_family* %B, %struct.set_family** %B.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %call = call i32** @sf_list(%struct.set_family* %0)
  store i32** %call, i32*** %A1, align 8
  %1 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %call1 = call i32** @sf_list(%struct.set_family* %1)
  store i32** %call1, i32*** %B1, align 8
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 3
  %3 = load i32, i32* %count, align 4
  %4 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count2, align 4
  %cmp = icmp sgt i32 %3, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count3 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 3
  %7 = load i32, i32* %count3, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count4 = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 3
  %9 = load i32, i32* %count4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %9, %cond.false ]
  %add = add nsw i32 %cond, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call5 = call i8* @malloc(i64 %mul)
  %10 = bitcast i8* %call5 to i32**
  store i32** %10, i32*** %E1, align 8
  %11 = load i32**, i32*** %A1, align 8
  %12 = load i32**, i32*** %B1, align 8
  %13 = load i32**, i32*** %E1, align 8
  %call6 = call i32 @rm2_equal(i32** %11, i32** %12, i32** %13, i32 (...)* @descend)
  store i32 %call6, i32* %cnt, align 4
  %14 = load i32**, i32*** %A1, align 8
  %15 = load i32**, i32*** %B1, align 8
  %call7 = call i32 @rm2_contain(i32** %14, i32** %15)
  %16 = load i32**, i32*** %B1, align 8
  %17 = load i32**, i32*** %A1, align 8
  %call8 = call i32 @rm2_contain(i32** %16, i32** %17)
  %add9 = add nsw i32 %call7, %call8
  %18 = load i32, i32* %cnt, align 4
  %add10 = add nsw i32 %18, %add9
  store i32 %add10, i32* %cnt, align 4
  %19 = load i32**, i32*** %A1, align 8
  %20 = load i32**, i32*** %B1, align 8
  %21 = load i32**, i32*** %E1, align 8
  %22 = load i32, i32* %cnt, align 4
  %23 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 1
  %24 = load i32, i32* %sf_size, align 4
  %call11 = call %struct.set_family* @sf_merge(i32** %19, i32** %20, i32** %21, i32 %22, i32 %24)
  store %struct.set_family* %call11, %struct.set_family** %R, align 8
  %25 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %25)
  %26 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %26)
  %27 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %27
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @dist_merge(%struct.set_family* %A, i32* %mask) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %mask.addr = alloca i32*, align 8
  %A1 = alloca i32**, align 8
  %cnt = alloca i32, align 4
  %R = alloca %struct.set_family*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32* %mask, i32** %mask.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  %2 = load i32*, i32** %mask.addr, align 8
  %call = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %1, i32* %2)
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %call1 = call i32** @sf_sort(%struct.set_family* %3, i32 (...)* @d1_order)
  store i32** %call1, i32*** %A1, align 8
  %4 = load i32**, i32*** %A1, align 8
  %call2 = call i32 @d1_rm_equal(i32** %4, i32 (...)* @d1_order)
  store i32 %call2, i32* %cnt, align 4
  %5 = load i32**, i32*** %A1, align 8
  %6 = load i32, i32* %cnt, align 4
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 1
  %8 = load i32, i32* %sf_size, align 4
  %call3 = call %struct.set_family* @sf_unlist(i32** %5, i32 %6, i32 %8)
  store %struct.set_family* %call3, %struct.set_family** %R, align 8
  %9 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %9)
  %10 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %10
}

declare i32* @set_copy(...) #1

declare i32 @d1_order(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @d1merge(%struct.set_family* %A, i32 %var) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %var.addr = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32 %var, i32* %var.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %1 = load i32, i32* %var.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %2, i64 %idxprom
  %3 = load i32*, i32** %arrayidx, align 8
  %call = call %struct.set_family* @dist_merge(%struct.set_family* %0, i32* %3)
  ret %struct.set_family* %call
}

; Function Attrs: nounwind uwtable
define i32 @d1_rm_equal(i32** %A1, i32 (...)* %compare) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %compare.addr = alloca i32 (...)*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %dest = alloca i32, align 4
  store i32** %A1, i32*** %A1.addr, align 8
  store i32 (...)* %compare, i32 (...)** %compare.addr, align 8
  store i32 0, i32* %dest, align 4
  %0 = load i32**, i32*** %A1.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  %cmp = icmp ne i32* %1, null
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32**, i32*** %A1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %3, i64 %idxprom
  %4 = load i32*, i32** %arrayidx1, align 8
  %cmp2 = icmp ne i32* %4, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32 (...)*, i32 (...)** %compare.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i32**, i32*** %A1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %7, i64 %idxprom3
  %8 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i32**, i32*** %A1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %9, i64 %idxprom5
  %callee.knr.cast = bitcast i32 (...)* %5 to i32 (i32**, i32**, ...)*
  %call = call i32 (i32**, i32**, ...) %callee.knr.cast(i32** %arrayidx4, i32** %arrayidx6)
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i32**, i32*** %A1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %11, i64 %idxprom9
  %12 = load i32*, i32** %arrayidx10, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load i32**, i32*** %A1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %14, i64 %idxprom11
  %15 = load i32*, i32** %arrayidx12, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load i32**, i32*** %A1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %17, i64 %idxprom13
  %18 = load i32*, i32** %arrayidx14, align 8
  %call15 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %12, i32* %15, i32* %18)
  br label %if.end

if.else:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %20 = load i32**, i32*** %A1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32*, i32** %20, i64 %idxprom16
  %21 = load i32*, i32** %arrayidx17, align 8
  %22 = load i32, i32* %dest, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %dest, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load i32**, i32*** %A1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %23, i64 %idxprom18
  store i32* %21, i32** %arrayidx19, align 8
  %24 = load i32, i32* %j, align 4
  store i32 %24, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %25, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load i32**, i32*** %A1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32*, i32** %27, i64 %idxprom21
  %28 = load i32*, i32** %arrayidx22, align 8
  %29 = load i32, i32* %dest, align 4
  %inc23 = add nsw i32 %29, 1
  store i32 %inc23, i32* %dest, align 4
  %idxprom24 = sext i32 %29 to i64
  %30 = load i32**, i32*** %A1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %30, i64 %idxprom24
  store i32* %28, i32** %arrayidx25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %entry
  %31 = load i32, i32* %dest, align 4
  %idxprom27 = sext i32 %31 to i64
  %32 = load i32**, i32*** %A1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %32, i64 %idxprom27
  store i32* null, i32** %arrayidx28, align 8
  %33 = load i32, i32* %dest, align 4
  ret i32 %33
}

declare i32* @set_or(...) #1

; Function Attrs: nounwind uwtable
define i32 @rm_equal(i32** %A1, i32 (...)* %compare) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %compare.addr = alloca i32 (...)*, align 8
  %p = alloca i32**, align 8
  %pdest = alloca i32**, align 8
  store i32** %A1, i32*** %A1.addr, align 8
  store i32 (...)* %compare, i32 (...)** %compare.addr, align 8
  %0 = load i32**, i32*** %A1.addr, align 8
  store i32** %0, i32*** %pdest, align 8
  %1 = load i32**, i32*** %A1.addr, align 8
  %2 = load i32*, i32** %1, align 8
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %3 = load i32**, i32*** %A1.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %3, i64 1
  store i32** %add.ptr, i32*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32**, i32*** %p, align 8
  %5 = load i32*, i32** %4, align 8
  %cmp1 = icmp ne i32* %5, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32 (...)*, i32 (...)** %compare.addr, align 8
  %7 = load i32**, i32*** %p, align 8
  %8 = load i32**, i32*** %p, align 8
  %add.ptr2 = getelementptr inbounds i32*, i32** %8, i64 -1
  %callee.knr.cast = bitcast i32 (...)* %6 to i32 (i32**, i32**, ...)*
  %call = call i32 (i32**, i32**, ...) %callee.knr.cast(i32** %7, i32** %add.ptr2)
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %9 = load i32**, i32*** %p, align 8
  %add.ptr5 = getelementptr inbounds i32*, i32** %9, i64 -1
  %10 = load i32*, i32** %add.ptr5, align 8
  %11 = load i32**, i32*** %pdest, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %11, i32 1
  store i32** %incdec.ptr, i32*** %pdest, align 8
  store i32* %10, i32** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32**, i32*** %p, align 8
  %incdec.ptr6 = getelementptr inbounds i32*, i32** %12, i32 1
  store i32** %incdec.ptr6, i32*** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32**, i32*** %p, align 8
  %add.ptr7 = getelementptr inbounds i32*, i32** %13, i64 -1
  %14 = load i32*, i32** %add.ptr7, align 8
  %15 = load i32**, i32*** %pdest, align 8
  %incdec.ptr8 = getelementptr inbounds i32*, i32** %15, i32 1
  store i32** %incdec.ptr8, i32*** %pdest, align 8
  store i32* %14, i32** %15, align 8
  %16 = load i32**, i32*** %pdest, align 8
  store i32* null, i32** %16, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %entry
  %17 = load i32**, i32*** %pdest, align 8
  %18 = load i32**, i32*** %A1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @rm_contain(i32** %A1) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %pa = alloca i32**, align 8
  %pb = alloca i32**, align 8
  %pcheck = alloca i32**, align 8
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %pdest = alloca i32**, align 8
  %last_size = alloca i32, align 4
  %i_ = alloca i32, align 4
  store i32** %A1, i32*** %A1.addr, align 8
  %0 = load i32**, i32*** %A1.addr, align 8
  store i32** %0, i32*** %pdest, align 8
  store i32 -1, i32* %last_size, align 4
  %1 = load i32**, i32*** %A1.addr, align 8
  store i32** %1, i32*** %pa, align 8
  br label %for.cond

for.cond:                                         ; preds = %lnext1, %entry
  %2 = load i32**, i32*** %pa, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %2, i32 1
  store i32** %incdec.ptr, i32*** %pa, align 8
  %3 = load i32*, i32** %2, align 8
  store i32* %3, i32** %a, align 8
  %cmp = icmp ne i32* %3, null
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %a, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %5, 16
  %6 = load i32, i32* %last_size, align 4
  %cmp1 = icmp ne i32 %shr, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32*, i32** %a, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx2, align 4
  %shr3 = lshr i32 %8, 16
  store i32 %shr3, i32* %last_size, align 4
  %9 = load i32**, i32*** %pdest, align 8
  store i32** %9, i32*** %pcheck, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load i32**, i32*** %A1.addr, align 8
  store i32** %10, i32*** %pb, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %if.then.17, %if.end
  %11 = load i32**, i32*** %pb, align 8
  %12 = load i32**, i32*** %pcheck, align 8
  %cmp5 = icmp ne i32** %11, %12
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %13 = load i32**, i32*** %pb, align 8
  %incdec.ptr7 = getelementptr inbounds i32*, i32** %13, i32 1
  store i32** %incdec.ptr7, i32*** %pb, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %b, align 8
  %15 = load i32*, i32** %a, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx8, align 4
  %and = and i32 %16, 1023
  store i32 %and, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.6
  %17 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i32*, i32** %a, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %19 = load i32, i32* %arrayidx9, align 4
  %20 = load i32, i32* %i_, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load i32*, i32** %b, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %21, i64 %idxprom10
  %22 = load i32, i32* %arrayidx11, align 4
  %neg = xor i32 %22, -1
  %and12 = and i32 %19, %neg
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.body
  br label %do.end

if.end.14:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  %23 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i_, align 4
  %cmp15 = icmp sgt i32 %dec, 0
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.13
  %24 = load i32, i32* %i_, align 4
  %cmp16 = icmp ne i32 %24, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end
  br label %for.cond.4

if.end.18:                                        ; preds = %do.end
  br label %lnext1

for.end:                                          ; preds = %for.cond.4
  %25 = load i32*, i32** %a, align 8
  %26 = load i32**, i32*** %pdest, align 8
  %incdec.ptr19 = getelementptr inbounds i32*, i32** %26, i32 1
  store i32** %incdec.ptr19, i32*** %pdest, align 8
  store i32* %25, i32** %26, align 8
  br label %lnext1

lnext1:                                           ; preds = %for.end, %if.end.18
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %27 = load i32**, i32*** %pdest, align 8
  store i32* null, i32** %27, align 8
  %28 = load i32**, i32*** %pdest, align 8
  %29 = load i32**, i32*** %A1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @rm_rev_contain(i32** %A1) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %pa = alloca i32**, align 8
  %pb = alloca i32**, align 8
  %pcheck = alloca i32**, align 8
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %pdest = alloca i32**, align 8
  %last_size = alloca i32, align 4
  %i_ = alloca i32, align 4
  store i32** %A1, i32*** %A1.addr, align 8
  %0 = load i32**, i32*** %A1.addr, align 8
  store i32** %0, i32*** %pdest, align 8
  store i32 -1, i32* %last_size, align 4
  %1 = load i32**, i32*** %A1.addr, align 8
  store i32** %1, i32*** %pa, align 8
  br label %for.cond

for.cond:                                         ; preds = %lnext1, %entry
  %2 = load i32**, i32*** %pa, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %2, i32 1
  store i32** %incdec.ptr, i32*** %pa, align 8
  %3 = load i32*, i32** %2, align 8
  store i32* %3, i32** %a, align 8
  %cmp = icmp ne i32* %3, null
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %a, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %5, 16
  %6 = load i32, i32* %last_size, align 4
  %cmp1 = icmp ne i32 %shr, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32*, i32** %a, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx2, align 4
  %shr3 = lshr i32 %8, 16
  store i32 %shr3, i32* %last_size, align 4
  %9 = load i32**, i32*** %pdest, align 8
  store i32** %9, i32*** %pcheck, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load i32**, i32*** %A1.addr, align 8
  store i32** %10, i32*** %pb, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %if.then.17, %if.end
  %11 = load i32**, i32*** %pb, align 8
  %12 = load i32**, i32*** %pcheck, align 8
  %cmp5 = icmp ne i32** %11, %12
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %13 = load i32**, i32*** %pb, align 8
  %incdec.ptr7 = getelementptr inbounds i32*, i32** %13, i32 1
  store i32** %incdec.ptr7, i32*** %pb, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %b, align 8
  %15 = load i32*, i32** %b, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx8, align 4
  %and = and i32 %16, 1023
  store i32 %and, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.6
  %17 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i32*, i32** %b, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %19 = load i32, i32* %arrayidx9, align 4
  %20 = load i32, i32* %i_, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load i32*, i32** %a, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %21, i64 %idxprom10
  %22 = load i32, i32* %arrayidx11, align 4
  %neg = xor i32 %22, -1
  %and12 = and i32 %19, %neg
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.body
  br label %do.end

if.end.14:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  %23 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i_, align 4
  %cmp15 = icmp sgt i32 %dec, 0
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.13
  %24 = load i32, i32* %i_, align 4
  %cmp16 = icmp ne i32 %24, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end
  br label %for.cond.4

if.end.18:                                        ; preds = %do.end
  br label %lnext1

for.end:                                          ; preds = %for.cond.4
  %25 = load i32*, i32** %a, align 8
  %26 = load i32**, i32*** %pdest, align 8
  %incdec.ptr19 = getelementptr inbounds i32*, i32** %26, i32 1
  store i32** %incdec.ptr19, i32*** %pdest, align 8
  store i32* %25, i32** %26, align 8
  br label %lnext1

lnext1:                                           ; preds = %for.end, %if.end.18
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %27 = load i32**, i32*** %pdest, align 8
  store i32* null, i32** %27, align 8
  %28 = load i32**, i32*** %pdest, align 8
  %29 = load i32**, i32*** %A1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @rm2_equal(i32** %A1, i32** %B1, i32** %E1, i32 (...)* %compare) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %B1.addr = alloca i32**, align 8
  %E1.addr = alloca i32**, align 8
  %compare.addr = alloca i32 (...)*, align 8
  %pda = alloca i32**, align 8
  %pdb = alloca i32**, align 8
  %pde = alloca i32**, align 8
  store i32** %A1, i32*** %A1.addr, align 8
  store i32** %B1, i32*** %B1.addr, align 8
  store i32** %E1, i32*** %E1.addr, align 8
  store i32 (...)* %compare, i32 (...)** %compare.addr, align 8
  %0 = load i32**, i32*** %A1.addr, align 8
  store i32** %0, i32*** %pda, align 8
  %1 = load i32**, i32*** %B1.addr, align 8
  store i32** %1, i32*** %pdb, align 8
  %2 = load i32**, i32*** %E1.addr, align 8
  store i32** %2, i32*** %pde, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %3 = load i32**, i32*** %A1.addr, align 8
  %4 = load i32*, i32** %3, align 8
  %cmp = icmp ne i32* %4, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32**, i32*** %B1.addr, align 8
  %6 = load i32*, i32** %5, align 8
  %cmp1 = icmp ne i32* %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load i32 (...)*, i32 (...)** %compare.addr, align 8
  %9 = load i32**, i32*** %A1.addr, align 8
  %10 = load i32**, i32*** %B1.addr, align 8
  %callee.knr.cast = bitcast i32 (...)* %8 to i32 (i32**, i32**, ...)*
  %call = call i32 (i32**, i32**, ...) %callee.knr.cast(i32** %9, i32** %10)
  switch i32 %call, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %for.body
  %11 = load i32**, i32*** %A1.addr, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %11, i32 1
  store i32** %incdec.ptr, i32*** %A1.addr, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = load i32**, i32*** %pda, align 8
  %incdec.ptr2 = getelementptr inbounds i32*, i32** %13, i32 1
  store i32** %incdec.ptr2, i32*** %pda, align 8
  store i32* %12, i32** %13, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %14 = load i32**, i32*** %A1.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32*, i32** %14, i32 1
  store i32** %incdec.ptr4, i32*** %A1.addr, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32**, i32*** %pde, align 8
  %incdec.ptr5 = getelementptr inbounds i32*, i32** %16, i32 1
  store i32** %incdec.ptr5, i32*** %pde, align 8
  store i32* %15, i32** %16, align 8
  %17 = load i32**, i32*** %B1.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i32*, i32** %17, i32 1
  store i32** %incdec.ptr6, i32*** %B1.addr, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %18 = load i32**, i32*** %B1.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i32*, i32** %18, i32 1
  store i32** %incdec.ptr8, i32*** %B1.addr, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = load i32**, i32*** %pdb, align 8
  %incdec.ptr9 = getelementptr inbounds i32*, i32** %20, i32 1
  store i32** %incdec.ptr9, i32*** %pdb, align 8
  store i32* %19, i32** %20, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.7, %sw.bb.3, %sw.bb
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %21 = load i32**, i32*** %A1.addr, align 8
  %22 = load i32*, i32** %21, align 8
  %cmp10 = icmp ne i32* %22, null
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32**, i32*** %A1.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i32*, i32** %23, i32 1
  store i32** %incdec.ptr11, i32*** %A1.addr, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = load i32**, i32*** %pda, align 8
  %incdec.ptr12 = getelementptr inbounds i32*, i32** %25, i32 1
  store i32** %incdec.ptr12, i32*** %pda, align 8
  store i32* %24, i32** %25, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.15, %while.end
  %26 = load i32**, i32*** %B1.addr, align 8
  %27 = load i32*, i32** %26, align 8
  %cmp14 = icmp ne i32* %27, null
  br i1 %cmp14, label %while.body.15, label %while.end.18

while.body.15:                                    ; preds = %while.cond.13
  %28 = load i32**, i32*** %B1.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i32*, i32** %28, i32 1
  store i32** %incdec.ptr16, i32*** %B1.addr, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = load i32**, i32*** %pdb, align 8
  %incdec.ptr17 = getelementptr inbounds i32*, i32** %30, i32 1
  store i32** %incdec.ptr17, i32*** %pdb, align 8
  store i32* %29, i32** %30, align 8
  br label %while.cond.13

while.end.18:                                     ; preds = %while.cond.13
  %31 = load i32**, i32*** %pde, align 8
  store i32* null, i32** %31, align 8
  %32 = load i32**, i32*** %pdb, align 8
  store i32* null, i32** %32, align 8
  %33 = load i32**, i32*** %pda, align 8
  store i32* null, i32** %33, align 8
  %34 = load i32**, i32*** %pde, align 8
  %35 = load i32**, i32*** %E1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @rm2_contain(i32** %A1, i32** %B1) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %B1.addr = alloca i32**, align 8
  %pa = alloca i32**, align 8
  %pb = alloca i32**, align 8
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %pdest = alloca i32**, align 8
  %i_ = alloca i32, align 4
  store i32** %A1, i32*** %A1.addr, align 8
  store i32** %B1, i32*** %B1.addr, align 8
  %0 = load i32**, i32*** %A1.addr, align 8
  store i32** %0, i32*** %pdest, align 8
  %1 = load i32**, i32*** %A1.addr, align 8
  store i32** %1, i32*** %pa, align 8
  br label %for.cond

for.cond:                                         ; preds = %lnext1, %entry
  %2 = load i32**, i32*** %pa, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %2, i32 1
  store i32** %incdec.ptr, i32*** %pa, align 8
  %3 = load i32*, i32** %2, align 8
  store i32* %3, i32** %a, align 8
  %cmp = icmp ne i32* %3, null
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %4 = load i32**, i32*** %B1.addr, align 8
  store i32** %4, i32*** %pb, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %if.then.15, %for.body
  %5 = load i32**, i32*** %pb, align 8
  %incdec.ptr2 = getelementptr inbounds i32*, i32** %5, i32 1
  store i32** %incdec.ptr2, i32*** %pb, align 8
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %b, align 8
  %cmp3 = icmp ne i32* %6, null
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %7 = load i32*, i32** %b, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %8, 16
  %9 = load i32*, i32** %a, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx4, align 4
  %shr5 = lshr i32 %10, 16
  %cmp6 = icmp ugt i32 %shr, %shr5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %11 = phi i1 [ false, %for.cond.1 ], [ %cmp6, %land.rhs ]
  br i1 %11, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %land.end
  %12 = load i32*, i32** %a, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx8, align 4
  %and = and i32 %13, 1023
  store i32 %and, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.7
  %14 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i32*, i32** %a, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = load i32, i32* %arrayidx9, align 4
  %17 = load i32, i32* %i_, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i32*, i32** %b, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %18, i64 %idxprom10
  %19 = load i32, i32* %arrayidx11, align 4
  %neg = xor i32 %19, -1
  %and12 = and i32 %16, %neg
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %20 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %i_, align 4
  %cmp13 = icmp sgt i32 %dec, 0
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %21 = load i32, i32* %i_, align 4
  %cmp14 = icmp ne i32 %21, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  br label %for.cond.1

if.end.16:                                        ; preds = %do.end
  br label %lnext1

for.end:                                          ; preds = %land.end
  %22 = load i32*, i32** %a, align 8
  %23 = load i32**, i32*** %pdest, align 8
  %incdec.ptr17 = getelementptr inbounds i32*, i32** %23, i32 1
  store i32** %incdec.ptr17, i32*** %pdest, align 8
  store i32* %22, i32** %23, align 8
  br label %lnext1

lnext1:                                           ; preds = %for.end, %if.end.16
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %24 = load i32**, i32*** %pdest, align 8
  store i32* null, i32** %24, align 8
  %25 = load i32**, i32*** %pdest, align 8
  %26 = load i32**, i32*** %A1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32** @sf_sort(%struct.set_family* %A, i32 (...)* %compare) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %compare.addr = alloca i32 (...)*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %pdest = alloca i32**, align 8
  %A1 = alloca i32**, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32 (...)* %compare, i32 (...)** %compare.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call = call i8* @malloc(i64 %mul)
  %2 = bitcast i8* %call to i32**
  store i32** %2, i32*** %A1, align 8
  store i32** %2, i32*** %pdest, align 8
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 5
  %4 = load i32*, i32** %data, align 8
  store i32* %4, i32** %p, align 8
  %5 = load i32*, i32** %p, align 8
  %6 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 3
  %7 = load i32, i32* %count1, align 4
  %8 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 0
  %9 = load i32, i32* %wsize, align 4
  %mul2 = mul nsw i32 %7, %9
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32*, i32** %p, align 8
  %11 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx, align 4
  %and = and i32 %13, 65535
  store i32 %and, i32* %arrayidx, align 4
  %14 = load i32*, i32** %p, align 8
  %call4 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %14)
  %shl = shl i32 %call4, 16
  %15 = load i32*, i32** %p, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx5, align 4
  %or = or i32 %16, %shl
  store i32 %or, i32* %arrayidx5, align 4
  %17 = load i32*, i32** %p, align 8
  %18 = load i32**, i32*** %pdest, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %18, i32 1
  store i32** %incdec.ptr, i32*** %pdest, align 8
  store i32* %17, i32** %18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize6 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 0
  %20 = load i32, i32* %wsize6, align 4
  %21 = load i32*, i32** %p, align 8
  %idx.ext7 = sext i32 %20 to i64
  %add.ptr8 = getelementptr inbounds i32, i32* %21, i64 %idx.ext7
  store i32* %add.ptr8, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32**, i32*** %pdest, align 8
  store i32* null, i32** %22, align 8
  %23 = load i32**, i32*** %A1, align 8
  %24 = bitcast i32** %23 to i8*
  %25 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count9 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 3
  %26 = load i32, i32* %count9, align 4
  %conv10 = sext i32 %26 to i64
  %27 = load i32 (...)*, i32 (...)** %compare.addr, align 8
  %28 = bitcast i32 (...)* %27 to i32 (i8*, i8*)*
  call void @qsort(i8* %24, i64 %conv10, i64 8, i32 (i8*, i8*)* %28)
  %29 = load i32**, i32*** %A1, align 8
  ret i32** %29
}

declare i32 @set_ord(...) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define i32** @sf_list(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %pdest = alloca i32**, align 8
  %A1 = alloca i32**, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call = call i8* @malloc(i64 %mul)
  %2 = bitcast i8* %call to i32**
  store i32** %2, i32*** %A1, align 8
  store i32** %2, i32*** %pdest, align 8
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 5
  %4 = load i32*, i32** %data, align 8
  store i32* %4, i32** %p, align 8
  %5 = load i32*, i32** %p, align 8
  %6 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 3
  %7 = load i32, i32* %count1, align 4
  %8 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 0
  %9 = load i32, i32* %wsize, align 4
  %mul2 = mul nsw i32 %7, %9
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32*, i32** %p, align 8
  %11 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32*, i32** %p, align 8
  %13 = load i32**, i32*** %pdest, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %13, i32 1
  store i32** %incdec.ptr, i32*** %pdest, align 8
  store i32* %12, i32** %13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize4 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 0
  %15 = load i32, i32* %wsize4, align 4
  %16 = load i32*, i32** %p, align 8
  %idx.ext5 = sext i32 %15 to i64
  %add.ptr6 = getelementptr inbounds i32, i32* %16, i64 %idx.ext5
  store i32* %add.ptr6, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32**, i32*** %pdest, align 8
  store i32* null, i32** %17, align 8
  %18 = load i32**, i32*** %A1, align 8
  ret i32** %18
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_unlist(i32** %A1, i32 %totcnt, i32 %size) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %totcnt.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %pr = alloca i32*, align 8
  %p = alloca i32*, align 8
  %pa = alloca i32**, align 8
  %R = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  store i32** %A1, i32*** %A1.addr, align 8
  store i32 %totcnt, i32* %totcnt.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %totcnt.addr, align 4
  %1 = load i32, i32* %size.addr, align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %0, i32 %1)
  store %struct.set_family* %call, %struct.set_family** %R, align 8
  %2 = load i32, i32* %totcnt.addr, align 4
  %3 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  store i32 %2, i32* %count, align 4
  %4 = load %struct.set_family*, %struct.set_family** %R, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 5
  %5 = load i32*, i32** %data, align 8
  store i32* %5, i32** %pr, align 8
  %6 = load i32**, i32*** %A1.addr, align 8
  store i32** %6, i32*** %pa, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32**, i32*** %pa, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %7, i32 1
  store i32** %incdec.ptr, i32*** %pa, align 8
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %p, align 8
  %cmp = icmp ne i32* %8, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx, align 4
  %and = and i32 %10, 1023
  store i32 %and, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %11 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i32*, i32** %p, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load i32, i32* %arrayidx1, align 4
  %14 = load i32, i32* %i_, align 4
  %idxprom2 = sext i32 %14 to i64
  %15 = load i32*, i32** %pr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %15, i64 %idxprom2
  store i32 %13, i32* %arrayidx3, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %i_, align 4
  %cmp4 = icmp sge i32 %dec, 0
  br i1 %cmp4, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %17 = load %struct.set_family*, %struct.set_family** %R, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 0
  %18 = load i32, i32* %wsize, align 4
  %19 = load i32*, i32** %pr, align 8
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i32, i32* %19, i64 %idx.ext
  store i32* %add.ptr, i32** %pr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32**, i32*** %A1.addr, align 8
  %tobool = icmp ne i32** %20, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %21 = load i32**, i32*** %A1.addr, align 8
  %22 = bitcast i32** %21 to i8*
  call void @free(i8* %22)
  store i32** null, i32*** %A1.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %23 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %23
}

declare %struct.set_family* @sf_new(...) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_ind_unlist(i32** %A1, i32 %totcnt, i32 %size, i32* %row_indices, i32* %pfirst) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %totcnt.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %row_indices.addr = alloca i32*, align 8
  %pfirst.addr = alloca i32*, align 8
  %pr = alloca i32*, align 8
  %p = alloca i32*, align 8
  %pa = alloca i32**, align 8
  %i = alloca i32, align 4
  %new_row_indices = alloca i32*, align 8
  %R = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  store i32** %A1, i32*** %A1.addr, align 8
  store i32 %totcnt, i32* %totcnt.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32* %row_indices, i32** %row_indices.addr, align 8
  store i32* %pfirst, i32** %pfirst.addr, align 8
  %0 = load i32, i32* %totcnt.addr, align 4
  %1 = load i32, i32* %size.addr, align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %0, i32 %1)
  store %struct.set_family* %call, %struct.set_family** %R, align 8
  %2 = load i32, i32* %totcnt.addr, align 4
  %3 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  store i32 %2, i32* %count, align 4
  %4 = load i32, i32* %totcnt.addr, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 4, %conv
  %call1 = call i8* @malloc(i64 %mul)
  %5 = bitcast i8* %call1 to i32*
  store i32* %5, i32** %new_row_indices, align 8
  %6 = load %struct.set_family*, %struct.set_family** %R, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 5
  %7 = load i32*, i32** %data, align 8
  store i32* %7, i32** %pr, align 8
  %8 = load i32**, i32*** %A1.addr, align 8
  store i32** %8, i32*** %pa, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32**, i32*** %pa, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %9, i32 1
  store i32** %incdec.ptr, i32*** %pa, align 8
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %p, align 8
  %cmp = icmp ne i32* %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx, align 4
  %and = and i32 %12, 1023
  store i32 %and, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %13 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i32*, i32** %p, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx3, align 4
  %16 = load i32, i32* %i_, align 4
  %idxprom4 = sext i32 %16 to i64
  %17 = load i32*, i32** %pr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %17, i64 %idxprom4
  store i32 %15, i32* %arrayidx5, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %18 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %i_, align 4
  %cmp6 = icmp sge i32 %dec, 0
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load i32*, i32** %p, align 8
  %20 = load i32*, i32** %pfirst.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %21 = load %struct.set_family*, %struct.set_family** %R, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 0
  %22 = load i32, i32* %wsize, align 4
  %conv8 = sext i32 %22 to i64
  %div = sdiv i64 %sub.ptr.div, %conv8
  %23 = load i32*, i32** %row_indices.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %23, i64 %div
  %24 = load i32, i32* %arrayidx9, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %25 to i64
  %26 = load i32*, i32** %new_row_indices, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %26, i64 %idxprom10
  store i32 %24, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %27 = load %struct.set_family*, %struct.set_family** %R, align 8
  %wsize12 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 0
  %28 = load i32, i32* %wsize12, align 4
  %29 = load i32*, i32** %pr, align 8
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i32, i32* %29, i64 %idx.ext
  store i32* %add.ptr, i32** %pr, align 8
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.21, %for.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %totcnt.addr, align 4
  %cmp14 = icmp slt i32 %31, %32
  br i1 %cmp14, label %for.body.16, label %for.end.23

for.body.16:                                      ; preds = %for.cond.13
  %33 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %33 to i64
  %34 = load i32*, i32** %new_row_indices, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %34, i64 %idxprom17
  %35 = load i32, i32* %arrayidx18, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %36 to i64
  %37 = load i32*, i32** %row_indices.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %37, i64 %idxprom19
  store i32 %35, i32* %arrayidx20, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.16
  %38 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %38, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.13

for.end.23:                                       ; preds = %for.cond.13
  %39 = load i32*, i32** %new_row_indices, align 8
  %tobool = icmp ne i32* %39, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.23
  %40 = load i32*, i32** %new_row_indices, align 8
  %41 = bitcast i32* %40 to i8*
  call void @free(i8* %41)
  store i32* null, i32** %new_row_indices, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.23
  %42 = load i32**, i32*** %A1.addr, align 8
  %tobool24 = icmp ne i32** %42, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  %43 = load i32**, i32*** %A1.addr, align 8
  %44 = bitcast i32** %43 to i8*
  call void @free(i8* %44)
  store i32** null, i32*** %A1.addr, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end
  %45 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %45
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_merge(i32** %A1, i32** %B1, i32** %E1, i32 %totcnt, i32 %size) #0 {
entry:
  %A1.addr = alloca i32**, align 8
  %B1.addr = alloca i32**, align 8
  %E1.addr = alloca i32**, align 8
  %totcnt.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %pr = alloca i32*, align 8
  %ps = alloca i32*, align 8
  %pmin = alloca i32**, align 8
  %pmid = alloca i32**, align 8
  %pmax = alloca i32**, align 8
  %R = alloca %struct.set_family*, align 8
  %temp = alloca [3 x i32**], align 16
  %swap = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %i_ = alloca i32, align 4
  store i32** %A1, i32*** %A1.addr, align 8
  store i32** %B1, i32*** %B1.addr, align 8
  store i32** %E1, i32*** %E1.addr, align 8
  store i32 %totcnt, i32* %totcnt.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %totcnt.addr, align 4
  %1 = load i32, i32* %size.addr, align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %0, i32 %1)
  store %struct.set_family* %call, %struct.set_family** %R, align 8
  %2 = load i32, i32* %totcnt.addr, align 4
  %3 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  store i32 %2, i32* %count, align 4
  %4 = load %struct.set_family*, %struct.set_family** %R, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 5
  %5 = load i32*, i32** %data, align 8
  store i32* %5, i32** %pr, align 8
  store i32 3, i32* %n, align 4
  %6 = load i32**, i32*** %A1.addr, align 8
  %arrayidx = getelementptr inbounds [3 x i32**], [3 x i32**]* %temp, i32 0, i64 0
  store i32** %6, i32*** %arrayidx, align 8
  %7 = load i32**, i32*** %B1.addr, align 8
  %arrayidx1 = getelementptr inbounds [3 x i32**], [3 x i32**]* %temp, i32 0, i64 1
  store i32** %7, i32*** %arrayidx1, align 8
  %8 = load i32**, i32*** %E1.addr, align 8
  %arrayidx2 = getelementptr inbounds [3 x i32**], [3 x i32**]* %temp, i32 0, i64 2
  store i32** %8, i32*** %arrayidx2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %10, 1
  %cmp = icmp slt i32 %9, %sub
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %n, align 4
  %cmp4 = icmp slt i32 %12, %13
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds [3 x i32**], [3 x i32**]* %temp, i32 0, i64 %idxprom
  %15 = load i32**, i32*** %arrayidx6, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds [3 x i32**], [3 x i32**]* %temp, i32 0, i64 %idxprom7
  %18 = load i32**, i32*** %arrayidx8, align 8
  %19 = load i32*, i32** %18, align 8
  %call9 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @desc1 to i32 (i32*, i32*, ...)*)(i32* %16, i32* %19)
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %20 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds [3 x i32**], [3 x i32**]* %temp, i32 0, i64 %idxprom11
  %21 = load i32**, i32*** %arrayidx12, align 8
  store i32** %21, i32*** %swap, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds [3 x i32**], [3 x i32**]* %temp, i32 0, i64 %idxprom13
  %23 = load i32**, i32*** %arrayidx14, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds [3 x i32**], [3 x i32**]* %temp, i32 0, i64 %idxprom15
  store i32** %23, i32*** %arrayidx16, align 8
  %25 = load i32**, i32*** %swap, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds [3 x i32**], [3 x i32**]* %temp, i32 0, i64 %idxprom17
  store i32** %25, i32*** %arrayidx18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %28 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %28, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %arrayidx22 = getelementptr inbounds [3 x i32**], [3 x i32**]* %temp, i32 0, i64 0
  %29 = load i32**, i32*** %arrayidx22, align 8
  store i32** %29, i32*** %pmin, align 8
  %arrayidx23 = getelementptr inbounds [3 x i32**], [3 x i32**]* %temp, i32 0, i64 1
  %30 = load i32**, i32*** %arrayidx23, align 8
  store i32** %30, i32*** %pmid, align 8
  %arrayidx24 = getelementptr inbounds [3 x i32**], [3 x i32**]* %temp, i32 0, i64 2
  %31 = load i32**, i32*** %arrayidx24, align 8
  store i32** %31, i32*** %pmax, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %for.end.21
  %32 = load i32**, i32*** %pmin, align 8
  %33 = load i32*, i32** %32, align 8
  %cmp25 = icmp ne i32* %33, null
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i32**, i32*** %pmin, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %34, i32 1
  store i32** %incdec.ptr, i32*** %pmin, align 8
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %ps, align 8
  %36 = load i32*, i32** %ps, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %36, i64 0
  %37 = load i32, i32* %arrayidx26, align 4
  %and = and i32 %37, 1023
  store i32 %and, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %38 = load i32, i32* %i_, align 4
  %idxprom27 = sext i32 %38 to i64
  %39 = load i32*, i32** %ps, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %39, i64 %idxprom27
  %40 = load i32, i32* %arrayidx28, align 4
  %41 = load i32, i32* %i_, align 4
  %idxprom29 = sext i32 %41 to i64
  %42 = load i32*, i32** %pr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %42, i64 %idxprom29
  store i32 %40, i32* %arrayidx30, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %43 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %i_, align 4
  %cmp31 = icmp sge i32 %dec, 0
  br i1 %cmp31, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %44 = load %struct.set_family*, %struct.set_family** %R, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %44, i32 0, i32 0
  %45 = load i32, i32* %wsize, align 4
  %46 = load i32*, i32** %pr, align 8
  %idx.ext = sext i32 %45 to i64
  %add.ptr = getelementptr inbounds i32, i32* %46, i64 %idx.ext
  store i32* %add.ptr, i32** %pr, align 8
  %47 = load i32**, i32*** %pmin, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = load i32**, i32*** %pmax, align 8
  %50 = load i32*, i32** %49, align 8
  %call32 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @desc1 to i32 (i32*, i32*, ...)*)(i32* %48, i32* %50)
  %cmp33 = icmp sgt i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %do.end
  %51 = load i32**, i32*** %pmax, align 8
  store i32** %51, i32*** %swap, align 8
  %52 = load i32**, i32*** %pmin, align 8
  store i32** %52, i32*** %pmax, align 8
  %53 = load i32**, i32*** %pmid, align 8
  store i32** %53, i32*** %pmin, align 8
  %54 = load i32**, i32*** %swap, align 8
  store i32** %54, i32*** %pmid, align 8
  br label %if.end.39

if.else:                                          ; preds = %do.end
  %55 = load i32**, i32*** %pmin, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i32**, i32*** %pmid, align 8
  %58 = load i32*, i32** %57, align 8
  %call35 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @desc1 to i32 (i32*, i32*, ...)*)(i32* %56, i32* %58)
  %cmp36 = icmp sgt i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else
  %59 = load i32**, i32*** %pmin, align 8
  store i32** %59, i32*** %swap, align 8
  %60 = load i32**, i32*** %pmid, align 8
  store i32** %60, i32*** %pmin, align 8
  %61 = load i32**, i32*** %swap, align 8
  store i32** %61, i32*** %pmid, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.34
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %62 = load i32**, i32*** %A1.addr, align 8
  %tobool = icmp ne i32** %62, null
  br i1 %tobool, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %while.end
  %63 = load i32**, i32*** %A1.addr, align 8
  %64 = bitcast i32** %63 to i8*
  call void @free(i8* %64)
  store i32** null, i32*** %A1.addr, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %while.end
  %65 = load i32**, i32*** %B1.addr, align 8
  %tobool42 = icmp ne i32** %65, null
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.41
  %66 = load i32**, i32*** %B1.addr, align 8
  %67 = bitcast i32** %66 to i8*
  call void @free(i8* %67)
  store i32** null, i32*** %B1.addr, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.41
  %68 = load i32**, i32*** %E1.addr, align 8
  %tobool45 = icmp ne i32** %68, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.44
  %69 = load i32**, i32*** %E1.addr, align 8
  %70 = bitcast i32** %69 to i8*
  call void @free(i8* %70)
  store i32** null, i32*** %E1.addr, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.44
  %71 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %71
}

declare i32 @desc1(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
