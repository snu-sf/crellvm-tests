; ModuleID = './MultiSource.Benchmarks.Prolangs-C/110.unix-tbl.tg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@texname = external global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"Too many text block diversions\00", align 1
@textflg = external global i32, align 4
@tabout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c".nr %d \5Cn(.lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".eo\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c".am %02d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".br\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c".di %c+\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c".nr %d \5Cn(.f\0A.ft %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c".ft \5Cn(.f\0A\00", align 1
@stynum = external global [0 x i32], align 4
@vsize = external global [100 x [20 x [4 x i8]]], align 16
@.str.8 = private unnamed_addr constant [14 x i8] c".nr %d \5Cn(.v\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\5Cn(.s+2\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c".ps %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c".vs %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c".if \5Cn(%du>\5Cn(.vu .sp \5Cn(%du-\5Cn(.vu\0A\00", align 1
@cll = external global [20 x [10 x i8]], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c".ll %sn\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c".ll \5Cn(%du*%du/%du\0A\00", align 1
@ncol = external global i32, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c".if \5Cn(.l<\5Cn(%d .ll \5Cn(%du\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c".ll -2n\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c".in 0\0A\00", align 1
@tab = external global i32, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"T}\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c".ft \5Cn(%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c".br\0A.ps\0A.vs\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c".di\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c".nr %c| \5Cn(dn\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c".nr %c- \5Cn(dl\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"..\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c".ec \5C\0A\00", align 1
@texct = external global i32, align 4
@texstr = external global [0 x i8], align 1
@.str.27 = private unnamed_addr constant [5 x i8] c".nf\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c".ll \5Cn(%du\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gettext(i8* %sp, i32 %ilin, i32 %icol, i8* %fn, i8* %sz) #0 {
entry:
  %sp.addr = alloca i8*, align 8
  %ilin.addr = alloca i32, align 4
  %icol.addr = alloca i32, align 4
  %fn.addr = alloca i8*, align 8
  %sz.addr = alloca i8*, align 8
  %line = alloca [256 x i8], align 16
  %oname = alloca i32, align 4
  %vs = alloca i8*, align 8
  store i8* %sp, i8** %sp.addr, align 8
  store i32 %ilin, i32* %ilin.addr, align 4
  store i32 %icol, i32* %icol.addr, align 4
  store i8* %fn, i8** %fn.addr, align 8
  store i8* %sz, i8** %sz.addr, align 8
  %0 = load i32, i32* @texname, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @textflg, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 34)
  store i32 1, i32* @textflg, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %5 = load i32, i32* %icol.addr, align 4
  %add = add nsw i32 %5, 80
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %add)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %8 = load i32, i32* @texname, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 %8)
  call void @rstofill()
  %9 = load i8*, i8** %fn.addr, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.3
  %10 = load i8*, i8** %fn.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %tobool8 = icmp ne i32 %conv, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %13 = load i8*, i8** %fn.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 31, i8* %13)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %land.lhs.true, %if.end.3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  %15 = load i32, i32* %icol.addr, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32, i32* %ilin.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @vsize, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %arrayidx15, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx16, i32 0, i32 0
  store i8* %arraydecay, i8** %vs, align 8
  %18 = load i8*, i8** %sz.addr, align 8
  %tobool17 = icmp ne i8* %18, null
  br i1 %tobool17, label %land.lhs.true.18, label %lor.lhs.false

land.lhs.true.18:                                 ; preds = %if.end.11
  %19 = load i8*, i8** %sz.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv19 = sext i8 %20 to i32
  %tobool20 = icmp ne i32 %conv19, 0
  br i1 %tobool20, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.18, %if.end.11
  %21 = load i8*, i8** %vs, align 8
  %tobool21 = icmp ne i8* %21, null
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.44

land.lhs.true.22:                                 ; preds = %lor.lhs.false
  %22 = load i8*, i8** %vs, align 8
  %23 = load i8, i8* %22, align 1
  %conv23 = sext i8 %23 to i32
  %tobool24 = icmp ne i32 %conv23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.44

if.then.25:                                       ; preds = %land.lhs.true.22, %land.lhs.true.18
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 32)
  %25 = load i8*, i8** %vs, align 8
  %cmp27 = icmp eq i8* %25, null
  br i1 %cmp27, label %if.then.33, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.then.25
  %26 = load i8*, i8** %vs, align 8
  %27 = load i8, i8* %26, align 1
  %conv30 = sext i8 %27 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.29, %if.then.25
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8** %vs, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %lor.lhs.false.29
  %28 = load i8*, i8** %sz.addr, align 8
  %tobool35 = icmp ne i8* %28, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.41

land.lhs.true.36:                                 ; preds = %if.end.34
  %29 = load i8*, i8** %sz.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv37 = sext i8 %30 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %land.lhs.true.36
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %32 = load i8*, i8** %sz.addr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %32)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %land.lhs.true.36, %if.end.34
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %34 = load i8*, i8** %vs, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i32 32, i32 32)
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.41, %land.lhs.true.22, %lor.lhs.false
  %36 = load i32, i32* %icol.addr, align 4
  %idxprom45 = sext i32 %36 to i64
  %arrayidx46 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i32 0, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [10 x i8], [10 x i8]* %arrayidx46, i32 0, i64 0
  %37 = load i8, i8* %arrayidx47, align 1
  %tobool48 = icmp ne i8 %37, 0
  br i1 %tobool48, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.end.44
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %39 = load i32, i32* %icol.addr, align 4
  %idxprom50 = sext i32 %39 to i64
  %arrayidx51 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i32 0, i64 %idxprom50
  %arraydecay52 = getelementptr inbounds [10 x i8], [10 x i8]* %arrayidx51, i32 0, i32 0
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay52)
  br label %if.end.57

if.else:                                          ; preds = %if.end.44
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %41 = load i32, i32* %ilin.addr, align 4
  %42 = load i32, i32* %icol.addr, align 4
  %call54 = call i32 @ctspan(i32 %41, i32 %42)
  %43 = load i32, i32* @ncol, align 4
  %add55 = add nsw i32 %43, 1
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32 34, i32 %call54, i32 %add55)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %if.then.49
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %45 = load i32, i32* %icol.addr, align 4
  %add58 = add nsw i32 %45, 80
  %46 = load i32, i32* %icol.addr, align 4
  %add59 = add nsw i32 %46, 80
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i32 %add58, i32 %add59)
  %47 = load i32, i32* %ilin.addr, align 4
  %48 = load i32, i32* %icol.addr, align 4
  %call61 = call i32 @ctype(i32 %47, i32 %48)
  %cmp62 = icmp eq i32 %call61, 97
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.57
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.57
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end.91, %if.end.66
  %arraydecay68 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %call69 = call i8* @gets1(i8* %arraydecay68)
  %tobool70 = icmp ne i8* %call69, null
  br i1 %tobool70, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx71 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i64 0
  %51 = load i8, i8* %arrayidx71, align 1
  %conv72 = sext i8 %51 to i32
  %cmp73 = icmp eq i32 %conv72, 84
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.86

