; ModuleID = './lib/set-permissions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.permission_context = type { i32 }

; Function Attrs: nounwind uwtable
define i32 @chmod_or_fchmod(i8* %name, i32 %desc, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %desc.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %desc.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %desc.addr, align 4
  %2 = load i32, i32* %mode.addr, align 4
  %call = call i32 @fchmod(i32 %1, i32 %2) #3
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load i32, i32* %mode.addr, align 4
  %call1 = call i32 @chmod(i8* %3, i32 %4) #3
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #1

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @set_permissions(%struct.permission_context* %ctx, i8* %name, i32 %desc) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.permission_context*, align 8
  %name.addr = alloca i8*, align 8
  %desc.addr = alloca i32, align 4
  %acls_set = alloca i8, align 1
  %early_chmod = alloca i8, align 1
  %must_chmod = alloca i8, align 1
  %ret = alloca i32, align 4
  %saved_errno = alloca i32, align 4
  store %struct.permission_context* %ctx, %struct.permission_context** %ctx.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store i8 0, i8* %acls_set, align 1
  store i8 0, i8* %must_chmod, align 1
  store i32 0, i32* %ret, align 4
  store i8 1, i8* %early_chmod, align 1
  %0 = load i8, i8* %early_chmod, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i32, i32* %desc.addr, align 4
  %3 = load %struct.permission_context*, %struct.permission_context** %ctx.addr, align 8
  %mode = getelementptr inbounds %struct.permission_context, %struct.permission_context* %3, i32 0, i32 0
  %4 = load i32, i32* %mode, align 4
  %call = call i32 @chmod_or_fchmod(i8* %1, i32 %2, i32 %4)
  store i32 %call, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %6 = load i8, i8* %must_chmod, align 1
  %tobool3 = trunc i8 %6 to i1
  br i1 %tobool3, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.2
  %7 = load i8, i8* %early_chmod, align 1
  %tobool4 = trunc i8 %7 to i1
  br i1 %tobool4, label %if.end.14, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* %ret, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  %call7 = call i32* @__errno_location() #4
  %9 = load i32, i32* %call7, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %saved_errno, align 4
  %10 = load i8*, i8** %name.addr, align 8
  %11 = load i32, i32* %desc.addr, align 4
  %12 = load %struct.permission_context*, %struct.permission_context** %ctx.addr, align 8
  %mode8 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %12, i32 0, i32 0
  %13 = load i32, i32* %mode8, align 4
  %call9 = call i32 @chmod_or_fchmod(i8* %10, i32 %11, i32 %13)
  store i32 %call9, i32* %ret, align 4
  %14 = load i32, i32* %saved_errno, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %cond.end
  %15 = load i32, i32* %saved_errno, align 4
  %call12 = call i32* @__errno_location() #4
  store i32 %15, i32* %call12, align 4
  store i32 -1, i32* %ret, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %cond.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %land.lhs.true, %if.end.2
  %16 = load i32, i32* %ret, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
