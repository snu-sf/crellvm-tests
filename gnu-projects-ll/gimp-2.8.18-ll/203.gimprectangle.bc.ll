; ModuleID = './libgimpbase/gimprectangle.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gimp_rectangle_intersect(i32 %x1, i32 %y1, i32 %width1, i32 %height1, i32 %x2, i32 %y2, i32 %width2, i32 %height2, i32* %dest_x, i32* %dest_y, i32* %dest_width, i32* %dest_height) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %width1.addr = alloca i32, align 4
  %height1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %width2.addr = alloca i32, align 4
  %height2.addr = alloca i32, align 4
  %dest_x.addr = alloca i32*, align 8
  %dest_y.addr = alloca i32*, align 8
  %dest_width.addr = alloca i32*, align 8
  %dest_height.addr = alloca i32*, align 8
  %d_x = alloca i32, align 4
  %d_y = alloca i32, align 4
  %d_w = alloca i32, align 4
  %d_h = alloca i32, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %width1, i32* %width1.addr, align 4
  store i32 %height1, i32* %height1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %width2, i32* %width2.addr, align 4
  store i32 %height2, i32* %height2.addr, align 4
  store i32* %dest_x, i32** %dest_x.addr, align 8
  store i32* %dest_y, i32** %dest_y.addr, align 8
  store i32* %dest_width, i32** %dest_width.addr, align 8
  store i32* %dest_height, i32** %dest_height.addr, align 8
  %0 = load i32, i32* %x1.addr, align 4
  %1 = load i32, i32* %x2.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %x1.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %x2.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* %d_x, align 4
  %4 = load i32, i32* %y1.addr, align 4
  %5 = load i32, i32* %y2.addr, align 4
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %6 = load i32, i32* %y1.addr, align 4
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  %7 = load i32, i32* %y2.addr, align 4
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi i32 [ %6, %cond.true.2 ], [ %7, %cond.false.3 ]
  store i32 %cond5, i32* %d_y, align 4
  %8 = load i32, i32* %x1.addr, align 4
  %9 = load i32, i32* %width1.addr, align 4
  %add = add nsw i32 %8, %9
  %10 = load i32, i32* %x2.addr, align 4
  %11 = load i32, i32* %width2.addr, align 4
  %add6 = add nsw i32 %10, %11
  %cmp7 = icmp slt i32 %add, %add6
  br i1 %cmp7, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %cond.end.4
  %12 = load i32, i32* %x1.addr, align 4
  %13 = load i32, i32* %width1.addr, align 4
  %add9 = add nsw i32 %12, %13
  br label %cond.end.12

cond.false.10:                                    ; preds = %cond.end.4
  %14 = load i32, i32* %x2.addr, align 4
  %15 = load i32, i32* %width2.addr, align 4
  %add11 = add nsw i32 %14, %15
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.true.8
  %cond13 = phi i32 [ %add9, %cond.true.8 ], [ %add11, %cond.false.10 ]
  %16 = load i32, i32* %d_x, align 4
  %sub = sub nsw i32 %cond13, %16
  store i32 %sub, i32* %d_w, align 4
  %17 = load i32, i32* %y1.addr, align 4
  %18 = load i32, i32* %height1.addr, align 4
  %add14 = add nsw i32 %17, %18
  %19 = load i32, i32* %y2.addr, align 4
  %20 = load i32, i32* %height2.addr, align 4
  %add15 = add nsw i32 %19, %20
  %cmp16 = icmp slt i32 %add14, %add15
  br i1 %cmp16, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %cond.end.12
  %21 = load i32, i32* %y1.addr, align 4
  %22 = load i32, i32* %height1.addr, align 4
  %add18 = add nsw i32 %21, %22
  br label %cond.end.21

