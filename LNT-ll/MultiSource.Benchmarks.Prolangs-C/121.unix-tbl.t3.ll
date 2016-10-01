; ModuleID = './MultiSource.Benchmarks.Prolangs-C/121.unix-tbl.t3.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optstr = type { i8*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@options = common global [21 x %struct.optstr] zeroinitializer, align 16
@expflg = external global i32, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"EXPAND\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@ctrflg = external global i32, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"CENTER\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@boxflg = external global i32, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"BOX\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"allbox\00", align 1
@allflg = external global i32, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"ALLBOX\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"doublebox\00", align 1
@dboxflg = external global i32, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"DOUBLEBOX\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"doubleframe\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"DOUBLEFRAME\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@tab = external global i32, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"TAB\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"linesize\00", align 1
@linsize = external global i32, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"LINESIZE\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"delim\00", align 1
@delim1 = external global i32, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"DELIM\00", align 1
@texct = external global i32, align 4
@texstr = external global [0 x i8], align 1
@texname = external global i32, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c".nr %d \5Cn(.s\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Misspelled global option\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c".nr %d %s\0A\00", align 1
@delim2 = external global i32, align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"Illegal option\00", align 1

; Function Attrs: nounwind uwtable
define void @init_options() #0 {
entry:
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 0, i32 0), align 8
  store i32* @expflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 0, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 1, i32 0), align 8
  store i32* @expflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 1, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 2, i32 0), align 8
  store i32* @ctrflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 2, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 3, i32 0), align 8
  store i32* @ctrflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 3, i32 1), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 4, i32 0), align 8
  store i32* @boxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 4, i32 1), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 5, i32 0), align 8
  store i32* @boxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 5, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 6, i32 0), align 8
  store i32* @allflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 6, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 7, i32 0), align 8
  store i32* @allflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 7, i32 1), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 8, i32 0), align 8
  store i32* @dboxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 8, i32 1), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 9, i32 0), align 8
  store i32* @dboxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 9, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 10, i32 0), align 8
  store i32* @boxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 10, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 11, i32 0), align 8
  store i32* @boxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 11, i32 1), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 12, i32 0), align 8
  store i32* @dboxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 12, i32 1), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 13, i32 0), align 8
  store i32* @dboxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 13, i32 1), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 14, i32 0), align 8
  store i32* @tab, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 14, i32 1), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 15, i32 0), align 8
  store i32* @tab, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 15, i32 1), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 16, i32 0), align 8
  store i32* @linsize, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 16, i32 1), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 17, i32 0), align 8
  store i32* @linsize, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 17, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 18, i32 0), align 8
  store i32* @delim1, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 18, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 19, i32 0), align 8
  store i32* @delim1, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 19, i32 1), align 8
  store i8* null, i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 20, i32 0), align 8
  store i32* null, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i64 20, i32 1), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @getcomm() #0 {
entry:
  %line = alloca [200 x i8], align 16
  %cp = alloca i8*, align 8
  %nb = alloca [25 x i8], align 16
  %t = alloca i8*, align 8
  %lp = alloca %struct.optstr*, align 8
  %c = alloca i32, align 4
  %ci = alloca i32, align 4
  %found = alloca i32, align 4
  store %struct.optstr* getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i32 0), %struct.optstr** %lp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.optstr*, %struct.optstr** %lp, align 8
  %optnam = getelementptr inbounds %struct.optstr, %struct.optstr* %0, i32 0, i32 0
  %1 = load i8*, i8** %optnam, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.optstr*, %struct.optstr** %lp, align 8
  %optadd = getelementptr inbounds %struct.optstr, %struct.optstr* %2, i32 0, i32 1
  %3 = load i32*, i32** %optadd, align 8
  store i32 0, i32* %3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.optstr*, %struct.optstr** %lp, align 8
  %incdec.ptr = getelementptr inbounds %struct.optstr, %struct.optstr* %4, i32 1
  store %struct.optstr* %incdec.ptr, %struct.optstr** %lp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @texct, align 4
  %5 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @texstr, i32 0, i64 0), align 1
  %conv = sext i8 %5 to i32
  store i32 %conv, i32* @texname, align 4
  store i32 9, i32* @tab, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 33)
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call1 = call i8* @gets1(i8* %arraydecay)
  %arraydecay2 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call3 = call i8* @strchr(i8* %arraydecay2, i32 59) #3
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %arraydecay5 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  call void @backrest(i8* %arraydecay5)
  br label %return

