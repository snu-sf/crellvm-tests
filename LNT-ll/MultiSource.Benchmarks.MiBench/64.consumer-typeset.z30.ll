; ModuleID = './MultiSource.Benchmarks.MiBench/64.consumer-typeset.z30.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.uses_type = type { %union.rec*, %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }

@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@StartSym = external global %union.rec*, align 8

; Function Attrs: nounwind uwtable
define void @InsertUses(%union.rec* %x, %union.rec* %y) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %y.addr = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %union.rec* %y, %union.rec** %y.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 143
  br i1 %cmp, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %y.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon*
  %otype5 = getelementptr inbounds %struct.anon, %struct.anon* %os114, i32 0, i32 0
  %3 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 143
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.42

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %4 = load %union.rec*, %union.rec** %y.addr, align 8
  %os6 = bitcast %union.rec* %4 to %struct.symbol_type*
  %opredefined = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 12
  %5 = load i16, i16* %opredefined, align 2
  %tobool = icmp ne i16 %5, 0
  br i1 %tobool, label %if.end.42, label %if.then

if.then:                                          ; preds = %land.lhs.true.9
  store i32 2, i32* @zz_size, align 4
  br i1 false, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %6)
  br label %if.end.22

if.else:                                          ; preds = %if.then
  %7 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %8 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp11 = icmp eq %union.rec* %8, null
  br i1 %cmp11, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else
  %9 = load i32, i32* @zz_size, align 4
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call14 = call %union.rec* @GetMemory(i32 %9, %struct.FILE_POS* %10)
  store %union.rec* %call14, %union.rec** %tmp, align 8
  br label %if.end

if.else.15:                                       ; preds = %if.else
  %11 = load i32, i32* @zz_size, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom16
  %12 = load %union.rec*, %union.rec** %arrayidx17, align 8
  store %union.rec* %12, %union.rec** @zz_hold, align 8
  store %union.rec* %12, %union.rec** %tmp, align 8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os118 = bitcast %union.rec* %13 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred, align 8
  %15 = load i32, i32* @zz_size, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom20
  store %union.rec* %14, %union.rec** %arrayidx21, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.13
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.10
  %16 = load %union.rec*, %union.rec** %y.addr, align 8
  %17 = load %union.rec*, %union.rec** %tmp, align 8
  %os9 = bitcast %union.rec* %17 to %struct.uses_type*
  %oitem = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os9, i32 0, i32 0
  store %union.rec* %16, %union.rec** %oitem, align 8
  %18 = load %union.rec*, %union.rec** %x.addr, align 8
  %os623 = bitcast %union.rec* %18 to %struct.symbol_type*
  %obase_uses = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os623, i32 0, i32 5
  %19 = load %union.rec*, %union.rec** %obase_uses, align 8
  %cmp24 = icmp eq %union.rec* %19, null
  br i1 %cmp24, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.end.22
  %20 = load %union.rec*, %union.rec** %tmp, align 8
  %21 = load %union.rec*, %union.rec** %tmp, align 8
  %os927 = bitcast %union.rec* %21 to %struct.uses_type*
  %onext = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os927, i32 0, i32 1
  store %union.rec* %20, %union.rec** %onext, align 8
  br label %if.end.39

