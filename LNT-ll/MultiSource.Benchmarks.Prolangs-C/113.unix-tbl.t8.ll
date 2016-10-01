; ModuleID = './MultiSource.Benchmarks.Prolangs-C/113.unix-tbl.t8.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@watchout = common global i32 0, align 4
@once = common global i32 0, align 4
@allflg = external global i32, align 4
@boxflg = external global i32, align 4
@dboxflg = external global i32, align 4
@instead = external global [0 x i8*], align 8
@fullbot = external global [0 x i32], align 4
@ncol = external global i32, align 4
@table = external global [0 x %struct.colstr*], align 8
@nlin = external global i32, align 4
@tabout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c".ne \5Cn(%c|u+\5Cn(.Vu\0A\00", align 1
@linestop = external global [0 x i32], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c".mk #%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c".nr #^ \5Cn(\5C*(#du\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c".nr #- \5Cn(#^\0A\00", align 1
@stynum = external global [0 x i32], align 4
@font = external global [100 x [20 x [2 x i8]]], align 16
@.str.4 = private unnamed_addr constant [63 x i8] c".if (\5Cn(%c|+\5Cn(^%c-1v)>\5Cn(#- .nr #- +(\5Cn(%c|+\5Cn(^%c-\5Cn(#--1v)\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c".if (\5Cn(%c|+\5Cn(#^-1v)>\5Cn(#- .nr #- +(\5Cn(%c|+\5Cn(#^-\5Cn(#--1v)\0A\00", align 1
@pr1403 = external global i32, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c".nr %d \5Cn(.v\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c".vs \5Cn(.vu-\5Cn(.sp\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c".nr %2d \5Cn(.f\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c".nr 35 1m\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\5C&\00", align 1
@rightl = external global i32, align 4
@lused = external global [0 x i32], align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"\5Ch'|\5Cn(%du'\00", align 1
@csize = external global [100 x [20 x [4 x i8]]], align 16
@.str.12 = private unnamed_addr constant [23 x i8] c"\5Cv'-(\5Cn(\5C*(#du-\5Cn(^%cu\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"-((\5Cn(#-u-\5Cn(^%cu)/2u)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@F1 = external global i32, align 4
@F2 = external global i32, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [44 x i8] c"%s: line %d: Data ignored on table line %d\0A\00", align 1
@ifile = external global i8*, align 8
@iline = external global i32, align 4
@rused = external global [0 x i32], align 4
@used = external global [0 x i32], align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"\5Cl'|\5Cn(%du\5C&%s'\00", align 1
@ctop = external global [100 x [20 x i32]], align 16
@topat = common global [20 x i32] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [22 x i8] c"\5Cv'(\5Cn(\5C*(#du-\5Cn(^%cu\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"\0A.sp-1\0A\5C&\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c".vs \5Cn(%du\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c".nr ^%c \5Cn(#^u\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"\5Cf\5Cn(%2d\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c".mk ##\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c".nr %d \5Cn(##\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c".sp |\5Cn(##u-1v\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c".nr %d \00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"(\5Cn(%du+\5Cn(%du-\5Cn(%c-u)/2u\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"\5Cn(%du\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"\5Cn(%du-\5Cn(%c-u\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c".in +\5Cn(%du\0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c".sp |\5Cn(^%cu\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c".nr %d \5Cn(#-u-\5Cn(^%c-\5Cn(%c|+1v\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c".if \5Cn(%d>0 .sp \5Cn(%du/2u\0A\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c".%c+\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c".in -\5Cn(%du\0A\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c".mk %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c".if \5Cn(%d>\5Cn(%d .nr %d \5Cn(%d\0A\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c".sp |\5Cn(%du\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c".sp -1\0A\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"\5Cf(%.2s\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\5Cf%.2s\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"\5Cs%s\00", align 1

; Function Attrs: nounwind uwtable
define void @putline(i32 %i, i32 %nl) #0 {
entry:
  %i.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %lf = alloca i32, align 4
  %ct = alloca i32, align 4
  %form = alloca i32, align 4
  %lwid = alloca i32, align 4
  %vspf = alloca i32, align 4
  %ip = alloca i32, align 4
  %cmidx = alloca i32, align 4
  %exvspen = alloca i32, align 4
  %vforml = alloca i32, align 4
  %vct = alloca i32, align 4
  %chfont = alloca i32, align 4
  %s = alloca i8*, align 8
  %size = alloca i8*, align 8
  %fn = alloca i8*, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store i32 0, i32* %exvspen, align 4
  store i32 0, i32* %vspf, align 4
  store i32 0, i32* @watchout, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @once, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %i.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @allflg, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, i32* @boxflg, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* @dboxflg, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  %5 = load i32, i32* @dboxflg, align 4
  %tobool6 = icmp ne i32 %5, 0
  %cond = select i1 %tobool6, i32 61, i32 45
  call void @fullwide(i32 0, i32 %cond)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %lor.lhs.false.3, %if.end
  %6 = load i32, i32* %nl.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %cmp8 = icmp eq i8* %7, null
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.51

land.lhs.true.9:                                  ; preds = %if.end.7
  %8 = load i32, i32* %nl.addr, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom10
  %9 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp eq i32 %9, 0
  br i1 %cmp12, label %if.then.13, label %if.end.51

if.then.13:                                       ; preds = %land.lhs.true.9
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %if.then.13
  %10 = load i32, i32* %c, align 4
  %11 = load i32, i32* @ncol, align 4
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %c, align 4
  %idxprom15 = sext i32 %12 to i64
  %13 = load i32, i32* %nl.addr, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom16
  %14 = load %struct.colstr*, %struct.colstr** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds %struct.colstr, %struct.colstr* %14, i64 %idxprom15
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx18, i32 0, i32 0
  %15 = load i8*, i8** %col, align 8
  store i8* %15, i8** %s, align 8
  %16 = load i8*, i8** %s, align 8
  %cmp19 = icmp eq i8* %16, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.body
  br label %for.inc.49

if.end.21:                                        ; preds = %for.body
  %17 = load i8*, i8** %s, align 8
  %call = call i32 @vspen(i8* %17)
  %tobool22 = icmp ne i32 %call, 0
  br i1 %tobool22, label %if.then.23, label %if.end.43

if.then.23:                                       ; preds = %if.end.21
  %18 = load i32, i32* %nl.addr, align 4
  store i32 %18, i32* %ip, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.then.23
  %19 = load i32, i32* %ip, align 4
  %20 = load i32, i32* @nlin, align 4
  %cmp25 = icmp slt i32 %19, %20
  br i1 %cmp25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.24
  %21 = load i32, i32* %c, align 4
  %idxprom27 = sext i32 %21 to i64
  %22 = load i32, i32* %ip, align 4
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom28
  %23 = load %struct.colstr*, %struct.colstr** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds %struct.colstr, %struct.colstr* %23, i64 %idxprom27
  %col31 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx30, i32 0, i32 0
  %24 = load i8*, i8** %col31, align 8
  store i8* %24, i8** %s, align 8
  %call32 = call i32 @vspen(i8* %24)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %for.body.26
  br label %for.end

if.end.35:                                        ; preds = %for.body.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %25 = load i32, i32* %ip, align 4
  %call36 = call i32 @next(i32 %25)
  store i32 %call36, i32* %ip, align 4
  br label %for.cond.24

for.end:                                          ; preds = %if.then.34, %for.cond.24
  %26 = load i8*, i8** %s, align 8
  %27 = ptrtoint i8* %26 to i32
  %cmp37 = icmp sgt i32 %27, 0
  br i1 %cmp37, label %land.lhs.true.38, label %if.end.42

land.lhs.true.38:                                 ; preds = %for.end
  %28 = load i8*, i8** %s, align 8
  %29 = ptrtoint i8* %28 to i32
  %cmp39 = icmp slt i32 %29, 128
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %land.lhs.true.38
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %31 = load i8*, i8** %s, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %31)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %land.lhs.true.38, %for.end
  br label %for.inc.49

if.end.43:                                        ; preds = %if.end.21
  %32 = load i8*, i8** %s, align 8
  %33 = ptrtoint i8* %32 to i32
  %call44 = call i32 @point(i32 %33)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  br label %for.inc.49

if.end.47:                                        ; preds = %if.end.43
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %35 = load i8*, i8** %s, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %35)
  store i32 1, i32* @watchout, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.47, %if.then.46, %if.end.42, %if.then.20
  %36 = load i32, i32* %c, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  br label %if.end.51

if.end.51:                                        ; preds = %for.end.50, %land.lhs.true.9, %if.end.7
  %37 = load i32, i32* %nl.addr, align 4
  %idxprom52 = sext i32 %37 to i64
  %arrayidx53 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom52
  %38 = load i32, i32* %arrayidx53, align 4
  %tobool54 = icmp ne i32 %38, 0
  br i1 %tobool54, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.end.51
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %40 = load i32, i32* %nl.addr, align 4
  %idxprom56 = sext i32 %40 to i64
  %arrayidx57 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom56
  %41 = load i32, i32* %arrayidx57, align 4
  %add = add nsw i32 %41, 97
  %sub = sub nsw i32 %add, 1
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %sub)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %if.end.51
  %42 = load i32, i32* %nl.addr, align 4
  %call60 = call i32 @prev(i32 %42)
  store i32 %call60, i32* %lf, align 4
  %43 = load i32, i32* %nl.addr, align 4
  %idxprom61 = sext i32 %43 to i64
  %arrayidx62 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom61
  %44 = load i8*, i8** %arrayidx62, align 8
  %tobool63 = icmp ne i8* %44, null
  br i1 %tobool63, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %if.end.59
  %45 = load i32, i32* %nl.addr, align 4
  %idxprom65 = sext i32 %45 to i64
  %arrayidx66 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom65
  %46 = load i8*, i8** %arrayidx66, align 8
  %call67 = call i32 @puts(i8* %46)
  br label %if.end.529

if.end.68:                                        ; preds = %if.end.59
  %47 = load i32, i32* %nl.addr, align 4
  %idxprom69 = sext i32 %47 to i64
  %arrayidx70 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom69
  %48 = load i32, i32* %arrayidx70, align 4
  %tobool71 = icmp ne i32 %48, 0
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.end.68
  %49 = load i32, i32* %nl.addr, align 4
  %idxprom73 = sext i32 %49 to i64
  %arrayidx74 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom73
  %50 = load i32, i32* %arrayidx74, align 4
  store i32 %50, i32* %ct, align 4
  switch i32 %50, label %sw.epilog [
    i32 61, label %sw.bb
    i32 45, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.72, %if.then.72
  %51 = load i32, i32* %nl.addr, align 4
  %52 = load i32, i32* %ct, align 4
  call void @fullwide(i32 %51, i32 %52)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.then.72
  br label %if.end.529

if.end.75:                                        ; preds = %if.end.68
  store i32 0, i32* %c, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.109, %if.end.75
  %53 = load i32, i32* %c, align 4
  %54 = load i32, i32* @ncol, align 4
  %cmp77 = icmp slt i32 %53, %54
  br i1 %cmp77, label %for.body.78, label %for.end.111

for.body.78:                                      ; preds = %for.cond.76
  %55 = load i32, i32* %nl.addr, align 4
  %idxprom79 = sext i32 %55 to i64
  %arrayidx80 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom79
  %56 = load i8*, i8** %arrayidx80, align 8
  %cmp81 = icmp eq i8* %56, null
  br i1 %cmp81, label %land.lhs.true.82, label %if.end.96

land.lhs.true.82:                                 ; preds = %for.body.78
  %57 = load i32, i32* %nl.addr, align 4
  %idxprom83 = sext i32 %57 to i64
  %arrayidx84 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom83
  %58 = load i32, i32* %arrayidx84, align 4
  %cmp85 = icmp eq i32 %58, 0
  br i1 %cmp85, label %if.then.86, label %if.end.96

if.then.86:                                       ; preds = %land.lhs.true.82
  %59 = load i32, i32* %c, align 4
  %idxprom87 = sext i32 %59 to i64
  %60 = load i32, i32* %nl.addr, align 4
  %idxprom88 = sext i32 %60 to i64
  %arrayidx89 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom88
  %61 = load %struct.colstr*, %struct.colstr** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds %struct.colstr, %struct.colstr* %61, i64 %idxprom87
  %col91 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx90, i32 0, i32 0
  %62 = load i8*, i8** %col91, align 8
  %call92 = call i32 @vspen(i8* %62)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.86
  store i32 1, i32* %vspf, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.then.86
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %land.lhs.true.82, %for.body.78
  %63 = load i32, i32* %lf, align 4
  %cmp97 = icmp sge i32 %63, 0
  br i1 %cmp97, label %if.then.98, label %if.end.108

if.then.98:                                       ; preds = %if.end.96
  %64 = load i32, i32* %c, align 4
  %idxprom99 = sext i32 %64 to i64
  %65 = load i32, i32* %lf, align 4
  %idxprom100 = sext i32 %65 to i64
  %arrayidx101 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom100
  %66 = load %struct.colstr*, %struct.colstr** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds %struct.colstr, %struct.colstr* %66, i64 %idxprom99
  %col103 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx102, i32 0, i32 0
  %67 = load i8*, i8** %col103, align 8
  %call104 = call i32 @vspen(i8* %67)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.then.98
  store i32 1, i32* %vspf, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.then.98
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.96
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %68 = load i32, i32* %c, align 4
  %inc110 = add nsw i32 %68, 1
  store i32 %inc110, i32* %c, align 4
  br label %for.cond.76

for.end.111:                                      ; preds = %for.cond.76
  %69 = load i32, i32* %vspf, align 4
  %tobool112 = icmp ne i32 %69, 0
  br i1 %tobool112, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %for.end.111
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %for.end.111
  store i32 0, i32* %vspf, align 4
  store i32 0, i32* %chfont, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.154, %if.end.116
  %72 = load i32, i32* %c, align 4
  %73 = load i32, i32* @ncol, align 4
  %cmp118 = icmp slt i32 %72, %73
  br i1 %cmp118, label %for.body.119, label %for.end.156

for.body.119:                                     ; preds = %for.cond.117
  %74 = load i32, i32* %c, align 4
  %idxprom120 = sext i32 %74 to i64
  %75 = load i32, i32* %nl.addr, align 4
  %idxprom121 = sext i32 %75 to i64
  %arrayidx122 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom121
  %76 = load %struct.colstr*, %struct.colstr** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds %struct.colstr, %struct.colstr* %76, i64 %idxprom120
  %col124 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx123, i32 0, i32 0
  %77 = load i8*, i8** %col124, align 8
  store i8* %77, i8** %s, align 8
  %78 = load i8*, i8** %s, align 8
  %cmp125 = icmp eq i8* %78, null
  br i1 %cmp125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %for.body.119
  br label %for.inc.154

if.end.127:                                       ; preds = %for.body.119
  %79 = load i32, i32* %c, align 4
  %idxprom128 = sext i32 %79 to i64
  %80 = load i32, i32* %nl.addr, align 4
  %idxprom129 = sext i32 %80 to i64
  %arrayidx130 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom129
  %81 = load i32, i32* %arrayidx130, align 4
  %idxprom131 = sext i32 %81 to i64
  %arrayidx132 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i32 0, i64 %idxprom131
  %arrayidx133 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %arrayidx132, i32 0, i64 %idxprom128
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx133, i32 0, i32 0
  %82 = ptrtoint i8* %arraydecay to i32
  %83 = load i32, i32* %chfont, align 4
  %or = or i32 %83, %82
  store i32 %or, i32* %chfont, align 4
  %84 = load i8*, i8** %s, align 8
  %85 = ptrtoint i8* %84 to i32
  %call134 = call i32 @point(i32 %85)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.127
  br label %for.inc.154

if.end.137:                                       ; preds = %if.end.127
  %86 = load i32, i32* %nl.addr, align 4
  %call138 = call i32 @prev(i32 %86)
  store i32 %call138, i32* %lf, align 4
  %87 = load i32, i32* %lf, align 4
  %cmp139 = icmp sge i32 %87, 0
  br i1 %cmp139, label %land.lhs.true.140, label %if.else

land.lhs.true.140:                                ; preds = %if.end.137
  %88 = load i32, i32* %c, align 4
  %idxprom141 = sext i32 %88 to i64
  %89 = load i32, i32* %lf, align 4
  %idxprom142 = sext i32 %89 to i64
  %arrayidx143 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom142
  %90 = load %struct.colstr*, %struct.colstr** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds %struct.colstr, %struct.colstr* %90, i64 %idxprom141
  %col145 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx144, i32 0, i32 0
  %91 = load i8*, i8** %col145, align 8
  %call146 = call i32 @vspen(i8* %91)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.then.148, label %if.else

if.then.148:                                      ; preds = %land.lhs.true.140
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %93 = load i8*, i8** %s, align 8
  %94 = load i32, i32* %c, align 4
  %add149 = add nsw i32 97, %94
  %95 = load i8*, i8** %s, align 8
  %96 = load i32, i32* %c, align 4
  %add150 = add nsw i32 97, %96
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i32 0, i32 0), i8* %93, i32 %add149, i8* %95, i32 %add150)
  br label %if.end.153

if.else:                                          ; preds = %land.lhs.true.140, %if.end.137
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %98 = load i8*, i8** %s, align 8
  %99 = load i8*, i8** %s, align 8
  %call152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i32 0, i32 0), i8* %98, i8* %99)
  br label %if.end.153

if.end.153:                                       ; preds = %if.else, %if.then.148
  br label %for.inc.154

for.inc.154:                                      ; preds = %if.end.153, %if.then.136, %if.then.126
  %100 = load i32, i32* %c, align 4
  %inc155 = add nsw i32 %100, 1
  store i32 %inc155, i32* %c, align 4
  br label %for.cond.117

for.end.156:                                      ; preds = %for.cond.117
  %101 = load i32, i32* @allflg, align 4
  %tobool157 = icmp ne i32 %101, 0
  br i1 %tobool157, label %land.lhs.true.158, label %if.end.161

land.lhs.true.158:                                ; preds = %for.end.156
  %102 = load i32, i32* @once, align 4
  %cmp159 = icmp sgt i32 %102, 0
  br i1 %cmp159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %land.lhs.true.158
  %103 = load i32, i32* %i.addr, align 4
  call void @fullwide(i32 %103, i32 45)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %land.lhs.true.158, %for.end.156
  store i32 1, i32* @once, align 4
  %104 = load i32, i32* %i.addr, align 4
  %105 = load i32, i32* %nl.addr, align 4
  call void @runtabs(i32 %104, i32 %105)
  %106 = load i32, i32* %i.addr, align 4
  %call162 = call i32 @allh(i32 %106)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %land.lhs.true.164, label %if.end.169

land.lhs.true.164:                                ; preds = %if.end.161
  %107 = load i32, i32* @pr1403, align 4
  %tobool165 = icmp ne i32 %107, 0
  br i1 %tobool165, label %if.end.169, label %if.then.166

if.then.166:                                      ; preds = %land.lhs.true.164
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 36)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.166, %land.lhs.true.164, %if.end.161
  %110 = load i32, i32* %chfont, align 4
  %tobool170 = icmp ne i32 %110, 0
  br i1 %tobool170, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %if.end.169
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 31)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %if.end.169
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0))
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %vct, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.478, %if.end.173
  %114 = load i32, i32* %c, align 4
  %115 = load i32, i32* @ncol, align 4
  %cmp177 = icmp slt i32 %114, %115
  br i1 %cmp177, label %for.body.178, label %for.end.480

