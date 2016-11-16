; ModuleID = './lib/filalign.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_align_args = internal constant [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@file_align_types = internal constant [7 x i32] [i32 -1, i32 -2, i32 -2, i32 -3, i32 -4, i32 -4, i32 -4], align 16
@file_align_to_string.buf = internal global [25 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"sheet\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"rank\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1

; Function Attrs: nounwind uwtable
define i32 @file_align_argmatch(i8* %option, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %option.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %call = call i32 @argcasematch(i8* %0, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @file_align_args, i32 0, i32 0), i8* bitcast ([7 x i32]* @file_align_types to i8*), i64 4)
  store i32 %call, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* @file_align_types, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %option.addr, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call1 = call i32 @get_integer_in_range(i8* %4, i8* %5, i32 1, i32 0, i32 1)
  store i32 %call1, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @argcasematch(i8*, i8**, i8*, i64) #1

declare i32 @get_integer_in_range(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i8* @file_align_to_string(i32 %file_align) #0 {
entry:
  %retval = alloca i8*, align 8
  %file_align.addr = alloca i32, align 4
  store i32 %file_align, i32* %file_align.addr, align 4
  %0 = load i32, i32* %file_align.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %file_align.addr to i8*
  %call = call i8* @argmatch_to_argument(i8* %1, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @file_align_args, i32 0, i32 0), i8* bitcast ([7 x i32]* @file_align_types to i8*), i64 4)
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %file_align.addr, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @file_align_to_string.buf, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %2) #3
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @file_align_to_string.buf, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

declare i8* @argmatch_to_argument(i8*, i8**, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
