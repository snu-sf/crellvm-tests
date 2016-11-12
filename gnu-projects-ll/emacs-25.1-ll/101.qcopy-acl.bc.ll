; ModuleID = './lib/qcopy-acl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.permission_context = type { i32 }

; Function Attrs: nounwind uwtable
define i32 @qcopy_acl(i8* %src_name, i32 %source_desc, i8* %dst_name, i32 %dest_desc, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %src_name.addr = alloca i8*, align 8
  %source_desc.addr = alloca i32, align 4
  %dst_name.addr = alloca i8*, align 8
  %dest_desc.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %ctx = alloca %struct.permission_context, align 4
  %ret = alloca i32, align 4
  store i8* %src_name, i8** %src_name.addr, align 8
  store i32 %source_desc, i32* %source_desc.addr, align 4
  store i8* %dst_name, i8** %dst_name.addr, align 8
  store i32 %dest_desc, i32* %dest_desc.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i8*, i8** %src_name.addr, align 8
  %1 = load i32, i32* %source_desc.addr, align 4
  %2 = load i32, i32* %mode.addr, align 4
  %call = call i32 @get_permissions(i8* %0, i32 %1, i32 %2, %struct.permission_context* %ctx)
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %dst_name.addr, align 8
  %5 = load i32, i32* %dest_desc.addr, align 4
  %call1 = call i32 @set_permissions(%struct.permission_context* %ctx, i8* %4, i32 %5)
  store i32 %call1, i32* %ret, align 4
  call void @free_permission_context(%struct.permission_context* %ctx) #3
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @get_permissions(i8*, i32, i32, %struct.permission_context*) #1

declare i32 @set_permissions(%struct.permission_context*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare void @free_permission_context(%struct.permission_context*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