for.body.178:                                     ; preds = %for.cond.176
  %116 = load i32, i32* @watchout, align 4
  %cmp179 = icmp eq i32 %116, 0
  br i1 %cmp179, label %land.lhs.true.180, label %if.end.188

land.lhs.true.180:                                ; preds = %for.body.178
  %117 = load i32, i32* %i.addr, align 4
  %add181 = add nsw i32 %117, 1
  %118 = load i32, i32* @nlin, align 4
  %cmp182 = icmp slt i32 %add181, %118
  br i1 %cmp182, label %land.lhs.true.183, label %if.end.188

land.lhs.true.183:                                ; preds = %land.lhs.true.180
  %119 = load i32, i32* %i.addr, align 4
  %120 = load i32, i32* %c, align 4
  %call184 = call i32 @left(i32 %119, i32 %120, i32* %lwid)
  store i32 %call184, i32* %lf, align 4
  %cmp185 = icmp sge i32 %call184, 0
  br i1 %cmp185, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %land.lhs.true.183
  %121 = load i32, i32* %c, align 4
  call void @tohcol(i32 %121)
  %122 = load i32, i32* %lf, align 4
  %123 = load i32, i32* %i.addr, align 4
  %124 = load i32, i32* %c, align 4
  %125 = load i32, i32* %lwid, align 4
  call void @drawvert(i32 %122, i32 %123, i32 %124, i32 %125)
  %126 = load i32, i32* %vct, align 4
  %add187 = add nsw i32 %126, 2
  store i32 %add187, i32* %vct, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.186, %land.lhs.true.183, %land.lhs.true.180, %for.body.178
  %127 = load i32, i32* @rightl, align 4
  %tobool189 = icmp ne i32 %127, 0
  br i1 %tobool189, label %land.lhs.true.190, label %if.end.194

