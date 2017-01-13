; ModuleID = './MultiSource.Benchmarks.FreeBench/4.analyzer.help.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"Help/Manual for Dependency Analyzer\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"\0AThis program is written by Peter Rundberg, Chalmers University of Technology\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Questions about this software should be directed to biff@ce.chalmers.se\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"To determine the data hazards between loop iterations this program analyzes\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"trace data from a run of the program examined. The program also analyzes the\0A\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"potential speedup obtainable from running the loop iterations in parallel.\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"The program requires a number of settings to be done either on the\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"command line or in the settings file.\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"Available flags. Many of these can be set in the settings file.\0A\00", align 1
@.str.9 = private unnamed_addr constant [79 x i8] c"-c #      : CPU limit. Only effective with 'realistic restart'. 0==unlimited.\0A\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"-C #      : CPU limit for run through several configurations.\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"-d        : Check for DATA dependencies (RAW)\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"-e #      : Epoch length (number of loop iterations per epoch).\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"-E        : Use epoch length as total number of epochs\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"-f        : Do NOT use forwarding in speedup analysis\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"-g #      : Specify Thread start penalty\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"-G #      : Specify Commit penalty\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"-h        : Show complete help message\0A\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"-i #      : Print SpeedUp for 1 - Loop, 2 - Program, 3 - Both.\0A\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"-k #      : The test kernel to be used in the test.\0A\00", align 1
@.str.20 = private unnamed_addr constant [66 x i8] c"            1 - Optimum restart. 2 - Realistic restart. 3 - Both\0A\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"-l #      : Max length of hazard top-list. -- NOT IMPLEMENTED --\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"-m        : Analyze instruction mix\0A\00", align 1
@.str.23 = private unnamed_addr constant [75 x i8] c"-n        : Check for NAME dependencies (WAR & WAW) -- NOT IMPLEMENTED --\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"-o <FILE> : Output graphing data to FILE\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"-p #      : Specify load penalty\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"-P #      : Specify store penalty\0A\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"-q        : Quiet mode (do not print processing status)\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"-s        : Do speedup analysis\0A\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"-S        : Do speedup analysis, start early\0A\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"-t #      : Specify the size of the def_hash_table.\0A\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"-x <FILE> : Use other settings file. DEFAULT: analyzer.conf\0A\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"-X        : Do not read settings from a file\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @show_help(i8* %prog_name) #0 {
entry:
  %prog_name.addr = alloca i8*, align 8
  store i8* %prog_name, i8** %prog_name.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.9, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.20, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.21, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i32 0, i32 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.31, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i32 0, i32 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