if.end:                                           ; preds = %for.end
  %arraydecay6 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay6, i8** %cp, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.87, %if.end
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  %conv8 = sext i8 %7 to i32
  store i32 %conv8, i32* %c, align 4
  %cmp9 = icmp ne i32 %conv8, 59
  br i1 %cmp9, label %for.body.11, label %for.end.89

for.body.11:                                      ; preds = %for.cond.7
  %8 = load i32, i32* %c, align 4
  %call12 = call i32 @letter(i32 %8)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %for.body.11
  br label %for.inc.87

if.end.15:                                        ; preds = %for.body.11
  store i32 0, i32* %found, align 4
  store %struct.optstr* getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i32 0, i32 0), %struct.optstr** %lp, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.81, %if.end.15
  %9 = load %struct.optstr*, %struct.optstr** %lp, align 8
  %optadd17 = getelementptr inbounds %struct.optstr, %struct.optstr* %9, i32 0, i32 1
  %10 = load i32*, i32** %optadd17, align 8
  %tobool18 = icmp ne i32* %10, null
  br i1 %tobool18, label %for.body.19, label %for.end.83

for.body.19:                                      ; preds = %for.cond.16
  %11 = load %struct.optstr*, %struct.optstr** %lp, align 8
  %optnam20 = getelementptr inbounds %struct.optstr, %struct.optstr* %11, i32 0, i32 0
  %12 = load i8*, i8** %optnam20, align 8
  %13 = load i8*, i8** %cp, align 8
  %call21 = call i32 @prefix(i8* %12, i8* %13)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.80

if.then.23:                                       ; preds = %for.body.19
  %14 = load %struct.optstr*, %struct.optstr** %lp, align 8
  %optadd24 = getelementptr inbounds %struct.optstr, %struct.optstr* %14, i32 0, i32 1
  %15 = load i32*, i32** %optadd24, align 8
  store i32 1, i32* %15, align 4
  %16 = load %struct.optstr*, %struct.optstr** %lp, align 8
  %optnam25 = getelementptr inbounds %struct.optstr, %struct.optstr* %16, i32 0, i32 0
  %17 = load i8*, i8** %optnam25, align 8
  %call26 = call i64 @strlen(i8* %17) #3
  %18 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %call26
  store i8* %add.ptr, i8** %cp, align 8
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8, i8* %19, align 1
  %conv27 = sext i8 %20 to i32
  %call28 = call i32 @letter(i32 %conv27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.23
  call void @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.23
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.31
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8, i8* %21, align 1
  %conv32 = sext i8 %22 to i32
  %cmp33 = icmp eq i32 %conv32, 32
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i8*, i8** %cp, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr35, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay36 = getelementptr inbounds [25 x i8], [25 x i8]* %nb, i32 0, i32 0
  store i8* %arraydecay36, i8** %t, align 8
  %24 = load i8*, i8** %cp, align 8
  %25 = load i8, i8* %24, align 1
  %conv37 = sext i8 %25 to i32
  %cmp38 = icmp eq i32 %conv37, 40
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %while.end
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.46, %if.then.40
  %26 = load i8*, i8** %cp, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr42, i8** %cp, align 8
  %27 = load i8, i8* %incdec.ptr42, align 1
  %conv43 = sext i8 %27 to i32
  store i32 %conv43, i32* %ci, align 4
  %cmp44 = icmp ne i32 %conv43, 41
  br i1 %cmp44, label %while.body.46, label %while.end.49

while.body.46:                                    ; preds = %while.cond.41
  %28 = load i32, i32* %ci, align 4
  %conv47 = trunc i32 %28 to i8
  %29 = load i8*, i8** %t, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr48, i8** %t, align 8
  store i8 %conv47, i8* %29, align 1
  br label %while.cond.41

while.end.49:                                     ; preds = %while.cond.41
  br label %if.end.51

if.else:                                          ; preds = %while.end
  %30 = load i8*, i8** %cp, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %incdec.ptr50, i8** %cp, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %while.end.49
  %31 = load i8*, i8** %t, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr52, i8** %t, align 8
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %t, align 8
  store i8 0, i8* %32, align 1
  %33 = load %struct.optstr*, %struct.optstr** %lp, align 8
  %optadd53 = getelementptr inbounds %struct.optstr, %struct.optstr* %33, i32 0, i32 1
  %34 = load i32*, i32** %optadd53, align 8
  %cmp54 = icmp eq i32* %34, @tab
  br i1 %cmp54, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %if.end.51
  %arrayidx = getelementptr inbounds [25 x i8], [25 x i8]* %nb, i32 0, i64 0
  %35 = load i8, i8* %arrayidx, align 1
  %tobool57 = icmp ne i8 %35, 0
  br i1 %tobool57, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %if.then.56
  %arrayidx59 = getelementptr inbounds [25 x i8], [25 x i8]* %nb, i32 0, i64 0
  %36 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %36 to i32
  %37 = load %struct.optstr*, %struct.optstr** %lp, align 8
  %optadd61 = getelementptr inbounds %struct.optstr, %struct.optstr* %37, i32 0, i32 1
  %38 = load i32*, i32** %optadd61, align 8
  store i32 %conv60, i32* %38, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %if.then.56
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.51
  %39 = load %struct.optstr*, %struct.optstr** %lp, align 8
  %optadd64 = getelementptr inbounds %struct.optstr, %struct.optstr* %39, i32 0, i32 1
  %40 = load i32*, i32** %optadd64, align 8
  %cmp65 = icmp eq i32* %40, @linsize
  br i1 %cmp65, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.end.63
  %arraydecay68 = getelementptr inbounds [25 x i8], [25 x i8]* %nb, i32 0, i32 0
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 33, i8* %arraydecay68)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %if.end.63
  %41 = load %struct.optstr*, %struct.optstr** %lp, align 8
  %optadd71 = getelementptr inbounds %struct.optstr, %struct.optstr* %41, i32 0, i32 1
  %42 = load i32*, i32** %optadd71, align 8
  %cmp72 = icmp eq i32* %42, @delim1
  br i1 %cmp72, label %if.then.74, label %if.end.79