land.lhs.true.190:                                ; preds = %if.end.188
  %128 = load i32, i32* %c, align 4
  %add191 = add nsw i32 %128, 1
  %129 = load i32, i32* @ncol, align 4
  %cmp192 = icmp eq i32 %add191, %129
  br i1 %cmp192, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %land.lhs.true.190
  br label %for.inc.478

if.end.194:                                       ; preds = %land.lhs.true.190, %if.end.188
  %130 = load i32, i32* %i.addr, align 4
  store i32 %130, i32* %vforml, align 4
  %131 = load i32, i32* %nl.addr, align 4
  %call195 = call i32 @prev(i32 %131)
  store i32 %call195, i32* %lf, align 4
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.206, %if.end.194
  %132 = load i32, i32* %lf, align 4
  %cmp197 = icmp sge i32 %132, 0
  br i1 %cmp197, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.196
  %133 = load i32, i32* %c, align 4
  %idxprom198 = sext i32 %133 to i64
  %134 = load i32, i32* %lf, align 4
  %idxprom199 = sext i32 %134 to i64
  %arrayidx200 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom199
  %135 = load %struct.colstr*, %struct.colstr** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds %struct.colstr, %struct.colstr* %135, i64 %idxprom198
  %col202 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx201, i32 0, i32 0
  %136 = load i8*, i8** %col202, align 8
  %call203 = call i32 @vspen(i8* %136)
  %tobool204 = icmp ne i32 %call203, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.196
  %137 = phi i1 [ false, %for.cond.196 ], [ %tobool204, %land.rhs ]
  br i1 %137, label %for.body.205, label %for.end.208

for.body.205:                                     ; preds = %land.end
  %138 = load i32, i32* %lf, align 4
  store i32 %138, i32* %vforml, align 4
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.body.205
  %139 = load i32, i32* %lf, align 4
  %call207 = call i32 @prev(i32 %139)
  store i32 %call207, i32* %lf, align 4
  br label %for.cond.196

for.end.208:                                      ; preds = %land.end
  %140 = load i32, i32* %vforml, align 4
  %141 = load i32, i32* %c, align 4
  %call209 = call i32 @ctype(i32 %140, i32 %141)
  store i32 %call209, i32* %form, align 4
  %142 = load i32, i32* %form, align 4
  %cmp210 = icmp ne i32 %142, 115
  br i1 %cmp210, label %if.then.211, label %if.end.232

if.then.211:                                      ; preds = %for.end.208
  %143 = load i32, i32* %c, align 4
  %add212 = add nsw i32 %143, 40
  store i32 %add212, i32* %ct, align 4
  %144 = load i32, i32* %form, align 4
  %cmp213 = icmp eq i32 %144, 97
  br i1 %cmp213, label %if.then.214, label %if.end.216

if.then.214:                                      ; preds = %if.then.211
  %145 = load i32, i32* %c, align 4
  %add215 = add nsw i32 %145, 60
  store i32 %add215, i32* %ct, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.214, %if.then.211
  %146 = load i32, i32* %form, align 4
  %cmp217 = icmp eq i32 %146, 110
  br i1 %cmp217, label %land.lhs.true.218, label %if.end.230

