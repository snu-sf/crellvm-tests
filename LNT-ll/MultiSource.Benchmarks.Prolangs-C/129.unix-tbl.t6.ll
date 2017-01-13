; ModuleID = './MultiSource.Benchmarks.Prolangs-C/129.unix-tbl.t6.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.colstr = type { i8*, i8* }

@ncol = external global i32, align 4
@tabout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [10 x i8] c".nr %d 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c".%02d\0A.rm %02d\0A\00", align 1
@nlin = external global i32, align 4
@instead = external global [0 x i8*], align 8
@fullbot = external global [0 x i32], align 4
@table = external global [0 x %struct.colstr*], align 8
@.str.2 = private unnamed_addr constant [19 x i8] c".nr %d 0\0A.nr %d 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c".if \5Cn(%c->\5Cn(%d .nr %d \5Cn(%c-\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".nr %d \00", align 1
@stynum = external global [0 x i32], align 4
@font = external global [100 x [20 x [2 x i8]]], align 16
@csize = external global [100 x [20 x [4 x i8]]], align 16
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c".if \5Cn(%d<\5Cn(%d .nr %d \5Cn(%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c".nr %d \5Cw%c%s%c\0A\00", align 1
@F1 = external global i32, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c".if \5Cn(%d>=\5Cn(%d .nr %d \5Cn(%du+2n\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c".nr %d \5Cn(%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c".nr %d \5Cn(%d+\5Cn(%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c".if \5Cn(%d>\5Cn(%d .nr %d \5Cn(%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c".if \5Cn(%d<\5Cn(%d .nr %d +(\5Cn(%d-\5Cn(%d)/2\0A\00", align 1
@cll = external global [20 x [10 x i8]], align 16
@.str.13 = private unnamed_addr constant [12 x i8] c".nr %d %sn\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"-\5Cn(%d\00", align 1
@expflg = external global i32, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"-%dn\00", align 1
@sep = external global [0 x i32], align 4
@.str.16 = private unnamed_addr constant [29 x i8] c".if \5Cn(%d>0 .nr %d \5Cn(%d/%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c".if \5Cn(%d<0 .nr %d 0\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c".nr %d +\5Cn(%d/2\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c".nr %d +\5Cn(%d\0A\00", align 1
@textflg = external global i32, align 4
@evenflg = external global i32, align 4
@evenup = external global [0 x i32], align 4
@.str.20 = private unnamed_addr constant [36 x i8] c".nr %d (100*\5Cn(%d/\5Cn(%d)*\5Cn(%d/100\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c".nr %d 0\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"+\5Cn(%d\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c".nr %d \5Cn(.l-\5Cn(%d\0A\00", align 1
@boxflg = external global i32, align 4
@dboxflg = external global i32, align 4
@allflg = external global i32, align 4
@.str.24 = private unnamed_addr constant [17 x i8] c".nr %d \5Cn(%d/%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c".nr %d 1n\0A\00", align 1
@left1flg = external global i32, align 4
@.str.26 = private unnamed_addr constant [25 x i8] c".nr %d \5Cn(%d+(%d*\5Cn(%d)\0A\00", align 1
@rightl = external global i32, align 4
@.str.27 = private unnamed_addr constant [24 x i8] c".nr %d (\5Cn(%d+\5Cn(%d)/2\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c".nr TW \5Cn(%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c".nr TW +%d*\5Cn(%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [79 x i8] c".if t .if \5Cn(TW>\5Cn(.li .tm Table at line %d file %s is too wide - \5Cn(TW units\0A\00", align 1
@iline = external global i32, align 4
@ifile = external global i8*, align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"\5Cw%c\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"\5Cn(%c-\00", align 1

; Function Attrs: nounwind uwtable
define void @maktab() #0 {
entry:
  %icol = alloca i32, align 4
  %ilin = alloca i32, align 4
  %tsep = alloca i32, align 4
  %k = alloca i32, align 4
  %ik = alloca i32, align 4
  %vforml = alloca i32, align 4
  %il = alloca i32, align 4
  %text = alloca i32, align 4
  %doubled = alloca [20 x i32], align 16
  %acase = alloca [20 x i32], align 16
  %s = alloca i8*, align 8
  store i32 0, i32* %icol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.310, %entry
  %0 = load i32, i32* %icol, align 4
  %1 = load i32, i32* @ncol, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.312

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %icol, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %acase, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %3 = load i32, i32* %icol, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [20 x i32], [20 x i32]* %doubled, i32 0, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %5 = load i32, i32* %icol, align 4
  %add = add nsw i32 %5, 80
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %add)
  store i32 0, i32* %text, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.181, %for.body
  %6 = load i32, i32* %text, align 4
  %cmp4 = icmp slt i32 %6, 2
  br i1 %cmp4, label %for.body.5, label %for.end.183

for.body.5:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %text, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %9 = load i32, i32* %icol, align 4
  %add6 = add nsw i32 %9, 80
  %10 = load i32, i32* %icol, align 4
  %add7 = add nsw i32 %10, 80
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 %add6, i32 %add7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  store i32 0, i32* %ilin, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.179, %if.end
  %11 = load i32, i32* %ilin, align 4
  %12 = load i32, i32* @nlin, align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %for.body.11, label %for.end.180

for.body.11:                                      ; preds = %for.cond.9
  %13 = load i32, i32* %ilin, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom12
  %14 = load i8*, i8** %arrayidx13, align 8
  %tobool14 = icmp ne i8* %14, null
  br i1 %tobool14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.11
  %15 = load i32, i32* %ilin, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  %tobool17 = icmp ne i32 %16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %for.body.11
  br label %for.inc.179

if.end.19:                                        ; preds = %lor.lhs.false
  %17 = load i32, i32* %ilin, align 4
  store i32 %17, i32* %vforml, align 4
  %18 = load i32, i32* %ilin, align 4
  %call20 = call i32 @prev(i32 %18)
  store i32 %call20, i32* %il, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %if.end.19
  %19 = load i32, i32* %il, align 4
  %cmp22 = icmp sge i32 %19, 0
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.21
  %20 = load i32, i32* %icol, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load i32, i32* %il, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom24
  %22 = load %struct.colstr*, %struct.colstr** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds %struct.colstr, %struct.colstr* %22, i64 %idxprom23
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx26, i32 0, i32 0
  %23 = load i8*, i8** %col, align 8
  %call27 = call i32 @vspen(i8* %23)
  %tobool28 = icmp ne i32 %call27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.21
  %24 = phi i1 [ false, %for.cond.21 ], [ %tobool28, %land.rhs ]
  br i1 %24, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %land.end
  %25 = load i32, i32* %il, align 4
  store i32 %25, i32* %vforml, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %26 = load i32, i32* %il, align 4
  %call30 = call i32 @prev(i32 %26)
  store i32 %call30, i32* %il, align 4
  br label %for.cond.21

for.end:                                          ; preds = %land.end
  %27 = load i32, i32* %vforml, align 4
  %28 = load i32, i32* %icol, align 4
  %call31 = call i32 @fspan(i32 %27, i32 %28)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.end
  br label %for.inc.179

if.end.34:                                        ; preds = %for.end
  %29 = load i32, i32* %icol, align 4
  %idxprom35 = sext i32 %29 to i64
  %30 = load i32, i32* %ilin, align 4
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom36
  %31 = load %struct.colstr*, %struct.colstr** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds %struct.colstr, %struct.colstr* %31, i64 %idxprom35
  %col39 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx38, i32 0, i32 0
  %32 = load i8*, i8** %col39, align 8
  %call40 = call i32 @filler(i8* %32)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.34
  br label %for.inc.179

if.end.43:                                        ; preds = %if.end.34
  %33 = load i32, i32* %vforml, align 4
  %34 = load i32, i32* %icol, align 4
  %call44 = call i32 @ctype(i32 %33, i32 %34)
  switch i32 %call44, label %sw.epilog [
    i32 97, label %sw.bb
    i32 110, label %sw.bb.67
    i32 114, label %sw.bb.139
    i32 99, label %sw.bb.139
    i32 108, label %sw.bb.139
  ]

sw.bb:                                            ; preds = %if.end.43
  %35 = load i32, i32* %icol, align 4
  %idxprom45 = sext i32 %35 to i64
  %arrayidx46 = getelementptr inbounds [20 x i32], [20 x i32]* %acase, i32 0, i64 %idxprom45
  store i32 1, i32* %arrayidx46, align 4
  %36 = load i32, i32* %icol, align 4
  %idxprom47 = sext i32 %36 to i64
  %37 = load i32, i32* %ilin, align 4
  %idxprom48 = sext i32 %37 to i64
  %arrayidx49 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom48
  %38 = load %struct.colstr*, %struct.colstr** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds %struct.colstr, %struct.colstr* %38, i64 %idxprom47
  %col51 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx50, i32 0, i32 0
  %39 = load i8*, i8** %col51, align 8
  store i8* %39, i8** %s, align 8
  %40 = load i8*, i8** %s, align 8
  %41 = ptrtoint i8* %40 to i32
  %cmp52 = icmp sgt i32 %41, 0
  br i1 %cmp52, label %land.lhs.true, label %if.end.66

land.lhs.true:                                    ; preds = %sw.bb
  %42 = load i8*, i8** %s, align 8
  %43 = ptrtoint i8* %42 to i32
  %cmp53 = icmp slt i32 %43, 128
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.66

land.lhs.true.54:                                 ; preds = %land.lhs.true
  %44 = load i32, i32* %text, align 4
  %tobool55 = icmp ne i32 %44, 0
  br i1 %tobool55, label %if.then.56, label %if.end.66

if.then.56:                                       ; preds = %land.lhs.true.54
  %45 = load i32, i32* %icol, align 4
  %idxprom57 = sext i32 %45 to i64
  %arrayidx58 = getelementptr inbounds [20 x i32], [20 x i32]* %doubled, i32 0, i64 %idxprom57
  %46 = load i32, i32* %arrayidx58, align 4
  %cmp59 = icmp eq i32 %46, 0
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.then.56
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 31, i32 32)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.then.56
  %48 = load i32, i32* %icol, align 4
  %idxprom63 = sext i32 %48 to i64
  %arrayidx64 = getelementptr inbounds [20 x i32], [20 x i32]* %doubled, i32 0, i64 %idxprom63
  store i32 1, i32* %arrayidx64, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %50 = load i8*, i8** %s, align 8
  %51 = load i8*, i8** %s, align 8
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* %50, i32 32, i32 32, i8* %51)
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.62, %land.lhs.true.54, %land.lhs.true, %sw.bb
  br label %sw.bb.67

sw.bb.67:                                         ; preds = %if.end.43, %if.end.66
  %52 = load i32, i32* %icol, align 4
  %idxprom68 = sext i32 %52 to i64
  %53 = load i32, i32* %ilin, align 4
  %idxprom69 = sext i32 %53 to i64
  %arrayidx70 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom69
  %54 = load %struct.colstr*, %struct.colstr** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds %struct.colstr, %struct.colstr* %54, i64 %idxprom68
  %rcol = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx71, i32 0, i32 1
  %55 = load i8*, i8** %rcol, align 8
  %cmp72 = icmp ne i8* %55, null
  br i1 %cmp72, label %if.then.73, label %if.end.138

if.then.73:                                       ; preds = %sw.bb.67
  %56 = load i32, i32* %icol, align 4
  %idxprom74 = sext i32 %56 to i64
  %arrayidx75 = getelementptr inbounds [20 x i32], [20 x i32]* %doubled, i32 0, i64 %idxprom74
  %57 = load i32, i32* %arrayidx75, align 4
  %cmp76 = icmp eq i32 %57, 0
  br i1 %cmp76, label %land.lhs.true.77, label %if.end.81

land.lhs.true.77:                                 ; preds = %if.then.73
  %58 = load i32, i32* %text, align 4
  %cmp78 = icmp eq i32 %58, 0
  br i1 %cmp78, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %land.lhs.true.77
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 31, i32 32)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %land.lhs.true.77, %if.then.73
  %60 = load i32, i32* %icol, align 4
  %idxprom82 = sext i32 %60 to i64
  %arrayidx83 = getelementptr inbounds [20 x i32], [20 x i32]* %doubled, i32 0, i64 %idxprom82
  store i32 1, i32* %arrayidx83, align 4
  %61 = load i32, i32* %icol, align 4
  %idxprom84 = sext i32 %61 to i64
  %62 = load i32, i32* %ilin, align 4
  %idxprom85 = sext i32 %62 to i64
  %arrayidx86 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom85
  %63 = load %struct.colstr*, %struct.colstr** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds %struct.colstr, %struct.colstr* %63, i64 %idxprom84
  %col88 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx87, i32 0, i32 0
  %64 = load i8*, i8** %col88, align 8
  store i8* %64, i8** %s, align 8
  %call89 = call i32 @real(i8* %64)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %land.lhs.true.91, label %if.end.118

land.lhs.true.91:                                 ; preds = %if.end.81
  %65 = load i8*, i8** %s, align 8
  %call92 = call i32 @vspen(i8* %65)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end.118, label %if.then.94

if.then.94:                                       ; preds = %land.lhs.true.91
  %66 = load i8*, i8** %s, align 8
  %67 = ptrtoint i8* %66 to i32
  %cmp95 = icmp sgt i32 %67, 0
  br i1 %cmp95, label %land.rhs.96, label %land.end.98

land.rhs.96:                                      ; preds = %if.then.94
  %68 = load i8*, i8** %s, align 8
  %69 = ptrtoint i8* %68 to i32
  %cmp97 = icmp slt i32 %69, 128
  br label %land.end.98

land.end.98:                                      ; preds = %land.rhs.96, %if.then.94
  %70 = phi i1 [ false, %if.then.94 ], [ %cmp97, %land.rhs.96 ]
  %land.ext = zext i1 %70 to i32
  %71 = load i32, i32* %text, align 4
  %cmp99 = icmp ne i32 %land.ext, %71
  br i1 %cmp99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %land.end.98
  br label %for.inc.179

if.end.101:                                       ; preds = %land.end.98
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 38)
  %73 = load i8*, i8** %s, align 8
  %74 = load i32, i32* %icol, align 4
  %idxprom103 = sext i32 %74 to i64
  %75 = load i32, i32* %vforml, align 4
  %idxprom104 = sext i32 %75 to i64
  %arrayidx105 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom104
  %76 = load i32, i32* %arrayidx105, align 4
  %idxprom106 = sext i32 %76 to i64
  %arrayidx107 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i32 0, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %arrayidx107, i32 0, i64 %idxprom103
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx108, i32 0, i32 0
  %77 = load i32, i32* %icol, align 4
  %idxprom109 = sext i32 %77 to i64
  %78 = load i32, i32* %vforml, align 4
  %idxprom110 = sext i32 %78 to i64
  %arrayidx111 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom110
  %79 = load i32, i32* %arrayidx111, align 4
  %idxprom112 = sext i32 %79 to i64
  %arrayidx113 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i32 0, i64 %idxprom112
  %arrayidx114 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %arrayidx113, i32 0, i64 %idxprom109
  %arraydecay115 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx114, i32 0, i32 0
  call void @wide(i8* %73, i8* %arraydecay, i8* %arraydecay115)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i32 31, i32 38, i32 31, i32 38)
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.101, %land.lhs.true.91, %if.end.81
  %82 = load i32, i32* %text, align 4
  %cmp119 = icmp eq i32 %82, 0
  br i1 %cmp119, label %land.lhs.true.120, label %if.end.137

land.lhs.true.120:                                ; preds = %if.end.118
  %83 = load i32, i32* %icol, align 4
  %idxprom121 = sext i32 %83 to i64
  %84 = load i32, i32* %ilin, align 4
  %idxprom122 = sext i32 %84 to i64
  %arrayidx123 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom122
  %85 = load %struct.colstr*, %struct.colstr** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds %struct.colstr, %struct.colstr* %85, i64 %idxprom121
  %rcol125 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx124, i32 0, i32 1
  %86 = load i8*, i8** %rcol125, align 8
  store i8* %86, i8** %s, align 8
  %call126 = call i32 @real(i8* %86)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %land.lhs.true.128, label %if.end.137

land.lhs.true.128:                                ; preds = %land.lhs.true.120
  %87 = load i8*, i8** %s, align 8
  %call129 = call i32 @vspen(i8* %87)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.end.137, label %land.lhs.true.131

land.lhs.true.131:                                ; preds = %land.lhs.true.128
  %88 = load i8*, i8** %s, align 8
  %call132 = call i32 @barent(i8* %88)
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.end.137, label %if.then.134

if.then.134:                                      ; preds = %land.lhs.true.131
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %90 = load i32, i32* @F1, align 4
  %91 = load i8*, i8** %s, align 8
  %92 = load i32, i32* @F1, align 4
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 38, i32 %90, i8* %91, i32 %92)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i32 32, i32 38, i32 32, i32 38)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %land.lhs.true.131, %land.lhs.true.128, %land.lhs.true.120, %if.end.118
  br label %for.inc.179

if.end.138:                                       ; preds = %sw.bb.67
  br label %sw.bb.139

sw.bb.139:                                        ; preds = %if.end.43, %if.end.43, %if.end.43, %if.end.138
  %94 = load i32, i32* %icol, align 4
  %idxprom140 = sext i32 %94 to i64
  %95 = load i32, i32* %ilin, align 4
  %idxprom141 = sext i32 %95 to i64
  %arrayidx142 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom141
  %96 = load %struct.colstr*, %struct.colstr** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds %struct.colstr, %struct.colstr* %96, i64 %idxprom140
  %col144 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx143, i32 0, i32 0
  %97 = load i8*, i8** %col144, align 8
  store i8* %97, i8** %s, align 8
  %call145 = call i32 @real(i8* %97)
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %land.lhs.true.147, label %if.end.178

land.lhs.true.147:                                ; preds = %sw.bb.139
  %98 = load i8*, i8** %s, align 8
  %call148 = call i32 @vspen(i8* %98)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.end.178, label %if.then.150

if.then.150:                                      ; preds = %land.lhs.true.147
  %99 = load i8*, i8** %s, align 8
  %100 = ptrtoint i8* %99 to i32
  %cmp151 = icmp sgt i32 %100, 0
  br i1 %cmp151, label %land.rhs.152, label %land.end.154

land.rhs.152:                                     ; preds = %if.then.150
  %101 = load i8*, i8** %s, align 8
  %102 = ptrtoint i8* %101 to i32
  %cmp153 = icmp slt i32 %102, 128
  br label %land.end.154

land.end.154:                                     ; preds = %land.rhs.152, %if.then.150
  %103 = phi i1 [ false, %if.then.150 ], [ %cmp153, %land.rhs.152 ]
  %land.ext155 = zext i1 %103 to i32
  %104 = load i32, i32* %text, align 4
  %cmp156 = icmp ne i32 %land.ext155, %104
  br i1 %cmp156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %land.end.154
  br label %for.inc.179

if.end.158:                                       ; preds = %land.end.154
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 38)
  %106 = load i8*, i8** %s, align 8
  %107 = load i32, i32* %icol, align 4
  %idxprom160 = sext i32 %107 to i64
  %108 = load i32, i32* %vforml, align 4
  %idxprom161 = sext i32 %108 to i64
  %arrayidx162 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom161
  %109 = load i32, i32* %arrayidx162, align 4
  %idxprom163 = sext i32 %109 to i64
  %arrayidx164 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i32 0, i64 %idxprom163
  %arrayidx165 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %arrayidx164, i32 0, i64 %idxprom160
  %arraydecay166 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx165, i32 0, i32 0
  %110 = load i32, i32* %icol, align 4
  %idxprom167 = sext i32 %110 to i64
  %111 = load i32, i32* %vforml, align 4
  %idxprom168 = sext i32 %111 to i64
  %arrayidx169 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom168
  %112 = load i32, i32* %arrayidx169, align 4
  %idxprom170 = sext i32 %112 to i64
  %arrayidx171 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i32 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %arrayidx171, i32 0, i64 %idxprom167
  %arraydecay173 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx172, i32 0, i32 0
  call void @wide(i8* %106, i8* %arraydecay166, i8* %arraydecay173)
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %115 = load i32, i32* %icol, align 4
  %add175 = add nsw i32 %115, 80
  %116 = load i32, i32* %icol, align 4
  %add176 = add nsw i32 %116, 80
  %call177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i32 %add175, i32 38, i32 %add176, i32 38)
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.158, %land.lhs.true.147, %sw.bb.139
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.178, %if.end.43
  br label %for.inc.179

for.inc.179:                                      ; preds = %sw.epilog, %if.then.157, %if.end.137, %if.then.100, %if.then.42, %if.then.33, %if.then.18
  %117 = load i32, i32* %ilin, align 4
  %inc = add nsw i32 %117, 1
  store i32 %inc, i32* %ilin, align 4
  br label %for.cond.9

for.end.180:                                      ; preds = %for.cond.9
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.end.180
  %118 = load i32, i32* %text, align 4
  %inc182 = add nsw i32 %118, 1
  store i32 %inc182, i32* %text, align 4
  br label %for.cond.3

for.end.183:                                      ; preds = %for.cond.3
  %119 = load i32, i32* %icol, align 4
  %idxprom184 = sext i32 %119 to i64
  %arrayidx185 = getelementptr inbounds [20 x i32], [20 x i32]* %acase, i32 0, i64 %idxprom184
  %120 = load i32, i32* %arrayidx185, align 4
  %tobool186 = icmp ne i32 %120, 0
  br i1 %tobool186, label %if.then.187, label %if.end.191

if.then.187:                                      ; preds = %for.end.183
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %122 = load i32, i32* %icol, align 4
  %add188 = add nsw i32 %122, 80
  %123 = load i32, i32* %icol, align 4
  %add189 = add nsw i32 %123, 80
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 32, i32 %add188, i32 %add189, i32 32)
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.187, %for.end.183
  %124 = load i32, i32* %icol, align 4
  %idxprom192 = sext i32 %124 to i64
  %arrayidx193 = getelementptr inbounds [20 x i32], [20 x i32]* %doubled, i32 0, i64 %idxprom192
  %125 = load i32, i32* %arrayidx193, align 4
  %tobool194 = icmp ne i32 %125, 0
  br i1 %tobool194, label %if.then.195, label %if.end.207

if.then.195:                                      ; preds = %if.end.191
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %127 = load i32, i32* %icol, align 4
  %add196 = add nsw i32 %127, 60
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %add196, i32 31)
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %129 = load i32, i32* %icol, align 4
  %add198 = add nsw i32 %129, 60
  %call199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 38, i32 %add198, i32 32)
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %131 = load i32, i32* %icol, align 4
  %add200 = add nsw i32 %131, 80
  %132 = load i32, i32* %icol, align 4
  %add201 = add nsw i32 %132, 80
  %call202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i32 38, i32 %add200, i32 %add201, i32 38)
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %134 = load i32, i32* %icol, align 4
  %add203 = add nsw i32 %134, 80
  %135 = load i32, i32* %icol, align 4
  %add204 = add nsw i32 %135, 60
  %136 = load i32, i32* %icol, align 4
  %add205 = add nsw i32 %136, 80
  %call206 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0), i32 38, i32 %add203, i32 %add204, i32 %add205, i32 38)
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.195, %if.end.191
  %137 = load i32, i32* %icol, align 4
  %idxprom208 = sext i32 %137 to i64
  %arrayidx209 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i32 0, i64 %idxprom208
  %arrayidx210 = getelementptr inbounds [10 x i8], [10 x i8]* %arrayidx209, i32 0, i64 0
  %138 = load i8, i8* %arrayidx210, align 1
  %tobool211 = icmp ne i8 %138, 0
  br i1 %tobool211, label %if.then.212, label %if.end.220

if.then.212:                                      ; preds = %if.end.207
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %140 = load i32, i32* %icol, align 4
  %idxprom213 = sext i32 %140 to i64
  %arrayidx214 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i32 0, i64 %idxprom213
  %arraydecay215 = getelementptr inbounds [10 x i8], [10 x i8]* %arrayidx214, i32 0, i32 0
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 38, i8* %arraydecay215)
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %142 = load i32, i32* %icol, align 4
  %add217 = add nsw i32 %142, 80
  %143 = load i32, i32* %icol, align 4
  %add218 = add nsw i32 %143, 80
  %call219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i32 %add217, i32 38, i32 %add218, i32 38)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.212, %if.end.207
  store i32 0, i32* %ilin, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.307, %if.end.220
  %144 = load i32, i32* %ilin, align 4
  %145 = load i32, i32* @nlin, align 4
  %cmp222 = icmp slt i32 %144, %145
  br i1 %cmp222, label %for.body.223, label %for.end.309

