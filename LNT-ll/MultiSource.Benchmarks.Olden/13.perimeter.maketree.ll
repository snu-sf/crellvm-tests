; ModuleID = './MultiSource.Benchmarks.Olden/13.perimeter.maketree.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quad_struct = type { i32, i32, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct* }

; Function Attrs: nounwind uwtable
define %struct.quad_struct* @MakeTree(i32 %size, i32 %center_x, i32 %center_y, i32 %lo_proc, i32 %hi_proc, %struct.quad_struct* %parent, i32 %ct, i32 %level) #0 {
entry:
  %size.addr = alloca i32, align 4
  %center_x.addr = alloca i32, align 4
  %center_y.addr = alloca i32, align 4
  %lo_proc.addr = alloca i32, align 4
  %hi_proc.addr = alloca i32, align 4
  %parent.addr = alloca %struct.quad_struct*, align 8
  %ct.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %intersect = alloca i32, align 4
  %retval1 = alloca %struct.quad_struct*, align 8
  %mid1 = alloca i32, align 4
  %mid2 = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %center_x, i32* %center_x.addr, align 4
  store i32 %center_y, i32* %center_y.addr, align 4
  store i32 %lo_proc, i32* %lo_proc.addr, align 4
  store i32 %hi_proc, i32* %hi_proc.addr, align 4
  store %struct.quad_struct* %parent, %struct.quad_struct** %parent.addr, align 8
  store i32 %ct, i32* %ct.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  store i32 0, i32* %intersect, align 4
  %call = call noalias i8* @malloc(i64 48) #2
  %0 = bitcast i8* %call to %struct.quad_struct*
  store %struct.quad_struct* %0, %struct.quad_struct** %retval1, align 8
  %1 = load %struct.quad_struct*, %struct.quad_struct** %parent.addr, align 8
  %2 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %parent2 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %2, i32 0, i32 6
  store %struct.quad_struct* %1, %struct.quad_struct** %parent2, align 8
  %3 = load i32, i32* %ct.addr, align 4
  %4 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %childtype = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %4, i32 0, i32 1
  store i32 %3, i32* %childtype, align 4
  %5 = load i32, i32* %center_x.addr, align 4
  %6 = load i32, i32* %center_y.addr, align 4
  %7 = load i32, i32* %size.addr, align 4
  %call3 = call i32 @CheckIntersect(i32 %5, i32 %6, i32 %7)
  store i32 %call3, i32* %intersect, align 4
  %8 = load i32, i32* %size.addr, align 4
  %div = sdiv i32 %8, 2
  store i32 %div, i32* %size.addr, align 4
  %9 = load i32, i32* %intersect, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %size.addr, align 4
  %cmp4 = icmp slt i32 %10, 512
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %color = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %11, i32 0, i32 0
  store i32 1, i32* %color, align 4
  %12 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %nw = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %12, i32 0, i32 2
  store %struct.quad_struct* null, %struct.quad_struct** %nw, align 8
  %13 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %ne = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %13, i32 0, i32 3
  store %struct.quad_struct* null, %struct.quad_struct** %ne, align 8
  %14 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %sw = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %14, i32 0, i32 4
  store %struct.quad_struct* null, %struct.quad_struct** %sw, align 8
  %15 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %se = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %15, i32 0, i32 5
  store %struct.quad_struct* null, %struct.quad_struct** %se, align 8
  br label %if.end.55

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load i32, i32* %intersect, align 4
  %cmp5 = icmp eq i32 %16, 2
  br i1 %cmp5, label %if.then.6, label %if.else.12

if.then.6:                                        ; preds = %if.else
  %17 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %color7 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %17, i32 0, i32 0
  store i32 0, i32* %color7, align 4
  %18 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %nw8 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %18, i32 0, i32 2
  store %struct.quad_struct* null, %struct.quad_struct** %nw8, align 8
  %19 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %ne9 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %19, i32 0, i32 3
  store %struct.quad_struct* null, %struct.quad_struct** %ne9, align 8
  %20 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %sw10 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %20, i32 0, i32 4
  store %struct.quad_struct* null, %struct.quad_struct** %sw10, align 8
  %21 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %se11 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %21, i32 0, i32 5
  store %struct.quad_struct* null, %struct.quad_struct** %se11, align 8
  br label %if.end.54

if.else.12:                                       ; preds = %if.else
  %22 = load i32, i32* %level.addr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.else.19, label %if.then.13

if.then.13:                                       ; preds = %if.else.12
  %23 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %color14 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %23, i32 0, i32 0
  store i32 0, i32* %color14, align 4
  %24 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %nw15 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %24, i32 0, i32 2
  store %struct.quad_struct* null, %struct.quad_struct** %nw15, align 8
  %25 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %ne16 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %25, i32 0, i32 3
  store %struct.quad_struct* null, %struct.quad_struct** %ne16, align 8
  %26 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %sw17 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %26, i32 0, i32 4
  store %struct.quad_struct* null, %struct.quad_struct** %sw17, align 8
  %27 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %se18 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %27, i32 0, i32 5
  store %struct.quad_struct* null, %struct.quad_struct** %se18, align 8
  br label %if.end