land.lhs.true.218:                                ; preds = %if.end.216
  %147 = load i32, i32* %c, align 4
  %idxprom219 = sext i32 %147 to i64
  %148 = load i32, i32* %nl.addr, align 4
  %idxprom220 = sext i32 %148 to i64
  %arrayidx221 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom220
  %149 = load %struct.colstr*, %struct.colstr** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds %struct.colstr, %struct.colstr* %149, i64 %idxprom219
  %rcol = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx222, i32 0, i32 1
  %150 = load i8*, i8** %rcol, align 8
  %tobool223 = icmp ne i8* %150, null
  br i1 %tobool223, label %land.lhs.true.224, label %if.end.230

land.lhs.true.224:                                ; preds = %land.lhs.true.218
  %151 = load i32, i32* %c, align 4
  %idxprom225 = sext i32 %151 to i64
  %arrayidx226 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i32 0, i64 %idxprom225
  %152 = load i32, i32* %arrayidx226, align 4
  %cmp227 = icmp eq i32 %152, 0
  br i1 %cmp227, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %land.lhs.true.224
  %153 = load i32, i32* %c, align 4
  %add229 = add nsw i32 %153, 60
  store i32 %add229, i32* %ct, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %land.lhs.true.224, %land.lhs.true.218, %if.end.216
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %155 = load i32, i32* %ct, align 4
  %call231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 %155)
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.230, %for.end.208
  %156 = load i32, i32* %c, align 4
  %idxprom233 = sext i32 %156 to i64
  %157 = load i32, i32* %nl.addr, align 4
  %idxprom234 = sext i32 %157 to i64
  %arrayidx235 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom234
  %158 = load %struct.colstr*, %struct.colstr** %arrayidx235, align 8
  %arrayidx236 = getelementptr inbounds %struct.colstr, %struct.colstr* %158, i64 %idxprom233
  %col237 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx236, i32 0, i32 0
  %159 = load i8*, i8** %col237, align 8
  store i8* %159, i8** %s, align 8
  %160 = load i32, i32* %c, align 4
  %idxprom238 = sext i32 %160 to i64
  %161 = load i32, i32* %vforml, align 4
  %idxprom239 = sext i32 %161 to i64
  %arrayidx240 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom239
  %162 = load i32, i32* %arrayidx240, align 4
  %idxprom241 = sext i32 %162 to i64
  %arrayidx242 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i32 0, i64 %idxprom241
  %arrayidx243 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %arrayidx242, i32 0, i64 %idxprom238
  %arraydecay244 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx243, i32 0, i32 0
  store i8* %arraydecay244, i8** %fn, align 8
  %163 = load i32, i32* %c, align 4
  %idxprom245 = sext i32 %163 to i64
  %164 = load i32, i32* %vforml, align 4
  %idxprom246 = sext i32 %164 to i64
  %arrayidx247 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom246
  %165 = load i32, i32* %arrayidx247, align 4
  %idxprom248 = sext i32 %165 to i64
  %arrayidx249 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i32 0, i64 %idxprom248
  %arrayidx250 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %arrayidx249, i32 0, i64 %idxprom245
  %arraydecay251 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx250, i32 0, i32 0
  store i8* %arraydecay251, i8** %size, align 8
  %166 = load i8*, i8** %size, align 8
  %167 = load i8, i8* %166, align 1
  %conv = sext i8 %167 to i32
  %cmp252 = icmp eq i32 %conv, 0
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %if.end.232
  store i8* null, i8** %size, align 8
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.254, %if.end.232
  %168 = load i32, i32* %vforml, align 4
  %169 = load i32, i32* %c, align 4
  %call256 = call i32 @ctype(i32 %168, i32 %169)
  store i32 %call256, i32* %ct, align 4
  switch i32 %call256, label %sw.default [
    i32 110, label %sw.bb.257
    i32 97, label %sw.bb.257
    i32 99, label %sw.bb.305
    i32 114, label %sw.bb.306
    i32 108, label %sw.bb.307
    i32 45, label %sw.bb.308
    i32 61, label %sw.bb.308
  ]

sw.bb.257:                                        ; preds = %if.end.255, %if.end.255
  %170 = load i32, i32* %c, align 4
  %idxprom258 = sext i32 %170 to i64
  %171 = load i32, i32* %nl.addr, align 4
  %idxprom259 = sext i32 %171 to i64
  %arrayidx260 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom259
  %172 = load %struct.colstr*, %struct.colstr** %arrayidx260, align 8
  %arrayidx261 = getelementptr inbounds %struct.colstr, %struct.colstr* %172, i64 %idxprom258
  %rcol262 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx261, i32 0, i32 1
  %173 = load i8*, i8** %rcol262, align 8
  %tobool263 = icmp ne i8* %173, null
  br i1 %tobool263, label %if.then.264, label %if.end.304

if.then.264:                                      ; preds = %sw.bb.257
  %174 = load i32, i32* %c, align 4
  %idxprom265 = sext i32 %174 to i64
  %arrayidx266 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i32 0, i64 %idxprom265
  %175 = load i32, i32* %arrayidx266, align 4
  %tobool267 = icmp ne i32 %175, 0
  br i1 %tobool267, label %if.then.268, label %if.end.298

if.then.268:                                      ; preds = %if.then.264
  %176 = load i32, i32* %nl.addr, align 4
  %call269 = call i32 @prev(i32 %176)
  store i32 %call269, i32* %ip, align 4
  %177 = load i32, i32* %ip, align 4
  %cmp270 = icmp sge i32 %177, 0
  br i1 %cmp270, label %if.then.272, label %if.end.295

if.then.272:                                      ; preds = %if.then.268
  %178 = load i32, i32* %c, align 4
  %idxprom273 = sext i32 %178 to i64
  %179 = load i32, i32* %ip, align 4
  %idxprom274 = sext i32 %179 to i64
  %arrayidx275 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom274
  %180 = load %struct.colstr*, %struct.colstr** %arrayidx275, align 8
  %arrayidx276 = getelementptr inbounds %struct.colstr, %struct.colstr* %180, i64 %idxprom273
  %col277 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx276, i32 0, i32 0
  %181 = load i8*, i8** %col277, align 8
  %call278 = call i32 @vspen(i8* %181)
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.then.280, label %if.end.294

if.then.280:                                      ; preds = %if.then.272
  %182 = load i32, i32* %exvspen, align 4
  %cmp281 = icmp eq i32 %182, 0
  br i1 %cmp281, label %if.then.283, label %if.end.293

if.then.283:                                      ; preds = %if.then.280
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %184 = load i32, i32* %c, align 4
  %add284 = add nsw i32 %184, 97
  %call285 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i32 %add284)
  %185 = load i32, i32* %cmidx, align 4
  %tobool286 = icmp ne i32 %185, 0
  br i1 %tobool286, label %if.then.287, label %if.end.290

if.then.287:                                      ; preds = %if.then.283
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %187 = load i32, i32* %c, align 4
  %add288 = add nsw i32 %187, 97
  %call289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i32 %add288)
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.287, %if.then.283
  %188 = load i32, i32* %vct, align 4
  %inc291 = add nsw i32 %188, 1
  store i32 %inc291, i32* %vct, align 4
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  store i32 1, i32* %exvspen, align 4
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.290, %if.then.280
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.then.272
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.then.268
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %191 = load i32, i32* @F1, align 4
  %192 = load i32, i32* @F2, align 4
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %191, i32 %192)
  %193 = load i8*, i8** %s, align 8
  %194 = load i8*, i8** %fn, align 8
  %195 = load i8*, i8** %size, align 8
  call void @puttext(i8* %193, i8* %194, i8* %195)
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %197 = load i32, i32* @F1, align 4
  %call297 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 %197)
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.295, %if.then.264
  %198 = load i32, i32* %c, align 4
  %idxprom299 = sext i32 %198 to i64
  %199 = load i32, i32* %nl.addr, align 4
  %idxprom300 = sext i32 %199 to i64
  %arrayidx301 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom300
  %200 = load %struct.colstr*, %struct.colstr** %arrayidx301, align 8
  %arrayidx302 = getelementptr inbounds %struct.colstr, %struct.colstr* %200, i64 %idxprom299
  %rcol303 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx302, i32 0, i32 1
  %201 = load i8*, i8** %rcol303, align 8
  store i8* %201, i8** %s, align 8
  store i32 1, i32* %form, align 4
  br label %sw.epilog.321