for.body.223:                                     ; preds = %for.cond.221
  %146 = load i32, i32* %ilin, align 4
  %147 = load i32, i32* %icol, align 4
  %call224 = call i32 @lspan(i32 %146, i32 %147)
  store i32 %call224, i32* %k, align 4
  %tobool225 = icmp ne i32 %call224, 0
  br i1 %tobool225, label %if.then.226, label %if.end.306

if.then.226:                                      ; preds = %for.body.223
  %148 = load i32, i32* %icol, align 4
  %149 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %148, %149
  %idxprom227 = sext i32 %sub to i64
  %150 = load i32, i32* %ilin, align 4
  %idxprom228 = sext i32 %150 to i64
  %arrayidx229 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom228
  %151 = load %struct.colstr*, %struct.colstr** %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds %struct.colstr, %struct.colstr* %151, i64 %idxprom227
  %col231 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx230, i32 0, i32 0
  %152 = load i8*, i8** %col231, align 8
  store i8* %152, i8** %s, align 8
  %153 = load i8*, i8** %s, align 8
  %call232 = call i32 @real(i8* %153)
  %tobool233 = icmp ne i32 %call232, 0
  br i1 %tobool233, label %lor.lhs.false.234, label %if.then.240

lor.lhs.false.234:                                ; preds = %if.then.226
  %154 = load i8*, i8** %s, align 8
  %call235 = call i32 @barent(i8* %154)
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %if.then.240, label %lor.lhs.false.237