if.else.28:                                       ; preds = %if.end.22
  %22 = load %union.rec*, %union.rec** %x.addr, align 8
  %os629 = bitcast %union.rec* %22 to %struct.symbol_type*
  %obase_uses30 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os629, i32 0, i32 5
  %23 = load %union.rec*, %union.rec** %obase_uses30, align 8
  %os931 = bitcast %union.rec* %23 to %struct.uses_type*
  %onext32 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os931, i32 0, i32 1
  %24 = load %union.rec*, %union.rec** %onext32, align 8
  %25 = load %union.rec*, %union.rec** %tmp, align 8
  %os933 = bitcast %union.rec* %25 to %struct.uses_type*
  %onext34 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os933, i32 0, i32 1
  store %union.rec* %24, %union.rec** %onext34, align 8
  %26 = load %union.rec*, %union.rec** %tmp, align 8
  %27 = load %union.rec*, %union.rec** %x.addr, align 8
  %os635 = bitcast %union.rec* %27 to %struct.symbol_type*
  %obase_uses36 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os635, i32 0, i32 5
  %28 = load %union.rec*, %union.rec** %obase_uses36, align 8
  %os937 = bitcast %union.rec* %28 to %struct.uses_type*
  %onext38 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os937, i32 0, i32 1
  store %union.rec* %26, %union.rec** %onext38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.28, %if.then.26
  %29 = load %union.rec*, %union.rec** %tmp, align 8
  %30 = load %union.rec*, %union.rec** %x.addr, align 8
  %os640 = bitcast %union.rec* %30 to %struct.symbol_type*
  %obase_uses41 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os640, i32 0, i32 5
  store %union.rec* %29, %union.rec** %obase_uses41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.39, %land.lhs.true.9, %land.lhs.true, %entry
  %31 = load %union.rec*, %union.rec** %y.addr, align 8
  %os143 = bitcast %union.rec* %31 to %struct.word_type*
  %ou144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 1
  %os1145 = bitcast %union.FIRST_UNION* %ou144 to %struct.anon*
  %otype46 = getelementptr inbounds %struct.anon, %struct.anon* %os1145, i32 0, i32 0
  %32 = load i8, i8* %otype46, align 1
  %conv47 = zext i8 %32 to i32
  %cmp48 = icmp sge i32 %conv47, 144
  br i1 %cmp48, label %land.lhs.true.50, label %if.else.82

land.lhs.true.50:                                 ; preds = %if.end.42
  %33 = load %union.rec*, %union.rec** %y.addr, align 8
  %os151 = bitcast %union.rec* %33 to %struct.word_type*
  %ou152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 1
  %os1153 = bitcast %union.FIRST_UNION* %ou152 to %struct.anon*
  %otype54 = getelementptr inbounds %struct.anon, %struct.anon* %os1153, i32 0, i32 0
  %34 = load i8, i8* %otype54, align 1
  %conv55 = zext i8 %34 to i32
  %cmp56 = icmp sle i32 %conv55, 146
  br i1 %cmp56, label %if.then.58, label %if.else.82

if.then.58:                                       ; preds = %land.lhs.true.50
  %35 = load %union.rec*, %union.rec** %y.addr, align 8
  %os659 = bitcast %union.rec* %35 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os659, i32 0, i32 3
  %36 = load %union.rec*, %union.rec** %oenclosing, align 8
  %37 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp60 = icmp eq %union.rec* %36, %37
  %cond = select i1 %cmp60, i32 1, i32 2
  %38 = load %union.rec*, %union.rec** %y.addr, align 8
  %os662 = bitcast %union.rec* %38 to %struct.symbol_type*
  %ouses_count = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os662, i32 0, i32 14
  %39 = load i8, i8* %ouses_count, align 1
  %conv63 = zext i8 %39 to i32
  %add = add nsw i32 %conv63, %cond
  %conv64 = trunc i32 %add to i8
  store i8 %conv64, i8* %ouses_count, align 1
  %40 = load %union.rec*, %union.rec** %y.addr, align 8
  %os165 = bitcast %union.rec* %40 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %odirty = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %41 = bitcast [3 x i8]* %odirty to i24*
  %bf.load = load i24, i24* %41, align 1
  %bf.lshr = lshr i24 %bf.load, 15
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool66 = icmp ne i32 %bf.cast, 0
  br i1 %tobool66, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.58
  %42 = load %union.rec*, %union.rec** %y.addr, align 8
  %os667 = bitcast %union.rec* %42 to %struct.symbol_type*
  %ouses_count68 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os667, i32 0, i32 14
  %43 = load i8, i8* %ouses_count68, align 1
  %conv69 = zext i8 %43 to i32
  %cmp70 = icmp sgt i32 %conv69, 1
  br i1 %cmp70, label %if.then.72, label %if.end.81

