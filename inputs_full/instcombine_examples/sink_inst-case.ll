; ModuleID = './sink_inst/example.bc'

define i32 @foo(i32 %x, i32 %y) {
  
  B1:
  %xx = add i32 %x, %y
  br label %B2
  
  B2:
  %z = add i32 %xx, 3
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