lor.lhs.false.237:                                ; preds = %lor.lhs.false.234
  %155 = load i8*, i8** %s, align 8
  %call238 = call i32 @vspen(i8* %155)
  %tobool239 = icmp ne i32 %call238, 0
  br i1 %tobool239, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %lor.lhs.false.237, %lor.lhs.false.234, %if.then.226
  br label %for.inc.307

if.end.241:                                       ; preds = %lor.lhs.false.237
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 38)
  %157 = load i32, i32* %icol, align 4
  %158 = load i32, i32* %k, align 4
  %sub243 = sub nsw i32 %157, %158
  %idxprom244 = sext i32 %sub243 to i64
  %159 = load i32, i32* %ilin, align 4
  %idxprom245 = sext i32 %159 to i64
  %arrayidx246 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom245
  %160 = load %struct.colstr*, %struct.colstr** %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds %struct.colstr, %struct.colstr* %160, i64 %idxprom244
  %col248 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx247, i32 0, i32 0
  %161 = load i8*, i8** %col248, align 8
  %162 = load i32, i32* %icol, align 4
  %163 = load i32, i32* %k, align 4
  %sub249 = sub nsw i32 %162, %163
  %idxprom250 = sext i32 %sub249 to i64
  %164 = load i32, i32* %ilin, align 4
  %idxprom251 = sext i32 %164 to i64
  %arrayidx252 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom251
  %165 = load i32, i32* %arrayidx252, align 4
  %idxprom253 = sext i32 %165 to i64
  %arrayidx254 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i32 0, i64 %idxprom253
  %arrayidx255 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %arrayidx254, i32 0, i64 %idxprom250
  %arraydecay256 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx255, i32 0, i32 0
  %166 = load i32, i32* %icol, align 4
  %167 = load i32, i32* %k, align 4
  %sub257 = sub nsw i32 %166, %167
  %idxprom258 = sext i32 %sub257 to i64
  %168 = load i32, i32* %ilin, align 4
  %idxprom259 = sext i32 %168 to i64
  %arrayidx260 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom259
  %169 = load i32, i32* %arrayidx260, align 4
  %idxprom261 = sext i32 %169 to i64
  %arrayidx262 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i32 0, i64 %idxprom261
  %arrayidx263 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %arrayidx262, i32 0, i64 %idxprom258
  %arraydecay264 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx263, i32 0, i32 0
  call void @wide(i8* %161, i8* %arraydecay256, i8* %arraydecay264)
  %170 = load i32, i32* %k, align 4
  store i32 %170, i32* %ik, align 4
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.280, %if.end.241
  %171 = load i32, i32* %ik, align 4
  %cmp266 = icmp sge i32 %171, 0
  br i1 %cmp266, label %for.body.267, label %for.end.281