if.end.304:                                       ; preds = %sw.bb.257
  br label %sw.bb.305

sw.bb.305:                                        ; preds = %if.end.255, %if.end.304
  store i32 3, i32* %form, align 4
  br label %sw.epilog.321

sw.bb.306:                                        ; preds = %if.end.255
  store i32 2, i32* %form, align 4
  br label %sw.epilog.321

sw.bb.307:                                        ; preds = %if.end.255
  store i32 1, i32* %form, align 4
  br label %sw.epilog.321

sw.bb.308:                                        ; preds = %if.end.255, %if.end.255
  %202 = load i32, i32* %c, align 4
  %idxprom309 = sext i32 %202 to i64
  %203 = load i32, i32* %nl.addr, align 4
  %idxprom310 = sext i32 %203 to i64
  %arrayidx311 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom310
  %204 = load %struct.colstr*, %struct.colstr** %arrayidx311, align 8
  %arrayidx312 = getelementptr inbounds %struct.colstr, %struct.colstr* %204, i64 %idxprom309
  %col313 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx312, i32 0, i32 0
  %205 = load i8*, i8** %col313, align 8
  %call314 = call i32 @real(i8* %205)
  %tobool315 = icmp ne i32 %call314, 0
  br i1 %tobool315, label %if.then.316, label %if.end.320

if.then.316:                                      ; preds = %sw.bb.308
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %207 = load i8*, i8** @ifile, align 8
  %208 = load i32, i32* @iline, align 4
  %sub317 = sub nsw i32 %208, 1
  %209 = load i32, i32* %i.addr, align 4
  %add318 = add nsw i32 %209, 1
  %call319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0), i8* %207, i32 %sub317, i32 %add318)
  br label %if.end.320

if.end.320:                                       ; preds = %if.then.316, %sw.bb.308
  %210 = load i32, i32* %i.addr, align 4
  %211 = load i32, i32* %c, align 4
  %212 = load i32, i32* %ct, align 4
  call void @makeline(i32 %210, i32 %211, i32 %212)
  br label %for.inc.478

sw.default:                                       ; preds = %if.end.255
  br label %for.inc.478

sw.epilog.321:                                    ; preds = %sw.bb.307, %sw.bb.306, %sw.bb.305, %if.end.298
  %213 = load i32, i32* %ct, align 4
  %cmp322 = icmp eq i32 %213, 97
  br i1 %cmp322, label %land.lhs.true.327, label %lor.lhs.false.324

lor.lhs.false.324:                                ; preds = %sw.epilog.321
  %214 = load i32, i32* %ct, align 4
  %cmp325 = icmp eq i32 %214, 110
  br i1 %cmp325, label %land.lhs.true.327, label %cond.false

land.lhs.true.327:                                ; preds = %lor.lhs.false.324, %sw.epilog.321
  %215 = load i32, i32* %c, align 4
  %idxprom328 = sext i32 %215 to i64
  %216 = load i32, i32* %nl.addr, align 4
  %idxprom329 = sext i32 %216 to i64
  %arrayidx330 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom329
  %217 = load %struct.colstr*, %struct.colstr** %arrayidx330, align 8
  %arrayidx331 = getelementptr inbounds %struct.colstr, %struct.colstr* %217, i64 %idxprom328
  %rcol332 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx331, i32 0, i32 1
  %218 = load i8*, i8** %rcol332, align 8
  %tobool333 = icmp ne i8* %218, null
  br i1 %tobool333, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.327
  %219 = load i32, i32* %c, align 4
  %idxprom334 = sext i32 %219 to i64
  %arrayidx335 = getelementptr inbounds [0 x i32], [0 x i32]* @rused, i32 0, i64 %idxprom334
  %220 = load i32, i32* %arrayidx335, align 4
  %tobool336 = icmp ne i32 %220, 0
  br i1 %tobool336, label %if.then.340, label %if.end.404

cond.false:                                       ; preds = %land.lhs.true.327, %lor.lhs.false.324
  %221 = load i32, i32* %c, align 4
  %idxprom337 = sext i32 %221 to i64
  %arrayidx338 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i32 0, i64 %idxprom337
  %222 = load i32, i32* %arrayidx338, align 4
  %tobool339 = icmp ne i32 %222, 0
  br i1 %tobool339, label %if.then.340, label %if.end.404

if.then.340:                                      ; preds = %cond.false, %cond.true
  %223 = load i8*, i8** %s, align 8
  %call341 = call i32 @ifline(i8* %223)
  %tobool342 = icmp ne i32 %call341, 0
  br i1 %tobool342, label %if.then.343, label %if.end.345

if.then.343:                                      ; preds = %if.then.340
  %224 = load i32, i32* %i.addr, align 4
  %225 = load i32, i32* %c, align 4
  %226 = load i8*, i8** %s, align 8
  %call344 = call i32 @ifline(i8* %226)
  call void @makeline(i32 %224, i32 %225, i32 %call344)
  br label %for.inc.478

if.end.345:                                       ; preds = %if.then.340
  %227 = load i8*, i8** %s, align 8
  %call346 = call i32 @filler(i8* %227)
  %tobool347 = icmp ne i32 %call346, 0
  br i1 %tobool347, label %if.then.348, label %if.end.351

if.then.348:                                      ; preds = %if.end.345
  %228 = load i32, i32* %c, align 4
  %add349 = add nsw i32 %228, 80
  %229 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %229, i64 2
  %call350 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i32 %add349, i8* %add.ptr)
  br label %for.inc.478

if.end.351:                                       ; preds = %if.end.345
  %230 = load i32, i32* %nl.addr, align 4
  %call352 = call i32 @prev(i32 %230)
  store i32 %call352, i32* %ip, align 4
  %231 = load i32, i32* %c, align 4
  %idxprom353 = sext i32 %231 to i64
  %232 = load i32, i32* %nl.addr, align 4
  %idxprom354 = sext i32 %232 to i64
  %arrayidx355 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom354
  %233 = load i32, i32* %arrayidx355, align 4
  %idxprom356 = sext i32 %233 to i64
  %arrayidx357 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i32 0, i64 %idxprom356
  %arrayidx358 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx357, i32 0, i64 %idxprom353
  %234 = load i32, i32* %arrayidx358, align 4
  %cmp359 = icmp eq i32 %234, 0
  %conv360 = zext i1 %cmp359 to i32
  store i32 %conv360, i32* %cmidx, align 4
  %235 = load i32, i32* %ip, align 4
  %cmp361 = icmp sge i32 %235, 0
  br i1 %cmp361, label %if.then.363, label %if.end.386

if.then.363:                                      ; preds = %if.end.351
  %236 = load i32, i32* %c, align 4
  %idxprom364 = sext i32 %236 to i64
  %237 = load i32, i32* %ip, align 4
  %idxprom365 = sext i32 %237 to i64
  %arrayidx366 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom365
  %238 = load %struct.colstr*, %struct.colstr** %arrayidx366, align 8
  %arrayidx367 = getelementptr inbounds %struct.colstr, %struct.colstr* %238, i64 %idxprom364
  %col368 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx367, i32 0, i32 0
  %239 = load i8*, i8** %col368, align 8
  %call369 = call i32 @vspen(i8* %239)
  %tobool370 = icmp ne i32 %call369, 0
  br i1 %tobool370, label %if.then.371, label %if.end.385

if.then.371:                                      ; preds = %if.then.363
  %240 = load i32, i32* %exvspen, align 4
  %cmp372 = icmp eq i32 %240, 0
  br i1 %cmp372, label %if.then.374, label %if.end.384

if.then.374:                                      ; preds = %if.then.371
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %242 = load i32, i32* %c, align 4
  %add375 = add nsw i32 %242, 97
  %call376 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i32 %add375)
  %243 = load i32, i32* %cmidx, align 4
  %tobool377 = icmp ne i32 %243, 0
  br i1 %tobool377, label %if.then.378, label %if.end.381

