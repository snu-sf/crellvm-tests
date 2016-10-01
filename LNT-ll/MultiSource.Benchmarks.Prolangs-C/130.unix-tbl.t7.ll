; ModuleID = './MultiSource.Benchmarks.Prolangs-C/130.unix-tbl.t7.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.colstr = type { i8*, i8* }

@boxflg = external global i32, align 4
@allflg = external global i32, align 4
@dboxflg = external global i32, align 4
@ctrflg = external global i32, align 4
@tabout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c".nr #I \5Cn(.i\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c".in +(\5Cn(.lu-\5Cn(TWu-\5Cn(.iu)/2u\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c".fc %c %c\0A\00", align 1
@F1 = external global i32, align 4
@F2 = external global i32, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c".nr #T 0-1\0A\00", align 1
@nlin = external global i32, align 4
@leftover = external global i32, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c".fc\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c".nr T. 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c".T# 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c".in \5Cn(#Iu\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".ta \00", align 1
@ncol = external global i32, align 4
@table = external global [0 x %struct.colstr*], align 8
@lused = external global [0 x i32], align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"\5Cn(%du \00", align 1
@rused = external global [0 x i32], align 4
@used = external global [0 x i32], align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@fullbot = external global [0 x i32], align 4
@instead = external global [0 x i8*], align 8
@.str.11 = private unnamed_addr constant [13 x i8] c".ne %dv+%dp\0A\00", align 1
@linestop = external global [0 x i32], align 4
@.str.12 = private unnamed_addr constant [13 x i8] c".nr #%c 0-1\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c".nr #a 0-1\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c".eo\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c".de T#\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c".ds #d .d\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c".if \5C(ts\5Cn(.z\5C(ts\5C(ts .ds #d nl\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c".mk ##\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c".nr ## -1v\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c".ls 1\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c".if \5Cn(#T>=0 .nr #%c \5Cn(#T\0A\00", align 1
@pr1403 = external global i32, align 4
@.str.22 = private unnamed_addr constant [29 x i8] c".if \5Cn(T. .vs \5Cn(.vu-\5Cn(.sp\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c".if \5Cn(T. \00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"\0A.if \5Cn(T. .vs\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c".if \5Cn(#%c>=0 .sp -1\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c".if \5Cn(#%c>=0 \00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"\5Ch'|\5Cn(TWu'\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c".if \5Cn(#a>=0 .sp -1\0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c".if \5Cn(#a>=0 \5Ch'|\5Cn(TWu'\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c".ls\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"..\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c".ec\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @runout() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, i32* @boxflg, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @allflg, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* @dboxflg, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  call void @need()
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.2
  %3 = load i32, i32* @ctrflg, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %7 = load i32, i32* @F1, align 4
  %8 = load i32, i32* @F2, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %7, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void @deftail()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* @nlin, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %i, align 4
  call void @putline(i32 %12, i32 %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* @leftover, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.end
  call void @yetmore()
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %for.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  %19 = load i32, i32* @ctrflg, align 4
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.12
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define void @need() #0 {
entry:
  %texlin = alloca i32, align 4
  %horlin = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %horlin, align 4
  store i32 0, i32* %texlin, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @nlin, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %horlin, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %horlin, align 4
  br label %if.end.8

if.else:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom2
  %6 = load i8*, i8** %arrayidx3, align 8
  %cmp4 = icmp ne i8* %6, null
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  br label %for.inc

if.else.6:                                        ; preds = %if.else
  %7 = load i32, i32* %texlin, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %texlin, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.8, %if.then.5
  %8 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %8, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %10 = load i32, i32* %texlin, align 4
  %11 = load i32, i32* %horlin, align 4
  %mul = mul nsw i32 2, %11
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 %10, i32 %mul)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @deftail() #0 {
entry:
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %lf = alloca i32, align 4
  %lwid = alloca i32, align 4
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
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %5, 97
  %sub = sub nsw i32 %add, 1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.24, %for.end
  %15 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %15, 100
  br i1 %cmp12, label %for.body.13, label %for.end.26

for.body.13:                                      ; preds = %for.cond.11
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %for.body.13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom18
  %20 = load i32, i32* %arrayidx19, align 4
  %add20 = add nsw i32 %20, 97
  %sub21 = sub nsw i32 %add20, 1
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i32 %sub21)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.17, %for.body.13
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end.23
  %21 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.11

for.end.26:                                       ; preds = %for.cond.11
  %22 = load i32, i32* @boxflg, align 4
  %tobool27 = icmp ne i32 %22, 0
  br i1 %tobool27, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.26
  %23 = load i32, i32* @allflg, align 4
  %tobool28 = icmp ne i32 %23, 0
  br i1 %tobool28, label %if.then.31, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %24 = load i32, i32* @dboxflg, align 4
  %tobool30 = icmp ne i32 %24, 0
  br i1 %tobool30, label %if.then.31, label %if.end.45

if.then.31:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false, %for.end.26
  %25 = load i32, i32* @nlin, align 4
  %sub32 = sub nsw i32 %25, 1
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom33
  %26 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp eq i32 %26, 0
  br i1 %cmp35, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %if.then.31
  %27 = load i32, i32* @pr1403, align 4
  %tobool37 = icmp ne i32 %27, 0
  br i1 %tobool37, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %if.then.36
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.then.36
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0))
  %30 = load i32, i32* @nlin, align 4
  %31 = load i32, i32* @ncol, align 4
  %32 = load i32, i32* @dboxflg, align 4
  %tobool42 = icmp ne i32 %32, 0
  %cond = select i1 %tobool42, i32 61, i32 45
  call void @drawline(i32 %30, i32 0, i32 %31, i32 %cond, i32 1, i32 0)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.40, %if.then.31
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %lor.lhs.false.29
  store i32 0, i32* %c, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.66, %if.end.45
  %34 = load i32, i32* %c, align 4
  %35 = load i32, i32* @ncol, align 4
  %cmp47 = icmp slt i32 %34, %35
  br i1 %cmp47, label %for.body.48, label %for.end.68

for.body.48:                                      ; preds = %for.cond.46
  %36 = load i32, i32* @nlin, align 4
  %sub49 = sub nsw i32 %36, 1
  %37 = load i32, i32* %c, align 4
  %call50 = call i32 @left(i32 %sub49, i32 %37, i32* %lwid)
  store i32 %call50, i32* %lf, align 4
  %cmp51 = icmp sge i32 %call50, 0
  br i1 %cmp51, label %if.then.52, label %if.end.65

if.then.52:                                       ; preds = %for.body.48
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %39 = load i32, i32* %lf, align 4
  %idxprom53 = sext i32 %39 to i64
  %arrayidx54 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom53
  %40 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %40, 97
  %sub56 = sub nsw i32 %add55, 1
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i32 %sub56)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %42 = load i32, i32* %lf, align 4
  %idxprom58 = sext i32 %42 to i64
  %arrayidx59 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom58
  %43 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %43, 97
  %sub61 = sub nsw i32 %add60, 1
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i32 %sub61)
  %44 = load i32, i32* %c, align 4
  call void @tohcol(i32 %44)
  %45 = load i32, i32* %lf, align 4
  %46 = load i32, i32* @nlin, align 4
  %sub63 = sub nsw i32 %46, 1
  %47 = load i32, i32* %c, align 4
  %48 = load i32, i32* %lwid, align 4
  call void @drawvert(i32 %45, i32 %sub63, i32 %47, i32 %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.52, %for.body.48
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %50 = load i32, i32* %c, align 4
  %inc67 = add nsw i32 %50, 1
  store i32 %inc67, i32* %c, align 4
  br label %for.cond.46

for.end.68:                                       ; preds = %for.cond.46
  %51 = load i32, i32* @boxflg, align 4
  %tobool69 = icmp ne i32 %51, 0
  br i1 %tobool69, label %if.then.74, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %for.end.68
  %52 = load i32, i32* @allflg, align 4
  %tobool71 = icmp ne i32 %52, 0
  br i1 %tobool71, label %if.then.74, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.70
  %53 = load i32, i32* @dboxflg, align 4
  %tobool73 = icmp ne i32 %53, 0
  br i1 %tobool73, label %if.then.74, label %if.end.81

if.then.74:                                       ; preds = %lor.lhs.false.72, %lor.lhs.false.70, %for.end.68
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0))
  %56 = load i32, i32* @nlin, align 4
  %sub77 = sub nsw i32 %56, 1
  %57 = load i32, i32* @ncol, align 4
  %58 = load i32, i32* @dboxflg, align 4
  %tobool78 = icmp ne i32 %58, 0
  %cond79 = select i1 %tobool78, i32 2, i32 1
  call void @drawvert(i32 0, i32 %sub77, i32 %57, i32 %cond79)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.74, %lor.lhs.false.72
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0))
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0))
  ret void
}

