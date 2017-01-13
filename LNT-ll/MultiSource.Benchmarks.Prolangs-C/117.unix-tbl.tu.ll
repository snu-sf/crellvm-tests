; ModuleID = './MultiSource.Benchmarks.Prolangs-C/117.unix-tbl.tu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@table = external global [0 x %struct.colstr*], align 8
@ncol = external global i32, align 4
@pr1403 = external global i32, align 4
@tabout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c".nr %d \5Cn(.v\0A.vs \5Cn(.vu-\5Cn(.sp\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c".vs \5Cn(%du\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\5Cv'-.5m'\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\5Cv'%dp'\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"1p\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"-1p\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\5Ch'%s'\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"+1p\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"\5Ch'|\5Cn(%du'\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\5Cs\5Cn(%d\00", align 1
@linsize = external global i32, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"\5Cv'-\5Cn(%dp/6u'\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"\5Cl'|\5Cn(%du'\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\5C(ul\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\5C(ru\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"\5Cl'|\5Cn(TWu%s%s'\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"\5Cl'(|\5Cn(%du+|\5Cn(%du)/2u%s%s'\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"\5Cv'\5Cn(%dp/6u'\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"\5Cs0\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"\5Cv'+.5m'\00", align 1
@linestop = external global [0 x i32], align 4
@nlin = external global i32, align 4
@boxflg = external global i32, align 4
@allflg = external global i32, align 4
@dboxflg = external global i32, align 4
@instead = external global [0 x i8*], align 8
@.str.22 = private unnamed_addr constant [4 x i8] c".TH\00", align 1
@fullbot = external global [0 x i32], align 4
@stynum = external global [0 x i32], align 4
@lefline = external global [100 x [20 x i32]], align 16

; Function Attrs: nounwind uwtable
define void @makeline(i32 %i, i32 %c, i32 %lintype) #0 {
entry:
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %lintype.addr = alloca i32, align 4
  %cr = alloca i32, align 4
  %type = alloca i32, align 4
  %shortl = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %lintype, i32* %lintype.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @thish(i32 %0, i32 %1)
  store i32 %call, i32* %type, align 4
  %2 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  store i32 %3, i32* %cr, align 4
  %4 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom1
  %6 = load %struct.colstr*, %struct.colstr** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds %struct.colstr, %struct.colstr* %6, i64 %idxprom
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx2, i32 0, i32 0
  %7 = load i8*, i8** %col, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv, 92
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, i32* %shortl, align 4
  %9 = load i32, i32* %c.addr, align 4
  %cmp6 = icmp sgt i32 %9, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %shortl, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.13, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %11 = load i32, i32* %i.addr, align 4
  %12 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %12, 1
  %call9 = call i32 @thish(i32 %11, i32 %sub)
  %13 = load i32, i32* %type, align 4
  %cmp10 = icmp eq i32 %call9, %13
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.8
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.8, %land.lhs.true, %if.end
  %14 = load i32, i32* %shortl, align 4
  %cmp14 = icmp eq i32 %14, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.13
  %15 = load i32, i32* %c.addr, align 4
  store i32 %15, i32* %cr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %16 = load i32, i32* %cr, align 4
  %17 = load i32, i32* @ncol, align 4
  %cmp17 = icmp slt i32 %16, %17
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %18 = load i32, i32* %i.addr, align 4
  %19 = load i32, i32* %cr, align 4
  %call19 = call i32 @ctype(i32 %18, i32 %19)
  %cmp20 = icmp eq i32 %call19, 115
  br i1 %cmp20, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %20 = load i32, i32* %type, align 4
  %21 = load i32, i32* %i.addr, align 4
  %22 = load i32, i32* %cr, align 4
  %call22 = call i32 @thish(i32 %21, i32 %22)
  %cmp23 = icmp eq i32 %20, %call22
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %23 = phi i1 [ true, %land.rhs ], [ %cmp23, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %24 = phi i1 [ false, %for.cond ], [ %23, %lor.end ]
  br i1 %24, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %cr, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %cr, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.37

if.else:                                          ; preds = %if.end.13
  %26 = load i32, i32* %c.addr, align 4
  %add = add nsw i32 %26, 1
  store i32 %add, i32* %cr, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.34, %if.else
  %27 = load i32, i32* %cr, align 4
  %28 = load i32, i32* @ncol, align 4
  %cmp26 = icmp slt i32 %27, %28
  br i1 %cmp26, label %land.rhs.28, label %land.end.32

land.rhs.28:                                      ; preds = %for.cond.25
  %29 = load i32, i32* %i.addr, align 4
  %30 = load i32, i32* %cr, align 4
  %call29 = call i32 @ctype(i32 %29, i32 %30)
  %cmp30 = icmp eq i32 %call29, 115
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.28, %for.cond.25
  %31 = phi i1 [ false, %for.cond.25 ], [ %cmp30, %land.rhs.28 ]
  br i1 %31, label %for.body.33, label %for.end.36

for.body.33:                                      ; preds = %land.end.32
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.33
  %32 = load i32, i32* %cr, align 4
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, i32* %cr, align 4
  br label %for.cond.25

for.end.36:                                       ; preds = %land.end.32
  br label %if.end.37

if.end.37:                                        ; preds = %for.end.36, %for.end
  %33 = load i32, i32* %i.addr, align 4
  %34 = load i32, i32* %c.addr, align 4
  %35 = load i32, i32* %cr, align 4
  %sub38 = sub nsw i32 %35, 1
  %36 = load i32, i32* %lintype.addr, align 4
  %37 = load i32, i32* %shortl, align 4
  call void @drawline(i32 %33, i32 %34, i32 %sub38, i32 %36, i32 0, i32 %37)
  br label %return

return:                                           ; preds = %if.end.37, %if.then.12, %if.then
  ret void
}

declare i32 @thish(i32, i32) #1

declare i32 @ctype(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @drawline(i32 %i, i32 %cl, i32 %cr, i32 %lintype, i32 %noheight, i32 %shortl) #0 {
entry:
  %i.addr = alloca i32, align 4
  %cl.addr = alloca i32, align 4
  %cr.addr = alloca i32, align 4
  %lintype.addr = alloca i32, align 4
  %noheight.addr = alloca i32, align 4
  %shortl.addr = alloca i32, align 4
  %exhr = alloca i8*, align 8
  %exhl = alloca i8*, align 8
  %lcount = alloca i32, align 4
  %ln = alloca i32, align 4
  %linpos = alloca i32, align 4
  %oldpos = alloca i32, align 4
  %nodata = alloca i32, align 4
  %lnch = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %cl, i32* %cl.addr, align 4
  store i32 %cr, i32* %cr.addr, align 4
  store i32 %lintype, i32* %lintype.addr, align 4
  store i32 %noheight, i32* %noheight.addr, align 4
  store i32 %shortl, i32* %shortl.addr, align 4
  store i32 0, i32* %lcount, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %exhl, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %exhr, align 8
  %0 = load i32, i32* %lintype.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 45, label %sw.bb
    i32 61, label %sw.bb.1
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %lcount, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %1 = load i32, i32* @pr1403, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 1, i32 2
  store i32 %cond, i32* %lcount, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 1, i32* %lcount, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %lcount, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  br label %if.end.112

if.end:                                           ; preds = %sw.epilog
  %3 = load i32, i32* %cr.addr, align 4
  %4 = load i32, i32* %cl.addr, align 4
  %sub = sub nsw i32 %3, %4
  %5 = load i32, i32* @ncol, align 4
  %cmp3 = icmp sge i32 %sub, %5
  br i1 %cmp3, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %noheight.addr, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %7 = load i32, i32* %i.addr, align 4
  %call = call i32 @allh(i32 %7)
  %tobool5 = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %8 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %tobool5, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  store i32 %lor.ext, i32* %nodata, align 4
  %9 = load i32, i32* %nodata, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %lor.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %lor.end
  store i32 0, i32* %oldpos, align 4
  store i32 0, i32* %ln, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %11 = load i32, i32* %ln, align 4
  %12 = load i32, i32* %lcount, align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %ln, align 4
  %mul = mul nsw i32 2, %13
  %14 = load i32, i32* %lcount, align 4
  %sub11 = sub nsw i32 %mul, %14
  %add = add nsw i32 %sub11, 1
  store i32 %add, i32* %linpos, align 4
  %15 = load i32, i32* %linpos, align 4
  %16 = load i32, i32* %oldpos, align 4
  %cmp12 = icmp ne i32 %15, %16
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %for.body
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %18 = load i32, i32* %linpos, align 4
  %19 = load i32, i32* %oldpos, align 4
  %sub14 = sub nsw i32 %18, %19
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %sub14)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %for.body
  %20 = load i32, i32* %linpos, align 4
  store i32 %20, i32* %oldpos, align 4
  %21 = load i32, i32* %shortl.addr, align 4
  %cmp17 = icmp eq i32 %21, 0
  br i1 %cmp17, label %if.then.18, label %if.else.69

if.then.18:                                       ; preds = %if.end.16
  %22 = load i32, i32* %cl.addr, align 4
  call void @tohcol(i32 %22)
  %23 = load i32, i32* %lcount, align 4
  %cmp19 = icmp sgt i32 %23, 1
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.18
  %24 = load i32, i32* %i.addr, align 4
  %25 = load i32, i32* %cl.addr, align 4
  %call21 = call i32 @interv(i32 %24, i32 %25)
  switch i32 %call21, label %sw.epilog.29 [
    i32 1, label %sw.bb.22
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.28
  ]

sw.bb.22:                                         ; preds = %if.then.20
  %26 = load i32, i32* %ln, align 4
  %cmp23 = icmp eq i32 %26, 0
  %cond24 = select i1 %cmp23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)
  store i8* %cond24, i8** %exhl, align 8
  br label %sw.epilog.29

sw.bb.25:                                         ; preds = %if.then.20
  %27 = load i32, i32* %ln, align 4
  %cmp26 = icmp eq i32 %27, 1
  %cond27 = select i1 %cmp26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)
  store i8* %cond27, i8** %exhl, align 8
  br label %sw.epilog.29

sw.bb.28:                                         ; preds = %if.then.20
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** %exhl, align 8
  br label %sw.epilog.29

sw.epilog.29:                                     ; preds = %if.then.20, %sw.bb.28, %sw.bb.25, %sw.bb.22
  %28 = load i8*, i8** %exhl, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx, align 1
  %tobool30 = icmp ne i8 %29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %sw.epilog.29
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %31 = load i8*, i8** %exhl, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* %31)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %sw.epilog.29
  br label %if.end.46

if.else:                                          ; preds = %if.then.18
  %32 = load i32, i32* %lcount, align 4
  %cmp34 = icmp eq i32 %32, 1
  br i1 %cmp34, label %if.then.35, label %if.end.45

if.then.35:                                       ; preds = %if.else
  %33 = load i32, i32* %i.addr, align 4
  %34 = load i32, i32* %cl.addr, align 4
  %call36 = call i32 @interv(i32 %33, i32 %34)
  switch i32 %call36, label %sw.epilog.39 [
    i32 1, label %sw.bb.37
    i32 2, label %sw.bb.37
    i32 3, label %sw.bb.38
  ]

sw.bb.37:                                         ; preds = %if.then.35, %if.then.35
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %exhl, align 8
  br label %sw.epilog.39

sw.bb.38:                                         ; preds = %if.then.35
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** %exhl, align 8
  br label %sw.epilog.39

sw.epilog.39:                                     ; preds = %if.then.35, %sw.bb.38, %sw.bb.37
  %35 = load i8*, i8** %exhl, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx40, align 1
  %tobool41 = icmp ne i8 %36, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %sw.epilog.39
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %38 = load i8*, i8** %exhl, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* %38)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %sw.epilog.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.33
  %39 = load i32, i32* %lcount, align 4
  %cmp47 = icmp sgt i32 %39, 1
  br i1 %cmp47, label %if.then.48, label %if.else.59

