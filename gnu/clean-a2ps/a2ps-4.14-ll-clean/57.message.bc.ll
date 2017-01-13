; ModuleID = './lib/message.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msg_verbosity = global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sheets\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pathwalk\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"pw\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"encodings\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"configuration\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"tools\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ppd\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"meta-sequences\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"parsers\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@_msg_verbosity_args = constant [15 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* null], align 16
@_msg_verbosity_types = constant [14 x i32] [i32 4, i32 8, i32 8, i32 16, i32 32, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 1024, i32 2048, i32 65535], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c",:;+\00", align 1
@argmatch_die = external global void ()*, align 8

; Function Attrs: nounwind uwtable
define i32 @msg_verbosity_argmatch(i8* %option, i8* %arg) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  %token = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #4
  %2 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %option.addr, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call2 = call i32 @get_integer_in_range(i8* %4, i8* %5, i32 0, i32 0, i32 1)
  store i32 %call2, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %arg.addr, align 8
  %call3 = call i8* @strtok(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #5
  store i8* %call3, i8** %token, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %7 = load i8*, i8** %option.addr, align 8
  %8 = load i8*, i8** %token, align 8
  %9 = load void ()*, void ()** @argmatch_die, align 8
  %call4 = call i32 @__xargmatch_internal(i8* %7, i8* %8, i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @_msg_verbosity_args, i32 0, i32 0), i8* bitcast ([14 x i32]* @_msg_verbosity_types to i8*), i64 4, i32 0, void ()* %9)
  %idxprom5 = sext i32 %call4 to i64
  %arrayidx6 = getelementptr inbounds [14 x i32], [14 x i32]* @_msg_verbosity_types, i32 0, i64 %idxprom5
  %10 = load i32, i32* %arrayidx6, align 4
  %11 = load i32, i32* %res, align 4
  %or = or i32 %11, %10
  store i32 %or, i32* %res, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %call7 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #5
  store i8* %call7, i8** %token, align 8
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %12 = load i32, i32* %res, align 4
  ret i32 %12
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

declare i32 @get_integer_in_range(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

declare i32 @__xargmatch_internal(i8*, i8*, i8**, i8*, i64, i32, void ()*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