declare void @putline(i32, i32) #1

declare void @yetmore() #1

; Function Attrs: nounwind uwtable
define void @runtabs(i32 %lform, i32 %ldata) #0 {
entry:
  %lform.addr = alloca i32, align 4
  %ldata.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %ct = alloca i32, align 4
  %vforml = alloca i32, align 4
  %lf = alloca i32, align 4
  store i32 %lform, i32* %lform.addr, align 4
  store i32 %ldata, i32* %ldata.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %entry
  %1 = load i32, i32* %c, align 4
  %2 = load i32, i32* @ncol, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %lform.addr, align 4
  store i32 %3, i32* %vforml, align 4
  %4 = load i32, i32* %lform.addr, align 4
  %call1 = call i32 @prev(i32 %4)
  store i32 %call1, i32* %lf, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %lf, align 4
  %cmp3 = icmp sge i32 %5, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.2
  %6 = load i32, i32* %c, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %lf, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom4
  %8 = load %struct.colstr*, %struct.colstr** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds %struct.colstr, %struct.colstr* %8, i64 %idxprom
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx5, i32 0, i32 0
  %9 = load i8*, i8** %col, align 8
  %call6 = call i32 @vspen(i8* %9)
  %tobool = icmp ne i32 %call6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.2
  %10 = phi i1 [ false, %for.cond.2 ], [ %tobool, %land.rhs ]
  br i1 %10, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %land.end
  %11 = load i32, i32* %lf, align 4
  store i32 %11, i32* %vforml, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %12 = load i32, i32* %lf, align 4
  %call8 = call i32 @prev(i32 %12)
  store i32 %call8, i32* %lf, align 4
  br label %for.cond.2