if.then.48:                                       ; preds = %if.end.46
  %40 = load i32, i32* %i.addr, align 4
  %41 = load i32, i32* %cr.addr, align 4
  %add49 = add nsw i32 %41, 1
  %call50 = call i32 @interv(i32 %40, i32 %add49)
  switch i32 %call50, label %sw.epilog.58 [
    i32 1, label %sw.bb.51
    i32 2, label %sw.bb.54
    i32 3, label %sw.bb.57
  ]

sw.bb.51:                                         ; preds = %if.then.48
  %42 = load i32, i32* %ln, align 4
  %cmp52 = icmp eq i32 %42, 0
  %cond53 = select i1 %cmp52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)
  store i8* %cond53, i8** %exhr, align 8
  br label %sw.epilog.58

sw.bb.54:                                         ; preds = %if.then.48
  %43 = load i32, i32* %ln, align 4
  %cmp55 = icmp eq i32 %43, 1
  %cond56 = select i1 %cmp55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)
  store i8* %cond56, i8** %exhr, align 8
  br label %sw.epilog.58

sw.bb.57:                                         ; preds = %if.then.48
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %exhr, align 8
  br label %sw.epilog.58

sw.epilog.58:                                     ; preds = %if.then.48, %sw.bb.57, %sw.bb.54, %sw.bb.51
  br label %if.end.68

