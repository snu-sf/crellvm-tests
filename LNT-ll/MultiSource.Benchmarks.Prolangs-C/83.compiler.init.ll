; ModuleID = './MultiSource.Benchmarks.Prolangs-C/83.compiler.init.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"writeln\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"readf\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"readi\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"writef\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"writei\00", align 1
@keywords = global [14 x %struct.entry] [%struct.entry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 2002, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 2003, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 2007, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 2008, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 2024, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 2009, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 2010, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 2011, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 2042, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 2043, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 2044, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 2045, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 2046, i32 0, i32 0, i32 0, i32 0 }, %struct.entry zeroinitializer], align 16
@lineno = common global i32 0, align 4
@LabelCounter = common global i32 0, align 4
@DecCount = common global i32 0, align 4
@ErrorFlag = common global i32 0, align 4
@NumberC = common global i32 0, align 4
@lookahead = common global i32 0, align 4
@tokenval = common global i32 0, align 4
@ftokenval = common global float 0.000000e+00, align 4
@FloatFlag = common global i32 0, align 4
@offset = common global i32 0, align 4
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
define void @init() #0 {
entry:
  %p = alloca %struct.entry*, align 8
  store %struct.entry* getelementptr inbounds ([14 x %struct.entry], [14 x %struct.entry]* @keywords, i32 0, i32 0), %struct.entry** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.entry*, %struct.entry** %p, align 8
  %token = getelementptr inbounds %struct.entry, %struct.entry* %0, i32 0, i32 1
  %1 = load i32, i32* %token, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.entry*, %struct.entry** %p, align 8
  %lexptr = getelementptr inbounds %struct.entry, %struct.entry* %2, i32 0, i32 0
  %3 = load i8*, i8** %lexptr, align 8
  %4 = load %struct.entry*, %struct.entry** %p, align 8
  %token1 = getelementptr inbounds %struct.entry, %struct.entry* %4, i32 0, i32 1
  %5 = load i32, i32* %token1, align 4
  %6 = load %struct.entry*, %struct.entry** %p, align 8
  %type = getelementptr inbounds %struct.entry, %struct.entry* %6, i32 0, i32 2
  %7 = load i32, i32* %type, align 4
  %8 = load %struct.entry*, %struct.entry** %p, align 8
  %size = getelementptr inbounds %struct.entry, %struct.entry* %8, i32 0, i32 3
  %9 = load i32, i32* %size, align 4
  %call = call i32 @GlobalInsert(i8* %3, i32 %5, i32 %7, i32 %9, i32 0, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.entry*, %struct.entry** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.entry, %struct.entry* %10, i32 1
  store %struct.entry* %incdec.ptr, %struct.entry** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* @lineno, align 4
  store i32 1, i32* @LabelCounter, align 4
  store i32 2, i32* @DecCount, align 4
  store i32 0, i32* @ErrorFlag, align 4
  store i32 0, i32* @NumberC, align 4
  ret void
}

declare i32 @GlobalInsert(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