if.then.74:                                       ; preds = %if.end.70
  %arrayidx75 = getelementptr inbounds [25 x i8], [25 x i8]* %nb, i32 0, i64 0
  %43 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %43 to i32
  store i32 %conv76, i32* @delim1, align 4
  %arrayidx77 = getelementptr inbounds [25 x i8], [25 x i8]* %nb, i32 0, i64 1
  %44 = load i8, i8* %arrayidx77, align 1
  %conv78 = sext i8 %44 to i32
  store i32 %conv78, i32* @delim2, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.74, %if.end.70
  store i32 1, i32* %found, align 4
  br label %for.end.83

if.end.80:                                        ; preds = %for.body.19
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %45 = load %struct.optstr*, %struct.optstr** %lp, align 8
  %incdec.ptr82 = getelementptr inbounds %struct.optstr, %struct.optstr* %45, i32 1
  store %struct.optstr* %incdec.ptr82, %struct.optstr** %lp, align 8
  br label %for.cond.16

for.end.83:                                       ; preds = %if.end.79, %for.cond.16
  %46 = load i32, i32* %found, align 4
  %tobool84 = icmp ne i32 %46, 0
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %for.end.83
  call void @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %for.end.83
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86, %if.then.14
  %47 = load i8*, i8** %cp, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr88, i8** %cp, align 8
  br label %for.cond.7

for.end.89:                                       ; preds = %for.cond.7
  %48 = load i8*, i8** %cp, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr90, i8** %cp, align 8
  %49 = load i8*, i8** %cp, align 8
  call void @backrest(i8* %49)
  br label %return

return:                                           ; preds = %for.end.89, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i8* @gets1(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @backrest(i8* %cp) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  %0 = load i8*, i8** %cp.addr, align 8
  store i8* %0, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @un1getc(i32 10)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %4 = load i8*, i8** %s, align 8
  %5 = load i8*, i8** %cp.addr, align 8
  %cmp = icmp ugt i8* %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %s, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr1, i8** %s, align 8
  %7 = load i8, i8* %incdec.ptr1, align 1
  %conv = sext i8 %7 to i32
  call void @un1getc(i32 %conv)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @letter(i32) #1

declare i32 @prefix(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @error(i8*) #1

declare void @un1getc(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
