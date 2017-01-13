; ModuleID = './MultiSource.Benchmarks.Prolangs-C/101.simulator.print.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s            \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"          %s  \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Undefined \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s    \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"CONTROL   SYMBOL\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"SECTION   NAME     ADDRESS   LENGTH\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"-----------------------------------\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"M%s\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"G%s\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"L%s%s\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@START_ADDRESS = common global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"S%s%s\0A\00", align 1
@MAIN_ROUTINE = common global [9 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @PRINT_TABLE(%struct.SYMBOL_TABLE_ENTRY* %SYM_TAB, %struct._IO_FILE* %OUTPUT) #0 {
entry:
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  %TEMP = alloca [6 x i8], align 1
  store %struct.SYMBOL_TABLE_ENTRY* %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  %0 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %cmp = icmp ne %struct.SYMBOL_TABLE_ENTRY* %0, null
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %1 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %NEXT = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %1, i32 0, i32 5
  %2 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  call void @PRINT_TABLE(%struct.SYMBOL_TABLE_ENTRY* %2, %struct._IO_FILE* %3)
  %4 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %TYPE = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %4, i32 0, i32 4
  %5 = load i32, i32* %TYPE, align 4
  %cmp1 = icmp eq i32 %5, 3
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %7 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %LABEL = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %7, i32 0, i32 0
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %9 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %LABEL3 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %9, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL3, i32 0, i32 0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %10 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %LOCATION = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %10, i32 0, i32 2
  %11 = load i32, i32* %LOCATION, align 4
  %arraydecay6 = getelementptr inbounds [6 x i8], [6 x i8]* %TEMP, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %11, i32 16, i32 5, i8* %arraydecay6)
  %12 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %TYPE7 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %12, i32 0, i32 4
  %13 = load i32, i32* %TYPE7, align 4
  %cmp8 = icmp eq i32 %13, 5
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.14

if.else.11:                                       ; preds = %if.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %arraydecay12 = getelementptr inbounds [6 x i8], [6 x i8]* %TEMP, i32 0, i32 0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.11, %if.then.9
  %16 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %TYPE15 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %16, i32 0, i32 4
  %17 = load i32, i32* %TYPE15, align 4
  %cmp16 = icmp eq i32 %17, 3
  br i1 %cmp16, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %if.end.14
  %18 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %LENGTH = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %18, i32 0, i32 3
  %19 = load i32, i32* %LENGTH, align 4
  %arraydecay18 = getelementptr inbounds [6 x i8], [6 x i8]* %TEMP, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %19, i32 16, i32 6, i8* %arraydecay18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %arraydecay19 = getelementptr inbounds [6 x i8], [6 x i8]* %TEMP, i32 0, i32 0
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay19)
  br label %if.end.23

if.else.21:                                       ; preds = %if.end.14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %entry
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @NUM_TO_STR(...) #1

; Function Attrs: nounwind uwtable
define void @PRT_SYM_TAB(%struct.SYMBOL_TABLE_ENTRY* %SYM_TAB, %struct._IO_FILE* %OUTPUT) #0 {
entry:
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0))
  %3 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  call void @PRINT_TABLE(%struct.SYMBOL_TABLE_ENTRY* %3, %struct._IO_FILE* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @OUTPUT_TABLE(%struct.SYMBOL_TABLE_ENTRY* %SYM_TAB, %struct._IO_FILE* %OUTPUT) #0 {
entry:
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  %TEMP = alloca [7 x i8], align 1
  store %struct.SYMBOL_TABLE_ENTRY* %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  %0 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %cmp = icmp ne %struct.SYMBOL_TABLE_ENTRY* %0, null
  br i1 %cmp, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %1 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %NEXT = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %1, i32 0, i32 5
  %2 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  call void @OUTPUT_TABLE(%struct.SYMBOL_TABLE_ENTRY* %2, %struct._IO_FILE* %3)
  %4 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %TYPE = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %4, i32 0, i32 4
  %5 = load i32, i32* %TYPE, align 4
  %cmp1 = icmp eq i32 %5, 3
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %7 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %LABEL = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %7, i32 0, i32 0
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay)
  br label %if.end.15

if.else:                                          ; preds = %if.then
  %8 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %MODULE = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %8, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE, i32 0, i32 0
  %call4 = call i32 @strcmp(i8* %arraydecay3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)) #3
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.else.9, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %10 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %LABEL6 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %10, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL6, i32 0, i32 0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* %arraydecay7)
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %12 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %MODULE10 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %12, i32 0, i32 1
  %arraydecay11 = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE10, i32 0, i32 0
  %13 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %LABEL12 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %13, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL12, i32 0, i32 0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay11, i8* %arraydecay13)
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.5
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.2
  %14 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %LOCATION = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %14, i32 0, i32 2
  %15 = load i32, i32* %LOCATION, align 4
  %arraydecay16 = getelementptr inbounds [7 x i8], [7 x i8]* %TEMP, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %15, i32 16, i32 6, i8* %arraydecay16)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %arraydecay17 = getelementptr inbounds [7 x i8], [7 x i8]* %TEMP, i32 0, i32 0
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay17)
  %17 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %TYPE19 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %17, i32 0, i32 4
  %18 = load i32, i32* %TYPE19, align 4
  %cmp20 = icmp eq i32 %18, 3
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.15
  %19 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %LENGTH = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %19, i32 0, i32 3
  %20 = load i32, i32* %LENGTH, align 4
  %arraydecay22 = getelementptr inbounds [7 x i8], [7 x i8]* %TEMP, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %20, i32 16, i32 6, i8* %arraydecay22)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %arraydecay23 = getelementptr inbounds [7 x i8], [7 x i8]* %TEMP, i32 0, i32 0
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.15
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.25, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @PRINT_EXEC(i8* %MEMORY, %struct.SYMBOL_TABLE_ENTRY* %SYM_TAB, %struct._IO_FILE* %OUTPUT) #0 {
entry:
  %MEMORY.addr = alloca i8*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  %ADDRESS = alloca [6 x i8], align 1
  store i8* %MEMORY, i8** %MEMORY.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  %0 = load i32, i32* @START_ADDRESS, align 4
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %ADDRESS, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %0, i32 16, i32 5, i8* %arraydecay)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %arraydecay1 = getelementptr inbounds [6 x i8], [6 x i8]* %ADDRESS, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i32 0, i32 0), i8* %arraydecay1)
  %2 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  call void @OUTPUT_TABLE(%struct.SYMBOL_TABLE_ENTRY* %2, %struct._IO_FILE* %3)
  %4 = load i8*, i8** %MEMORY.addr, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  call void (i8*, %struct._IO_FILE*, ...) bitcast (void (...)* @OUTPUT_MEM to void (i8*, %struct._IO_FILE*, ...)*)(i8* %4, %struct._IO_FILE* %5)
  ret void
}

declare void @OUTPUT_MEM(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
