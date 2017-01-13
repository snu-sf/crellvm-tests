; ModuleID = './MultiSource.Benchmarks.Prolangs-C/109.unix-tbl.tf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@tabout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c".de %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c".ps \5Cn(.s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c".vs \5Cn(.vu\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c".in \5Cn(.iu\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c".if \5Cn(.u .fi\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c".if \5Cn(.j .ad\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c".if \5Cn(.j=0 .na\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"..\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".nf\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c".nr #~ 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c".if n .nr #~ 0.6n\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".%d\0A\00", align 1
@linestop = external global [0 x i32], align 4
@.str.12 = private unnamed_addr constant [11 x i8] c".nr #%c 0\0A\00", align 1
@texct = external global i32, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c".rm %c+\0A\00", align 1
@texstr = external global [0 x i8], align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@last = external global i8*, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c".ds #d .d\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c".if \5C(ts\5Cn(.z\5C(ts\5C(ts .ds #d nl\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c".if \5Cn+(b.=1 .nr d. \5Cn(.c-\5Cn(c.-1\0A\00", align 1
@iline = external global i32, align 4
@linstart = external global i32, align 4
@.str.18 = private unnamed_addr constant [36 x i8] c".if \5Cn-(b.=0 .nr c. \5Cn(.c-\5Cn(d.-%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c".fc\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @savefill() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 35)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @rstofill() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable
define void @endoff() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 97, %4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.7, %for.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @texct, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body.3, label %for.end.9

for.body.3:                                       ; preds = %for.cond.1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [0 x i8], [0 x i8]* @texstr, i32 0, i64 %idxprom4
  %10 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %10 to i32
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %conv)
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.body.3
  %11 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %11, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond.1

for.end.9:                                        ; preds = %for.cond.1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %13 = load i8*, i8** @last, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ifdivert() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @saveline() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0))
  %1 = load i32, i32* @iline, align 4
  store i32 %1, i32* @linstart, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @restline() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %1 = load i32, i32* @iline, align 4
  %2 = load i32, i32* @linstart, align 4
  %sub = sub nsw i32 %1, %2
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), i32 %sub)
  store i32 0, i32* @linstart, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @cleanfc() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
