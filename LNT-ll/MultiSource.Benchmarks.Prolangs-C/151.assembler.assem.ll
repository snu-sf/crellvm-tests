; ModuleID = './MultiSource.Benchmarks.Prolangs-C/151.assembler.assem.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }

@START_ADDRESS = global i32 -1, align 4
@.str = private unnamed_addr constant [8 x i8] c"%pass1%\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"usage: assem file\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: No such file or directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".lst\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".obj\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"rm %s\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Errors detected. Deleted object file.\0A\00", align 1
@MODULE_NAME = common global [9 x i8] zeroinitializer, align 1
@MAIN_ROUTINE = common global [9 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %INPUT_STREAM = alloca %struct._IO_FILE*, align 8
  %SYM_TAB = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %TEMP_OUTPUT_STREAM = alloca %struct._IO_FILE*, align 8
  %TEMP_OUTPUT_FILE_NAME = alloca i8*, align 8
  %ERROR = alloca i32, align 4
  %LISTING_FILE = alloca i8*, align 8
  %LISTING_STREAM = alloca %struct._IO_FILE*, align 8
  %OBJECT_FILE = alloca i8*, align 8
  %OBJECT_STREAM = alloca %struct._IO_FILE*, align 8
  %LOOP_COUNTER = alloca i32, align 4
  %TEMP = alloca i8*, align 8
  %TEMP59 = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %TEMP_OUTPUT_FILE_NAME, align 8
  store i32 0, i32* %ERROR, align 4
  call void (%struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @INIT_SYM_TAB to void (%struct.SYMBOL_TABLE_ENTRY**, ...)*)(%struct.SYMBOL_TABLE_ENTRY** %SYM_TAB)
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.70

if.else:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %INPUT_STREAM, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.else.6

if.then.3:                                        ; preds = %if.else
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* %4)
  br label %if.end.69

