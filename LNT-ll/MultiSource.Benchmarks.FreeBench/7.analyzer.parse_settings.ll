; ModuleID = './MultiSource.Benchmarks.FreeBench/7.analyzer.parse_settings.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"LOAD_PENALTY\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"STORE_PENALTY\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SPEED\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"EARLY_SPEED\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"NO_FORWARDING\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"INST_MIX\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"QUIET\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"EPOCH_LENGTH\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"KERNEL\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"CPULIMIT\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CONFIGS\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"SHOW_SPEEDUP\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"THREAD_PEN\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"COMMIT_PEN\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"EPOCH_LENGTH_AS_NUM_EPOCHS\00", align 1
@pattern = global [17 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0)], align 16
@settings = common global [17 x i32] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [24 x i8] c"Could not find file %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: nounwind uwtable
define i32 @parse_settings(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %line = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 0, i32* %i, align 4
  %call = call noalias i8* @malloc(i64 100) #5
  store i8* %call, i8** %line, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* @settings, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %filename.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* %5)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then.9, %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i32 @feof(%struct._IO_FILE* %6) #5
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end.28

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  %7 = load i8*, i8** %line, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i8* @fgets(i8* %7, i32 100, %struct._IO_FILE* %8)
  %9 = load i8*, i8** %line, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv, 35
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  br label %while.cond

if.end.10:                                        ; preds = %while.body
  %11 = load i8*, i8** %line, align 8
  %call11 = call i8* @strtok(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #5
  br label %while.cond.12

while.cond.12:                                    ; preds = %if.end.26, %if.end.10
  %12 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %12, 17
  br i1 %cmp13, label %while.body.15, label %while.end

while.body.15:                                    ; preds = %while.cond.12
  %13 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [17 x i8*], [17 x i8*]* @pattern, i32 0, i64 %idxprom16
  %14 = load i8*, i8** %arrayidx17, align 8
  %15 = load i8*, i8** %line, align 8
  %call18 = call i32 @strcmp(i8* %14, i8* %15) #7
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.26, label %if.then.20

if.then.20:                                       ; preds = %while.body.15
  %16 = load i8*, i8** %line, align 8
  %call21 = call i64 @strlen(i8* %16) #7
  %add = add i64 %call21, 1
  %17 = load i8*, i8** %line, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %17, i64 %add
  %call23 = call i32 @atoi(i8* %arrayidx22) #7
  %18 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [17 x i32], [17 x i32]* @settings, i32 0, i64 %idxprom24
  store i32 %call23, i32* %arrayidx25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.20, %while.body.15
  %19 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %19, 1
  store i32 %inc27, i32* %i, align 4
  br label %while.cond.12

while.end:                                        ; preds = %while.cond.12
  br label %while.cond

while.end.28:                                     ; preds = %while.cond
  %20 = load i8*, i8** %line, align 8
  call void @free(i8* %20) #5
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
