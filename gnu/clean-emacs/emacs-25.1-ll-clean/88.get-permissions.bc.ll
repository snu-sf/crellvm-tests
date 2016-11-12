; ModuleID = './lib/get-permissions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.permission_context = type { i32 }

; Function Attrs: nounwind uwtable
define i32 @get_permissions(i8* %name, i32 %desc, i32 %mode, %struct.permission_context* %ctx) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %desc.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.permission_context*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.permission_context* %ctx, %struct.permission_context** %ctx.addr, align 8
  %0 = load %struct.permission_context*, %struct.permission_context** %ctx.addr, align 8
  %1 = bitcast %struct.permission_context* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 4, i32 4, i1 false)
  %2 = load i32, i32* %mode.addr, align 4
  %3 = load %struct.permission_context*, %struct.permission_context** %ctx.addr, align 8
  %mode1 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %3, i32 0, i32 0
  store i32 %2, i32* %mode1, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
