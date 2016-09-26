; ModuleID = './python.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Fatal Python error: unable to decode the command line argument #%i\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %argv_copy = alloca i32**, align 8
  %argv_copy2 = alloca i32**, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  %oldloc = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %add = add i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call = call i8* @PyMem_RawMalloc(i64 %mul)
  %1 = bitcast i8* %call to i32**
  store i32** %1, i32*** %argv_copy, align 8
  %2 = load i32, i32* %argc.addr, align 4
  %add1 = add i32 %2, 1
  %conv2 = sext i32 %add1 to i64
  %mul3 = mul i64 8, %conv2
  %call4 = call i8* @PyMem_RawMalloc(i64 %mul3)
  %3 = bitcast i8* %call4 to i32**
  store i32** %3, i32*** %argv_copy2, align 8
  %4 = load i32**, i32*** %argv_copy, align 8
  %tobool = icmp ne i32** %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32**, i32*** %argv_copy2, align 8
  %tobool5 = icmp ne i32** %5, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call7 = call i8* @setlocale(i32 6, i8* null) #3
  %call8 = call i8* @_PyMem_RawStrdup(i8* %call7)
  store i8* %call8, i8** %oldloc, align 8
  %7 = load i8*, i8** %oldloc, align 8
  %tobool9 = icmp ne i8* %7, null
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %call13 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  %call15 = call i32* @_Py_char2wchar(i8* %13, i64* null)
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load i32**, i32*** %argv_copy, align 8
  %arrayidx17 = getelementptr i32*, i32** %15, i64 %idxprom16
  store i32* %call15, i32** %arrayidx17, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load i32**, i32*** %argv_copy, align 8
  %arrayidx19 = getelementptr i32*, i32** %17, i64 %idxprom18
  %18 = load i32*, i32** %arrayidx19, align 8
  %tobool20 = icmp ne i32* %18, null
  br i1 %tobool20, label %if.end.24, label %if.then.21

if.then.21:                                       ; preds = %for.body
  %19 = load i8*, i8** %oldloc, align 8
  call void @PyMem_RawFree(i8* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i32, i32* %i, align 4
  %add22 = add i32 %21, 1
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i32 0, i32 0), i32 %add22)
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load i32**, i32*** %argv_copy, align 8
  %arrayidx26 = getelementptr i32*, i32** %23, i64 %idxprom25
  %24 = load i32*, i32** %arrayidx26, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load i32**, i32*** %argv_copy2, align 8
  %arrayidx28 = getelementptr i32*, i32** %26, i64 %idxprom27
  store i32* %24, i32** %arrayidx28, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %27 = load i32, i32* %i, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %argc.addr, align 4
  %idxprom29 = sext i32 %28 to i64
  %29 = load i32**, i32*** %argv_copy, align 8
  %arrayidx30 = getelementptr i32*, i32** %29, i64 %idxprom29
  store i32* null, i32** %arrayidx30, align 8
  %30 = load i32, i32* %argc.addr, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load i32**, i32*** %argv_copy2, align 8
  %arrayidx32 = getelementptr i32*, i32** %31, i64 %idxprom31
  store i32* null, i32** %arrayidx32, align 8
  %32 = load i8*, i8** %oldloc, align 8
  %call33 = call i8* @setlocale(i32 6, i8* %32) #3
  %33 = load i8*, i8** %oldloc, align 8
  call void @PyMem_RawFree(i8* %33)
  %34 = load i32, i32* %argc.addr, align 4
  %35 = load i32**, i32*** %argv_copy, align 8
  %call34 = call i32 @Py_Main(i32 %34, i32** %35)
  store i32 %call34, i32* %res, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.41, %for.end
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %argc.addr, align 4
  %cmp36 = icmp slt i32 %36, %37
  br i1 %cmp36, label %for.body.38, label %for.end.43

for.body.38:                                      ; preds = %for.cond.35
  %38 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %38 to i64
  %39 = load i32**, i32*** %argv_copy2, align 8
  %arrayidx40 = getelementptr i32*, i32** %39, i64 %idxprom39
  %40 = load i32*, i32** %arrayidx40, align 8
  %41 = bitcast i32* %40 to i8*
  call void @PyMem_RawFree(i8* %41)
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.38
  %42 = load i32, i32* %i, align 4
  %inc42 = add i32 %42, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.35

for.end.43:                                       ; preds = %for.cond.35
  %43 = load i32**, i32*** %argv_copy, align 8
  %44 = bitcast i32** %43 to i8*
  call void @PyMem_RawFree(i8* %44)
  %45 = load i32**, i32*** %argv_copy2, align 8
  %46 = bitcast i32** %45 to i8*
  call void @PyMem_RawFree(i8* %46)
  %47 = load i32, i32* %res, align 4
  store i32 %47, i32* %retval
  br label %return

return:                                           ; preds = %for.end.43, %if.then.21, %if.then.10, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare i8* @PyMem_RawMalloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @_PyMem_RawStrdup(i8*) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

declare i32* @_Py_char2wchar(i8*, i64*) #1

declare void @PyMem_RawFree(i8*) #1

declare i32 @Py_Main(i32, i32**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
