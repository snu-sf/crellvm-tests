; ModuleID = './lib/save-cwd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saved_cwd = type { i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: nounwind uwtable
define i32 @save_cwd(%struct.saved_cwd* %cwd) #0 {
entry:
  %cwd.addr = alloca %struct.saved_cwd*, align 8
  store %struct.saved_cwd* %cwd, %struct.saved_cwd** %cwd.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 524288)
  %0 = load %struct.saved_cwd*, %struct.saved_cwd** %cwd.addr, align 8
  %desc = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i32 0, i32 0
  store i32 %call, i32* %desc, align 4
  %1 = load %struct.saved_cwd*, %struct.saved_cwd** %cwd.addr, align 8
  %name = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %1, i32 0, i32 1
  store i8* null, i8** %name, align 8
  ret i32 0
}

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define i32 @restore_cwd(%struct.saved_cwd* %cwd) #0 {
entry:
  %retval = alloca i32, align 4
  %cwd.addr = alloca %struct.saved_cwd*, align 8
  store %struct.saved_cwd* %cwd, %struct.saved_cwd** %cwd.addr, align 8
  %0 = load %struct.saved_cwd*, %struct.saved_cwd** %cwd.addr, align 8
  %desc = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i32 0, i32 0
  %1 = load i32, i32* %desc, align 4
  %call = call i32 @fchdir(i32 %1) #3
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind
declare i32 @fchdir(i32) #2

; Function Attrs: nounwind uwtable
define void @free_cwd(%struct.saved_cwd* %cwd) #0 {
entry:
  %cwd.addr = alloca %struct.saved_cwd*, align 8
  store %struct.saved_cwd* %cwd, %struct.saved_cwd** %cwd.addr, align 8
  %0 = load %struct.saved_cwd*, %struct.saved_cwd** %cwd.addr, align 8
  %desc = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i32 0, i32 0
  %1 = load i32, i32* %desc, align 4
  %call = call i32 @close(i32 %1)
  ret void
}

declare i32 @close(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
