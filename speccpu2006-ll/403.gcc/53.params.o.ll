; ModuleID = 'params.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.param_info = type { i8*, i32, i8* }

@compiler_params = common global %struct.param_info* null, align 8
@num_compiler_params = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"invalid parameter `%s'\00", align 1

; Function Attrs: nounwind uwtable
define void @add_params(%struct.param_info* %params, i64 %n) #0 {
entry:
  %params.addr = alloca %struct.param_info*, align 8
  %n.addr = alloca i64, align 8
  store %struct.param_info* %params, %struct.param_info** %params.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %1 = bitcast %struct.param_info* %0 to i8*
  %2 = load i64, i64* @num_compiler_params, align 8
  %3 = load i64, i64* %n.addr, align 8
  %add = add i64 %2, %3
  %mul = mul i64 %add, 24
  %call = call i8* @xrealloc(i8* %1, i64 %mul)
  %4 = bitcast i8* %call to %struct.param_info*
  store %struct.param_info* %4, %struct.param_info** @compiler_params, align 8
  %5 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %6 = load i64, i64* @num_compiler_params, align 8
  %add.ptr = getelementptr inbounds %struct.param_info, %struct.param_info* %5, i64 %6
  %7 = bitcast %struct.param_info* %add.ptr to i8*
  %8 = load %struct.param_info*, %struct.param_info** %params.addr, align 8
  %9 = bitcast %struct.param_info* %8 to i8*
  %10 = load i64, i64* %n.addr, align 8
  %mul1 = mul i64 %10, 24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %9, i64 %mul1, i32 8, i1 false)
  %11 = load i64, i64* %n.addr, align 8
  %12 = load i64, i64* @num_compiler_params, align 8
  %add2 = add i64 %12, %11
  store i64 %add2, i64* @num_compiler_params, align 8
  ret void
}

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @set_param_value(i8* %name, i32 %value) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %i = alloca i64, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* @num_compiler_params, align 8
  %cmp1 = icmp ult i64 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx = getelementptr inbounds %struct.param_info, %struct.param_info* %4, i64 %3
  %option = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx, i32 0, i32 0
  %5 = load i8*, i8** %option, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %5, i8* %6) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %for.body
  %7 = load i32, i32* %value.addr, align 4
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx4 = getelementptr inbounds %struct.param_info, %struct.param_info* %9, i64 %8
  %value5 = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx4, i32 0, i32 1
  store i32 %7, i32* %value5, align 4
  br label %return

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* %11)
  br label %return

return:                                           ; preds = %for.end, %if.then.3
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @error(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