if.else.59:                                       ; preds = %if.end.46
  %44 = load i32, i32* %lcount, align 4
  %cmp60 = icmp eq i32 %44, 1
  br i1 %cmp60, label %if.then.61, label %if.end.67

if.then.61:                                       ; preds = %if.else.59
  %45 = load i32, i32* %i.addr, align 4
  %46 = load i32, i32* %cr.addr, align 4
  %add62 = add nsw i32 %46, 1
  %call63 = call i32 @interv(i32 %45, i32 %add62)
  switch i32 %call63, label %sw.epilog.66 [
    i32 1, label %sw.bb.64
    i32 2, label %sw.bb.64
    i32 3, label %sw.bb.65
  ]

sw.bb.64:                                         ; preds = %if.then.61, %if.then.61
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8** %exhr, align 8
  br label %sw.epilog.66

sw.bb.65:                                         ; preds = %if.then.61
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %exhr, align 8
  br label %sw.epilog.66

sw.epilog.66:                                     ; preds = %if.then.61, %sw.bb.65, %sw.bb.64
  br label %if.end.67

if.end.67:                                        ; preds = %sw.epilog.66, %if.else.59
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %sw.epilog.58
  br label %if.end.72

if.else.69:                                       ; preds = %if.end.16
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %48 = load i32, i32* %cl.addr, align 4
  %add70 = add nsw i32 %48, 40
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %add70)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.end.68
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 33)
  %50 = load i32, i32* @linsize, align 4
  %tobool74 = icmp ne i32 %50, 0
  br i1 %tobool74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.72
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 33)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.72
  %52 = load i32, i32* %shortl.addr, align 4
  %tobool78 = icmp ne i32 %52, 0
  br i1 %tobool78, label %if.then.79, label %if.else.82