for.body.267:                                     ; preds = %for.cond.265
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %173 = load i32, i32* %icol, align 4
  %add268 = add nsw i32 80, %173
  %174 = load i32, i32* %ik, align 4
  %sub269 = sub nsw i32 %add268, %174
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 %sub269)
  %175 = load i32, i32* @expflg, align 4
  %tobool271 = icmp ne i32 %175, 0
  br i1 %tobool271, label %if.end.279, label %land.lhs.true.272

land.lhs.true.272:                                ; preds = %for.body.267
  %176 = load i32, i32* %ik, align 4
  %cmp273 = icmp sgt i32 %176, 0
  br i1 %cmp273, label %if.then.274, label %if.end.279

if.then.274:                                      ; preds = %land.lhs.true.272
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %178 = load i32, i32* %icol, align 4
  %179 = load i32, i32* %ik, align 4
  %sub275 = sub nsw i32 %178, %179
  %idxprom276 = sext i32 %sub275 to i64
  %arrayidx277 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i32 0, i64 %idxprom276
  %180 = load i32, i32* %arrayidx277, align 4
  %call278 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %180)
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.274, %land.lhs.true.272, %for.body.267
  br label %for.inc.280

for.inc.280:                                      ; preds = %if.end.279
  %181 = load i32, i32* %ik, align 4
  %dec = add nsw i32 %181, -1
  store i32 %dec, i32* %ik, align 4
  br label %for.cond.265

