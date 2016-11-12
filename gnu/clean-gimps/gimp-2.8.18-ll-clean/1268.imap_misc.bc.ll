; ModuleID = './plug-ins/imagemap/imap_misc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cairo = type opaque

@_sash_size = internal global i32 8, align 4

; Function Attrs: nounwind uwtable
define void @set_sash_size(i32 %double_size) #0 {
entry:
  %double_size.addr = alloca i32, align 4
  store i32 %double_size, i32* %double_size.addr, align 4
  %0 = load i32, i32* %double_size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 16, i32 8
  store i32 %cond, i32* @_sash_size, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @draw_sash(%struct._cairo* %cr, i32 %x, i32 %y) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* @_sash_size, align 4
  %div = sdiv i32 %2, 2
  %sub = sub nsw i32 %1, %div
  %3 = load i32, i32* %y.addr, align 4
  %4 = load i32, i32* @_sash_size, align 4
  %div1 = sdiv i32 %4, 2
  %sub2 = sub nsw i32 %3, %div1
  %5 = load i32, i32* @_sash_size, align 4
  %6 = load i32, i32* @_sash_size, align 4
  call void @draw_rectangle(%struct._cairo* %0, i32 1, i32 %sub, i32 %sub2, i32 %5, i32 %6)
  ret void
}

declare void @draw_rectangle(%struct._cairo*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @near_sash(i32 %sash_x, i32 %sash_y, i32 %x, i32 %y) #0 {
entry:
  %sash_x.addr = alloca i32, align 4
  %sash_y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %sash_x, i32* %sash_x.addr, align 4
  store i32 %sash_y, i32* %sash_y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %sash_x.addr, align 4
  %2 = load i32, i32* @_sash_size, align 4
  %div = sdiv i32 %2, 2
  %sub = sub nsw i32 %1, %div
  %cmp = icmp sge i32 %0, %sub
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %sash_x.addr, align 4
  %5 = load i32, i32* @_sash_size, align 4
  %div1 = sdiv i32 %5, 2
  %add = add nsw i32 %4, %div1
  %cmp2 = icmp sle i32 %3, %add
  br i1 %cmp2, label %land.lhs.true.3, label %land.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* %sash_y.addr, align 4
  %8 = load i32, i32* @_sash_size, align 4
  %div4 = sdiv i32 %8, 2
  %sub5 = sub nsw i32 %7, %div4
  %cmp6 = icmp sge i32 %6, %sub5
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.3
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %sash_y.addr, align 4
  %11 = load i32, i32* @_sash_size, align 4
  %div7 = sdiv i32 %11, 2
  %add8 = add nsw i32 %10, %div7
  %cmp9 = icmp sle i32 %9, %add8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.3, %land.lhs.true, %entry
  %12 = phi i1 [ false, %land.lhs.true.3 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp9, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  ret i32 %land.ext
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
