; ModuleID = './MultiSource.Benchmarks.VersaBench/7.dbms.getNonKeyAttribute.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@getNonKeyAttribute.name = internal global [19 x i8] c"getNonKeyAttribute\00", align 16
@.str = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1

; Function Attrs: nounwind uwtable
define i64 @getNonKeyAttribute(%struct._IO_FILE* %file, i8** %value) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %value.addr = alloca i8**, align 8
  %temp = alloca i8*, align 8
  %returnCode = alloca i64, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i8* @getString(%struct._IO_FILE* %0)
  store i8* %call, i8** %temp, align 8
  %1 = load i8*, i8** %temp, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @getNonKeyAttribute.name, i32 0, i32 0), i8 signext 1)
  %2 = load i8**, i8*** %value.addr, align 8
  store i8* null, i8** %2, align 8
  store i64 2, i64* %returnCode, align 8
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %temp, align 8
  %call1 = call i64 @strlen(i8* %3) #4
  %add = add i64 %call1, 1
  %call2 = call noalias i8* @malloc(i64 %add) #5
  %4 = load i8**, i8*** %value.addr, align 8
  store i8* %call2, i8** %4, align 8
  %5 = load i8**, i8*** %value.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %cmp3 = icmp eq i8* %6, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @getNonKeyAttribute.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %returnCode, align 8
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %7 = load i8**, i8*** %value.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8*, i8** %temp, align 8
  %call6 = call i8* @strcpy(i8* %8, i8* %9) #5
  store i64 0, i64* %returnCode, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %10 = load i64, i64* %returnCode, align 8
  ret i64 %10
}

declare i8* @getString(%struct._IO_FILE*) #1

declare void @errorMessage(i8*, i8 signext) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
