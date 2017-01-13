; ModuleID = './MultiSource.Benchmarks.Prolangs-C/115.unix-tbl.tv.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.colstr = type { i8*, i8* }

@instead = external global [0 x i8*], align 8
@tabout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"\5Ch'%dp'\00", align 1
@nlin = external global i32, align 4
@fullbot = external global [0 x i32], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"1v-.5m\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".5m\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\5Cv'%s'\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\5Cv'%dp'\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\5Cs\5Cn(%d\00", align 1
@linsize = external global i32, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"\5Cv'-\5Cn(%dp/6u'\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\5Ch'-\5Cn(#~u'\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\5CL'|\5Cn(#%cu-%s\00", align 1
@linestop = external global [0 x i32], align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"1v\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"\5Cn(35u\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"-(%s)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s%dp\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"'\5Cs0\5Cv'\5Cn(\5C*(#du-\5Cn(#%cu+%s\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"+%s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"\5Cv'\5Cn(%dp/6u'\00", align 1
@table = external global [0 x %struct.colstr*], align 8

; Function Attrs: nounwind uwtable
define void @drawvert(i32 %start, i32 %end, i32 %c, i32 %lwid) #0 {
entry:
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %lwid.addr = alloca i32, align 4
  %exb = alloca i8*, align 8
  %ext = alloca i8*, align 8
  %tp = alloca i32, align 4
  %sl = alloca i32, align 4
  %ln = alloca i32, align 4
  %pos = alloca i32, align 4
  %epb = alloca i32, align 4
  %ept = alloca i32, align 4
  %vm = alloca i32, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %lwid, i32* %lwid.addr, align 4
  store i8* null, i8** %exb, align 8
  store i8* null, i8** %ext, align 8
  store i32 0, i32* %tp, align 4
  %0 = load i32, i32* %end.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %end.addr, align 4
  store i32 118, i32* %vm, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %end.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %end.addr, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, i32* %end.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %ln, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %4 = load i32, i32* %ln, align 4
  %5 = load i32, i32* %lwid.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %ept, align 4
  store i32 0, i32* %epb, align 4
  %6 = load i32, i32* %ln, align 4
  %mul = mul nsw i32 2, %6
  %7 = load i32, i32* %lwid.addr, align 4
  %sub = sub nsw i32 %mul, %7
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %pos, align 4
  %8 = load i32, i32* %pos, align 4
  %9 = load i32, i32* %tp, align 4
  %cmp2 = icmp ne i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %11 = load i32, i32* %pos, align 4
  %12 = load i32, i32* %tp, align 4
  %sub3 = sub nsw i32 %11, %12
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i32, i32* %pos, align 4
  store i32 %13, i32* %tp, align 4
  %14 = load i32, i32* %end.addr, align 4
  %15 = load i32, i32* @nlin, align 4
  %cmp4 = icmp slt i32 %14, %15
  br i1 %cmp4, label %if.then.5, label %if.end.18

if.then.5:                                        ; preds = %if.end
  %16 = load i32, i32* %end.addr, align 4
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom6
  %17 = load i32, i32* %arrayidx7, align 4
  %tobool8 = icmp ne i32 %17, 0
  br i1 %tobool8, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.5
  %18 = load i32, i32* %end.addr, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom9
  %19 = load i8*, i8** %arrayidx10, align 8
  %tobool11 = icmp ne i8* %19, null
  br i1 %tobool11, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %20 = load i32, i32* %end.addr, align 4
  %call12 = call i32 @allh(i32 %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true, %if.then.5
  store i32 2, i32* %epb, align 4
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %21 = load i32, i32* %end.addr, align 4
  %22 = load i32, i32* %c.addr, align 4
  %call15 = call i32 @midbar(i32 %21, i32 %22)
  switch i32 %call15, label %sw.epilog [
    i32 45, label %sw.bb
    i32 61, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.else
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** %exb, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** %exb, align 8
  store i32 1, i32* %epb, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.16, %sw.bb
  br label %if.end.17

if.end.17:                                        ; preds = %sw.epilog, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %23 = load i32, i32* %lwid.addr, align 4
  %cmp19 = icmp sgt i32 %23, 1
  br i1 %cmp19, label %if.then.20, label %if.end.32

if.then.20:                                       ; preds = %if.end.18
  %24 = load i32, i32* %end.addr, align 4
  %25 = load i32, i32* %c.addr, align 4
  %call21 = call i32 @interh(i32 %24, i32 %25)
  switch i32 %call21, label %sw.epilog.31 [
    i32 3, label %sw.bb.22
    i32 2, label %sw.bb.24
    i32 1, label %sw.bb.27
  ]

sw.bb.22:                                         ; preds = %if.then.20
  %26 = load i32, i32* %epb, align 4
  %sub23 = sub nsw i32 %26, 1
  store i32 %sub23, i32* %epb, align 4
  br label %sw.epilog.31

sw.bb.24:                                         ; preds = %if.then.20
  %27 = load i32, i32* %ln, align 4
  %cmp25 = icmp eq i32 %27, 0
  %cond = select i1 %cmp25, i32 1, i32 -1
  %28 = load i32, i32* %epb, align 4
  %add26 = add nsw i32 %28, %cond
  store i32 %add26, i32* %epb, align 4
  br label %sw.epilog.31

sw.bb.27:                                         ; preds = %if.then.20
  %29 = load i32, i32* %ln, align 4
  %cmp28 = icmp eq i32 %29, 1
  %cond29 = select i1 %cmp28, i32 1, i32 -1
  %30 = load i32, i32* %epb, align 4
  %add30 = add nsw i32 %30, %cond29
  store i32 %add30, i32* %epb, align 4
  br label %sw.epilog.31

sw.epilog.31:                                     ; preds = %if.then.20, %sw.bb.27, %sw.bb.24, %sw.bb.22
  br label %if.end.32

if.end.32:                                        ; preds = %sw.epilog.31, %if.end.18
  %31 = load i32, i32* %lwid.addr, align 4
  %cmp33 = icmp eq i32 %31, 1
  br i1 %cmp33, label %if.then.34, label %if.end.41

if.then.34:                                       ; preds = %if.end.32
  %32 = load i32, i32* %end.addr, align 4
  %33 = load i32, i32* %c.addr, align 4
  %call35 = call i32 @interh(i32 %32, i32 %33)
  switch i32 %call35, label %sw.epilog.40 [
    i32 3, label %sw.bb.36
    i32 2, label %sw.bb.38
    i32 1, label %sw.bb.38
  ]

sw.bb.36:                                         ; preds = %if.then.34
  %34 = load i32, i32* %epb, align 4
  %sub37 = sub nsw i32 %34, 1
  store i32 %sub37, i32* %epb, align 4
  br label %sw.epilog.40

sw.bb.38:                                         ; preds = %if.then.34, %if.then.34
  %35 = load i32, i32* %epb, align 4
  %add39 = add nsw i32 %35, 1
  store i32 %add39, i32* %epb, align 4
  br label %sw.epilog.40

sw.epilog.40:                                     ; preds = %if.then.34, %sw.bb.38, %sw.bb.36
  br label %if.end.41

if.end.41:                                        ; preds = %sw.epilog.40, %if.end.32
  %36 = load i32, i32* %start.addr, align 4
  %cmp42 = icmp sgt i32 %36, 0
  br i1 %cmp42, label %if.then.43, label %if.else.71

if.then.43:                                       ; preds = %if.end.41
  %37 = load i32, i32* %start.addr, align 4
  %sub44 = sub nsw i32 %37, 1
  store i32 %sub44, i32* %sl, align 4
  br label %while.cond.45

while.cond.45:                                    ; preds = %while.body.50, %if.then.43
  %38 = load i32, i32* %sl, align 4
  %cmp46 = icmp sge i32 %38, 0
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.45
  %39 = load i32, i32* %sl, align 4
  %idxprom47 = sext i32 %39 to i64
  %arrayidx48 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom47
  %40 = load i8*, i8** %arrayidx48, align 8
  %tobool49 = icmp ne i8* %40, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.45
  %41 = phi i1 [ false, %while.cond.45 ], [ %tobool49, %land.rhs ]
  br i1 %41, label %while.body.50, label %while.end.51

while.body.50:                                    ; preds = %land.end
  %42 = load i32, i32* %sl, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %sl, align 4
  br label %while.cond.45

while.end.51:                                     ; preds = %land.end
  %43 = load i32, i32* %sl, align 4
  %cmp52 = icmp sge i32 %43, 0
  br i1 %cmp52, label %land.lhs.true.53, label %if.else.61

land.lhs.true.53:                                 ; preds = %while.end.51
  %44 = load i32, i32* %sl, align 4
  %idxprom54 = sext i32 %44 to i64
  %arrayidx55 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom54
  %45 = load i32, i32* %arrayidx55, align 4
  %tobool56 = icmp ne i32 %45, 0
  br i1 %tobool56, label %if.then.60, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %land.lhs.true.53
  %46 = load i32, i32* %sl, align 4
  %call58 = call i32 @allh(i32 %46)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %lor.lhs.false.57, %land.lhs.true.53
  store i32 0, i32* %ept, align 4
  br label %if.end.70

if.else.61:                                       ; preds = %lor.lhs.false.57, %while.end.51
  %47 = load i32, i32* %sl, align 4
  %cmp62 = icmp sge i32 %47, 0
  br i1 %cmp62, label %if.then.63, label %if.else.68

if.then.63:                                       ; preds = %if.else.61
  %48 = load i32, i32* %sl, align 4
  %49 = load i32, i32* %c.addr, align 4
  %call64 = call i32 @midbar(i32 %48, i32 %49)
  switch i32 %call64, label %sw.default [
    i32 45, label %sw.bb.65
    i32 61, label %sw.bb.66
  ]

sw.bb.65:                                         ; preds = %if.then.63
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %ext, align 8
  br label %sw.epilog.67

sw.bb.66:                                         ; preds = %if.then.63
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %ext, align 8
  store i32 -1, i32* %ept, align 4
  br label %sw.epilog.67

sw.default:                                       ; preds = %if.then.63
  store i32 109, i32* %vm, align 4
  br label %sw.epilog.67

sw.epilog.67:                                     ; preds = %sw.default, %sw.bb.66, %sw.bb.65
  br label %if.end.69

if.else.68:                                       ; preds = %if.else.61
  store i32 -4, i32* %ept, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %sw.epilog.67
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.60
  br label %if.end.78

if.else.71:                                       ; preds = %if.end.41
  %50 = load i32, i32* %start.addr, align 4
  %cmp72 = icmp eq i32 %50, 0
  br i1 %cmp72, label %land.lhs.true.73, label %if.end.77

land.lhs.true.73:                                 ; preds = %if.else.71
  %call74 = call i32 @allh(i32 0)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.73
  store i32 0, i32* %ept, align 4
  store i32 109, i32* %vm, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %land.lhs.true.73, %if.else.71
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.70
  %51 = load i32, i32* %lwid.addr, align 4
  %cmp79 = icmp sgt i32 %51, 1
  br i1 %cmp79, label %if.then.80, label %if.else.93

if.then.80:                                       ; preds = %if.end.78
  %52 = load i32, i32* %start.addr, align 4
  %53 = load i32, i32* %c.addr, align 4
  %call81 = call i32 @interh(i32 %52, i32 %53)
  switch i32 %call81, label %sw.epilog.92 [
    i32 3, label %sw.bb.82
    i32 1, label %sw.bb.84
    i32 2, label %sw.bb.88
  ]

sw.bb.82:                                         ; preds = %if.then.80
  %54 = load i32, i32* %ept, align 4
  %add83 = add nsw i32 %54, 1
  store i32 %add83, i32* %ept, align 4
  br label %sw.epilog.92

sw.bb.84:                                         ; preds = %if.then.80
  %55 = load i32, i32* %ln, align 4
  %cmp85 = icmp eq i32 %55, 0
  %cond86 = select i1 %cmp85, i32 1, i32 -1
  %56 = load i32, i32* %ept, align 4
  %add87 = add nsw i32 %56, %cond86
  store i32 %add87, i32* %ept, align 4
  br label %sw.epilog.92

sw.bb.88:                                         ; preds = %if.then.80
  %57 = load i32, i32* %ln, align 4
  %cmp89 = icmp eq i32 %57, 1
  %cond90 = select i1 %cmp89, i32 1, i32 -1
  %58 = load i32, i32* %ept, align 4
  %add91 = add nsw i32 %58, %cond90
  store i32 %add91, i32* %ept, align 4
  br label %sw.epilog.92

sw.epilog.92:                                     ; preds = %if.then.80, %sw.bb.88, %sw.bb.84, %sw.bb.82
  br label %if.end.103

if.else.93:                                       ; preds = %if.end.78
  %59 = load i32, i32* %lwid.addr, align 4
  %cmp94 = icmp eq i32 %59, 1
  br i1 %cmp94, label %if.then.95, label %if.end.102

if.then.95:                                       ; preds = %if.else.93
  %60 = load i32, i32* %start.addr, align 4
  %61 = load i32, i32* %c.addr, align 4
  %call96 = call i32 @interh(i32 %60, i32 %61)
  switch i32 %call96, label %sw.epilog.101 [
    i32 3, label %sw.bb.97
    i32 1, label %sw.bb.99
    i32 2, label %sw.bb.99
  ]

sw.bb.97:                                         ; preds = %if.then.95
  %62 = load i32, i32* %ept, align 4
  %add98 = add nsw i32 %62, 1
  store i32 %add98, i32* %ept, align 4
  br label %sw.epilog.101

sw.bb.99:                                         ; preds = %if.then.95, %if.then.95
  %63 = load i32, i32* %ept, align 4
  %sub100 = sub nsw i32 %63, 1
  store i32 %sub100, i32* %ept, align 4
  br label %sw.epilog.101

sw.epilog.101:                                    ; preds = %if.then.95, %sw.bb.99, %sw.bb.97
  br label %if.end.102

if.end.102:                                       ; preds = %sw.epilog.101, %if.else.93
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %sw.epilog.92
  %64 = load i8*, i8** %exb, align 8
  %tobool104 = icmp ne i8* %64, null
  br i1 %tobool104, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.end.103
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %66 = load i8*, i8** %exb, align 8
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %66)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.end.103
  %67 = load i32, i32* %epb, align 4
  %tobool108 = icmp ne i32 %67, 0
  br i1 %tobool108, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %if.end.107
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %69 = load i32, i32* %epb, align 4
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %69)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %if.end.107
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 33)
  %71 = load i32, i32* @linsize, align 4
  %tobool113 = icmp ne i32 %71, 0
  br i1 %tobool113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.end.111
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 33)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %if.end.111
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %75 = load i32, i32* %start.addr, align 4
  %idxprom118 = sext i32 %75 to i64
  %arrayidx119 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom118
  %76 = load i32, i32* %arrayidx119, align 4
  %add120 = add nsw i32 %76, 97
  %sub121 = sub nsw i32 %add120, 1
  %77 = load i32, i32* %vm, align 4
  %cmp122 = icmp eq i32 %77, 118
  %cond123 = select i1 %cmp122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 %sub121, i8* %cond123)
  %78 = load i8*, i8** %ext, align 8
  %tobool125 = icmp ne i8* %78, null
  br i1 %tobool125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %if.end.116
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %80 = load i8*, i8** %ext, align 8
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* %80)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %if.end.116
  %81 = load i8*, i8** %exb, align 8
  %tobool129 = icmp ne i8* %81, null
  br i1 %tobool129, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.end.128
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %83 = load i8*, i8** %exb, align 8
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* %83)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.end.128
  %84 = load i32, i32* %ept, align 4
  %85 = load i32, i32* %epb, align 4
  %sub133 = sub nsw i32 %84, %85
  store i32 %sub133, i32* %pos, align 4
  %86 = load i32, i32* %pos, align 4
  %tobool134 = icmp ne i32 %86, 0
  br i1 %tobool134, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %if.end.132
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %88 = load i32, i32* %pos, align 4
  %cmp136 = icmp sge i32 %88, 0
  %cond137 = select i1 %cmp136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0)
  %89 = load i32, i32* %pos, align 4
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %cond137, i32 %89)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.135, %if.end.132
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %91 = load i32, i32* %start.addr, align 4
  %idxprom140 = sext i32 %91 to i64
  %arrayidx141 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom140
  %92 = load i32, i32* %arrayidx141, align 4
  %add142 = add nsw i32 %92, 97
  %sub143 = sub nsw i32 %add142, 1
  %93 = load i32, i32* %vm, align 4
  %cmp144 = icmp eq i32 %93, 118
  %cond145 = select i1 %cmp144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i32 %sub143, i8* %cond145)
  %94 = load i8*, i8** %ext, align 8
  %tobool147 = icmp ne i8* %94, null
  br i1 %tobool147, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.end.139
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %96 = load i8*, i8** %ext, align 8
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* %96)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %if.end.139
  %97 = load i32, i32* %ept, align 4
  %tobool151 = icmp ne i32 %97, 0
  br i1 %tobool151, label %if.then.152, label %if.end.158

