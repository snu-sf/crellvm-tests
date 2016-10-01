; ModuleID = './MultiSource.Benchmarks.FreeBench/13.pcompress2.pcompress2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c".compr\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %filename = alloca [1000 x i8], align 16
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  %2 = load i32, i32* %argc.addr, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  call void @compress(i32 %2, i8** %3)
  %4 = load i32, i32* %argc.addr, align 4
  %5 = load i8**, i8*** %argv.addr, align 8
  call void @compress(i32 %4, i8** %5)
  %6 = load i32, i32* %argc.addr, align 4
  %7 = load i8**, i8*** %argv.addr, align 8
  call void @compress(i32 %6, i8** %7)
  %8 = load i32, i32* %argc.addr, align 4
  %9 = load i8**, i8*** %argv.addr, align 8
  call void @compress(i32 %8, i8** %9)
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %filename, i32 0, i32 0
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load i8*, i8** %arrayidx, align 8
  %call2 = call i8* @strcpy(i8* %arraydecay, i8* %11) #3
  %arraydecay3 = getelementptr inbounds [1000 x i8], [1000 x i8]* %filename, i32 0, i32 0
  %call4 = call i8* @strcat(i8* %arraydecay3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #3
  %arraydecay5 = getelementptr inbounds [1000 x i8], [1000 x i8]* %filename, i32 0, i32 0
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* %arraydecay5, i8** %arrayidx6, align 8
  %13 = load i32, i32* %argc.addr, align 4
  %14 = load i8**, i8*** %argv.addr, align 8
  call void @uncompress(i32 %13, i8** %14)
  %arraydecay7 = getelementptr inbounds [1000 x i8], [1000 x i8]* %filename, i32 0, i32 0
  %call8 = call i32 @remove(i8* %arraydecay7) #3
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @compress(i32, i8**) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare void @uncompress(i32, i8**) #1

; Function Attrs: nounwind
declare i32 @remove(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