for.end.281:                                      ; preds = %for.cond.265
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call282 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %184 = load i32, i32* %k, align 4
  %call283 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), i32 38, i32 38, i32 38, i32 %184)
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call284 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i32 38, i32 38)
  store i32 1, i32* %ik, align 4
  br label %for.cond.285

for.cond.285:                                     ; preds = %for.inc.303, %for.end.281
  %186 = load i32, i32* %ik, align 4
  %187 = load i32, i32* %k, align 4
  %cmp286 = icmp sle i32 %186, %187
  br i1 %cmp286, label %for.body.287, label %for.end.305

for.body.287:                                     ; preds = %for.cond.285
  %188 = load i32, i32* %icol, align 4
  %189 = load i32, i32* %k, align 4
  %sub288 = sub nsw i32 %188, %189
  %190 = load i32, i32* %ik, align 4
  %add289 = add nsw i32 %sub288, %190
  %idxprom290 = sext i32 %add289 to i64
  %arrayidx291 = getelementptr inbounds [20 x i32], [20 x i32]* %doubled, i32 0, i64 %idxprom290
  %191 = load i32, i32* %arrayidx291, align 4
  %tobool292 = icmp ne i32 %191, 0
  br i1 %tobool292, label %if.then.293, label %if.end.298

if.then.293:                                      ; preds = %for.body.287
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %193 = load i32, i32* %icol, align 4
  %194 = load i32, i32* %k, align 4
  %sub294 = sub nsw i32 %193, %194
  %195 = load i32, i32* %ik, align 4
  %add295 = add nsw i32 %sub294, %195
  %add296 = add nsw i32 %add295, 60
  %call297 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i32 %add296, i32 38)
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.293, %for.body.287
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %197 = load i32, i32* %icol, align 4
  %198 = load i32, i32* %k, align 4
  %sub299 = sub nsw i32 %197, %198
  %199 = load i32, i32* %ik, align 4
  %add300 = add nsw i32 %sub299, %199
  %add301 = add nsw i32 %add300, 80
  %call302 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %add301, i32 38)
  br label %for.inc.303