if.then.79:                                       ; preds = %if.end.77
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %54 = load i32, i32* %cr.addr, align 4
  %add80 = add nsw i32 %54, 80
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 %add80)
  br label %if.end.98

if.else.82:                                       ; preds = %if.end.77
  store i32 ptrtoint ([5 x i8]* @.str.14 to i32), i32* %lnch, align 4
  %55 = load i32, i32* @pr1403, align 4
  %tobool83 = icmp ne i32 %55, 0
  br i1 %tobool83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.else.82
  %56 = load i32, i32* %lintype.addr, align 4
  %cmp85 = icmp eq i32 %56, 2
  %cond86 = select i1 %cmp85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)
  %57 = ptrtoint i8* %cond86 to i32
  store i32 %57, i32* %lnch, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %if.else.82
  %58 = load i32, i32* %cr.addr, align 4
  %add88 = add nsw i32 %58, 1
  %59 = load i32, i32* @ncol, align 4
  %cmp89 = icmp sge i32 %add88, %59
  br i1 %cmp89, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.end.87
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %61 = load i8*, i8** %exhr, align 8
  %62 = load i32, i32* %lnch, align 4
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i8* %61, i32 %62)
  br label %if.end.97

if.else.92:                                       ; preds = %if.end.87
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %64 = load i32, i32* %cr.addr, align 4
  %add93 = add nsw i32 %64, 80
  %65 = load i32, i32* %cr.addr, align 4
  %add94 = add nsw i32 %65, 1
  %add95 = add nsw i32 %add94, 40
  %66 = load i8*, i8** %exhr, align 8
  %67 = load i32, i32* %lnch, align 4
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), i32 %add93, i32 %add95, i8* %66, i32 %67)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.92, %if.then.90
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.79
  %68 = load i32, i32* @linsize, align 4
  %tobool99 = icmp ne i32 %68, 0
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.end.98
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 33)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.end.98
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end.102
  %71 = load i32, i32* %ln, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %ln, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = load i32, i32* %oldpos, align 4
  %cmp104 = icmp ne i32 %72, 0
  br i1 %cmp104, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %for.end
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %74 = load i32, i32* %oldpos, align 4
  %sub106 = sub nsw i32 0, %74
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %sub106)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %for.end
  %75 = load i32, i32* %nodata, align 4
  %tobool109 = icmp ne i32 %75, 0
  br i1 %tobool109, label %if.end.112, label %if.then.110

