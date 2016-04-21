; ModuleID = './fold_phi_bin/example.bc'

define i32 @foo(i1 %cond, i32 %a, i32 %b, i32 %c) {
  br i1 %cond, label %IfEqual, label %IfUnequal

IfEqual:                                          ; preds = %0
  %x = add i32 %b, %a
  br label %IfDone

IfUnequal:                                        ; preds = %0
  %y = add i32 %c, %a
  br label %IfDone

IfDone:                                           ; preds = %IfUnequal, %IfEqual
  %z = phi i32 [ %x, %IfEqual ], [ %y, %IfUnequal ]
  ret i32 %z
}

define i32 @main() {
  %1 = call i32 @foo(i1 false, i32 1, i32 2, i32 3)
  ret i32 0
}