for.inc.303:                                      ; preds = %if.end.298
  %200 = load i32, i32* %ik, align 4
  %inc304 = add nsw i32 %200, 1
  store i32 %inc304, i32* %ik, align 4
  br label %for.cond.285

for.end.305:                                      ; preds = %for.cond.285
  br label %if.end.306

if.end.306:                                       ; preds = %for.end.305, %for.body.223
  br label %for.inc.307

for.inc.307:                                      ; preds = %if.end.306, %if.then.240
  %201 = load i32, i32* %ilin, align 4
  %inc308 = add nsw i32 %201, 1
  store i32 %inc308, i32* %ilin, align 4
  br label %for.cond.221

for.end.309:                                      ; preds = %for.cond.221
  br label %for.inc.310

for.inc.310:                                      ; preds = %for.end.309
  %202 = load i32, i32* %icol, align 4
  %inc311 = add nsw i32 %202, 1
  store i32 %inc311, i32* %icol, align 4
  br label %for.cond

for.end.312:                                      ; preds = %for.cond
  %203 = load i32, i32* @textflg, align 4
  %tobool313 = icmp ne i32 %203, 0
  br i1 %tobool313, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %for.end.312
  call void @untext()
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.314, %for.end.312
  %204 = load i32, i32* @evenflg, align 4
  %tobool316 = icmp ne i32 %204, 0
  br i1 %tobool316, label %if.then.317, label %if.end.355

if.then.317:                                      ; preds = %if.end.315
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call318 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %205, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 38)
  store i32 0, i32* %icol, align 4
  br label %for.cond.319

for.cond.319:                                     ; preds = %for.inc.330, %if.then.317
  %206 = load i32, i32* %icol, align 4
  %207 = load i32, i32* @ncol, align 4
  %cmp320 = icmp slt i32 %206, %207
  br i1 %cmp320, label %for.body.321, label %for.end.332

for.body.321:                                     ; preds = %for.cond.319
  %208 = load i32, i32* %icol, align 4
  %idxprom322 = sext i32 %208 to i64
  %arrayidx323 = getelementptr inbounds [0 x i32], [0 x i32]* @evenup, i32 0, i64 %idxprom322
  %209 = load i32, i32* %arrayidx323, align 4
  %cmp324 = icmp eq i32 %209, 0
  br i1 %cmp324, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %for.body.321
  br label %for.inc.330

if.end.326:                                       ; preds = %for.body.321
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %211 = load i32, i32* %icol, align 4
  %add327 = add nsw i32 %211, 80
  %212 = load i32, i32* %icol, align 4
  %add328 = add nsw i32 %212, 80
  %call329 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %210, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i32 %add327, i32 38, i32 38, i32 %add328)
  br label %for.inc.330

for.inc.330:                                      ; preds = %if.end.326, %if.then.325
  %213 = load i32, i32* %icol, align 4
  %inc331 = add nsw i32 %213, 1
  store i32 %inc331, i32* %icol, align 4
  br label %for.cond.319

for.end.332:                                      ; preds = %for.cond.319
  store i32 0, i32* %icol, align 4
  br label %for.cond.333

for.cond.333:                                     ; preds = %for.inc.352, %for.end.332
  %214 = load i32, i32* %icol, align 4
  %215 = load i32, i32* @ncol, align 4
  %cmp334 = icmp slt i32 %214, %215
  br i1 %cmp334, label %for.body.335, label %for.end.354

for.body.335:                                     ; preds = %for.cond.333
  %216 = load i32, i32* %icol, align 4
  %idxprom336 = sext i32 %216 to i64
  %arrayidx337 = getelementptr inbounds [0 x i32], [0 x i32]* @evenup, i32 0, i64 %idxprom336
  %217 = load i32, i32* %arrayidx337, align 4
  %cmp338 = icmp eq i32 %217, 0
  br i1 %cmp338, label %if.then.339, label %if.end.340

if.then.339:                                      ; preds = %for.body.335
  br label %for.inc.352

if.end.340:                                       ; preds = %for.body.335
  %218 = load i32, i32* %icol, align 4
  %idxprom341 = sext i32 %218 to i64
  %arrayidx342 = getelementptr inbounds [20 x i32], [20 x i32]* %doubled, i32 0, i64 %idxprom341
  %219 = load i32, i32* %arrayidx342, align 4
  %tobool343 = icmp ne i32 %219, 0
  br i1 %tobool343, label %if.then.344, label %if.end.349

if.then.344:                                      ; preds = %if.end.340
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %221 = load i32, i32* %icol, align 4
  %add345 = add nsw i32 %221, 60
  %222 = load i32, i32* %icol, align 4
  %add346 = add nsw i32 %222, 60
  %223 = load i32, i32* %icol, align 4
  %add347 = add nsw i32 %223, 80
  %call348 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0), i32 %add345, i32 %add346, i32 %add347, i32 38)
  br label %if.end.349

