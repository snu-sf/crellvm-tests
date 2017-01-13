; ModuleID = './app/base/base-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GString = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @get_pid() #0 {
entry:
  %call = call i32 @getpid() #3
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @getpid() #1

; Function Attrs: nounwind uwtable
define i32 @get_number_of_processors() #0 {
entry:
  %retval1 = alloca i32, align 4
  store i32 1, i32* %retval1, align 4
  %call = call i64 @sysconf(i32 84) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %retval1, align 4
  %0 = load i32, i32* %retval1, align 4
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @sysconf(i32) #1

; Function Attrs: nounwind uwtable
define i64 @get_physical_memory_size() #0 {
entry:
  %call = call i64 @sysconf(i32 85) #3
  %call1 = call i64 @sysconf(i32 30) #3
  %mul = mul i64 %call, %call1
  ret i64 %mul
}

; Function Attrs: nounwind uwtable
define i8* @get_backtrace() #0 {
entry:
  %functions = alloca [100 x i8*], align 16
  %function_names = alloca i8**, align 8
  %n_functions = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca %struct._GString*, align 8
  %arraydecay = getelementptr inbounds [100 x i8*], [100 x i8*]* %functions, i32 0, i32 0
  %call = call i32 @backtrace(i8** %arraydecay, i32 100)
  store i32 %call, i32* %n_functions, align 4
  %arraydecay1 = getelementptr inbounds [100 x i8*], [100 x i8*]* %functions, i32 0, i32 0
  %0 = load i32, i32* %n_functions, align 4
  %call2 = call i8** @backtrace_symbols(i8** %arraydecay1, i32 %0) #3
  store i8** %call2, i8*** %function_names, align 8
  %call3 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  store %struct._GString* %call3, %struct._GString** %result, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n_functions, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GString*, %struct._GString** %result, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %function_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i8**, i8*** %function_names, align 8
  %9 = bitcast i8** %8 to i8*
  call void @free(i8* %9) #3
  %10 = load %struct._GString*, %struct._GString** %result, align 8
  %call4 = call i8* @g_string_free(%struct._GString* %10, i32 0)
  ret i8* %call4
}

declare i32 @backtrace(i8**, i32) #2

; Function Attrs: nounwind
declare i8** @backtrace_symbols(i8**, i32) #1

declare %struct._GString* @g_string_new(i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