if.then.152:                                      ; preds = %if.end.150
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %99 = load i32, i32* %ept, align 4
  %sub153 = sub nsw i32 0, %99
  %cmp154 = icmp sgt i32 %sub153, 0
  %cond155 = select i1 %cmp154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0)
  %100 = load i32, i32* %ept, align 4
  %sub156 = sub nsw i32 0, %100
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %cond155, i32 %sub156)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.152, %if.end.150
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %102 = load i32, i32* @linsize, align 4
  %tobool160 = icmp ne i32 %102, 0
  br i1 %tobool160, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.end.158
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 33)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %if.end.158
  br label %for.inc

for.inc:                                          ; preds = %if.end.163
  %104 = load i32, i32* %ln, align 4
  %inc164 = add nsw i32 %104, 1
  store i32 %inc164, i32* %ln, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @allh(i32) #1

; Function Attrs: nounwind uwtable
define i32 @midbar(i32 %i, i32 %c) #0 {
entry:
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @midbcol(i32 %0, i32 %1)
  store i32 %call, i32* %k, align 4
  %2 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %i.addr, align 4
  %5 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %5, 1
  %call2 = call i32 @midbcol(i32 %4, i32 %sub)
  store i32 %call2, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32, i32* %k, align 4
  ret i32 %6
}

