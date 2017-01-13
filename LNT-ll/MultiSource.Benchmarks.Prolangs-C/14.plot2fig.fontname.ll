; ModuleID = './MultiSource.Benchmarks.Prolangs-C/14.plot2fig.fontname.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@font_id = global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c"error in matching fontname: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Fontname `%s' ignored.\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"typewriter\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"courier\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"modern\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"italic\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"oblique\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"times\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"roman\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Unrecognized font name `%s' ignored.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @match(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len2 = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s2.addr, align 8
  %call = call i64 @strlen(i8* %0) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %len2, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %s1.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %s2.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %call2 = call i32 @strcmp(i8* %3, i8* %arrayidx) #3
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @fontname(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %res = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, ...) bitcast (i32 (...)* @re_comp to i32 (i8*, ...)*)(i8* %0)
  %conv = sext i32 %call to i64
  %1 = inttoptr i64 %conv to i8*
  store i8* %1, i8** %res, align 8
  %2 = load i8*, i8** %res, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %res, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %s.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* %6)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  store i32 5, i32* @font_id, align 4
  br label %if.end.35

if.else:                                          ; preds = %lor.lhs.false
  %call8 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i32 4, i32* @font_id, align 4
  br label %if.end.34

if.else.11:                                       ; preds = %if.else
  %call12 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.else.11
  %call15 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %lor.lhs.false.14, %if.else.11
  store i32 3, i32* @font_id, align 4
  br label %if.end.33

if.else.18:                                       ; preds = %lor.lhs.false.14
  %call19 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else.18
  store i32 2, i32* @font_id, align 4
  br label %if.end.32

if.else.22:                                       ; preds = %if.else.18
  %call23 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.28, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.else.22
  %call26 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %lor.lhs.false.25, %if.else.22
  store i32 2, i32* @font_id, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %lor.lhs.false.25
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** %s.addr, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i8* %8)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.21
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.17
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.10
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @re_comp(...) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @re_exec(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
