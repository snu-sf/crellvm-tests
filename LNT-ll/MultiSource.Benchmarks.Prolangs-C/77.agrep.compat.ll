; ModuleID = './MultiSource.Benchmarks.Prolangs-C/77.agrep.compat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@BESTMATCH = external global i32, align 4
@COUNT = external global i32, align 4
@FILENAMEONLY = external global i32, align 4
@APPROX = external global i32, align 4
@PAT_FILE = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [63 x i8] c"%s: WARNING!!! -B option ignored when -c, -l, -f, or -# is on\0A\00", align 1
@Progname = external global [32 x i8], align 16
@.str.1 = private unnamed_addr constant [66 x i8] c"WARNING!!!  approximate matching is not supported with -f option\0A\00", align 1
@LINENUM = external global i32, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: -f and -n are not compatible\0A\00", align 1
@DELIMITER = external global i32, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: -f and -d are not compatible\0A\00", align 1
@JUMP = external global i32, align 4
@REGEX = external global i32, align 4
@.str.4 = private unnamed_addr constant [78 x i8] c"WARNING!!! -D#, -I#, or -S# option is ignored for regular expression pattern\0A\00", align 1
@I = external global i32, align 4
@S = external global i32, align 4
@DD = external global i32, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: the error cost cannot be 0\0A\00", align 1
@WHOLELINE = external global i32, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"%s: -d and -x is not compatible\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @compat() #0 {
entry:
  %0 = load i32, i32* @BESTMATCH, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @COUNT, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* @FILENAMEONLY, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then.7, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* @APPROX, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %if.then.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %4 = load i32, i32* @PAT_FILE, align 4
  %tobool6 = icmp ne i32 %4, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %if.then
  store i32 0, i32* @BESTMATCH, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %lor.lhs.false.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %6 = load i32, i32* @PAT_FILE, align 4
  %tobool9 = icmp ne i32 %6, 0
  br i1 %tobool9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %if.end.8
  %7 = load i32, i32* @APPROX, align 4
  %tobool11 = icmp ne i32 %7, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.10
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.10
  %9 = load i32, i32* @LINENUM, align 4
  %tobool15 = icmp ne i32 %9, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #3
  unreachable

if.end.18:                                        ; preds = %if.end.14
  %11 = load i32, i32* @DELIMITER, align 4
  %tobool19 = icmp ne i32 %11, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #3
  unreachable

if.end.22:                                        ; preds = %if.end.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.8
  %13 = load i32, i32* @JUMP, align 4
  %tobool24 = icmp ne i32 %13, 0
  br i1 %tobool24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %if.end.23
  %14 = load i32, i32* @REGEX, align 4
  %tobool26 = icmp ne i32 %14, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.25
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* @JUMP, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.25
  %16 = load i32, i32* @I, align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.end.29
  %17 = load i32, i32* @S, align 4
  %cmp31 = icmp eq i32 %17, 0
  br i1 %cmp31, label %if.then.34, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.30
  %18 = load i32, i32* @DD, align 4
  %cmp33 = icmp eq i32 %18, 0
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false.30, %if.end.29
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #3
  unreachable

if.end.36:                                        ; preds = %lor.lhs.false.32
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.23
  %20 = load i32, i32* @DELIMITER, align 4
  %tobool38 = icmp ne i32 %20, 0
  br i1 %tobool38, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %if.end.37
  %21 = load i32, i32* @WHOLELINE, align 4
  %tobool40 = icmp ne i32 %21, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.then.39
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #3
  unreachable

if.end.43:                                        ; preds = %if.then.39
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.37
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