declare i32 @interh(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @midbcol(i32 %i, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %ct = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @ctype(i32 %0, i32 %1)
  store i32 %call, i32* %ct, align 4
  %cmp = icmp eq i32 %call, 115
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %c.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %c.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %ct, align 4
  %cmp1 = icmp eq i32 %3, 45
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %4 = load i32, i32* %ct, align 4
  %cmp2 = icmp eq i32 %4, 61
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %5 = load i32, i32* %ct, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom3
  %8 = load %struct.colstr*, %struct.colstr** %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds %struct.colstr, %struct.colstr* %8, i64 %idxprom
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx4, i32 0, i32 0
  %9 = load i8*, i8** %col, align 8
  %call5 = call i32 @barent(i8* %9)
  store i32 %call5, i32* %ct, align 4
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %10 = load i32, i32* %ct, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @ctype(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @barent(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %2 = ptrtoint i8* %1 to i32
  %call = call i32 @point(i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 92
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.2
  %6 = load i8*, i8** %s.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %8 = load i8*, i8** %s.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %9 to i32
  switch i32 %conv14, label %sw.epilog [
    i32 95, label %sw.bb
    i32 61, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.end.12
  store i32 45, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %if.end.12
  store i32 61, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.15, %sw.bb, %if.then.11, %if.then.1, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @point(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