if.then.110:                                      ; preds = %if.end.108
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.112

if.end.112:                                       ; preds = %if.then, %if.then.110, %if.end.108
  ret void
}

; Function Attrs: nounwind uwtable
define void @fullwide(i32 %i, i32 %lintype) #0 {
entry:
  %i.addr = alloca i32, align 4
  %lintype.addr = alloca i32, align 4
  %cr = alloca i32, align 4
  %cl = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %lintype, i32* %lintype.addr, align 4
  %0 = load i32, i32* @pr1403, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 36)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %cr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.end
  %2 = load i32, i32* %cr, align 4
  %3 = load i32, i32* @ncol, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end.19

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %cr, align 4
  store i32 %4, i32* %cl, align 4
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.6, %while.body
  %5 = load i32, i32* %i.addr, align 4
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1
  %6 = load i32, i32* %i.addr, align 4
  %call3 = call i32 @prev(i32 %6)
  %7 = load i32, i32* %cl, align 4
  %call4 = call i32 @vspand(i32 %call3, i32 %7, i32 1)
  %tobool5 = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1
  %8 = phi i1 [ false, %while.cond.1 ], [ %tobool5, %land.rhs ]
  br i1 %8, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %land.end
  %9 = load i32, i32* %cl, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %cl, align 4
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  %10 = load i32, i32* %cl, align 4
  store i32 %10, i32* %cr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %11 = load i32, i32* %cr, align 4
  %12 = load i32, i32* @ncol, align 4
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i.addr, align 4
  %cmp8 = icmp sgt i32 %13, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %for.body
  %14 = load i32, i32* %i.addr, align 4
  %call9 = call i32 @prev(i32 %14)
  %15 = load i32, i32* %cr, align 4
  %call10 = call i32 @vspand(i32 %call9, i32 %15, i32 1)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.13:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %16 = load i32, i32* %cr, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %cr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %for.cond
  %17 = load i32, i32* %cl, align 4
  %18 = load i32, i32* @ncol, align 4
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.end
  %19 = load i32, i32* %i.addr, align 4
  %20 = load i32, i32* %cl, align 4
  %21 = load i32, i32* %cr, align 4
  %22 = load i32, i32* @ncol, align 4
  %cmp17 = icmp slt i32 %21, %22
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.16
  %23 = load i32, i32* %cr, align 4
  %sub = sub nsw i32 %23, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  %24 = load i32, i32* %cr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %24, %cond.false ]
  %25 = load i32, i32* %lintype.addr, align 4
  call void @drawline(i32 %19, i32 %20, i32 %cond, i32 %25, i32 1, i32 0)
  br label %if.end.18