cond.false.19:                                    ; preds = %cond.end.12
  %23 = load i32, i32* %y2.addr, align 4
  %24 = load i32, i32* %height2.addr, align 4
  %add20 = add nsw i32 %23, %24
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.19, %cond.true.17
  %cond22 = phi i32 [ %add18, %cond.true.17 ], [ %add20, %cond.false.19 ]
  %25 = load i32, i32* %d_y, align 4
  %sub23 = sub nsw i32 %cond22, %25
  store i32 %sub23, i32* %d_h, align 4
  %26 = load i32*, i32** %dest_x.addr, align 8
  %tobool = icmp ne i32* %26, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.21
  %27 = load i32, i32* %d_x, align 4
  %28 = load i32*, i32** %dest_x.addr, align 8
  store i32 %27, i32* %28, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.21
  %29 = load i32*, i32** %dest_y.addr, align 8
  %tobool24 = icmp ne i32* %29, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  %30 = load i32, i32* %d_y, align 4
  %31 = load i32*, i32** %dest_y.addr, align 8
  store i32 %30, i32* %31, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end
  %32 = load i32*, i32** %dest_width.addr, align 8
  %tobool27 = icmp ne i32* %32, null
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %33 = load i32, i32* %d_w, align 4
  %34 = load i32*, i32** %dest_width.addr, align 8
  store i32 %33, i32* %34, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %35 = load i32*, i32** %dest_height.addr, align 8
  %tobool30 = icmp ne i32* %35, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %36 = load i32, i32* %d_h, align 4
  %37 = load i32*, i32** %dest_height.addr, align 8
  store i32 %36, i32* %37, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %38 = load i32, i32* %d_w, align 4
  %cmp33 = icmp sgt i32 %38, 0
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.32
  %39 = load i32, i32* %d_h, align 4
  %cmp34 = icmp sgt i32 %39, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.32
  %40 = phi i1 [ false, %if.end.32 ], [ %cmp34, %land.rhs ]
  %land.ext = zext i1 %40 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_union(i32 %x1, i32 %y1, i32 %width1, i32 %height1, i32 %x2, i32 %y2, i32 %width2, i32 %height2, i32* %dest_x, i32* %dest_y, i32* %dest_width, i32* %dest_height) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %width1.addr = alloca i32, align 4
  %height1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %width2.addr = alloca i32, align 4
  %height2.addr = alloca i32, align 4
  %dest_x.addr = alloca i32*, align 8
  %dest_y.addr = alloca i32*, align 8
  %dest_width.addr = alloca i32*, align 8
  %dest_height.addr = alloca i32*, align 8
  %d_x = alloca i32, align 4
  %d_y = alloca i32, align 4
  %d_w = alloca i32, align 4
  %d_h = alloca i32, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %width1, i32* %width1.addr, align 4
  store i32 %height1, i32* %height1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %width2, i32* %width2.addr, align 4
  store i32 %height2, i32* %height2.addr, align 4
  store i32* %dest_x, i32** %dest_x.addr, align 8
  store i32* %dest_y, i32** %dest_y.addr, align 8
  store i32* %dest_width, i32** %dest_width.addr, align 8
  store i32* %dest_height, i32** %dest_height.addr, align 8
  %0 = load i32, i32* %x1.addr, align 4
  %1 = load i32, i32* %x2.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %x1.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %x2.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* %d_x, align 4
  %4 = load i32, i32* %y1.addr, align 4
  %5 = load i32, i32* %y2.addr, align 4
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %6 = load i32, i32* %y1.addr, align 4
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  %7 = load i32, i32* %y2.addr, align 4
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi i32 [ %6, %cond.true.2 ], [ %7, %cond.false.3 ]
  store i32 %cond5, i32* %d_y, align 4
  %8 = load i32, i32* %x1.addr, align 4
  %9 = load i32, i32* %width1.addr, align 4
  %add = add nsw i32 %8, %9
  %10 = load i32, i32* %x2.addr, align 4
  %11 = load i32, i32* %width2.addr, align 4
  %add6 = add nsw i32 %10, %11
  %cmp7 = icmp sgt i32 %add, %add6
  br i1 %cmp7, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %cond.end.4
  %12 = load i32, i32* %x1.addr, align 4
  %13 = load i32, i32* %width1.addr, align 4
  %add9 = add nsw i32 %12, %13
  br label %cond.end.12

cond.false.10:                                    ; preds = %cond.end.4
  %14 = load i32, i32* %x2.addr, align 4
  %15 = load i32, i32* %width2.addr, align 4
  %add11 = add nsw i32 %14, %15
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.true.8
  %cond13 = phi i32 [ %add9, %cond.true.8 ], [ %add11, %cond.false.10 ]
  %16 = load i32, i32* %d_x, align 4
  %sub = sub nsw i32 %cond13, %16
  store i32 %sub, i32* %d_w, align 4
  %17 = load i32, i32* %y1.addr, align 4
  %18 = load i32, i32* %height1.addr, align 4
  %add14 = add nsw i32 %17, %18
  %19 = load i32, i32* %y2.addr, align 4
  %20 = load i32, i32* %height2.addr, align 4
  %add15 = add nsw i32 %19, %20
  %cmp16 = icmp sgt i32 %add14, %add15
  br i1 %cmp16, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %cond.end.12
  %21 = load i32, i32* %y1.addr, align 4
  %22 = load i32, i32* %height1.addr, align 4
  %add18 = add nsw i32 %21, %22
  br label %cond.end.21

cond.false.19:                                    ; preds = %cond.end.12
  %23 = load i32, i32* %y2.addr, align 4
  %24 = load i32, i32* %height2.addr, align 4
  %add20 = add nsw i32 %23, %24
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.19, %cond.true.17
  %cond22 = phi i32 [ %add18, %cond.true.17 ], [ %add20, %cond.false.19 ]
  %25 = load i32, i32* %d_y, align 4
  %sub23 = sub nsw i32 %cond22, %25
  store i32 %sub23, i32* %d_h, align 4
  %26 = load i32*, i32** %dest_x.addr, align 8
  %tobool = icmp ne i32* %26, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.21
  %27 = load i32, i32* %d_x, align 4
  %28 = load i32*, i32** %dest_x.addr, align 8
  store i32 %27, i32* %28, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.21
  %29 = load i32*, i32** %dest_y.addr, align 8
  %tobool24 = icmp ne i32* %29, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  %30 = load i32, i32* %d_y, align 4
  %31 = load i32*, i32** %dest_y.addr, align 8
  store i32 %30, i32* %31, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end
  %32 = load i32*, i32** %dest_width.addr, align 8
  %tobool27 = icmp ne i32* %32, null
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %33 = load i32, i32* %d_w, align 4
  %34 = load i32*, i32** %dest_width.addr, align 8
  store i32 %33, i32* %34, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %35 = load i32*, i32** %dest_height.addr, align 8
  %tobool30 = icmp ne i32* %35, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %36 = load i32, i32* %d_h, align 4
  %37 = load i32*, i32** %dest_height.addr, align 8
  store i32 %36, i32* %37, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
