; ModuleID = './MultiSource.Applications.SIBsim4/4.misc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external global %struct._IO_FILE*, align 8
@argv0 = external global i8*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\0A while processing:\0A%.256s\0A%.256s\0A\00", align 1
@dna_seq_head = external global [256 x i8], align 16
@rna_seq_head = external global [256 x i8], align 16
@.str.2 = private unnamed_addr constant [31 x i8] c"malloc of %zd failed: %s (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"calloc of %zd, %zd failed: %s (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"realloc of %p to %zd failed: %s (%d)\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define void @fatal(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %p = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load i8*, i8** @argv0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @argv0, align 8
  %call2 = call i8* @strrchr(i8* %2, i32 47) #8
  store i8* %call2, i8** %p, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %p, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load i8*, i8** @argv0, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %6, %cond.false ]
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** %fmt.addr, align 8
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call6 = call i32 @vfprintf(%struct._IO_FILE* %7, i8* %8, %struct.__va_list_tag* %arraydecay5)
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay78 = bitcast %struct.__va_list_tag* %arraydecay7 to i8*
  call void @llvm.va_end(i8* %arraydecay78)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dna_seq_head, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rna_seq_head, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define i8* @xmalloc(i64 %size) #5 {
entry:
  %size.addr = alloca i64, align 8
  %res = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #1
  store i8* %call, i8** %res, align 8
  %1 = load i8*, i8** %res, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8
  %call1 = call i32* @__errno_location() #10
  %3 = load i32, i32* %call1, align 4
  %call2 = call i8* @strerror(i32 %3) #1
  %call3 = call i32* @__errno_location() #10
  %4 = load i32, i32* %call3, align 4
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i64 %2, i8* %call2, i32 %4) #11
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %res, align 8
  ret i8* %5
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #6

; Function Attrs: nounwind
declare i8* @strerror(i32) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind uwtable
define i8* @xcalloc(i64 %nmemb, i64 %size) #5 {
entry:
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %res = alloca i8*, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %nmemb.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @calloc(i64 %0, i64 %1) #1
  store i8* %call, i8** %res, align 8
  %2 = load i8*, i8** %res, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %nmemb.addr, align 8
  %4 = load i64, i64* %size.addr, align 8
  %call1 = call i32* @__errno_location() #10
  %5 = load i32, i32* %call1, align 4
  %call2 = call i8* @strerror(i32 %5) #1
  %call3 = call i32* @__errno_location() #10
  %6 = load i32, i32* %call3, align 4
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i64 %3, i64 %4, i8* %call2, i32 %6) #11
  unreachable

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %res, align 8
  ret i8* %7
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #6

; Function Attrs: nounwind uwtable
define i8* @xrealloc(i8* %ptr, i64 %size) #5 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %res = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @realloc(i8* %0, i64 %1) #1
  store i8* %call, i8** %res, align 8
  %2 = load i8*, i8** %res, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %ptr.addr, align 8
  %4 = load i64, i64* %size.addr, align 8
  %call1 = call i32* @__errno_location() #10
  %5 = load i32, i32* %call1, align 4
  %call2 = call i8* @strerror(i32 %5) #1
  %call3 = call i32* @__errno_location() #10
  %6 = load i32, i32* %call3, align 4
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* %3, i64 %4, i8* %call2, i32 %6) #11
  unreachable

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %res, align 8
  ret i8* %7
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #6

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
