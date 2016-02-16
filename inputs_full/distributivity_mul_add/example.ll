define i32 @foo(i32 %a, i32 %b, i32 %c){
  %x = mul i32 %a, %b
  %y = mul i32 %a, %c
  %z = add i32 %x, %y
  ret i32 %z
}
define i32 @main(){
  ret i32 0
}
