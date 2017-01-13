; ModuleID = './MultiSource.Benchmarks.Prolangs-C/22.plot2fig.linemod.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@line_style = global i32 0, align 4
@dash_length = global float 1.000000e+01, align 4
@.str = private unnamed_addr constant [11 x i8] c"longdashed\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"long-dashed\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"dotdashed\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"dot-dashed\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dotted\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"solid\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"shortdashed\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"short-dashed\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [51 x i8] c"Unrecognized line mode `%s' ignored. Using solid.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @linemod(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #3
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)) #3
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* @line_style, align 4
  store float 2.000000e+01, float* @dash_length, align 4
  br label %if.end.34

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i8*, i8** %s.addr, align 8
  %call3 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #3
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 2, i32* @line_style, align 4
  store float 9.990000e+02, float* @dash_length, align 4
  br label %if.end.33

if.else.6:                                        ; preds = %if.else
  %3 = load i8*, i8** %s.addr, align 8
  %call7 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #3
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.else.6
  %4 = load i8*, i8** %s.addr, align 8
  %call10 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #3
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.else.6
  store i32 1, i32* @line_style, align 4
  store float 4.000000e+00, float* @dash_length, align 4
  br label %if.end.32

if.else.13:                                       ; preds = %lor.lhs.false.9
  %5 = load i8*, i8** %s.addr, align 8
  %call14 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #3
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else.13
  store i32 2, i32* @line_style, align 4
  store float 2.000000e+00, float* @dash_length, align 4
  br label %if.end.31

if.else.17:                                       ; preds = %if.else.13
  %6 = load i8*, i8** %s.addr, align 8
  %call18 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #3
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.17
  store i32 0, i32* @line_style, align 4
  store float 1.000000e+00, float* @dash_length, align 4
  br label %if.end.30

if.else.21:                                       ; preds = %if.else.17
  %7 = load i8*, i8** %s.addr, align 8
  %call22 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)) #3
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.else.21
  %8 = load i8*, i8** %s.addr, align 8
  %call25 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #3
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %lor.lhs.false.24, %if.else.21
  store i32 1, i32* @line_style, align 4
  store float 1.000000e+01, float* @dash_length, align 4
  br label %if.end

if.else.28:                                       ; preds = %lor.lhs.false.24
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8*, i8** %s.addr, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0), i8* %10)
  store i32 0, i32* @line_style, align 4
  store float 1.000000e+00, float* @dash_length, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.28, %if.then.27
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.20
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.16
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.12
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.5
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