if.else.19:                                       ; preds = %if.else.12
  %28 = load i32, i32* %lo_proc.addr, align 4
  %29 = load i32, i32* %hi_proc.addr, align 4
  %add = add nsw i32 %28, %29
  %div20 = sdiv i32 %add, 2
  store i32 %div20, i32* %mid1, align 4
  %30 = load i32, i32* %lo_proc.addr, align 4
  %31 = load i32, i32* %hi_proc.addr, align 4
  %add21 = add nsw i32 %30, %31
  %add22 = add nsw i32 %add21, 1
  %div23 = sdiv i32 %add22, 2
  store i32 %div23, i32* %mid2, align 4
  %32 = load i32, i32* %size.addr, align 4
  %33 = load i32, i32* %center_x.addr, align 4
  %34 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %33, %34
  %35 = load i32, i32* %center_y.addr, align 4
  %36 = load i32, i32* %size.addr, align 4
  %sub24 = sub nsw i32 %35, %36
  %37 = load i32, i32* %mid2, align 4
  %38 = load i32, i32* %hi_proc.addr, align 4
  %add25 = add nsw i32 %37, %38
  %add26 = add nsw i32 %add25, 1
  %div27 = sdiv i32 %add26, 2
  %39 = load i32, i32* %hi_proc.addr, align 4
  %40 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %41 = load i32, i32* %level.addr, align 4
  %sub28 = sub nsw i32 %41, 1
  %call29 = call %struct.quad_struct* @MakeTree(i32 %32, i32 %sub, i32 %sub24, i32 %div27, i32 %39, %struct.quad_struct* %40, i32 2, i32 %sub28)
  %42 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %sw30 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %42, i32 0, i32 4
  store %struct.quad_struct* %call29, %struct.quad_struct** %sw30, align 8
  %43 = load i32, i32* %size.addr, align 4
  %44 = load i32, i32* %center_x.addr, align 4
  %45 = load i32, i32* %size.addr, align 4
  %add31 = add nsw i32 %44, %45
  %46 = load i32, i32* %center_y.addr, align 4
  %47 = load i32, i32* %size.addr, align 4
  %sub32 = sub nsw i32 %46, %47
  %48 = load i32, i32* %mid2, align 4
  %49 = load i32, i32* %mid2, align 4
  %50 = load i32, i32* %hi_proc.addr, align 4
  %add33 = add nsw i32 %49, %50
  %div34 = sdiv i32 %add33, 2
  %51 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %52 = load i32, i32* %level.addr, align 4
  %sub35 = sub nsw i32 %52, 1
  %call36 = call %struct.quad_struct* @MakeTree(i32 %43, i32 %add31, i32 %sub32, i32 %48, i32 %div34, %struct.quad_struct* %51, i32 3, i32 %sub35)
  %53 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %se37 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %53, i32 0, i32 5
  store %struct.quad_struct* %call36, %struct.quad_struct** %se37, align 8
  %54 = load i32, i32* %size.addr, align 4
  %55 = load i32, i32* %center_x.addr, align 4
  %56 = load i32, i32* %size.addr, align 4
  %add38 = add nsw i32 %55, %56
  %57 = load i32, i32* %center_y.addr, align 4
  %58 = load i32, i32* %size.addr, align 4
  %add39 = add nsw i32 %57, %58
  %59 = load i32, i32* %lo_proc.addr, align 4
  %60 = load i32, i32* %mid1, align 4
  %add40 = add nsw i32 %59, %60
  %add41 = add nsw i32 %add40, 1
  %div42 = sdiv i32 %add41, 2
  %61 = load i32, i32* %mid1, align 4
  %62 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %63 = load i32, i32* %level.addr, align 4
  %sub43 = sub nsw i32 %63, 1
  %call44 = call %struct.quad_struct* @MakeTree(i32 %54, i32 %add38, i32 %add39, i32 %div42, i32 %61, %struct.quad_struct* %62, i32 1, i32 %sub43)
  %64 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %ne45 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %64, i32 0, i32 3
  store %struct.quad_struct* %call44, %struct.quad_struct** %ne45, align 8
  %65 = load i32, i32* %size.addr, align 4
  %66 = load i32, i32* %center_x.addr, align 4
  %67 = load i32, i32* %size.addr, align 4
  %sub46 = sub nsw i32 %66, %67
  %68 = load i32, i32* %center_y.addr, align 4
  %69 = load i32, i32* %size.addr, align 4
  %add47 = add nsw i32 %68, %69
  %70 = load i32, i32* %lo_proc.addr, align 4
  %71 = load i32, i32* %lo_proc.addr, align 4
  %72 = load i32, i32* %mid1, align 4
  %add48 = add nsw i32 %71, %72
  %div49 = sdiv i32 %add48, 2
  %73 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %74 = load i32, i32* %level.addr, align 4
  %sub50 = sub nsw i32 %74, 1
  %call51 = call %struct.quad_struct* @MakeTree(i32 %65, i32 %sub46, i32 %add47, i32 %70, i32 %div49, %struct.quad_struct* %73, i32 0, i32 %sub50)
  %75 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %nw52 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %75, i32 0, i32 2
  store %struct.quad_struct* %call51, %struct.quad_struct** %nw52, align 8
  %76 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  %color53 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %76, i32 0, i32 0
  store i32 2, i32* %color53, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.13
  br label %if.end.54