if.end.349:                                       ; preds = %if.then.344, %if.end.340
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %225 = load i32, i32* %icol, align 4
  %add350 = add nsw i32 %225, 80
  %call351 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %add350, i32 38)
  br label %for.inc.352

for.inc.352:                                      ; preds = %if.end.349, %if.then.339
  %226 = load i32, i32* %icol, align 4
  %inc353 = add nsw i32 %226, 1
  store i32 %inc353, i32* %icol, align 4
  br label %for.cond.333

for.end.354:                                      ; preds = %for.cond.333
  br label %if.end.355

if.end.355:                                       ; preds = %for.end.354, %if.end.315
  store i32 0, i32* %icol, align 4
  store i32 0, i32* %tsep, align 4
  br label %for.cond.356

for.cond.356:                                     ; preds = %for.inc.362, %if.end.355
  %227 = load i32, i32* %icol, align 4
  %228 = load i32, i32* @ncol, align 4
  %cmp357 = icmp slt i32 %227, %228
  br i1 %cmp357, label %for.body.358, label %for.end.364

for.body.358:                                     ; preds = %for.cond.356
  %229 = load i32, i32* %icol, align 4
  %idxprom359 = sext i32 %229 to i64
  %arrayidx360 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i32 0, i64 %idxprom359
  %230 = load i32, i32* %arrayidx360, align 4
  %231 = load i32, i32* %tsep, align 4
  %add361 = add nsw i32 %231, %230
  store i32 %add361, i32* %tsep, align 4
  br label %for.inc.362

for.inc.362:                                      ; preds = %for.body.358
  %232 = load i32, i32* %icol, align 4
  %inc363 = add nsw i32 %232, 1
  store i32 %inc363, i32* %icol, align 4
  br label %for.cond.356

for.end.364:                                      ; preds = %for.cond.356
  %233 = load i32, i32* @expflg, align 4
  %tobool365 = icmp ne i32 %233, 0
  br i1 %tobool365, label %if.then.366, label %if.else.392

if.then.366:                                      ; preds = %for.end.364
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call367 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 38)
  store i32 0, i32* %icol, align 4
  br label %for.cond.368

for.cond.368:                                     ; preds = %for.inc.373, %if.then.366
  %235 = load i32, i32* %icol, align 4
  %236 = load i32, i32* @ncol, align 4
  %cmp369 = icmp slt i32 %235, %236
  br i1 %cmp369, label %for.body.370, label %for.end.375

for.body.370:                                     ; preds = %for.cond.368
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %238 = load i32, i32* %icol, align 4
  %add371 = add nsw i32 %238, 80
  %call372 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 %add371)
  br label %for.inc.373

for.inc.373:                                      ; preds = %for.body.370
  %239 = load i32, i32* %icol, align 4
  %inc374 = add nsw i32 %239, 1
  store i32 %inc374, i32* %icol, align 4
  br label %for.cond.368

for.end.375:                                      ; preds = %for.cond.368
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call376 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call377 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 38, i32 38)
  %242 = load i32, i32* @boxflg, align 4
  %tobool378 = icmp ne i32 %242, 0
  br i1 %tobool378, label %if.then.383, label %lor.lhs.false.379

lor.lhs.false.379:                                ; preds = %for.end.375
  %243 = load i32, i32* @dboxflg, align 4
  %tobool380 = icmp ne i32 %243, 0
  br i1 %tobool380, label %if.then.383, label %lor.lhs.false.381

lor.lhs.false.381:                                ; preds = %lor.lhs.false.379
  %244 = load i32, i32* @allflg, align 4
  %tobool382 = icmp ne i32 %244, 0
  br i1 %tobool382, label %if.then.383, label %if.else

if.then.383:                                      ; preds = %lor.lhs.false.381, %lor.lhs.false.379, %for.end.375
  %245 = load i32, i32* %tsep, align 4
  %add384 = add nsw i32 %245, 1
  store i32 %add384, i32* %tsep, align 4
  br label %if.end.389

if.else:                                          ; preds = %lor.lhs.false.381
  %246 = load i32, i32* @ncol, align 4
  %sub385 = sub nsw i32 %246, 1
  %idxprom386 = sext i32 %sub385 to i64
  %arrayidx387 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i32 0, i64 %idxprom386
  %247 = load i32, i32* %arrayidx387, align 4
  %248 = load i32, i32* %tsep, align 4
  %sub388 = sub nsw i32 %248, %247
  store i32 %sub388, i32* %tsep, align 4
  br label %if.end.389

if.end.389:                                       ; preds = %if.else, %if.then.383
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %250 = load i32, i32* %tsep, align 4
  %call390 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %249, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i32 38, i32 38, i32 %250)
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call391 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %251, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i32 38, i32 38)
  br label %if.end.394

if.else.392:                                      ; preds = %for.end.364
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call393 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 38)
  br label %if.end.394

if.end.394:                                       ; preds = %if.else.392, %if.end.389
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call395 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %253, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 79)
  %254 = load i32, i32* @boxflg, align 4
  %tobool396 = icmp ne i32 %254, 0
  br i1 %tobool396, label %lor.end, label %lor.lhs.false.397

lor.lhs.false.397:                                ; preds = %if.end.394
  %255 = load i32, i32* @allflg, align 4
  %tobool398 = icmp ne i32 %255, 0
  br i1 %tobool398, label %lor.end, label %lor.lhs.false.399

lor.lhs.false.399:                                ; preds = %lor.lhs.false.397
  %256 = load i32, i32* @dboxflg, align 4
  %tobool400 = icmp ne i32 %256, 0
  br i1 %tobool400, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.399
  %257 = load i32, i32* @left1flg, align 4
  %tobool401 = icmp ne i32 %257, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.399, %lor.lhs.false.397, %if.end.394
  %258 = phi i1 [ true, %lor.lhs.false.399 ], [ true, %lor.lhs.false.397 ], [ true, %if.end.394 ], [ %tobool401, %lor.rhs ]
  %cond = select i1 %258, i32 1, i32 0
  store i32 %cond, i32* %tsep, align 4
  store i32 0, i32* %icol, align 4
  br label %for.cond.402