if.else.6:                                        ; preds = %if.else
  %5 = load i8*, i8** %TEMP_OUTPUT_FILE_NAME, align 8
  %call7 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %TEMP_OUTPUT_STREAM, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM, align 8
  call void (%struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, %struct._IO_FILE*, ...) bitcast (void (...)* @PASS1 to void (%struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, %struct._IO_FILE*, ...)*)(%struct._IO_FILE* %6, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* %9)
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i64 @strlen(i8* %11) #4
  %add = add i64 %call11, 5
  %conv = trunc i64 %add to i32
  %conv12 = zext i32 %conv to i64
  %call13 = call noalias i8* @malloc(i64 %conv12) #5
  store i8* %call13, i8** %LISTING_FILE, align 8
  %12 = load i8*, i8** %LISTING_FILE, align 8
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %13, i64 1
  %14 = load i8*, i8** %arrayidx14, align 8
  %call15 = call i8* @strcpy(i8* %12, i8* %14) #5
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %15, i64 1
  %16 = load i8*, i8** %arrayidx16, align 8
  %call17 = call i64 @strlen(i8* %16) #4
  %conv18 = trunc i64 %call17 to i32
  store i32 %conv18, i32* %LOOP_COUNTER, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.6
  %17 = load i32, i32* %LOOP_COUNTER, align 4
  %cmp19 = icmp sge i32 %17, 0
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %18 = load i32, i32* %LOOP_COUNTER, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i8*, i8** %LISTING_FILE, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %20 to i32
  %cmp23 = icmp ne i32 %conv22, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp23, %land.rhs ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %LOOP_COUNTER, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %LOOP_COUNTER, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %23 = load i32, i32* %LOOP_COUNTER, align 4
  %cmp25 = icmp sle i32 %23, 0
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %for.end
  %24 = load i8**, i8*** %argv.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %24, i64 1
  %25 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i64 @strlen(i8* %25) #4
  %conv30 = trunc i64 %call29 to i32
  store i32 %conv30, i32* %LOOP_COUNTER, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %for.end
  %26 = load i32, i32* %LOOP_COUNTER, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load i8*, i8** %LISTING_FILE, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %27, i64 %idxprom31
  %call33 = call i8* @strcpy(i8* %arrayidx32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #5
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %28, i64 1
  %29 = load i8*, i8** %arrayidx34, align 8
  %call35 = call i64 @strlen(i8* %29) #4
  %add36 = add i64 %call35, 5
  %conv37 = trunc i64 %add36 to i32
  %conv38 = zext i32 %conv37 to i64
  %call39 = call noalias i8* @malloc(i64 %conv38) #5
  store i8* %call39, i8** %OBJECT_FILE, align 8
  %30 = load i8*, i8** %OBJECT_FILE, align 8
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %31, i64 1
  %32 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i8* @strcpy(i8* %30, i8* %32) #5
  %33 = load i32, i32* %LOOP_COUNTER, align 4
  %idxprom42 = sext i32 %33 to i64
  %34 = load i8*, i8** %OBJECT_FILE, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %34, i64 %idxprom42
  %call44 = call i8* @strcpy(i8* %arrayidx43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #5
  %35 = load i8*, i8** %TEMP_OUTPUT_FILE_NAME, align 8
  %call45 = call %struct._IO_FILE* @fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call45, %struct._IO_FILE** %INPUT_STREAM, align 8
  %36 = load i8*, i8** %LISTING_FILE, align 8
  %call46 = call %struct._IO_FILE* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call46, %struct._IO_FILE** %LISTING_STREAM, align 8
  %37 = load i8*, i8** %OBJECT_FILE, align 8
  %call47 = call %struct._IO_FILE* @fopen(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call47, %struct._IO_FILE** %OBJECT_STREAM, align 8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM, align 8
  call void (%struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (void (...)* @PASS2 to void (%struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(%struct._IO_FILE* %38, %struct._IO_FILE* %39, %struct._IO_FILE* %40, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, i32* %ERROR)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM, align 8
  %call48 = call i32 @fclose(%struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM, align 8
  %call49 = call i32 @fclose(%struct._IO_FILE* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM, align 8
  %call50 = call i32 @fclose(%struct._IO_FILE* %43)
  %44 = load i8*, i8** %TEMP_OUTPUT_FILE_NAME, align 8
  %call51 = call i64 @strlen(i8* %44) #4
  %add52 = add i64 4, %call51
  %conv53 = trunc i64 %add52 to i32
  %conv54 = zext i32 %conv53 to i64
  %call55 = call noalias i8* @malloc(i64 %conv54) #5
  store i8* %call55, i8** %TEMP, align 8
  %45 = load i8*, i8** %TEMP, align 8
  %46 = load i8*, i8** %TEMP_OUTPUT_FILE_NAME, align 8
  %call56 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* %46) #5
  %47 = load i8*, i8** %TEMP, align 8
  %call57 = call i32 @system(i8* %47)
  %48 = load i32, i32* %ERROR, align 4
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.then.58, label %if.end.68

if.then.58:                                       ; preds = %if.end
  %49 = load i8*, i8** %OBJECT_FILE, align 8
  %call60 = call i64 @strlen(i8* %49) #4
  %add61 = add i64 4, %call60
  %conv62 = trunc i64 %add61 to i32
  %conv63 = zext i32 %conv62 to i64
  %call64 = call noalias i8* @malloc(i64 %conv63) #5
  store i8* %call64, i8** %TEMP59, align 8
  %50 = load i8*, i8** %TEMP59, align 8
  %51 = load i8*, i8** %OBJECT_FILE, align 8
  %call65 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* %51) #5
  %52 = load i8*, i8** %TEMP59, align 8
  %call66 = call i32 @system(i8* %52)
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.58, %if.end
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.3
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then
  ret i32 0
}

declare void @INIT_SYM_TAB(...) #1

declare i32 @printf(i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @PASS1(...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare void @PASS2(...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @system(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