if.then.72:                                       ; preds = %lor.lhs.false, %if.then.58
  %44 = load %union.rec*, %union.rec** %y.addr, align 8
  %os673 = bitcast %union.rec* %44 to %struct.symbol_type*
  %oenclosing74 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os673, i32 0, i32 3
  %45 = load %union.rec*, %union.rec** %oenclosing74, align 8
  %os175 = bitcast %union.rec* %45 to %struct.word_type*
  %ou276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 2
  %os2677 = bitcast %union.SECOND_UNION* %ou276 to %struct.anon.5*
  %odirty78 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2677, i32 0, i32 1
  %46 = bitcast [3 x i8]* %odirty78 to i24*
  %bf.load79 = load i24, i24* %46, align 1
  %bf.clear80 = and i24 %bf.load79, -32769
  %bf.set = or i24 %bf.clear80, 32768
  store i24 %bf.set, i24* %46, align 1
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.72, %lor.lhs.false
  br label %if.end.105

if.else.82:                                       ; preds = %land.lhs.true.50, %if.end.42
  %47 = load %union.rec*, %union.rec** %y.addr, align 8
  %os683 = bitcast %union.rec* %47 to %struct.symbol_type*
  %osym_body = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os683, i32 0, i32 4
  %48 = load %union.rec*, %union.rec** %osym_body, align 8
  %cmp84 = icmp eq %union.rec* %48, null
  br i1 %cmp84, label %if.then.96, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %if.else.82
  %49 = load %union.rec*, %union.rec** %y.addr, align 8
  %os187 = bitcast %union.rec* %49 to %struct.word_type*
  %ou288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 2
  %os2689 = bitcast %union.SECOND_UNION* %ou288 to %struct.anon.5*
  %odirty90 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2689, i32 0, i32 1
  %50 = bitcast [3 x i8]* %odirty90 to i24*
  %bf.load91 = load i24, i24* %50, align 1
  %bf.lshr92 = lshr i24 %bf.load91, 15
  %bf.clear93 = and i24 %bf.lshr92, 1
  %bf.cast94 = zext i24 %bf.clear93 to i32
  %tobool95 = icmp ne i32 %bf.cast94, 0
  br i1 %tobool95, label %if.then.96, label %if.end.104

