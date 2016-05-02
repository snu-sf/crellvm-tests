; ModuleID = './fold_phi_bin/example.bc'

define float @foo(i1 %cond, float %a, float %b, float %c) {
  br i1 %cond, label %IfEqual, label %IfUnequal

IfEqual:                                          ; preds = %0
  %x = fadd float %a, %b
  br label %IfDone

IfUnequal:                                        ; preds = %0
  %y = fadd float %a, %c
  br label %IfDone

IfDone:                                           ; preds = %IfUnequal, %IfEqual
  %z = phi float [ %x, %IfEqual ], [ %y, %IfUnequal ]
  ret float %z
}

define i32 @main() {
  %1 = call float @foo(i1 false, float 1.0, float 2.0, float 3.0)
  ret i32 0
}