if.then.378:                                      ; preds = %if.then.374
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %245 = load i32, i32* %c, align 4
  %add379 = add nsw i32 %245, 97
  %call380 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %244, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i32 %add379)
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.378, %if.then.374
  %246 = load i32, i32* %vct, align 4
  %inc382 = add nsw i32 %246, 1
  store i32 %inc382, i32* %vct, align 4
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call383 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.381, %if.then.371
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %if.then.363
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.end.351
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %249 = load i32, i32* @F1, align 4
  %call387 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 %249)
  %250 = load i32, i32* %form, align 4
  %cmp388 = icmp ne i32 %250, 1
  br i1 %cmp388, label %if.then.390, label %if.end.392

if.then.390:                                      ; preds = %if.end.386
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %252 = load i32, i32* @F2, align 4
  %call391 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %251, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 %252)
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.390, %if.end.386
  %253 = load i8*, i8** %s, align 8
  %call393 = call i32 @vspen(i8* %253)
  %tobool394 = icmp ne i32 %call393, 0
  br i1 %tobool394, label %if.then.395, label %if.else.396

if.then.395:                                      ; preds = %if.end.392
  store i32 1, i32* %vspf, align 4
  br label %if.end.397

if.else.396:                                      ; preds = %if.end.392
  %254 = load i8*, i8** %s, align 8
  %255 = load i8*, i8** %fn, align 8
  %256 = load i8*, i8** %size, align 8
  call void @puttext(i8* %254, i8* %255, i8* %256)
  br label %if.end.397

if.end.397:                                       ; preds = %if.else.396, %if.then.395
  %257 = load i32, i32* %form, align 4
  %cmp398 = icmp ne i32 %257, 2
  br i1 %cmp398, label %if.then.400, label %if.end.402

if.then.400:                                      ; preds = %if.end.397
  %258 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %259 = load i32, i32* @F2, align 4
  %call401 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %258, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 %259)
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.400, %if.end.397
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %261 = load i32, i32* @F1, align 4
  %call403 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 %261)
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.402, %cond.false, %cond.true
  %262 = load i32, i32* %ip, align 4
  %cmp405 = icmp sge i32 %262, 0
  br i1 %cmp405, label %if.then.407, label %if.end.469

if.then.407:                                      ; preds = %if.end.404
  %263 = load i32, i32* %c, align 4
  %idxprom408 = sext i32 %263 to i64
  %264 = load i32, i32* %ip, align 4
  %idxprom409 = sext i32 %264 to i64
  %arrayidx410 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom409
  %265 = load %struct.colstr*, %struct.colstr** %arrayidx410, align 8
  %arrayidx411 = getelementptr inbounds %struct.colstr, %struct.colstr* %265, i64 %idxprom408
  %col412 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx411, i32 0, i32 0
  %266 = load i8*, i8** %col412, align 8
  %call413 = call i32 @vspen(i8* %266)
  %tobool414 = icmp ne i32 %call413, 0
  br i1 %tobool414, label %if.then.415, label %if.else.467

if.then.415:                                      ; preds = %if.then.407
  %267 = load i32, i32* %c, align 4
  %add416 = add nsw i32 %267, 1
  %268 = load i32, i32* @ncol, align 4
  %cmp417 = icmp slt i32 %add416, %268
  br i1 %cmp417, label %land.lhs.true.419, label %land.end.453

land.lhs.true.419:                                ; preds = %if.then.415
  %269 = load i32, i32* %c, align 4
  %add420 = add nsw i32 %269, 1
  %idxprom421 = sext i32 %add420 to i64
  %270 = load i32, i32* %ip, align 4
  %idxprom422 = sext i32 %270 to i64
  %arrayidx423 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom422
  %271 = load %struct.colstr*, %struct.colstr** %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds %struct.colstr, %struct.colstr* %271, i64 %idxprom421
  %col425 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx424, i32 0, i32 0
  %272 = load i8*, i8** %col425, align 8
  %call426 = call i32 @vspen(i8* %272)
  %tobool427 = icmp ne i32 %call426, 0
  br i1 %tobool427, label %land.lhs.true.428, label %land.end.453

land.lhs.true.428:                                ; preds = %land.lhs.true.419
  %273 = load i32, i32* %c, align 4
  %idxprom429 = sext i32 %273 to i64
  %arrayidx430 = getelementptr inbounds [20 x i32], [20 x i32]* @topat, i32 0, i64 %idxprom429
  %274 = load i32, i32* %arrayidx430, align 4
  %275 = load i32, i32* %c, align 4
  %add431 = add nsw i32 %275, 1
  %idxprom432 = sext i32 %add431 to i64
  %arrayidx433 = getelementptr inbounds [20 x i32], [20 x i32]* @topat, i32 0, i64 %idxprom432
  %276 = load i32, i32* %arrayidx433, align 4
  %cmp434 = icmp eq i32 %274, %276
  br i1 %cmp434, label %land.lhs.true.436, label %land.end.453

land.lhs.true.436:                                ; preds = %land.lhs.true.428
  %277 = load i32, i32* %cmidx, align 4
  %278 = load i32, i32* %c, align 4
  %add437 = add nsw i32 %278, 1
  %idxprom438 = sext i32 %add437 to i64
  %279 = load i32, i32* %nl.addr, align 4
  %idxprom439 = sext i32 %279 to i64
  %arrayidx440 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom439
  %280 = load i32, i32* %arrayidx440, align 4
  %idxprom441 = sext i32 %280 to i64
  %arrayidx442 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i32 0, i64 %idxprom441
  %arrayidx443 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx442, i32 0, i64 %idxprom438
  %281 = load i32, i32* %arrayidx443, align 4
  %cmp444 = icmp eq i32 %281, 0
  %conv445 = zext i1 %cmp444 to i32
  %cmp446 = icmp eq i32 %277, %conv445
  br i1 %cmp446, label %land.rhs.448, label %land.end.453

land.rhs.448:                                     ; preds = %land.lhs.true.436
  %282 = load i32, i32* %i.addr, align 4
  %283 = load i32, i32* %c, align 4
  %add449 = add nsw i32 %283, 1
  %call450 = call i32 @left(i32 %282, i32 %add449, i32* %lwid)
  %cmp451 = icmp slt i32 %call450, 0
  br label %land.end.453

land.end.453:                                     ; preds = %land.rhs.448, %land.lhs.true.436, %land.lhs.true.428, %land.lhs.true.419, %if.then.415
  %284 = phi i1 [ false, %land.lhs.true.436 ], [ false, %land.lhs.true.428 ], [ false, %land.lhs.true.419 ], [ false, %if.then.415 ], [ %cmp451, %land.rhs.448 ]
  %land.ext = zext i1 %284 to i32
  store i32 %land.ext, i32* %exvspen, align 4
  %285 = load i32, i32* %exvspen, align 4
  %cmp454 = icmp eq i32 %285, 0
  br i1 %cmp454, label %if.then.456, label %if.end.466

if.then.456:                                      ; preds = %land.end.453
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %287 = load i32, i32* %c, align 4
  %add457 = add nsw i32 %287, 97
  %call458 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %286, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i32 %add457)
  %288 = load i32, i32* %cmidx, align 4
  %tobool459 = icmp ne i32 %288, 0
  br i1 %tobool459, label %if.then.460, label %if.end.463

if.then.460:                                      ; preds = %if.then.456
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %290 = load i32, i32* %c, align 4
  %add461 = add nsw i32 %290, 97
  %call462 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %289, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i32 %add461)
  br label %if.end.463

if.end.463:                                       ; preds = %if.then.460, %if.then.456
  %291 = load i32, i32* %vct, align 4
  %inc464 = add nsw i32 %291, 1
  store i32 %inc464, i32* %vct, align 4
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call465 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %292, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.463, %land.end.453
  br label %if.end.468

if.else.467:                                      ; preds = %if.then.407
  store i32 0, i32* %exvspen, align 4
  br label %if.end.468

if.end.468:                                       ; preds = %if.else.467, %if.end.466
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468, %if.end.404
  %293 = load i32, i32* %vct, align 4
  %cmp470 = icmp sgt i32 %293, 7
  br i1 %cmp470, label %land.lhs.true.472, label %if.end.477

