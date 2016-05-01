; ModuleID = './fold_phi_bin/example.bc'

define i1 @foo(i1 %cond, i32 %a, i32 %b, i32 %c) {
  br i1 %cond, label %IfEqual, label %IfUnequal

IfEqual:                                          ; preds = %0
  %x = icmp slt i32 %a, %b
  br label %IfDone

IfUnequal:                                        ; preds = %0
  %y = icmp slt i32 %a, %c
  br label %IfDone

IfDone:                                           ; preds = %IfUnequal, %IfEqual
  %z = phi i1 [ %x, %IfEqual ], [ %y, %IfUnequal ]
  ret i1 %z
}

define i32 @main() {
  %1 = call i1 @foo(i1 false, i32 1, i32 2, i32 3)
  ret i32 0
}