land.lhs.true.75:                                 ; preds = %while.body
  %arrayidx76 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i64 1
  %52 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %52 to i32
  %cmp78 = icmp eq i32 %conv77, 125
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.86

land.lhs.true.80:                                 ; preds = %land.lhs.true.75
  %arrayidx81 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i64 2
  %53 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %53 to i32
  %54 = load i32, i32* @tab, align 4
  %cmp83 = icmp eq i32 %conv82, %54
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %land.lhs.true.80
  br label %while.end

if.end.86:                                        ; preds = %land.lhs.true.80, %land.lhs.true.75, %while.body
  %arraydecay87 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %call88 = call i32 @match(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay87)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.86
  br label %while.end

if.end.91:                                        ; preds = %if.end.86
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %arraydecay92 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay92)
  br label %while.cond

while.end:                                        ; preds = %if.then.90, %if.then.85, %while.cond
  %56 = load i8*, i8** %fn.addr, align 8
  %tobool94 = icmp ne i8* %56, null
  br i1 %tobool94, label %land.lhs.true.95, label %if.end.100

land.lhs.true.95:                                 ; preds = %while.end
  %57 = load i8*, i8** %fn.addr, align 8
  %58 = load i8, i8* %57, align 1
  %conv96 = sext i8 %58 to i32
  %tobool97 = icmp ne i32 %conv96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %land.lhs.true.95
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 31)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %land.lhs.true.95, %while.end
  %60 = load i8*, i8** %sz.addr, align 8
  %tobool101 = icmp ne i8* %60, null
  br i1 %tobool101, label %land.lhs.true.102, label %if.end.107

land.lhs.true.102:                                ; preds = %if.end.100
  %61 = load i8*, i8** %sz.addr, align 8
  %62 = load i8, i8* %61, align 1
  %conv103 = sext i8 %62 to i32
  %tobool104 = icmp ne i32 %conv103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %land.lhs.true.102
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %land.lhs.true.102, %if.end.100
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %67 = load i32, i32* @texname, align 4
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 %67)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %69 = load i32, i32* @texname, align 4
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 %69)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %arrayidx114 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i64 2
  %72 = load i8, i8* %arrayidx114, align 1
  %tobool115 = icmp ne i8 %72, 0
  br i1 %tobool115, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %if.end.107
  %73 = load i8*, i8** %sp.addr, align 8
  %arraydecay117 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay117, i64 3
  call void @tcopy(i8* %73, i8* %add.ptr)
  br label %if.end.119

if.else.118:                                      ; preds = %if.end.107
  %74 = load i8*, i8** %sp.addr, align 8
  store i8 0, i8* %74, align 1
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.118, %if.then.116
  %75 = load i32, i32* @texname, align 4
  store i32 %75, i32* %oname, align 4
  %76 = load i32, i32* @texct, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* @texct, align 4
  %idxprom120 = sext i32 %inc to i64
  %arrayidx121 = getelementptr inbounds [0 x i8], [0 x i8]* @texstr, i32 0, i64 %idxprom120
  %77 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %77 to i32
  store i32 %conv122, i32* @texname, align 4
  %78 = load i32, i32* %oname, align 4
  ret i32 %78
}

declare void @error(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @rstofill() #1

declare i32 @ctspan(i32, i32) #1

declare i32 @ctype(i32, i32) #1

declare i8* @gets1(i8*) #1

declare i32 @match(i8*, i8*) #1

declare void @tcopy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @untext() #0 {
entry:
  call void @rstofill()
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 34)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