land.lhs.true.472:                                ; preds = %if.end.469
  %294 = load i32, i32* %c, align 4
  %295 = load i32, i32* @ncol, align 4
  %cmp473 = icmp slt i32 %294, %295
  br i1 %cmp473, label %if.then.475, label %if.end.477

if.then.475:                                      ; preds = %land.lhs.true.472
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call476 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %296, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %vct, align 4
  br label %if.end.477

if.end.477:                                       ; preds = %if.then.475, %land.lhs.true.472, %if.end.469
  br label %for.inc.478

for.inc.478:                                      ; preds = %if.end.477, %if.then.348, %if.then.343, %sw.default, %if.end.320, %if.then.193
  %297 = load i32, i32* %c, align 4
  %inc479 = add nsw i32 %297, 1
  store i32 %inc479, i32* %c, align 4
  br label %for.cond.176

for.end.480:                                      ; preds = %for.cond.176
  %298 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call481 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %298, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %299 = load i32, i32* %i.addr, align 4
  %call482 = call i32 @allh(i32 %299)
  %tobool483 = icmp ne i32 %call482, 0
  br i1 %tobool483, label %land.lhs.true.484, label %if.end.488

land.lhs.true.484:                                ; preds = %for.end.480
  %300 = load i32, i32* @pr1403, align 4
  %tobool485 = icmp ne i32 %300, 0
  br i1 %tobool485, label %if.end.488, label %if.then.486

if.then.486:                                      ; preds = %land.lhs.true.484
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call487 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %301, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 36)
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.486, %land.lhs.true.484, %for.end.480
  %302 = load i32, i32* @watchout, align 4
  %tobool489 = icmp ne i32 %302, 0
  br i1 %tobool489, label %if.then.490, label %if.end.491

if.then.490:                                      ; preds = %if.end.488
  %303 = load i32, i32* %i.addr, align 4
  %304 = load i32, i32* %nl.addr, align 4
  call void @funnies(i32 %303, i32 %304)
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.490, %if.end.488
  %305 = load i32, i32* %vspf, align 4
  %tobool492 = icmp ne i32 %305, 0
  br i1 %tobool492, label %if.then.493, label %if.end.529

if.then.493:                                      ; preds = %if.end.491
  store i32 0, i32* %c, align 4
  br label %for.cond.494

for.cond.494:                                     ; preds = %for.inc.526, %if.then.493
  %306 = load i32, i32* %c, align 4
  %307 = load i32, i32* @ncol, align 4
  %cmp495 = icmp slt i32 %306, %307
  br i1 %cmp495, label %for.body.497, label %for.end.528

for.body.497:                                     ; preds = %for.cond.494
  %308 = load i32, i32* %c, align 4
  %idxprom498 = sext i32 %308 to i64
  %309 = load i32, i32* %nl.addr, align 4
  %idxprom499 = sext i32 %309 to i64
  %arrayidx500 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom499
  %310 = load %struct.colstr*, %struct.colstr** %arrayidx500, align 8
  %arrayidx501 = getelementptr inbounds %struct.colstr, %struct.colstr* %310, i64 %idxprom498
  %col502 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx501, i32 0, i32 0
  %311 = load i8*, i8** %col502, align 8
  %call503 = call i32 @vspen(i8* %311)
  %tobool504 = icmp ne i32 %call503, 0
  br i1 %tobool504, label %land.lhs.true.505, label %if.end.525

land.lhs.true.505:                                ; preds = %for.body.497
  %312 = load i32, i32* %nl.addr, align 4
  %cmp506 = icmp eq i32 %312, 0
  br i1 %cmp506, label %if.then.520, label %lor.lhs.false.508

lor.lhs.false.508:                                ; preds = %land.lhs.true.505
  %313 = load i32, i32* %nl.addr, align 4
  %call509 = call i32 @prev(i32 %313)
  store i32 %call509, i32* %lf, align 4
  %cmp510 = icmp slt i32 %call509, 0
  br i1 %cmp510, label %if.then.520, label %lor.lhs.false.512

lor.lhs.false.512:                                ; preds = %lor.lhs.false.508
  %314 = load i32, i32* %c, align 4
  %idxprom513 = sext i32 %314 to i64
  %315 = load i32, i32* %lf, align 4
  %idxprom514 = sext i32 %315 to i64
  %arrayidx515 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom514
  %316 = load %struct.colstr*, %struct.colstr** %arrayidx515, align 8
  %arrayidx516 = getelementptr inbounds %struct.colstr, %struct.colstr* %316, i64 %idxprom513
  %col517 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx516, i32 0, i32 0
  %317 = load i8*, i8** %col517, align 8
  %call518 = call i32 @vspen(i8* %317)
  %tobool519 = icmp ne i32 %call518, 0
  br i1 %tobool519, label %if.end.525, label %if.then.520

if.then.520:                                      ; preds = %lor.lhs.false.512, %lor.lhs.false.508, %land.lhs.true.505
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %319 = load i32, i32* %c, align 4
  %add521 = add nsw i32 97, %319
  %call522 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %318, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32 %add521)
  %320 = load i32, i32* %nl.addr, align 4
  %321 = load i32, i32* %c, align 4
  %idxprom523 = sext i32 %321 to i64
  %arrayidx524 = getelementptr inbounds [20 x i32], [20 x i32]* @topat, i32 0, i64 %idxprom523
  store i32 %320, i32* %arrayidx524, align 4
  br label %if.end.525

if.end.525:                                       ; preds = %if.then.520, %lor.lhs.false.512, %for.body.497
  br label %for.inc.526

for.inc.526:                                      ; preds = %if.end.525
  %322 = load i32, i32* %c, align 4
  %inc527 = add nsw i32 %322, 1
  store i32 %inc527, i32* %c, align 4
  br label %for.cond.494

for.end.528:                                      ; preds = %for.cond.494
  br label %if.end.529

if.end.529:                                       ; preds = %if.then.64, %sw.epilog, %for.end.528, %if.end.491
  ret void
}

declare void @fullwide(i32, i32) #1

declare i32 @vspen(i8*) #1

declare i32 @next(i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @point(i32) #1

declare i32 @prev(i32) #1

declare i32 @puts(i8*) #1

declare void @runtabs(i32, i32) #1

declare i32 @allh(i32) #1

declare i32 @left(i32, i32, i32*) #1

declare void @tohcol(i32) #1

declare void @drawvert(i32, i32, i32, i32) #1

declare i32 @ctype(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @puttext(i8* %s, i8* %fn, i8* %size) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %fn.addr = alloca i8*, align 8
  %size.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %fn, i8** %fn.addr, align 8
  store i8* %size, i8** %size.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = ptrtoint i8* %0 to i32
  %call = call i32 @point(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %fn.addr, align 8
  call void @putfont(i8* %2)
  %3 = load i8*, i8** %size.addr, align 8
  call void @putsize(i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* %5)
  %6 = load i8*, i8** %fn.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 31)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %9 = load i8*, i8** %size.addr, align 8
  %cmp5 = icmp ne i8* %9, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  call void @putsize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  ret void
}

declare i32 @real(i8*) #1

declare void @makeline(i32, i32, i32) #1

declare i32 @ifline(i8*) #1

declare i32 @filler(i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @funnies(i32 %stl, i32 %lin) #0 {
entry:
  %stl.addr = alloca i32, align 4
  %lin.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %s = alloca i32, align 4
  %pl = alloca i32, align 4
  %lwid = alloca i32, align 4
  %dv = alloca i32, align 4
  %lf = alloca i32, align 4
  %ct = alloca i32, align 4
  %fn = alloca i8*, align 8
  store i32 %stl, i32* %stl.addr, align 4
  store i32 %lin, i32* %lin.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i32 31)
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.78, %entry
  %2 = load i32, i32* %c, align 4
  %3 = load i32, i32* @ncol, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.79

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %c, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %lin.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom2
  %6 = load %struct.colstr*, %struct.colstr** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds %struct.colstr, %struct.colstr* %6, i64 %idxprom
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx3, i32 0, i32 0
  %7 = load i8*, i8** %col, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %s, align 4
  %9 = load i32, i32* %s, align 4
  %call4 = call i32 @point(i32 %9)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.78

if.end:                                           ; preds = %for.body
  %10 = load i32, i32* %s, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %for.inc.78

if.end.7:                                         ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 37)
  %13 = load i32, i32* %stl.addr, align 4
  store i32 %13, i32* %pl, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.7
  %14 = load i32, i32* %pl, align 4
  %cmp11 = icmp sge i32 %14, 0
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.10
  %15 = load i32, i32* %pl, align 4
  %16 = load i32, i32* %c, align 4
  %call12 = call i32 @ctype(i32 %15, i32 %16)
  store i32 %call12, i32* %ct, align 4
  %idxprom13 = sext i32 %call12 to i64
  %call14 = call i16** @__ctype_b_loc() #3
  %17 = load i16*, i16** %call14, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %17, i64 %idxprom13
  %18 = load i16, i16* %arrayidx15, align 2
  %conv = zext i16 %18 to i32
  %and = and i32 %conv, 1024
  %tobool16 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool16, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.10
  %19 = phi i1 [ false, %for.cond.10 ], [ %lnot, %land.rhs ]
  br i1 %19, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %20 = load i32, i32* %pl, align 4
  %call18 = call i32 @prev(i32 %20)
  store i32 %call18, i32* %pl, align 4
  br label %for.cond.10