for.cond.402:                                     ; preds = %for.inc.422, %lor.end
  %259 = load i32, i32* %icol, align 4
  %260 = load i32, i32* @ncol, align 4
  %cmp403 = icmp slt i32 %259, %260
  br i1 %cmp403, label %for.body.404, label %for.end.424

for.body.404:                                     ; preds = %for.cond.402
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %262 = load i32, i32* %icol, align 4
  %add405 = add nsw i32 %262, 40
  %263 = load i32, i32* %icol, align 4
  %add406 = add nsw i32 %263, 80
  %sub407 = sub nsw i32 %add406, 1
  %264 = load i32, i32* %tsep, align 4
  %call408 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %261, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 %add405, i32 %sub407, i32 %264, i32 38)
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %266 = load i32, i32* %icol, align 4
  %add409 = add nsw i32 %266, 80
  %267 = load i32, i32* %icol, align 4
  %add410 = add nsw i32 %267, 40
  %call411 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %265, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %add409, i32 %add410)
  %268 = load i32, i32* %icol, align 4
  %idxprom412 = sext i32 %268 to i64
  %arrayidx413 = getelementptr inbounds [20 x i32], [20 x i32]* %doubled, i32 0, i64 %idxprom412
  %269 = load i32, i32* %arrayidx413, align 4
  %tobool414 = icmp ne i32 %269, 0
  br i1 %tobool414, label %if.then.415, label %if.end.419

if.then.415:                                      ; preds = %for.body.404
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %271 = load i32, i32* %icol, align 4
  %add416 = add nsw i32 %271, 60
  %272 = load i32, i32* %icol, align 4
  %add417 = add nsw i32 %272, 40
  %call418 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %270, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %add416, i32 %add417)
  br label %if.end.419

if.end.419:                                       ; preds = %if.then.415, %for.body.404
  %273 = load i32, i32* %icol, align 4
  %idxprom420 = sext i32 %273 to i64
  %arrayidx421 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i32 0, i64 %idxprom420
  %274 = load i32, i32* %arrayidx421, align 4
  store i32 %274, i32* %tsep, align 4
  br label %for.inc.422

for.inc.422:                                      ; preds = %if.end.419
  %275 = load i32, i32* %icol, align 4
  %inc423 = add nsw i32 %275, 1
  store i32 %inc423, i32* %icol, align 4
  br label %for.cond.402

for.end.424:                                      ; preds = %for.cond.402
  %276 = load i32, i32* @rightl, align 4
  %tobool425 = icmp ne i32 %276, 0
  br i1 %tobool425, label %if.then.426, label %if.end.434

if.then.426:                                      ; preds = %for.end.424
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %278 = load i32, i32* @ncol, align 4
  %add427 = add nsw i32 %278, 80
  %sub428 = sub nsw i32 %add427, 1
  %279 = load i32, i32* @ncol, align 4
  %add429 = add nsw i32 %279, 40
  %sub430 = sub nsw i32 %add429, 1
  %280 = load i32, i32* @ncol, align 4
  %add431 = add nsw i32 %280, 80
  %sub432 = sub nsw i32 %add431, 2
  %call433 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %277, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i32 %sub428, i32 %sub430, i32 %sub432)
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.426, %for.end.424
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %282 = load i32, i32* @ncol, align 4
  %add435 = add nsw i32 %282, 80
  %sub436 = sub nsw i32 %add435, 1
  %call437 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %281, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i32 %sub436)
  %283 = load i32, i32* @boxflg, align 4
  %tobool438 = icmp ne i32 %283, 0
  br i1 %tobool438, label %if.then.443, label %lor.lhs.false.439

lor.lhs.false.439:                                ; preds = %if.end.434
  %284 = load i32, i32* @allflg, align 4
  %tobool440 = icmp ne i32 %284, 0
  br i1 %tobool440, label %if.then.443, label %lor.lhs.false.441

lor.lhs.false.441:                                ; preds = %lor.lhs.false.439
  %285 = load i32, i32* @dboxflg, align 4
  %tobool442 = icmp ne i32 %285, 0
  br i1 %tobool442, label %if.then.443, label %if.end.448

if.then.443:                                      ; preds = %lor.lhs.false.441, %lor.lhs.false.439, %if.end.434
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %287 = load i32, i32* @ncol, align 4
  %sub444 = sub nsw i32 %287, 1
  %idxprom445 = sext i32 %sub444 to i64
  %arrayidx446 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i32 0, i64 %idxprom445
  %288 = load i32, i32* %arrayidx446, align 4
  %call447 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %286, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 %288, i32 38)
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.443, %lor.lhs.false.441
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %290 = load i32, i32* @iline, align 4
  %sub449 = sub nsw i32 %290, 1
  %291 = load i8*, i8** @ifile, align 8
  %call450 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %289, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.30, i32 0, i32 0), i32 %sub449, i8* %291)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @prev(i32) #1

declare i32 @vspen(i8*) #1

declare i32 @fspan(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @filler(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = ptrtoint i8* %0 to i32
  %call = call i32 @point(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i8*, i8** %s.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 82
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

declare i32 @ctype(i32, i32) #1

declare i32 @real(i8*) #1

; Function Attrs: nounwind uwtable
define void @wide(i8* %s, i8* %fn, i8* %size) #0 {
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
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %3 = load i32, i32* @F1, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 %3)
  %4 = load i8*, i8** %fn.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load i8*, i8** %fn.addr, align 8
  call void @putfont(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %7 = load i8*, i8** %size.addr, align 8
  %8 = load i8, i8* %7, align 1
  %tobool4 = icmp ne i8 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %9 = load i8*, i8** %size.addr, align 8
  call void @putsize(i8* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %11 = load i8*, i8** %s.addr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* %11)
  %12 = load i8*, i8** %fn.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp sgt i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  call void @putfont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.6
  %14 = load i8*, i8** %size.addr, align 8
  %15 = load i8, i8* %14, align 1
  %tobool13 = icmp ne i8 %15, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  call void @putsize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %17 = load i32, i32* @F1, align 4
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i32 %17)
  br label %if.end.18

if.else:                                          ; preds = %entry
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %19 = load i8*, i8** %s.addr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* %19)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end.15
  ret void
}

declare i32 @barent(i8*) #1

declare i32 @lspan(i32, i32) #1

declare void @untext() #1

declare i32 @point(i32) #1

declare void @putfont(i8*) #1

declare void @putsize(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