if.end.18:                                        ; preds = %cond.end, %for.end
  br label %while.cond

while.end.19:                                     ; preds = %while.cond
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %27 = load i32, i32* @pr1403, align 4
  %tobool21 = icmp ne i32 %27, 0
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %while.end.19
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 36)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %while.end.19
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @vspand(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @prev(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %i.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %3 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom1
  %4 = load i8*, i8** %arrayidx2, align 8
  %tobool3 = icmp ne i8* %4, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %5 = phi i1 [ true, %land.rhs ], [ %tobool3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %5, %lor.end ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* %i.addr, align 4
  ret i32 %7
}

declare i32 @allh(i32) #1

declare void @tohcol(i32) #1

declare i32 @interv(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @getstop() #0 {
entry:
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  %junk = alloca i32, align 4
  %stopp = alloca i32, align 4
  store i32 1, i32* %stopp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.17, %for.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @nlin, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end.19

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %c, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.14, %for.body.3
  %5 = load i32, i32* %c, align 4
  %6 = load i32, i32* @ncol, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body.6, label %for.end.16

for.body.6:                                       ; preds = %for.cond.4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %c, align 4
  %call = call i32 @left(i32 %7, i32 %8, i32* %junk)
  store i32 %call, i32* %k, align 4
  %9 = load i32, i32* %k, align 4
  %cmp7 = icmp sge i32 %9, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.6
  %10 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp eq i32 %11, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %stopp, align 4
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, i32* %stopp, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i32 0, i64 %idxprom12
  store i32 %inc11, i32* %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.6
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end
  %14 = load i32, i32* %c, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, i32* %c, align 4
  br label %for.cond.4

for.end.16:                                       ; preds = %for.cond.4
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end.16
  %15 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %15, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.1

for.end.19:                                       ; preds = %for.cond.1
  %16 = load i32, i32* @boxflg, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.19
  %17 = load i32, i32* @allflg, align 4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %if.then.23, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %18 = load i32, i32* @dboxflg, align 4
  %tobool22 = icmp ne i32 %18, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false, %for.end.19
  store i32 1, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @linestop, i32 0, i64 0), align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %lor.lhs.false.21
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @left(i32 %i, i32 %c, i32* %lwidp) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %lwidp.addr = alloca i32*, align 8
  %kind = alloca i32, align 4
  %li = alloca i32, align 4
  %lj = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32* %lwidp, i32** %lwidp.addr, align 8
  %0 = load i32*, i32** %lwidp.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i32, i32* %i.addr, align 4
  %2 = load i32, i32* %c.addr, align 4
  %call = call i32 @lefdata(i32 %1, i32 %2)
  store i32 %call, i32* %kind, align 4
  %3 = load i32, i32* %kind, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* @nlin, align 4
  %cmp1 = icmp slt i32 %add, %5
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %i.addr, align 4
  %call3 = call i32 @next(i32 %6)
  %7 = load i32, i32* %c.addr, align 4
  %call4 = call i32 @lefdata(i32 %call3, i32 %7)
  %8 = load i32, i32* %kind, align 4
  %cmp5 = icmp eq i32 %call4, %8
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.8
  %9 = load i32, i32* %i.addr, align 4
  %cmp9 = icmp sge i32 %9, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load i32, i32* %i.addr, align 4
  %11 = load i32, i32* %c.addr, align 4
  %call10 = call i32 @lefdata(i32 %10, i32 %11)
  %12 = load i32, i32* %kind, align 4
  %cmp11 = icmp eq i32 %call10, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i32, i32* %i.addr, align 4
  store i32 %14, i32* %li, align 4
  %call12 = call i32 @prev(i32 %14)
  store i32 %call12, i32* %i.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i32, i32* %li, align 4
  %call13 = call i32 @prev(i32 %15)
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.end
  store i32 0, i32* %li, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %while.end
  %16 = load i32, i32* %kind, align 4
  %17 = load i32*, i32** %lwidp.addr, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %i.addr, align 4
  %add17 = add nsw i32 %18, 1
  store i32 %add17, i32* %lj, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %19 = load i32, i32* %lj, align 4
  %20 = load i32, i32* %li, align 4
  %cmp18 = icmp slt i32 %19, %20
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %lj, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom
  %22 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %22, null
  br i1 %tobool, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %for.body
  %23 = load i32, i32* %lj, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom19
  %24 = load i8*, i8** %arrayidx20, align 8
  %call21 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0)) #3
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true
  %25 = load i32, i32* %li, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %26 = load i32, i32* %lj, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %lj, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %i.addr, align 4
  %add25 = add nsw i32 %27, 1
  store i32 %add25, i32* %i.addr, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.34, %for.end
  %28 = load i32, i32* %i.addr, align 4
  %29 = load i32, i32* %li, align 4
  %cmp27 = icmp slt i32 %28, %29
  br i1 %cmp27, label %for.body.28, label %for.end.36

