; ModuleID = './MultiSource.Benchmarks.Prolangs-C/152.assembler.buffer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BUFFER_TYPE = type { %struct.BUFFER*, %struct.BUFFER*, i32 }
%struct.BUFFER = type { i8*, %struct.BUFFER* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@MOD_REC_BUF = global %struct.BUFFER_TYPE zeroinitializer, align 8
@ERROR_REC_BUF = global %struct.BUFFER_TYPE { %struct.BUFFER* null, %struct.BUFFER* null, i32 1 }, align 8
@.str = private unnamed_addr constant [7 x i8] c"eERROR\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @OUTPUT_BUFFER(%struct.BUFFER_TYPE* %BUF, %struct._IO_FILE* %OUTPUT, i32 %PASS) #0 {
entry:
  %BUF.addr = alloca %struct.BUFFER_TYPE*, align 8
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  %PASS.addr = alloca i32, align 4
  %NEXT = alloca %struct.BUFFER*, align 8
  store %struct.BUFFER_TYPE* %BUF, %struct.BUFFER_TYPE** %BUF.addr, align 8
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  store i32 %PASS, i32* %PASS.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %HEAD_OF_BUFFER = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i32 0, i32 0
  %1 = load %struct.BUFFER*, %struct.BUFFER** %HEAD_OF_BUFFER, align 8
  %cmp = icmp ne %struct.BUFFER* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %HEAD_OF_BUFFER1 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %2, i32 0, i32 0
  %3 = load %struct.BUFFER*, %struct.BUFFER** %HEAD_OF_BUFFER1, align 8
  %NEXT2 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %3, i32 0, i32 1
  %4 = load %struct.BUFFER*, %struct.BUFFER** %NEXT2, align 8
  store %struct.BUFFER* %4, %struct.BUFFER** %NEXT, align 8
  %5 = load i32, i32* %PASS.addr, align 4
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %HEAD_OF_BUFFER4 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %6, i32 0, i32 0
  %7 = load %struct.BUFFER*, %struct.BUFFER** %HEAD_OF_BUFFER4, align 8
  %LINE = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %7, i32 0, i32 0
  %8 = load i8*, i8** %LINE, align 8
  %call = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %8, i64 6) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %10 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %HEAD_OF_BUFFER5 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %10, i32 0, i32 0
  %11 = load %struct.BUFFER*, %struct.BUFFER** %HEAD_OF_BUFFER5, align 8
  %LINE6 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %11, i32 0, i32 0
  %12 = load i8*, i8** %LINE6, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %arrayidx)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %14 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %HEAD_OF_BUFFER8 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %14, i32 0, i32 0
  %15 = load %struct.BUFFER*, %struct.BUFFER** %HEAD_OF_BUFFER8, align 8
  %LINE9 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %15, i32 0, i32 0
  %16 = load i8*, i8** %LINE9, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %HEAD_OF_BUFFER11 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %17, i32 0, i32 0
  %18 = load %struct.BUFFER*, %struct.BUFFER** %HEAD_OF_BUFFER11, align 8
  %LINE12 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %18, i32 0, i32 0
  %19 = load i8*, i8** %LINE12, align 8
  call void @free(i8* %19) #5
  %20 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %HEAD_OF_BUFFER13 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %20, i32 0, i32 0
  %21 = load %struct.BUFFER*, %struct.BUFFER** %HEAD_OF_BUFFER13, align 8
  %22 = bitcast %struct.BUFFER* %21 to i8*
  call void @free(i8* %22) #5
  %23 = load %struct.BUFFER*, %struct.BUFFER** %NEXT, align 8
  %24 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %HEAD_OF_BUFFER14 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %24, i32 0, i32 0
  store %struct.BUFFER* %23, %struct.BUFFER** %HEAD_OF_BUFFER14, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %TAIL_OF_BUFFER = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %25, i32 0, i32 1
  store %struct.BUFFER* null, %struct.BUFFER** %TAIL_OF_BUFFER, align 8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @ADD_TO_END_OF_BUFFER(%struct.BUFFER_TYPE* %BUF, i8* %INPUT_STR) #0 {
