; ModuleID = './MultiSource.Benchmarks.VersaBench/46.8b10b.testbench.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%8.8X\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @runTestbench(i32 %numberOfWords, i8* %inputFileName, i8* %outputFileName0) #0 {
entry:
  %numberOfWords.addr = alloca i32, align 4
  %inputFileName.addr = alloca i8*, align 8
  %outputFileName0.addr = alloca i8*, align 8
  %theBigAllocatedThing = alloca i32*, align 8
  %theInputArray = alloca i32*, align 8
  %theOutputArray0 = alloca i32*, align 8
  %inputFile = alloca %struct._IO_FILE*, align 8
  %outputFile0 = alloca %struct._IO_FILE*, align 8
  %readData = alloca i32, align 4
  %bits0 = alloca i32, align 4
  %counter = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %numberOfWords, i32* %numberOfWords.addr, align 4
  store i8* %inputFileName, i8** %inputFileName.addr, align 8
  store i8* %outputFileName0, i8** %outputFileName0.addr, align 8
  %0 = load i32, i32* %numberOfWords.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %mul1 = mul i64 %mul, 2
  %call = call noalias i8* @malloc(i64 %mul1) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %theBigAllocatedThing, align 8
  %2 = load i32*, i32** %theBigAllocatedThing, align 8
  store i32* %2, i32** %theInputArray, align 8
  %3 = load i32*, i32** %theBigAllocatedThing, align 8
  %4 = load i32, i32* %numberOfWords.addr, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 %idx.ext
  store i32* %add.ptr, i32** %theOutputArray0, align 8
  %5 = load i8*, i8** %inputFileName.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %inputFile, align 8
  %6 = load i32*, i32** %theInputArray, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = load i32, i32* %numberOfWords.addr, align 4
  %conv3 = sext i32 %8 to i64
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %call4 = call i64 @fread(i8* %7, i64 %conv3, i64 4, %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %10)
  store i32 0, i32* %tmp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %11 = load i32, i32* %tmp, align 4
  %12 = load i32, i32* %numberOfWords.addr, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %counter, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %counter, align 4
  %14 = load i32, i32* %numberOfWords.addr, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %15 = load i32, i32* %counter, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32*, i32** %theInputArray, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4
  store i32 %17, i32* %bits0, align 4
  %18 = load i32, i32* %bits0, align 4
  %and = and i32 %18, 255
  %19 = load i32, i32* %bits0, align 4
  %shr = lshr i32 %19, 8
  %call11 = call i32 @calc(i32 %and, i32 %shr)
  %20 = load i32, i32* %counter, align 4
  %idxprom12 = sext i32 %20 to i64
  %21 = load i32*, i32** %theOutputArray0, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 %idxprom12
  store i32 %call11, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %22 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %counter, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %23 = load i32, i32* %tmp, align 4
  %inc15 = add nsw i32 %23, 1
  store i32 %inc15, i32* %tmp, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %24, %struct._IO_FILE** %outputFile0, align 8
  store i32 0, i32* %counter, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.24, %for.end.16
  %25 = load i32, i32* %counter, align 4
  %26 = load i32, i32* %numberOfWords.addr, align 4
  %cmp18 = icmp slt i32 %25, %26
  br i1 %cmp18, label %for.body.20, label %for.end.25

for.body.20:                                      ; preds = %for.cond.17
  %27 = load i32, i32* %counter, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load i32*, i32** %theOutputArray0, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %28, i64 %idxprom21
  %29 = load i32, i32* %arrayidx22, align 4
  store i32 %29, i32* %bits0, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %outputFile0, align 8
  %31 = load i32, i32* %bits0, align 4
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %31)
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.20
  %32 = load i32, i32* %counter, align 4
  %add = add nsw i32 %32, 128
  store i32 %add, i32* %counter, align 4
  br label %for.cond.17

for.end.25:                                       ; preds = %for.cond.17
  %33 = load i32*, i32** %theBigAllocatedThing, align 8
  %34 = bitcast i32* %33 to i8*
  call void @free(i8* %34) #3
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @calc(i32, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