for.body.28:                                      ; preds = %for.cond.26
  %30 = load i32, i32* %i.addr, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom29
  %31 = load i32, i32* %arrayidx30, align 4
  %tobool31 = icmp ne i32 %31, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body.28
  %32 = load i32, i32* %i.addr, align 4
  store i32 %32, i32* %li, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %for.body.28
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %33 = load i32, i32* %i.addr, align 4
  %inc35 = add nsw i32 %33, 1
  store i32 %inc35, i32* %i.addr, align 4
  br label %for.cond.26

for.end.36:                                       ; preds = %for.cond.26
  %34 = load i32, i32* %li, align 4
  store i32 %34, i32* %retval
  br label %return

return:                                           ; preds = %for.end.36, %if.then.23, %if.then.6, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @lefdata(i32 %i, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %ck = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* @nlin, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @nlin, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %i.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %i.addr, align 4
  %4 = load i32, i32* %c.addr, align 4
  %call = call i32 @ctype(i32 %3, i32 %4)
  %cmp1 = icmp eq i32 %call, 115
  br i1 %cmp1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %c.addr, align 4
  store i32 %5, i32* %ck, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %6 = load i32, i32* %i.addr, align 4
  %7 = load i32, i32* %ck, align 4
  %call3 = call i32 @ctype(i32 %6, i32 %7)
  %cmp4 = icmp eq i32 %call3, 115
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %ck, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %ck, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %i.addr, align 4
  %10 = load i32, i32* %ck, align 4
  %call5 = call i32 @thish(i32 %9, i32 %10)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %11 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  store i32 %12, i32* %i.addr, align 4
  %13 = load i32, i32* %c.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load i32, i32* %i.addr, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx12, i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx13, align 4
  store i32 %15, i32* %i.addr, align 4
  %16 = load i32, i32* %i.addr, align 4
  %cmp14 = icmp sgt i32 %16, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  %17 = load i32, i32* %i.addr, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %18 = load i32, i32* @dboxflg, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.16
  %19 = load i32, i32* %c.addr, align 4
  %cmp17 = icmp eq i32 %19, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  store i32 2, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true, %if.end.16
  %20 = load i32, i32* @allflg, align 4
  %tobool20 = icmp ne i32 %20, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.19
  %21 = load i32, i32* @boxflg, align 4
  %tobool23 = icmp ne i32 %21, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.27

land.lhs.true.24:                                 ; preds = %if.end.22
  %22 = load i32, i32* %c.addr, align 4
  %cmp25 = icmp eq i32 %22, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.24, %if.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26, %if.then.21, %if.then.18, %if.then.15, %if.then.7
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @next(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = load i32, i32* @nlin, align 4
  %cmp = icmp slt i32 %add, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %i.addr, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i.addr, align 4
  %3 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %5 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom1
  %6 = load i8*, i8** %arrayidx2, align 8
  %tobool3 = icmp ne i8* %6, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %7 = load i32, i32* %i.addr, align 4
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