for.end:                                          ; preds = %land.end
  %13 = load i32, i32* %vforml, align 4
  %14 = load i32, i32* %c, align 4
  %call9 = call i32 @fspan(i32 %13, i32 %14)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %for.inc.54

if.end:                                           ; preds = %for.end
  %15 = load i32, i32* %vforml, align 4
  %16 = load i32, i32* %c, align 4
  %call11 = call i32 @ctype(i32 %15, i32 %16)
  store i32 %call11, i32* %ct, align 4
  switch i32 %call11, label %sw.epilog [
    i32 110, label %sw.bb
    i32 97, label %sw.bb
    i32 99, label %sw.bb.25
    i32 108, label %sw.bb.25
    i32 114, label %sw.bb.25
    i32 115, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %17 = load i32, i32* %c, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load i32, i32* %ldata.addr, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom13
  %19 = load %struct.colstr*, %struct.colstr** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds %struct.colstr, %struct.colstr* %19, i64 %idxprom12
  %rcol = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx15, i32 0, i32 1
  %20 = load i8*, i8** %rcol, align 8
  %tobool16 = icmp ne i8* %20, null
  br i1 %tobool16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %sw.bb
  %21 = load i32, i32* %c, align 4
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i32 0, i64 %idxprom18
  %22 = load i32, i32* %arrayidx19, align 4
  %tobool20 = icmp ne i32 %22, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %24 = load i32, i32* %c, align 4
  %add = add nsw i32 %24, 60
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %add)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %sw.bb
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %if.end, %if.end, %if.end, %if.end.24
  %25 = load i32, i32* %ct, align 4
  %cmp26 = icmp eq i32 %25, 97
  br i1 %cmp26, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.25
  %26 = load i32, i32* %ct, align 4
  %cmp27 = icmp eq i32 %26, 110
  br i1 %cmp27, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false, %sw.bb.25
  %27 = load i32, i32* %c, align 4
  %idxprom28 = sext i32 %27 to i64
  %28 = load i32, i32* %ldata.addr, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom29
  %29 = load %struct.colstr*, %struct.colstr** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds %struct.colstr, %struct.colstr* %29, i64 %idxprom28
  %rcol32 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx31, i32 0, i32 1
  %30 = load i8*, i8** %rcol32, align 8
  %tobool33 = icmp ne i8* %30, null
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %31 = load i32, i32* %c, align 4
  %idxprom34 = sext i32 %31 to i64
  %arrayidx35 = getelementptr inbounds [0 x i32], [0 x i32]* @rused, i32 0, i64 %idxprom34
  %32 = load i32, i32* %arrayidx35, align 4
  %tobool36 = icmp ne i32 %32, 0
  br i1 %tobool36, label %if.then.43, label %if.end.46

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %33 = load i32, i32* %c, align 4
  %idxprom37 = sext i32 %33 to i64
  %arrayidx38 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i32 0, i64 %idxprom37
  %34 = load i32, i32* %arrayidx38, align 4
  %35 = load i32, i32* %c, align 4
  %idxprom39 = sext i32 %35 to i64
  %arrayidx40 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i32 0, i64 %idxprom39
  %36 = load i32, i32* %arrayidx40, align 4
  %add41 = add nsw i32 %34, %36
  %tobool42 = icmp ne i32 %add41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %cond.false, %cond.true
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %38 = load i32, i32* %c, align 4
  %add44 = add nsw i32 %38, 80
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %add44)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %cond.false, %cond.true
  br label %for.inc.54

