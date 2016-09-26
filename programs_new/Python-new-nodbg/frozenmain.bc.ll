; ModuleID = './frozenmain.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyCompilerFlags = type { i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@Py_FrozenFlag = external global i32, align 4
@Py_IgnoreEnvironmentFlag = external global i32, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"PYTHONINSPECT\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"PYTHONUNBUFFERED\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Unable to decode the command line argument #%i\0A\00", align 1
@Py_VerboseFlag = external global i32, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Python %s\0A%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"__main__ not frozen\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Py_FrozenMain(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %sts = alloca i32, align 4
  %inspect = alloca i32, align 4
  %unbuffered = alloca i32, align 4
  %oldloc = alloca i8*, align 8
  %argv_copy = alloca i32**, align 8
  %argv_copy2 = alloca i32**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %sts, align 4
  store i32 0, i32* %inspect, align 4
  store i32 0, i32* %unbuffered, align 4
  store i8* null, i8** %oldloc, align 8
  store i32** null, i32*** %argv_copy, align 8
  store i32** null, i32*** %argv_copy2, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @PyMem_RawMalloc(i64 %mul)
  %1 = bitcast i8* %call to i32**
  store i32** %1, i32*** %argv_copy, align 8
  %2 = load i32, i32* %argc.addr, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 8, %conv1
  %call3 = call i8* @PyMem_RawMalloc(i64 %mul2)
  %3 = bitcast i8* %call3 to i32**
  store i32** %3, i32*** %argv_copy2, align 8
  %4 = load i32**, i32*** %argv_copy, align 8
  %tobool = icmp ne i32** %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32**, i32*** %argv_copy2, align 8
  %tobool4 = icmp ne i32** %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %error

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, i32* @Py_FrozenFlag, align 4
  %7 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call7 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call7, %cond.false ]
  store i8* %cond, i8** %p, align 8
  %tobool8 = icmp ne i8* %cond, null
  br i1 %tobool8, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %cond.end
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv9 = sext i8 %9 to i32
  %cmp = icmp ne i32 %conv9, 0
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %inspect, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true, %cond.end
  %10 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool13 = icmp ne i32 %10, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.end.12
  br label %cond.end.17

cond.false.15:                                    ; preds = %if.end.12
  %call16 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.14
  %cond18 = phi i8* [ null, %cond.true.14 ], [ %call16, %cond.false.15 ]
  store i8* %cond18, i8** %p, align 8
  %tobool19 = icmp ne i8* %cond18, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.25

land.lhs.true.20:                                 ; preds = %cond.end.17
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv21 = sext i8 %12 to i32
  %cmp22 = icmp ne i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.20
  store i32 1, i32* %unbuffered, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true.20, %cond.end.17
  %13 = load i32, i32* %unbuffered, align 4
  %tobool26 = icmp ne i32 %13, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @setbuf(%struct._IO_FILE* %14, i8* null) #4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @setbuf(%struct._IO_FILE* %15, i8* null) #4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @setbuf(%struct._IO_FILE* %16, i8* null) #4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  %call29 = call i8* @setlocale(i32 6, i8* null) #4
  %call30 = call i8* @_PyMem_RawStrdup(i8* %call29)
  store i8* %call30, i8** %oldloc, align 8
  %17 = load i8*, i8** %oldloc, align 8
  %tobool31 = icmp ne i8* %17, null
  br i1 %tobool31, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %if.end.28
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %error

if.end.34:                                        ; preds = %if.end.28
  %call35 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %argc.addr, align 4
  %cmp36 = icmp slt i32 %19, %20
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr i8*, i8** %22, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8
  %call38 = call i32* @_Py_char2wchar(i8* %23, i64* null)
  %24 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %24 to i64
  %25 = load i32**, i32*** %argv_copy, align 8
  %arrayidx40 = getelementptr i32*, i32** %25, i64 %idxprom39
  store i32* %call38, i32** %arrayidx40, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %26 to i64
  %27 = load i32**, i32*** %argv_copy, align 8
  %arrayidx42 = getelementptr i32*, i32** %27, i64 %idxprom41
  %28 = load i32*, i32** %arrayidx42, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %29 to i64
  %30 = load i32**, i32*** %argv_copy2, align 8
  %arrayidx44 = getelementptr i32*, i32** %30, i64 %idxprom43
  store i32* %28, i32** %arrayidx44, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %31 to i64
  %32 = load i32**, i32*** %argv_copy, align 8
  %arrayidx46 = getelementptr i32*, i32** %32, i64 %idxprom45
  %33 = load i32*, i32** %arrayidx46, align 8
  %tobool47 = icmp ne i32* %33, null
  br i1 %tobool47, label %if.end.50, label %if.then.48

if.then.48:                                       ; preds = %for.body
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i32, i32* %i, align 4
  %add = add i32 %35, 1
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i32 %add)
  %36 = load i32, i32* %i, align 4
  store i32 %36, i32* %argc.addr, align 4
  br label %error

