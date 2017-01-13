; ModuleID = './MultiSource.Benchmarks.Prolangs-C/84.compiler.error.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.entry = type { i8*, i32, i32, i32, i32, i32 }

@ErrorFlag = common global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\0AERROR: line %d: %s \0A\00", align 1
@lineno = common global i32 0, align 4
@lookahead = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Skipping: \00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\0A continuing parsing...\0A\00", align 1
@tokenval = common global i32 0, align 4
@ftokenval = common global float 0.000000e+00, align 4
@FloatFlag = common global i32 0, align 4
@DecCount = common global i32 0, align 4
@offset = common global i32 0, align 4
@LabelCounter = common global i32 0, align 4
@NumberC = common global i32 0, align 4
@lexbuf = common global [128 x i8] zeroinitializer, align 16
@LocalIndex = common global i32 0, align 4
@GlobalIndex = common global i32 0, align 4
@NextLookahead = common global i32 0, align 4
@NextTokenval = common global i32 0, align 4
@NextFtokenval = common global float 0.000000e+00, align 4
@PreviousLookahead = common global i32 0, align 4
@PreviousTokenval = common global i32 0, align 4
@PreviousFtokenval = common global float 0.000000e+00, align 4
@Scope = common global i32 0, align 4
@ReturnLabel = common global i32 0, align 4
@CallReturnAddr = common global i32 0, align 4
@FuncNameIndex = common global i32 0, align 4
@ArrayParsed = common global i32 0, align 4
@GlobalTable = common global [100 x %struct.entry] zeroinitializer, align 16
@LocalTable = common global [100 x %struct.entry] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @error(i8* %m) #0 {
entry:
  %m.addr = alloca i8*, align 8
  store i8* %m, i8** %m.addr, align 8
  store i32 1, i32* @ErrorFlag, align 4
  %0 = load i32, i32* @lineno, align 4
  %1 = load i8*, i8** %m.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %0, i8* %1)
  %2 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %2, 260
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.end
  %3 = load i32, i32* @lookahead, align 4
  %cmp2 = icmp ne i32 %3, 59
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* @lookahead, align 4
  %cmp3 = icmp ne i32 %4, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call4 = call i32 @_IO_getc(%struct._IO_FILE* %6)
  store i32 %call4, i32* @lookahead, align 4
  %7 = load i32, i32* @lookahead, align 4
  %cmp5 = icmp eq i32 %7, 10
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.body
  %8 = load i32, i32* @lineno, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @lineno, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %while.body
  %9 = load i32, i32* @lookahead, align 4
  %cmp8 = icmp ne i32 %9, -1
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %10 = load i32, i32* @lookahead, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* @lookahead, align 4
  %cmp12 = icmp eq i32 %11, -1
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %while.end
  store i32 260, i32* @lookahead, align 4
  br label %return

if.else:                                          ; preds = %while.end
  call void @match(i32 59)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare void @match(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