entry:
  %BUF.addr = alloca %struct.BUFFER_TYPE*, align 8
  %INPUT_STR.addr = alloca i8*, align 8
  %TEMP_LINE = alloca i8*, align 8
  store %struct.BUFFER_TYPE* %BUF, %struct.BUFFER_TYPE** %BUF.addr, align 8
  store i8* %INPUT_STR, i8** %INPUT_STR.addr, align 8
  %0 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %HEAD_OF_BUFFER = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i32 0, i32 0
  %1 = load %struct.BUFFER*, %struct.BUFFER** %HEAD_OF_BUFFER, align 8
  %cmp = icmp eq %struct.BUFFER* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 16) #5
  %2 = bitcast i8* %call to %struct.BUFFER*
  %3 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %HEAD_OF_BUFFER1 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %3, i32 0, i32 0
  store %struct.BUFFER* %2, %struct.BUFFER** %HEAD_OF_BUFFER1, align 8
  %4 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %HEAD_OF_BUFFER2 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %4, i32 0, i32 0
  %5 = load %struct.BUFFER*, %struct.BUFFER** %HEAD_OF_BUFFER2, align 8
  %6 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %TAIL_OF_BUFFER = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %6, i32 0, i32 1
  store %struct.BUFFER* %5, %struct.BUFFER** %TAIL_OF_BUFFER, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call noalias i8* @malloc(i64 16) #5
  %7 = bitcast i8* %call3 to %struct.BUFFER*
  %8 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %TAIL_OF_BUFFER4 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %8, i32 0, i32 1
  %9 = load %struct.BUFFER*, %struct.BUFFER** %TAIL_OF_BUFFER4, align 8
  %NEXT = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %9, i32 0, i32 1
  store %struct.BUFFER* %7, %struct.BUFFER** %NEXT, align 8
  %10 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %TAIL_OF_BUFFER5 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %10, i32 0, i32 1
  %11 = load %struct.BUFFER*, %struct.BUFFER** %TAIL_OF_BUFFER5, align 8
  %NEXT6 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %11, i32 0, i32 1
  %12 = load %struct.BUFFER*, %struct.BUFFER** %NEXT6, align 8
  %13 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %TAIL_OF_BUFFER7 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %13, i32 0, i32 1
  store %struct.BUFFER* %12, %struct.BUFFER** %TAIL_OF_BUFFER7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i8*, i8** %INPUT_STR.addr, align 8
  %call8 = call i64 @strlen(i8* %14) #4
  %add = add i64 %call8, 2
  %conv = trunc i64 %add to i32
  %conv9 = zext i32 %conv to i64
  %call10 = call noalias i8* @malloc(i64 %conv9) #5
  store i8* %call10, i8** %TEMP_LINE, align 8
  %15 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %TAIL_OF_BUFFER11 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %15, i32 0, i32 1
  %16 = load %struct.BUFFER*, %struct.BUFFER** %TAIL_OF_BUFFER11, align 8
  %LINE = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %16, i32 0, i32 0
  store i8* %call10, i8** %LINE, align 8
  %17 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %KIND = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %17, i32 0, i32 2
  %18 = load i32, i32* %KIND, align 4
  %cmp12 = icmp eq i32 %18, 0
  br i1 %cmp12, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.end
  %19 = load i8*, i8** %TEMP_LINE, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  store i8 77, i8* %arrayidx, align 1
  %20 = load i8*, i8** %TEMP_LINE, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8*, i8** %INPUT_STR.addr, align 8
  %call16 = call i8* @strcpy(i8* %arrayidx15, i8* %21) #5
  br label %if.end.19

if.else.17:                                       ; preds = %if.end
  %22 = load i8*, i8** %TEMP_LINE, align 8
  %23 = load i8*, i8** %INPUT_STR.addr, align 8
  %call18 = call i8* @strcpy(i8* %22, i8* %23) #5
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.14
  %24 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %BUF.addr, align 8
  %TAIL_OF_BUFFER20 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %24, i32 0, i32 1
  %25 = load %struct.BUFFER*, %struct.BUFFER** %TAIL_OF_BUFFER20, align 8
  %NEXT21 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %25, i32 0, i32 1
  store %struct.BUFFER* null, %struct.BUFFER** %NEXT21, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