if.end.50:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %37 = load i32, i32* %i, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i8*, i8** %oldloc, align 8
  %call51 = call i8* @setlocale(i32 6, i8* %38) #4
  %39 = load i8*, i8** %oldloc, align 8
  call void @PyMem_RawFree(i8* %39)
  store i8* null, i8** %oldloc, align 8
  %40 = load i32**, i32*** %argv_copy, align 8
  %arrayidx52 = getelementptr i32*, i32** %40, i64 0
  %41 = load i32*, i32** %arrayidx52, align 8
  call void @Py_SetProgramName(i32* %41)
  call void @Py_Initialize()
  %42 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool53 = icmp ne i32 %42, 0
  br i1 %tobool53, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %for.end
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call55 = call i8* @Py_GetVersion()
  %call56 = call i8* @Py_GetCopyright()
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* %call55, i8* %call56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.54, %for.end
  %44 = load i32, i32* %argc.addr, align 4
  %45 = load i32**, i32*** %argv_copy, align 8
  call void @PySys_SetArgv(i32 %44, i32** %45)
  %call59 = call i32 @PyImport_ImportFrozenModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call59, i32* %n, align 4
  %46 = load i32, i32* %n, align 4
  %cmp60 = icmp eq i32 %46, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.58
  call void @Py_FatalError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.63:                                        ; preds = %if.end.58
  %47 = load i32, i32* %n, align 4
  %cmp64 = icmp slt i32 %47, 0
  br i1 %cmp64, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %if.end.63
  call void @PyErr_Print()
  store i32 1, i32* %sts, align 4
  br label %if.end.67

if.else:                                          ; preds = %if.end.63
  store i32 0, i32* %sts, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %if.then.66
  %48 = load i32, i32* %inspect, align 4
  %tobool68 = icmp ne i32 %48, 0
  br i1 %tobool68, label %land.lhs.true.69, label %if.end.77

land.lhs.true.69:                                 ; preds = %if.end.67
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call70 = call i32 @fileno(%struct._IO_FILE* %49) #4
  %call71 = call i32 @isatty(i32 %call70) #4
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %land.lhs.true.69
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call74 = call i32 @PyRun_AnyFileExFlags(%struct._IO_FILE* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 0, %struct.PyCompilerFlags* null)
  %cmp75 = icmp ne i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  store i32 %conv76, i32* %sts, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %land.lhs.true.69, %if.end.67
  call void @Py_Finalize()
  br label %error

error:                                            ; preds = %if.end.77, %if.then.48, %if.then.32, %if.then
  %51 = load i32**, i32*** %argv_copy, align 8
  %52 = bitcast i32** %51 to i8*
  call void @PyMem_RawFree(i8* %52)
  %53 = load i32**, i32*** %argv_copy2, align 8
  %tobool78 = icmp ne i32** %53, null
  br i1 %tobool78, label %if.then.79, label %if.end.89

if.then.79:                                       ; preds = %error
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.86, %if.then.79
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %argc.addr, align 4
  %cmp81 = icmp slt i32 %54, %55
  br i1 %cmp81, label %for.body.83, label %for.end.88

for.body.83:                                      ; preds = %for.cond.80
  %56 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %56 to i64
  %57 = load i32**, i32*** %argv_copy2, align 8
  %arrayidx85 = getelementptr i32*, i32** %57, i64 %idxprom84
  %58 = load i32*, i32** %arrayidx85, align 8
  %59 = bitcast i32* %58 to i8*
  call void @PyMem_RawFree(i8* %59)
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.83
  %60 = load i32, i32* %i, align 4
  %inc87 = add i32 %60, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond.80

for.end.88:                                       ; preds = %for.cond.80
  %61 = load i32**, i32*** %argv_copy2, align 8
  %62 = bitcast i32** %61 to i8*
  call void @PyMem_RawFree(i8* %62)
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.88, %error
  %63 = load i8*, i8** %oldloc, align 8
  call void @PyMem_RawFree(i8* %63)
  %64 = load i32, i32* %sts, align 4
  ret i32 %64
}

declare i8* @PyMem_RawMalloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare void @setbuf(%struct._IO_FILE*, i8*) #2

declare i8* @_PyMem_RawStrdup(i8*) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

declare i32* @_Py_char2wchar(i8*, i64*) #1

declare void @PyMem_RawFree(i8*) #1

declare void @Py_SetProgramName(i32*) #1

declare void @Py_Initialize() #1

declare i8* @Py_GetVersion() #1

declare i8* @Py_GetCopyright() #1

declare void @PySys_SetArgv(i32, i32**) #1

declare i32 @PyImport_ImportFrozenModule(i8*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

declare void @PyErr_Print() #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

declare i32 @PyRun_AnyFileExFlags(%struct._IO_FILE*, i8*, i32, %struct.PyCompilerFlags*) #1

declare void @Py_Finalize() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