for.end:                                          ; preds = %land.end
  %21 = load i32, i32* %ct, align 4
  switch i32 %21, label %sw.epilog [
    i32 110, label %sw.bb
    i32 99, label %sw.bb
    i32 108, label %sw.bb.23
    i32 97, label %sw.bb.26
    i32 114, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %for.end, %for.end
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %23 = load i32, i32* %c, align 4
  %add = add nsw i32 %23, 40
  %24 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %24, 1
  %25 = load i32, i32* %lin.addr, align 4
  %26 = load i32, i32* %c, align 4
  %call19 = call i32 @ctspan(i32 %25, i32 %26)
  %add20 = add nsw i32 %sub, %call19
  %add21 = add nsw i32 %add20, 80
  %27 = load i32, i32* %s, align 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), i32 %add, i32 %add21, i32 %27)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %for.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %29 = load i32, i32* %c, align 4
  %add24 = add nsw i32 %29, 40
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 %add24)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.end
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %31 = load i32, i32* %c, align 4
  %add27 = add nsw i32 %31, 60
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 %add27)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %for.end
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %33 = load i32, i32* %c, align 4
  %add30 = add nsw i32 %33, 80
  %34 = load i32, i32* %s, align 4
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 %add30, i32 %34)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %sw.bb.29, %sw.bb.26, %sw.bb.23, %sw.bb
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i32 37)
  %36 = load i32, i32* %c, align 4
  %idxprom33 = sext i32 %36 to i64
  %37 = load i32, i32* %stl.addr, align 4
  %idxprom34 = sext i32 %37 to i64
  %arrayidx35 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom34
  %38 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i32 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %arrayidx37, i32 0, i64 %idxprom33
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx38, i32 0, i32 0
  store i8* %arraydecay, i8** %fn, align 8
  %39 = load i8*, i8** %fn, align 8
  call void @putfont(i8* %39)
  %40 = load i32, i32* %stl.addr, align 4
  %call39 = call i32 @prev(i32 %40)
  store i32 %call39, i32* %pl, align 4
  %41 = load i32, i32* %stl.addr, align 4
  %cmp40 = icmp sgt i32 %41, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %sw.epilog
  %42 = load i32, i32* %pl, align 4
  %cmp42 = icmp sge i32 %42, 0
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.68

land.lhs.true.44:                                 ; preds = %land.lhs.true
  %43 = load i32, i32* %c, align 4
  %idxprom45 = sext i32 %43 to i64
  %44 = load i32, i32* %pl, align 4
  %idxprom46 = sext i32 %44 to i64
  %arrayidx47 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom46
  %45 = load %struct.colstr*, %struct.colstr** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds %struct.colstr, %struct.colstr* %45, i64 %idxprom45
  %col49 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx48, i32 0, i32 0
  %46 = load i8*, i8** %col49, align 8
  %call50 = call i32 @vspen(i8* %46)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.68

if.then.52:                                       ; preds = %land.lhs.true.44
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %48 = load i32, i32* %c, align 4
  %add53 = add nsw i32 97, %48
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i32 %add53)
  %49 = load i32, i32* %c, align 4
  %idxprom55 = sext i32 %49 to i64
  %50 = load i32, i32* %stl.addr, align 4
  %idxprom56 = sext i32 %50 to i64
  %arrayidx57 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom56
  %51 = load i32, i32* %arrayidx57, align 4
  %idxprom58 = sext i32 %51 to i64
  %arrayidx59 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i32 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx59, i32 0, i64 %idxprom55
  %52 = load i32, i32* %arrayidx60, align 4
  %cmp61 = icmp eq i32 %52, 0
  br i1 %cmp61, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.then.52
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %54 = load i32, i32* %c, align 4
  %add64 = add nsw i32 97, %54
  %55 = load i32, i32* %s, align 4
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0), i32 38, i32 %add64, i32 %55)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i32 0, i32 0), i32 38, i32 38)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %if.then.52
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %land.lhs.true.44, %land.lhs.true, %sw.epilog
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %58 = load i32, i32* %s, align 4
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i32 37)
  %60 = load i8*, i8** %fn, align 8
  %61 = load i8, i8* %60, align 1
  %conv71 = sext i8 %61 to i32
  %cmp72 = icmp sgt i32 %conv71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.68
  call void @putfont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.end.68
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 32)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), i32 32, i32 31, i32 31, i32 32)
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.75, %if.then.6, %if.then
  %64 = load i32, i32* %c, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end.79:                                       ; preds = %for.cond
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i32 31)
  store i32 0, i32* %dv, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.101, %for.end.79
  %66 = load i32, i32* %c, align 4
  %67 = load i32, i32* @ncol, align 4
  %cmp82 = icmp slt i32 %66, %67
  br i1 %cmp82, label %for.body.84, label %for.end.103

for.body.84:                                      ; preds = %for.cond.81
  %68 = load i32, i32* %stl.addr, align 4
  %add85 = add nsw i32 %68, 1
  %69 = load i32, i32* @nlin, align 4
  %cmp86 = icmp slt i32 %add85, %69
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.100

land.lhs.true.88:                                 ; preds = %for.body.84
  %70 = load i32, i32* %stl.addr, align 4
  %71 = load i32, i32* %c, align 4
  %call89 = call i32 @left(i32 %70, i32 %71, i32* %lwid)
  store i32 %call89, i32* %lf, align 4
  %cmp90 = icmp sge i32 %call89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.100

if.then.92:                                       ; preds = %land.lhs.true.88
  %72 = load i32, i32* %dv, align 4
  %inc93 = add nsw i32 %72, 1
  store i32 %inc93, i32* %dv, align 4
  %cmp94 = icmp eq i32 %72, 0
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.then.92
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.then.92
  %74 = load i32, i32* %c, align 4
  call void @tohcol(i32 %74)
  %75 = load i32, i32* %dv, align 4
  %inc99 = add nsw i32 %75, 1
  store i32 %inc99, i32* %dv, align 4
  %76 = load i32, i32* %lf, align 4
  %77 = load i32, i32* %stl.addr, align 4
  %78 = load i32, i32* %c, align 4
  %79 = load i32, i32* %lwid, align 4
  call void @drawvert(i32 %76, i32 %77, i32 %78, i32 %79)
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.98, %land.lhs.true.88, %for.body.84
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %80 = load i32, i32* %c, align 4
  %inc102 = add nsw i32 %80, 1
  store i32 %inc102, i32* %c, align 4
  br label %for.cond.81

for.end.103:                                      ; preds = %for.cond.81
  %81 = load i32, i32* %dv, align 4
  %tobool104 = icmp ne i32 %81, 0
  br i1 %tobool104, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %for.end.103
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %for.end.103
  ret void
}

; Function Attrs: nounwind uwtable
define void @putfont(i8* %fn) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %fn.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %4 = load i8*, i8** %fn.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  %cond = select i1 %tobool3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0)
  %6 = load i8*, i8** %fn.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %cond, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @putsize(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

declare i32 @ctspan(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
