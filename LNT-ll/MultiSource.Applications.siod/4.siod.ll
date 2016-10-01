; ModuleID = './MultiSource.Applications.siod/4.siod.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@siod_argv = internal global [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"siod\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"-h100000:10\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-g0\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-o1000\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"-s200000\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"-n2048\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv, i8** %env) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %env.addr = alloca i8**, align 8
  %nargc = alloca i32, align 4
  %nargv = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8** %env, i8*** %env.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  store i32 %0, i32* %nargc, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  store i8** %1, i8*** %nargv, align 8
  call void @process_cla(i32 6, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @siod_argv, i32 0, i32 0), i32 1)
  %2 = load i32, i32* %nargc, align 4
  %3 = load i8**, i8*** %nargv, align 8
  %4 = load i8**, i8*** %env.addr, align 8
  %call = call i32 @siod_main(i32 %2, i8** %3, i8** %4)
  ret i32 %call
}

declare void @process_cla(i32, i8**, i32) #1

declare i32 @siod_main(i32, i8**, i8**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
