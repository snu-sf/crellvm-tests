; ModuleID = './MultiSource.Benchmarks.Prolangs-C/142.assembler.record.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@LOCATION = global i32 0, align 4
@IS_INITIALIZED = global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"INITIALIZE_RECORD called illegally.\0A\00", align 1
@INIT_RECORD = common global [81 x i8] zeroinitializer, align 16
@RECORD = common global [81 x i8] zeroinitializer, align 16
@MAX_SIZE = common global i32 0, align 4
@NEXT_COL = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"PRT_RECORD called illegally.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ADD_TO_RECORD called illegally.\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"PRT_TEXT_RECORD called illegally.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"ADD_TO_TEXT_RECORD called illegally.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @INITIALIZE_RECORD(i8* %VAL, i32 %SIZE) #0 {
entry:
  %VAL.addr = alloca i8*, align 8
  %SIZE.addr = alloca i32, align 4
  store i8* %VAL, i8** %VAL.addr, align 8
  store i32 %SIZE, i32* %SIZE.addr, align 4
  %0 = load i32, i32* %SIZE.addr, align 4
  %cmp = icmp sgt i32 %0, 80
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %VAL.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %2 = load i32, i32* %SIZE.addr, align 4
  %conv = sext i32 %2 to i64
  %cmp1 = icmp ugt i64 %call, %conv
  br i1 %cmp1, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* @IS_INITIALIZED, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.3
  %4 = load i8*, i8** %VAL.addr, align 8
  %call5 = call i8* @strcpy(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @INIT_RECORD, i32 0, i32 0), i8* %4) #5
  %5 = load i8*, i8** %VAL.addr, align 8
  %call6 = call i8* @strcpy(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i32 0, i32 0), i8* %5) #5
  %6 = load i32, i32* %SIZE.addr, align 4
  store i32 %6, i32* @MAX_SIZE, align 4
  %call7 = call i64 @strlen(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i32 0, i32 0)) #4
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* @NEXT_COL, align 4
  store i32 1, i32* @IS_INITIALIZED, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @PRT_RECORD(%struct._IO_FILE* %OUTPUT) #0 {
entry:
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  %0 = load i32, i32* @IS_INITIALIZED, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.5

if.else:                                          ; preds = %entry
  %call1 = call i32 @strcmp(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @INIT_RECORD, i32 0, i32 0)) #4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  store i32 0, i32* @IS_INITIALIZED, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @ADD_TO_RECORD(i8* %VAL, %struct._IO_FILE* %OUTPUT) #0 {
entry:
  %VAL.addr = alloca i8*, align 8
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  %LENGTH = alloca i32, align 4
  %ERROR = alloca i32, align 4
  store i8* %VAL, i8** %VAL.addr, align 8
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  store i32 0, i32* %ERROR, align 4
  %0 = load i32, i32* @IS_INITIALIZED, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %ERROR, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @NEXT_COL, align 4
  %2 = load i8*, i8** %VAL.addr, align 8
  %call = call i64 @strlen(i8* %2) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %LENGTH, align 4
  %add = add nsw i32 %1, %conv
  %3 = load i32, i32* @MAX_SIZE, align 4
  %cmp = icmp sgt i32 %add, %3
  br i1 %cmp, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.else
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  call void @PRT_RECORD(%struct._IO_FILE* %4)
  %5 = load i32, i32* @MAX_SIZE, align 4
  call void @INITIALIZE_RECORD(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @INIT_RECORD, i32 0, i32 0), i32 %5)
  %6 = load i32, i32* @NEXT_COL, align 4
  %7 = load i32, i32* %LENGTH, align 4
  %add3 = add nsw i32 %6, %7
  %8 = load i32, i32* @MAX_SIZE, align 4
  %cmp4 = icmp sgt i32 %add3, %8
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.2
  store i32 1, i32* %ERROR, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then
  %9 = load i32, i32* %ERROR, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.else.13, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %10 = load i32, i32* @NEXT_COL, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [81 x i8], [81 x i8]* @RECORD, i32 0, i64 %idxprom
  %11 = load i8*, i8** %VAL.addr, align 8
  %call11 = call i8* @strcpy(i8* %arrayidx, i8* %11) #5
  %12 = load i32, i32* %LENGTH, align 4
  %13 = load i32, i32* @NEXT_COL, align 4
  %add12 = add nsw i32 %13, %12
  store i32 %add12, i32* @NEXT_COL, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %if.end.8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.10
  ret void
}