if.end.54:                                        ; preds = %if.end, %if.then.6
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then
  %77 = load %struct.quad_struct*, %struct.quad_struct** %retval1, align 8
  ret %struct.quad_struct* %77
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @CheckIntersect(i32 %center_x, i32 %center_y, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %center_x.addr = alloca i32, align 4
  %center_y.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 %center_x, i32* %center_x.addr, align 4
  store i32 %center_y, i32* %center_y.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %center_x.addr, align 4
  %1 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32, i32* %center_y.addr, align 4
  %3 = load i32, i32* %size.addr, align 4
  %add1 = add nsw i32 %2, %3
  %call = call i32 @CheckOutside(i32 %add, i32 %add1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %center_x.addr, align 4
  %5 = load i32, i32* %size.addr, align 4
  %add2 = add nsw i32 %4, %5
  %6 = load i32, i32* %center_y.addr, align 4
  %7 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %6, %7
  %call3 = call i32 @CheckOutside(i32 %add2, i32 %sub)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %center_x.addr, align 4
  %9 = load i32, i32* %size.addr, align 4
  %sub6 = sub nsw i32 %8, %9
  %10 = load i32, i32* %center_y.addr, align 4
  %11 = load i32, i32* %size.addr, align 4
  %sub7 = sub nsw i32 %10, %11
  %call8 = call i32 @CheckOutside(i32 %sub6, i32 %sub7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %land.lhs.true.5
  %12 = load i32, i32* %center_x.addr, align 4
  %13 = load i32, i32* %size.addr, align 4
  %sub11 = sub nsw i32 %12, %13
  %14 = load i32, i32* %center_y.addr, align 4
  %15 = load i32, i32* %size.addr, align 4
  %add12 = add nsw i32 %14, %15
  %call13 = call i32 @CheckOutside(i32 %sub11, i32 %add12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.10
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.10, %land.lhs.true.5, %land.lhs.true, %entry
  %16 = load i32, i32* %center_x.addr, align 4
  %17 = load i32, i32* %size.addr, align 4
  %add15 = add nsw i32 %16, %17
  %18 = load i32, i32* %center_y.addr, align 4
  %19 = load i32, i32* %size.addr, align 4
  %add16 = add nsw i32 %18, %19
  %call17 = call i32 @CheckOutside(i32 %add15, i32 %add16)
  %20 = load i32, i32* %center_x.addr, align 4
  %21 = load i32, i32* %size.addr, align 4
  %add18 = add nsw i32 %20, %21
  %22 = load i32, i32* %center_y.addr, align 4
  %23 = load i32, i32* %size.addr, align 4
  %sub19 = sub nsw i32 %22, %23
  %call20 = call i32 @CheckOutside(i32 %add18, i32 %sub19)
  %add21 = add nsw i32 %call17, %call20
  %24 = load i32, i32* %center_x.addr, align 4
  %25 = load i32, i32* %size.addr, align 4
  %sub22 = sub nsw i32 %24, %25
  %26 = load i32, i32* %center_y.addr, align 4
  %27 = load i32, i32* %size.addr, align 4
  %sub23 = sub nsw i32 %26, %27
  %call24 = call i32 @CheckOutside(i32 %sub22, i32 %sub23)
  %add25 = add nsw i32 %add21, %call24
  %28 = load i32, i32* %center_x.addr, align 4
  %29 = load i32, i32* %size.addr, align 4
  %sub26 = sub nsw i32 %28, %29
  %30 = load i32, i32* %center_y.addr, align 4
  %31 = load i32, i32* %size.addr, align 4
  %add27 = add nsw i32 %30, %31
  %call28 = call i32 @CheckOutside(i32 %sub26, i32 %add27)
  %add29 = add nsw i32 %add25, %call28
  store i32 %add29, i32* %sum, align 4
  %32 = load i32, i32* %sum, align 4
  %cmp = icmp eq i32 %32, 4
  br i1 %cmp, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %33 = load i32, i32* %sum, align 4
  %cmp30 = icmp eq i32 %33, -4
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.31, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @CheckOutside(i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %euclid = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %mul1 = mul nsw i32 %2, %3
  %add = add nsw i32 %mul, %mul1
  store i32 %add, i32* %euclid, align 4
  %4 = load i32, i32* %euclid, align 4
  %cmp = icmp sgt i32 %4, 4194304
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %euclid, align 4
  %cmp2 = icmp slt i32 %5, 1048576
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
