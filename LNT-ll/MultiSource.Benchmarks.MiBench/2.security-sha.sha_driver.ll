; ModuleID = './MultiSource.Benchmarks.MiBench/2.security-sha.sha_driver.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SHA_INFO = type { [5 x i32], i32, i32, [16 x i32] }

@stdin = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %fin = alloca %struct._IO_FILE*, align 8
  %sha_info = alloca %struct.SHA_INFO, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %fin, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  call void @sha_stream(%struct.SHA_INFO* %sha_info, %struct._IO_FILE* %2)
  call void @sha_print(%struct.SHA_INFO* %sha_info)
  br label %if.end.6

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %3 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %argc.addr, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %4, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %5 = load i8*, i8** %incdec.ptr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fin, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %6, null
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %while.body
  %7 = load i8**, i8*** %argv.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %8)
  br label %if.end

if.else.4:                                        ; preds = %while.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  call void @sha_stream(%struct.SHA_INFO* %sha_info, %struct._IO_FILE* %9)
  call void @sha_print(%struct.SHA_INFO* %sha_info)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %10)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.6

if.end.6:                                         ; preds = %while.end, %if.then
  ret i32 0
}

declare void @sha_stream(%struct.SHA_INFO*, %struct._IO_FILE*) #1

declare void @sha_print(%struct.SHA_INFO*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