sw.bb.47:                                         ; preds = %if.end
  %39 = load i32, i32* %lform.addr, align 4
  %40 = load i32, i32* %c, align 4
  %call48 = call i32 @lspan(i32 %39, i32 %40)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %sw.bb.47
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %42 = load i32, i32* %c, align 4
  %add51 = add nsw i32 %42, 80
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %add51)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %sw.bb.47
  br label %for.inc.54

sw.epilog:                                        ; preds = %if.end
  br label %for.inc.54

for.inc.54:                                       ; preds = %sw.epilog, %if.end.53, %if.end.46, %if.then
  %43 = load i32, i32* %c, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  ret void
}

declare i32 @prev(i32) #1

declare i32 @vspen(i8*) #1

declare i32 @fspan(i32, i32) #1

declare i32 @ctype(i32, i32) #1

declare i32 @lspan(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @ifline(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = ptrtoint i8* %0 to i32
  %call = call i32 @point(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i8*, i8** %s.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx4, align 1
  %tobool5 = icmp ne i8 %6, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %7 = load i8*, i8** %s.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %8 to i32
  %cmp10 = icmp eq i32 %conv9, 95
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  store i32 45, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %9 = load i8*, i8** %s.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %10 to i32
  %cmp16 = icmp eq i32 %conv15, 61
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.13
  store i32 61, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.then.12, %if.then.6, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @point(i32) #1

declare void @drawline(i32, i32, i32, i32, i32, i32) #1

declare i32 @left(i32, i32, i32*) #1

declare void @tohcol(i32) #1

declare void @drawvert(i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
