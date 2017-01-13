; ModuleID = './MultiSource.Benchmarks.VersaBench/18.dbms.closeFiles.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@closeFiles.name = internal global [11 x i8] c"closeFiles\00", align 1
@.str = private unnamed_addr constant [25 x i8] c"error closing input file\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error closing output file\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error closing metric file\00", align 1

; Function Attrs: nounwind uwtable
define void @closeFiles(%struct._IO_FILE* %inputFile, %struct._IO_FILE* %outputFile, %struct._IO_FILE* %metricFile) #0 {
entry:
  %inputFile.addr = alloca %struct._IO_FILE*, align 8
  %outputFile.addr = alloca %struct._IO_FILE*, align 8
  %metricFile.addr = alloca %struct._IO_FILE*, align 8
  %error = alloca i64, align 8
  store %struct._IO_FILE* %inputFile, %struct._IO_FILE** %inputFile.addr, align 8
  store %struct._IO_FILE* %outputFile, %struct._IO_FILE** %outputFile.addr, align 8
  store %struct._IO_FILE* %metricFile, %struct._IO_FILE** %metricFile.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile.addr, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %error, align 8
  %1 = load i64, i64* %error, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @errorMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @closeFiles.name, i32 0, i32 0), i8 signext 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %outputFile.addr, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* %2)
  %conv3 = sext i32 %call2 to i64
  store i64 %conv3, i64* %error, align 8
  %3 = load i64, i64* %error, align 8
  %cmp4 = icmp ne i64 %3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @closeFiles.name, i32 0, i32 0), i8 signext 1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %metricFile.addr, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %4)
  %conv9 = sext i32 %call8 to i64
  store i64 %conv9, i64* %error, align 8
  %5 = load i64, i64* %error, align 8
  %cmp10 = icmp ne i64 %5, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @closeFiles.name, i32 0, i32 0), i8 signext 1)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.7
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @errorMessage(i8*, i8 signext) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
