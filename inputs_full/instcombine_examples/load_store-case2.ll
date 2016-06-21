; ModuleID = './load_store/example2.bc'

%struct.ST = type { i32, double, %struct.RT }
%struct.RT = type { i8, [10 x [20 x i32]], i8 }

define i32 @foo(%struct.ST* %s) {
  %p = getelementptr %struct.ST, %struct.ST* %s, i64 1, i32 2, i32 1, i64 5, i64 13
  %q = getelementptr inbounds %struct.ST, %struct.ST* %s, i64 1, i32 2, i32 1, i64 5, i64 13
  store i32 3, i32* %p
  %z = load i32, i32* %q
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