if.then.96:                                       ; preds = %lor.lhs.false.86, %if.else.82
  %51 = load %union.rec*, %union.rec** %x.addr, align 8
  %os197 = bitcast %union.rec* %51 to %struct.word_type*
  %ou298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 2
  %os2699 = bitcast %union.SECOND_UNION* %ou298 to %struct.anon.5*
  %odirty100 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2699, i32 0, i32 1
  %52 = bitcast [3 x i8]* %odirty100 to i24*
  %bf.load101 = load i24, i24* %52, align 1
  %bf.clear102 = and i24 %bf.load101, -32769
  %bf.set103 = or i24 %bf.clear102, 32768
  store i24 %bf.set103, i24* %52, align 1
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.96, %lor.lhs.false.86
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.81
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @FlattenUses() #0 {
entry:
  %0 = load %union.rec*, %union.rec** @StartSym, align 8
  call void @GatherAllUses(%union.rec* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GatherAllUses(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %1, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %2 = load %union.rec*, %union.rec** %link, align 8
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp ne %union.rec* %2, %3
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %4 = load %union.rec*, %union.rec** %link, align 8
  %os11 = bitcast %union.rec* %4 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %5 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %5, %union.rec** %y, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load %union.rec*, %union.rec** %y, align 8
  %os15 = bitcast %union.rec* %6 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %os116 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os116, i32 0, i32 0
  %7 = load i8, i8* %otype, align 1
  %conv = zext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.4
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %8 = load %union.rec*, %union.rec** %y, align 8
  %os110 = bitcast %union.rec* %8 to %struct.word_type*
  %olist11 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist11, i32 0, i64 1
  %opred13 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred13, align 8
  store %union.rec* %9, %union.rec** %y, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os114 = bitcast %union.rec* %10 to %struct.word_type*
  %ou115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os1116 = bitcast %union.FIRST_UNION* %ou115 to %struct.anon*
  %otype17 = getelementptr inbounds %struct.anon, %struct.anon* %os1116, i32 0, i32 0
  %11 = load i8, i8* %otype17, align 1
  %conv18 = zext i8 %11 to i32
  %cmp19 = icmp eq i32 %conv18, 143
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %12 = load %union.rec*, %union.rec** %y, align 8
  %13 = load %union.rec*, %union.rec** %y, align 8
  call void @GatherUses(%union.rec* %12, %union.rec* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %14 = load %union.rec*, %union.rec** %y, align 8
  call void @GatherAllUses(%union.rec* %14)
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end
  %15 = load %union.rec*, %union.rec** %link, align 8
  %os122 = bitcast %union.rec* %15 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 0
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  %16 = load %union.rec*, %union.rec** %osucc25, align 8
  store %union.rec* %16, %union.rec** %link, align 8
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @SearchUses(%union.rec* %x, %union.rec* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %union.rec*, align 8
  %y.addr = alloca %union.rec*, align 8
  %p = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %union.rec* %y, %union.rec** %y.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %1 = load %union.rec*, %union.rec** %y.addr, align 8
  %cmp = icmp eq %union.rec* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os6 = bitcast %union.rec* %2 to %struct.symbol_type*
  %ouses = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 6
  %3 = load %union.rec*, %union.rec** %ouses, align 8
  %cmp1 = icmp ne %union.rec* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.16

if.then.2:                                        ; preds = %if.end
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os63 = bitcast %union.rec* %4 to %struct.symbol_type*
  %ouses4 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os63, i32 0, i32 6
  %5 = load %union.rec*, %union.rec** %ouses4, align 8
  %os9 = bitcast %union.rec* %5 to %struct.uses_type*
  %onext = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os9, i32 0, i32 1
  %6 = load %union.rec*, %union.rec** %onext, align 8
  store %union.rec* %6, %union.rec** %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.2
  %7 = load %union.rec*, %union.rec** %p, align 8
  %os95 = bitcast %union.rec* %7 to %struct.uses_type*
  %oitem = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os95, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %oitem, align 8
  %9 = load %union.rec*, %union.rec** %y.addr, align 8
  %cmp6 = icmp eq %union.rec* %8, %9
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %do.body
  %10 = load %union.rec*, %union.rec** %p, align 8
  %os99 = bitcast %union.rec* %10 to %struct.uses_type*
  %onext10 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os99, i32 0, i32 1
  %11 = load %union.rec*, %union.rec** %onext10, align 8
  store %union.rec* %11, %union.rec** %p, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  %12 = load %union.rec*, %union.rec** %p, align 8
  %13 = load %union.rec*, %union.rec** %x.addr, align 8
  %os611 = bitcast %union.rec* %13 to %struct.symbol_type*
  %ouses12 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os611, i32 0, i32 6
  %14 = load %union.rec*, %union.rec** %ouses12, align 8
  %os913 = bitcast %union.rec* %14 to %struct.uses_type*
  %onext14 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os913, i32 0, i32 1
  %15 = load %union.rec*, %union.rec** %onext14, align 8
  %cmp15 = icmp ne %union.rec* %12, %15
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.7, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define %union.rec* @FirstExternTarget(%union.rec* %sym, %union.rec** %cont) #0 {
entry:
  %sym.addr = alloca %union.rec*, align 8
  %cont.addr = alloca %union.rec**, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  store %union.rec** %cont, %union.rec*** %cont.addr, align 8
  store %union.rec* null, %union.rec** %res, align 8
  %0 = load %union.rec**, %union.rec*** %cont.addr, align 8
  store %union.rec* null, %union.rec** %0, align 8
  %1 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ois_extern_target = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %2 = bitcast [3 x i8]* %ois_extern_target to i24*
  %bf.load = load i24, i24* %2, align 1
  %bf.lshr = lshr i24 %bf.load, 12
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %union.rec*, %union.rec** %sym.addr, align 8
  store %union.rec* %3, %union.rec** %res, align 8
  br label %if.end.25

if.else:                                          ; preds = %entry
  %4 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os6 = bitcast %union.rec* %4 to %struct.symbol_type*
  %ouses = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 6
  %5 = load %union.rec*, %union.rec** %ouses, align 8
  %cmp = icmp ne %union.rec* %5, null
  br i1 %cmp, label %if.then.1, label %if.end.24

if.then.1:                                        ; preds = %if.else
  %6 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os62 = bitcast %union.rec* %6 to %struct.symbol_type*
  %ouses3 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os62, i32 0, i32 6
  %7 = load %union.rec*, %union.rec** %ouses3, align 8
  %os9 = bitcast %union.rec* %7 to %struct.uses_type*
  %onext = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os9, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %onext, align 8
  %9 = load %union.rec**, %union.rec*** %cont.addr, align 8
  store %union.rec* %8, %union.rec** %9, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.1
  %10 = load %union.rec**, %union.rec*** %cont.addr, align 8
  %11 = load %union.rec*, %union.rec** %10, align 8
  %os94 = bitcast %union.rec* %11 to %struct.uses_type*
  %oitem = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os94, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %oitem, align 8
  %os15 = bitcast %union.rec* %12 to %struct.word_type*
  %ou26 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 2
  %os267 = bitcast %union.SECOND_UNION* %ou26 to %struct.anon.5*
  %ois_extern_target8 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os267, i32 0, i32 1
  %13 = bitcast [3 x i8]* %ois_extern_target8 to i24*
  %bf.load9 = load i24, i24* %13, align 1
  %bf.lshr10 = lshr i24 %bf.load9, 12
  %bf.clear11 = and i24 %bf.lshr10, 1
  %bf.cast12 = zext i24 %bf.clear11 to i32
  %tobool13 = icmp ne i32 %bf.cast12, 0
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %do.body
  %14 = load %union.rec**, %union.rec*** %cont.addr, align 8
  %15 = load %union.rec*, %union.rec** %14, align 8
  %os915 = bitcast %union.rec* %15 to %struct.uses_type*
  %oitem16 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os915, i32 0, i32 0
  %16 = load %union.rec*, %union.rec** %oitem16, align 8
  store %union.rec* %16, %union.rec** %res, align 8
  br label %do.end

if.end:                                           ; preds = %do.body
  %17 = load %union.rec**, %union.rec*** %cont.addr, align 8
  %18 = load %union.rec*, %union.rec** %17, align 8
  %os917 = bitcast %union.rec* %18 to %struct.uses_type*
  %onext18 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os917, i32 0, i32 1
  %19 = load %union.rec*, %union.rec** %onext18, align 8
  %20 = load %union.rec**, %union.rec*** %cont.addr, align 8
  store %union.rec* %19, %union.rec** %20, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %21 = load %union.rec**, %union.rec*** %cont.addr, align 8
  %22 = load %union.rec*, %union.rec** %21, align 8
  %23 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os619 = bitcast %union.rec* %23 to %struct.symbol_type*
  %ouses20 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os619, i32 0, i32 6
  %24 = load %union.rec*, %union.rec** %ouses20, align 8
  %os921 = bitcast %union.rec* %24 to %struct.uses_type*
  %onext22 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os921, i32 0, i32 1
  %25 = load %union.rec*, %union.rec** %onext22, align 8
  %cmp23 = icmp ne %union.rec* %22, %25
  br i1 %cmp23, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.14
  br label %if.end.24

if.end.24:                                        ; preds = %do.end, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  %26 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %26
}

; Function Attrs: nounwind uwtable
define %union.rec* @NextExternTarget(%union.rec* %sym, %union.rec** %cont) #0 {
entry:
  %sym.addr = alloca %union.rec*, align 8
  %cont.addr = alloca %union.rec**, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  store %union.rec** %cont, %union.rec*** %cont.addr, align 8
  store %union.rec* null, %union.rec** %res, align 8
  %0 = load %union.rec**, %union.rec*** %cont.addr, align 8
  %1 = load %union.rec*, %union.rec** %0, align 8
  %cmp = icmp ne %union.rec* %1, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %2 = load %union.rec**, %union.rec*** %cont.addr, align 8
  %3 = load %union.rec*, %union.rec** %2, align 8
  %os9 = bitcast %union.rec* %3 to %struct.uses_type*
  %onext = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os9, i32 0, i32 1
  %4 = load %union.rec*, %union.rec** %onext, align 8
  %5 = load %union.rec**, %union.rec*** %cont.addr, align 8
  store %union.rec* %4, %union.rec** %5, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %6 = load %union.rec**, %union.rec*** %cont.addr, align 8
  %7 = load %union.rec*, %union.rec** %6, align 8
  %8 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os6 = bitcast %union.rec* %8 to %struct.symbol_type*
  %ouses = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 6
  %9 = load %union.rec*, %union.rec** %ouses, align 8
  %os91 = bitcast %union.rec* %9 to %struct.uses_type*
  %onext2 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os91, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %onext2, align 8
  %cmp3 = icmp ne %union.rec* %7, %10
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %union.rec**, %union.rec*** %cont.addr, align 8
  %12 = load %union.rec*, %union.rec** %11, align 8
  %os94 = bitcast %union.rec* %12 to %struct.uses_type*
  %oitem = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os94, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %oitem, align 8
  %os1 = bitcast %union.rec* %13 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ois_extern_target = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %14 = bitcast [3 x i8]* %ois_extern_target to i24*
  %bf.load = load i24, i24* %14, align 1
  %bf.lshr = lshr i24 %bf.load, 12
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %while.body
  %15 = load %union.rec**, %union.rec*** %cont.addr, align 8
  %16 = load %union.rec*, %union.rec** %15, align 8
  %os96 = bitcast %union.rec* %16 to %struct.uses_type*
  %oitem7 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os96, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %oitem7, align 8
  store %union.rec* %17, %union.rec** %res, align 8
  br label %while.end

if.end:                                           ; preds = %while.body
  %18 = load %union.rec**, %union.rec*** %cont.addr, align 8
  %19 = load %union.rec*, %union.rec** %18, align 8
  %os98 = bitcast %union.rec* %19 to %struct.uses_type*
  %onext9 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os98, i32 0, i32 1
  %20 = load %union.rec*, %union.rec** %onext9, align 8
  %21 = load %union.rec**, %union.rec*** %cont.addr, align 8
  store %union.rec* %20, %union.rec** %21, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.5, %while.cond
  br label %if.end.10

if.end.10:                                        ; preds = %while.end, %entry
  %22 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %22
}

; Function Attrs: nounwind uwtable
define internal void @GatherUses(%union.rec* %x, %union.rec* %sym) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %sym.addr = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os6 = bitcast %union.rec* %0 to %struct.symbol_type*
  %obase_uses = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 5
  %1 = load %union.rec*, %union.rec** %obase_uses, align 8
  %cmp = icmp ne %union.rec* %1, null
  br i1 %cmp, label %if.then, label %if.end.85

if.then:                                          ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os61 = bitcast %union.rec* %2 to %struct.symbol_type*
  %obase_uses2 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os61, i32 0, i32 5
  %3 = load %union.rec*, %union.rec** %obase_uses2, align 8
  %os9 = bitcast %union.rec* %3 to %struct.uses_type*
  %onext = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os9, i32 0, i32 1
  %4 = load %union.rec*, %union.rec** %onext, align 8
  store %union.rec* %4, %union.rec** %link, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %5 = load %union.rec*, %union.rec** %link, align 8
  %os93 = bitcast %union.rec* %5 to %struct.uses_type*
  %oitem = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os93, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %oitem, align 8
  store %union.rec* %6, %union.rec** %y, align 8
  %7 = load %union.rec*, %union.rec** %y, align 8
  %os64 = bitcast %union.rec* %7 to %struct.symbol_type*
  %omarker = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os64, i32 0, i32 7
  %8 = load %union.rec*, %union.rec** %omarker, align 8
  %9 = load %union.rec*, %union.rec** %sym.addr, align 8
  %cmp5 = icmp ne %union.rec* %8, %9
  br i1 %cmp5, label %if.then.6, label %if.end.77

if.then.6:                                        ; preds = %do.body
  %10 = load %union.rec*, %union.rec** %y, align 8
  %11 = load %union.rec*, %union.rec** %sym.addr, align 8
  %cmp7 = icmp ne %union.rec* %10, %11
  br i1 %cmp7, label %if.then.8, label %if.else.69

if.then.8:                                        ; preds = %if.then.6
  %12 = load %union.rec*, %union.rec** %sym.addr, align 8
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os69 = bitcast %union.rec* %13 to %struct.symbol_type*
  %omarker10 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os69, i32 0, i32 7
  store %union.rec* %12, %union.rec** %omarker10, align 8
  store i32 2, i32* @zz_size, align 4
  br i1 false, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.8
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %14)
  br label %if.end.21

if.else:                                          ; preds = %if.then.8
  %15 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %16 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp12 = icmp eq %union.rec* %16, null
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else
  %17 = load i32, i32* @zz_size, align 4
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call14 = call %union.rec* @GetMemory(i32 %17, %struct.FILE_POS* %18)
  store %union.rec* %call14, %union.rec** %tmp, align 8
  br label %if.end

if.else.15:                                       ; preds = %if.else
  %19 = load i32, i32* @zz_size, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom16
  %20 = load %union.rec*, %union.rec** %arrayidx17, align 8
  store %union.rec* %20, %union.rec** @zz_hold, align 8
  store %union.rec* %20, %union.rec** %tmp, align 8
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %21 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %22 = load %union.rec*, %union.rec** %opred, align 8
  %23 = load i32, i32* @zz_size, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom19
  store %union.rec* %22, %union.rec** %arrayidx20, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.11
  %24 = load %union.rec*, %union.rec** %y, align 8
  %25 = load %union.rec*, %union.rec** %tmp, align 8
  %os922 = bitcast %union.rec* %25 to %struct.uses_type*
  %oitem23 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os922, i32 0, i32 0
  store %union.rec* %24, %union.rec** %oitem23, align 8
  %26 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os624 = bitcast %union.rec* %26 to %struct.symbol_type*
  %ouses = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os624, i32 0, i32 6
  %27 = load %union.rec*, %union.rec** %ouses, align 8
  %cmp25 = icmp eq %union.rec* %27, null
  br i1 %cmp25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.end.21
  %28 = load %union.rec*, %union.rec** %tmp, align 8
  %29 = load %union.rec*, %union.rec** %tmp, align 8
  %os927 = bitcast %union.rec* %29 to %struct.uses_type*
  %onext28 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os927, i32 0, i32 1
  store %union.rec* %28, %union.rec** %onext28, align 8
  br label %if.end.40

if.else.29:                                       ; preds = %if.end.21
  %30 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os630 = bitcast %union.rec* %30 to %struct.symbol_type*
  %ouses31 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os630, i32 0, i32 6
  %31 = load %union.rec*, %union.rec** %ouses31, align 8
  %os932 = bitcast %union.rec* %31 to %struct.uses_type*
  %onext33 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os932, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %onext33, align 8
  %33 = load %union.rec*, %union.rec** %tmp, align 8
  %os934 = bitcast %union.rec* %33 to %struct.uses_type*
  %onext35 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os934, i32 0, i32 1
  store %union.rec* %32, %union.rec** %onext35, align 8
  %34 = load %union.rec*, %union.rec** %tmp, align 8
  %35 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os636 = bitcast %union.rec* %35 to %struct.symbol_type*
  %ouses37 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os636, i32 0, i32 6
  %36 = load %union.rec*, %union.rec** %ouses37, align 8
  %os938 = bitcast %union.rec* %36 to %struct.uses_type*
  %onext39 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os938, i32 0, i32 1
  store %union.rec* %34, %union.rec** %onext39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.29, %if.then.26
  %37 = load %union.rec*, %union.rec** %tmp, align 8
  %38 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os641 = bitcast %union.rec* %38 to %struct.symbol_type*
  %ouses42 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os641, i32 0, i32 6
  store %union.rec* %37, %union.rec** %ouses42, align 8
  %39 = load %union.rec*, %union.rec** %y, align 8
  %os143 = bitcast %union.rec* %39 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %oindefinite = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %40 = bitcast [3 x i8]* %oindefinite to i24*
  %bf.load = load i24, i24* %40, align 1
  %bf.lshr = lshr i24 %bf.load, 9
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %if.end.40
  %41 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os145 = bitcast %union.rec* %41 to %struct.word_type*
  %ou246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 2
  %os2647 = bitcast %union.SECOND_UNION* %ou246 to %struct.anon.5*
  %oindefinite48 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2647, i32 0, i32 1
  %42 = bitcast [3 x i8]* %oindefinite48 to i24*
  %bf.load49 = load i24, i24* %42, align 1
  %bf.clear50 = and i24 %bf.load49, -513
  %bf.set = or i24 %bf.clear50, 512
  store i24 %bf.set, i24* %42, align 1
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.44, %if.end.40
  %43 = load %union.rec*, %union.rec** %y, align 8
  %os152 = bitcast %union.rec* %43 to %struct.word_type*
  %ou253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 2
  %os2654 = bitcast %union.SECOND_UNION* %ou253 to %struct.anon.5*
  %ouses_extern_target = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2654, i32 0, i32 1
  %44 = bitcast [3 x i8]* %ouses_extern_target to i24*
  %bf.load55 = load i24, i24* %44, align 1
  %bf.lshr56 = lshr i24 %bf.load55, 11
  %bf.clear57 = and i24 %bf.lshr56, 1
  %bf.cast58 = zext i24 %bf.clear57 to i32
  %tobool59 = icmp ne i32 %bf.cast58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.68

if.then.60:                                       ; preds = %if.end.51
  %45 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os161 = bitcast %union.rec* %45 to %struct.word_type*
  %ou262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 2
  %os2663 = bitcast %union.SECOND_UNION* %ou262 to %struct.anon.5*
  %ouses_extern_target64 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2663, i32 0, i32 1
  %46 = bitcast [3 x i8]* %ouses_extern_target64 to i24*
  %bf.load65 = load i24, i24* %46, align 1
  %bf.clear66 = and i24 %bf.load65, -2049
  %bf.set67 = or i24 %bf.clear66, 2048
  store i24 %bf.set67, i24* %46, align 1
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.60, %if.end.51
  %47 = load %union.rec*, %union.rec** %y, align 8
  %48 = load %union.rec*, %union.rec** %sym.addr, align 8
  call void @GatherUses(%union.rec* %47, %union.rec* %48)
  br label %if.end.76

if.else.69:                                       ; preds = %if.then.6
  %49 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os170 = bitcast %union.rec* %49 to %struct.word_type*
  %ou271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 2
  %os2672 = bitcast %union.SECOND_UNION* %ou271 to %struct.anon.5*
  %orecursive = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2672, i32 0, i32 1
  %50 = bitcast [3 x i8]* %orecursive to i24*
  %bf.load73 = load i24, i24* %50, align 1
  %bf.clear74 = and i24 %bf.load73, -1025
  %bf.set75 = or i24 %bf.clear74, 1024
  store i24 %bf.set75, i24* %50, align 1
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.69, %if.end.68
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %do.body
  %51 = load %union.rec*, %union.rec** %link, align 8
  %os978 = bitcast %union.rec* %51 to %struct.uses_type*
  %onext79 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os978, i32 0, i32 1
  %52 = load %union.rec*, %union.rec** %onext79, align 8
  store %union.rec* %52, %union.rec** %link, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.77
  %53 = load %union.rec*, %union.rec** %link, align 8
  %54 = load %union.rec*, %union.rec** %x.addr, align 8
  %os680 = bitcast %union.rec* %54 to %struct.symbol_type*
  %obase_uses81 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os680, i32 0, i32 5
  %55 = load %union.rec*, %union.rec** %obase_uses81, align 8
  %os982 = bitcast %union.rec* %55 to %struct.uses_type*
  %onext83 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %os982, i32 0, i32 1
  %56 = load %union.rec*, %union.rec** %onext83, align 8
  %cmp84 = icmp ne %union.rec* %53, %56
  br i1 %cmp84, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.85

if.end.85:                                        ; preds = %do.end, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