; Function Attrs: nounwind uwtable
define void @INITIALIZE_TEXT_RECORD() #0 {
entry:
  call void @INITIALIZE_RECORD(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PRT_TEXT_RECORD(%struct._IO_FILE* %OUTPUT) #0 {
entry:
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  %0 = load i32, i32* @IS_INITIALIZED, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.6

if.else:                                          ; preds = %entry
  %call1 = call i32 @strcmp(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @INIT_RECORD, i32 0, i32 0)) #4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %2 = load i32, i32* @LOCATION, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 %2, i32 16, i32 6, %struct._IO_FILE* %3)
  %4 = load i32, i32* @NEXT_COL, align 4
  %div = sdiv i32 %4, 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 %div, i32 16, i32 2, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  store i32 0, i32* @IS_INITIALIZED, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  ret void
}

declare void @PRT_NUM(...) #2

; Function Attrs: nounwind uwtable
define void @ADD_TO_TEXT_RECORD(i8* %VAL, i32 %PUT_AT, %struct._IO_FILE* %OUTPUT) #0 {
entry:
  %VAL.addr = alloca i8*, align 8
  %PUT_AT.addr = alloca i32, align 4
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  %ERROR = alloca i32, align 4
  %LEN = alloca i32, align 4
  store i8* %VAL, i8** %VAL.addr, align 8
  store i32 %PUT_AT, i32* %PUT_AT.addr, align 4
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  store i32 0, i32* %ERROR, align 4
  %0 = load i8*, i8** %VAL.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %LEN, align 4
  %1 = load i32, i32* @IS_INITIALIZED, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %LEN, align 4
  %3 = load i32, i32* @MAX_SIZE, align 4
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %ERROR, align 4
  br label %if.end.18

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %ERROR, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %5 = load i32, i32* @LOCATION, align 4
  %6 = load i32, i32* @NEXT_COL, align 4
  %div = sdiv i32 %6, 2
  %add = add nsw i32 %5, %div
  %7 = load i32, i32* %PUT_AT.addr, align 4
  %cmp3 = icmp ne i32 %add, %7
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  call void @PRT_TEXT_RECORD(%struct._IO_FILE* %8)
  %9 = load i32, i32* %PUT_AT.addr, align 4
  store i32 %9, i32* @LOCATION, align 4
  call void @INITIALIZE_TEXT_RECORD()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.else
  %10 = load i32, i32* %ERROR, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.end.17, label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %if.end
  %11 = load i32, i32* @NEXT_COL, align 4
  %12 = load i32, i32* %LEN, align 4
  %add8 = add nsw i32 %11, %12
  %13 = load i32, i32* @MAX_SIZE, align 4
  %cmp9 = icmp sgt i32 %add8, %13
  br i1 %cmp9, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %land.lhs.true.7
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  call void @PRT_TEXT_RECORD(%struct._IO_FILE* %14)
  %call12 = call i64 @strlen(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i32 0, i32 0)) #4
  %div13 = udiv i64 %call12, 2
  %15 = load i32, i32* @LOCATION, align 4
  %conv14 = sext i32 %15 to i64
  %add15 = add i64 %conv14, %div13
  %conv16 = trunc i64 %add15 to i32
  store i32 %conv16, i32* @LOCATION, align 4
  call void @INITIALIZE_TEXT_RECORD()
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %land.lhs.true.7, %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %16 = load i32, i32* %ERROR, align 4
  %tobool19 = icmp ne i32 %16, 0
  br i1 %tobool19, label %if.else.23, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  %17 = load i32, i32* @NEXT_COL, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [81 x i8], [81 x i8]* @RECORD, i32 0, i64 %idxprom
  %18 = load i8*, i8** %VAL.addr, align 8
  %call21 = call i8* @strcpy(i8* %arrayidx, i8* %18) #5
  %19 = load i32, i32* %LEN, align 4
  %20 = load i32, i32* @NEXT_COL, align 4
  %add22 = add nsw i32 %20, %19
  store i32 %add22, i32* @NEXT_COL, align 4
  br label %if.end.25

if.else.23:                                       ; preds = %if.end.18
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.20
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
