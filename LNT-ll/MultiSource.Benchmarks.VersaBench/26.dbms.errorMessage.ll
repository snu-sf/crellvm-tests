; ModuleID = './MultiSource.Benchmarks.VersaBench/26.dbms.errorMessage.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [46 x i8] c"Error Message Too Large for Buffer: flushing\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unconnected: %s\0A\00", align 1
@errorBuffer = internal global [1024 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [37 x i8] c"Error Message Buffer full: flushing\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unconnected: %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"unconnected\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @errorMessage(i8* %message, i8 signext %prepend) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %prepend.addr = alloca i8, align 1
  %tempBuffer = alloca [1024 x i8], align 16
  store i8* %message, i8** %message.addr, align 8
  store i8 %prepend, i8* %prepend.addr, align 1
  %0 = load i8, i8* %prepend.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %message.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %cmp2 = icmp ugt i64 %call, 1023
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %message.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load i8*, i8** %message.addr, align 8
  %call7 = call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i32 0, i32 0), i8* %5) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.25

if.else.8:                                        ; preds = %entry
  %call9 = call i64 @strlen(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i32 0, i32 0)) #4
  %6 = load i8*, i8** %message.addr, align 8
  %call10 = call i64 @strlen(i8* %6) #4
  %add = add i64 %call9, %call10
  %cmp11 = icmp ugt i64 %add, 1023
  br i1 %cmp11, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.else.8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %message.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* %9, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i32 0, i32 0))
  call void @errorMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8 signext 0)
  br label %if.end.24

if.else.16:                                       ; preds = %if.else.8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempBuffer, i32 0, i32 0
  %10 = load i8*, i8** %message.addr, align 8
  %call17 = call i8* @strcpy(i8* %arraydecay, i8* %10) #5
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempBuffer, i32 0, i32 0
  %call19 = call i8* @strcat(i8* %arraydecay18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #5
  %arraydecay20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempBuffer, i32 0, i32 0
  %call21 = call i8* @strcat(i8* %arraydecay20, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i32 0, i32 0)) #5
  %arraydecay22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempBuffer, i32 0, i32 0
  %call23 = call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i32 0, i32 0), i8* %arraydecay22) #5
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.16, %if.then.13
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @flushErrorMessage() #0 {
entry:
  %call = call i64 @strlen(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i32 0, i32 0)) #4
  %cmp = icmp ugt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
