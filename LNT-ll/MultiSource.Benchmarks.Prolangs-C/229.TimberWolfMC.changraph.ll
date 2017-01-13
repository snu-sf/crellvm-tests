; ModuleID = './MultiSource.Benchmarks.Prolangs-C/229.TimberWolfMC.changraph.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dlink2 = type { i32, %struct.dlink2*, %struct.dlink2* }
%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@vChanBeginRoot = external global %struct.tnode*, align 8
@vChanEndRoot = external global %struct.tnode*, align 8
@hChanBeginRoot = external global %struct.tnode*, align 8
@hChanEndRoot = external global %struct.tnode*, align 8
@eNum = external global i32, align 4
@eArray = external global %struct.ebox*, align 8
@edgeTransition = external global i32, align 4
@numRects = external global i32, align 4
@eIndexArray = external global i32**, align 8
@rectArray = external global %struct.rect*, align 8
@fpdebug = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [22 x i8] c"CHANNEL-GRAPH NODES:\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"rect Node: %d  at: %d %d  width:%d  height:%d\0A\00", align 1
@BEroot = external global %struct.tnode*, align 8
@BEptrs = external global %struct.dlink2**, align 8
@LEroot = external global %struct.tnode*, align 8
@LEptrs = external global %struct.dlink2**, align 8
@VDroot = external global %struct.tnode*, align 8
@VDptrs = external global %struct.dlink1**, align 8
@edgeList = external global %struct.edgebox*, align 8
@Vroot = external global %struct.tnode*, align 8
@Vptrs = external global %struct.dlink1**, align 8
@HRroot = external global %struct.tnode*, align 8
@HRptrs = external global %struct.dlink1**, align 8
@Hroot = external global %struct.tnode*, align 8
@Hptrs = external global %struct.dlink1**, align 8

; Function Attrs: nounwind uwtable
define void @changraph() #0 {
entry:
  %i = alloca i32, align 4
  %index1 = alloca i32, align 4
  %index2 = alloca i32, align 4
  %hiend = alloca i32, align 4
  %loend = alloca i32, align 4
  %length = alloca i32, align 4
  store %struct.tnode* null, %struct.tnode** @vChanBeginRoot, align 8
  store %struct.tnode* null, %struct.tnode** @vChanEndRoot, align 8
  store %struct.tnode* null, %struct.tnode** @hChanBeginRoot, align 8
  store %struct.tnode* null, %struct.tnode** @hChanEndRoot, align 8
  store i32 0, i32* @eNum, align 4
  %call = call noalias i8* @malloc(i64 5600) #3
  %0 = bitcast i8* %call to %struct.ebox*
  store %struct.ebox* %0, %struct.ebox** @eArray, align 8
  call void @exploreUp()
  %1 = load i32, i32* @eNum, align 4
  store i32 %1, i32* @edgeTransition, align 4
  call void @exploreRite()
  %2 = load i32, i32* @numRects, align 4
  %add = add nsw i32 1, %2
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call1 = call noalias i8* @malloc(i64 %mul) #3
  %3 = bitcast i8* %call1 to i32**
  store i32** %3, i32*** @eIndexArray, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @numRects, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* @numRects, align 4
  %add3 = add nsw i32 1, %6
  %conv4 = sext i32 %add3 to i64
  %mul5 = mul i64 %conv4, 4
  %call6 = call noalias i8* @malloc(i64 %mul5) #3
  %7 = bitcast i8* %call6 to i32*
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32**, i32*** @eIndexArray, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %9, i64 %idxprom
  store i32* %7, i32** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.65, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* @eNum, align 4
  %cmp8 = icmp sle i32 %11, %12
  br i1 %cmp8, label %for.body.10, label %for.end.67

for.body.10:                                      ; preds = %for.cond.7
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx12 = getelementptr inbounds %struct.ebox, %struct.ebox* %14, i64 %idxprom11
  %index113 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx12, i32 0, i32 0
  %15 = load i32, i32* %index113, align 4
  store i32 %15, i32* %index1, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx15 = getelementptr inbounds %struct.ebox, %struct.ebox* %17, i64 %idxprom14
  %index216 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx15, i32 0, i32 1
  %18 = load i32, i32* %index216, align 4
  store i32 %18, i32* %index2, align 4
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %index2, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load i32, i32* %index1, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load i32**, i32*** @eIndexArray, align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %22, i64 %idxprom18
  %23 = load i32*, i32** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %23, i64 %idxprom17
  store i32 %19, i32* %arrayidx20, align 4
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %index1, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load i32, i32* %index2, align 4
  %idxprom22 = sext i32 %26 to i64
  %27 = load i32**, i32*** @eIndexArray, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %27, i64 %idxprom22
  %28 = load i32*, i32** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %28, i64 %idxprom21
  store i32 %24, i32* %arrayidx24, align 4
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* @edgeTransition, align 4
  %cmp25 = icmp sle i32 %29, %30
  br i1 %cmp25, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.10
  %31 = load i32, i32* %index2, align 4
  %idxprom27 = sext i32 %31 to i64
  %32 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx28 = getelementptr inbounds %struct.rect, %struct.rect* %32, i64 %idxprom27
  %b = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx28, i32 0, i32 6
  %33 = load i32, i32* %b, align 4
  store i32 %33, i32* %hiend, align 4
  %34 = load i32, i32* %index1, align 4
  %idxprom29 = sext i32 %34 to i64
  %35 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx30 = getelementptr inbounds %struct.rect, %struct.rect* %35, i64 %idxprom29
  %t = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx30, i32 0, i32 7
  %36 = load i32, i32* %t, align 4
  store i32 %36, i32* %loend, align 4
  %37 = load i32, i32* %index2, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx32 = getelementptr inbounds %struct.rect, %struct.rect* %38, i64 %idxprom31
  %yc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx32, i32 0, i32 1
  %39 = load i32, i32* %yc, align 4
  %40 = load i32, i32* %index1, align 4
  %idxprom33 = sext i32 %40 to i64
  %41 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx34 = getelementptr inbounds %struct.rect, %struct.rect* %41, i64 %idxprom33
  %yc35 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx34, i32 0, i32 1
  %42 = load i32, i32* %yc35, align 4
  %sub = sub nsw i32 %39, %42
  store i32 %sub, i32* %length, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %43 to i64
  %44 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx37 = getelementptr inbounds %struct.ebox, %struct.ebox* %44, i64 %idxprom36
  %lbside = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx37, i32 0, i32 3
  %45 = load i32, i32* %lbside, align 4
  %46 = load i32, i32* %i, align 4
  call void @tinsert(%struct.tnode** @vChanBeginRoot, i32 %45, i32 %46)
  %47 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %47 to i64
  %48 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx39 = getelementptr inbounds %struct.ebox, %struct.ebox* %48, i64 %idxprom38
  %rtside = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx39, i32 0, i32 4
  %49 = load i32, i32* %rtside, align 4
  %50 = load i32, i32* %i, align 4
  call void @tinsert(%struct.tnode** @vChanEndRoot, i32 %49, i32 %50)
  br label %if.end

if.else:                                          ; preds = %for.body.10
  %51 = load i32, i32* %index2, align 4
  %idxprom40 = sext i32 %51 to i64
  %52 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx41 = getelementptr inbounds %struct.rect, %struct.rect* %52, i64 %idxprom40
  %l = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx41, i32 0, i32 4
  %53 = load i32, i32* %l, align 4
  store i32 %53, i32* %hiend, align 4
  %54 = load i32, i32* %index1, align 4
  %idxprom42 = sext i32 %54 to i64
  %55 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx43 = getelementptr inbounds %struct.rect, %struct.rect* %55, i64 %idxprom42
  %r = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx43, i32 0, i32 5
  %56 = load i32, i32* %r, align 4
  store i32 %56, i32* %loend, align 4
  %57 = load i32, i32* %index2, align 4
  %idxprom44 = sext i32 %57 to i64
  %58 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx45 = getelementptr inbounds %struct.rect, %struct.rect* %58, i64 %idxprom44
  %xc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx45, i32 0, i32 0
  %59 = load i32, i32* %xc, align 4
  %60 = load i32, i32* %index1, align 4
  %idxprom46 = sext i32 %60 to i64
  %61 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx47 = getelementptr inbounds %struct.rect, %struct.rect* %61, i64 %idxprom46
  %xc48 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx47, i32 0, i32 0
  %62 = load i32, i32* %xc48, align 4
  %sub49 = sub nsw i32 %59, %62
  store i32 %sub49, i32* %length, align 4
  %63 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %63 to i64
  %64 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx51 = getelementptr inbounds %struct.ebox, %struct.ebox* %64, i64 %idxprom50
  %lbside52 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx51, i32 0, i32 3
  %65 = load i32, i32* %lbside52, align 4
  %66 = load i32, i32* %i, align 4
  call void @tinsert(%struct.tnode** @hChanBeginRoot, i32 %65, i32 %66)
  %67 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %67 to i64
  %68 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx54 = getelementptr inbounds %struct.ebox, %struct.ebox* %68, i64 %idxprom53
  %rtside55 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx54, i32 0, i32 4
  %69 = load i32, i32* %rtside55, align 4
  %70 = load i32, i32* %i, align 4
  call void @tinsert(%struct.tnode** @hChanEndRoot, i32 %69, i32 %70)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %71 = load i32, i32* %length, align 4
  %72 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %72 to i64
  %73 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx57 = getelementptr inbounds %struct.ebox, %struct.ebox* %73, i64 %idxprom56
  %length58 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx57, i32 0, i32 5
  store i32 %71, i32* %length58, align 4
  %74 = load i32, i32* %hiend, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %75 to i64
  %76 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx60 = getelementptr inbounds %struct.ebox, %struct.ebox* %76, i64 %idxprom59
  %hiend61 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx60, i32 0, i32 6
  store i32 %74, i32* %hiend61, align 4
  %77 = load i32, i32* %loend, align 4
  %78 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %78 to i64
  %79 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx63 = getelementptr inbounds %struct.ebox, %struct.ebox* %79, i64 %idxprom62
  %loend64 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx63, i32 0, i32 7
  store i32 %77, i32* %loend64, align 4
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end
  %80 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %80, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.7

for.end.67:                                       ; preds = %for.cond.7
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.94, %for.end.67
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* @numRects, align 4
  %cmp70 = icmp sle i32 %82, %83
  br i1 %cmp70, label %for.body.72, label %for.end.96

for.body.72:                                      ; preds = %for.cond.69
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %86 to i64
  %87 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx74 = getelementptr inbounds %struct.rect, %struct.rect* %87, i64 %idxprom73
  %xc75 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx74, i32 0, i32 0
  %88 = load i32, i32* %xc75, align 4
  %89 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %89 to i64
  %90 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx77 = getelementptr inbounds %struct.rect, %struct.rect* %90, i64 %idxprom76
  %yc78 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx77, i32 0, i32 1
  %91 = load i32, i32* %yc78, align 4
  %92 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %92 to i64
  %93 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx80 = getelementptr inbounds %struct.rect, %struct.rect* %93, i64 %idxprom79
  %r81 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx80, i32 0, i32 5
  %94 = load i32, i32* %r81, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %95 to i64
  %96 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx83 = getelementptr inbounds %struct.rect, %struct.rect* %96, i64 %idxprom82
  %l84 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx83, i32 0, i32 4
  %97 = load i32, i32* %l84, align 4
  %sub85 = sub nsw i32 %94, %97
  %98 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %98 to i64
  %99 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx87 = getelementptr inbounds %struct.rect, %struct.rect* %99, i64 %idxprom86
  %t88 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx87, i32 0, i32 7
  %100 = load i32, i32* %t88, align 4
  %101 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %101 to i64
  %102 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx90 = getelementptr inbounds %struct.rect, %struct.rect* %102, i64 %idxprom89
  %b91 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx90, i32 0, i32 6
  %103 = load i32, i32* %b91, align 4
  %sub92 = sub nsw i32 %100, %103
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i32 %85, i32 %88, i32 %91, i32 %sub85, i32 %sub92)
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.72
  %104 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %104, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond.69

for.end.96:                                       ; preds = %for.cond.69
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @exploreUp() #0 {
entry:
  %beptr = alloca %struct.dlink2*, align 8
  %beg = alloca i32, align 4
  %end = alloca i32, align 4
  %left = alloca i32, align 4
  %rite = alloca i32, align 4
  %finishLine = alloca i32, align 4
  %b = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %rec = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 1, i32* %rec, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %0 = load i32, i32* %rec, align 4
  %1 = load i32, i32* @numRects, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %rec, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx = getelementptr inbounds %struct.rect, %struct.rect* %3, i64 %idxprom
  %b1 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx, i32 0, i32 6
  %4 = load i32, i32* %b1, align 4
  store i32 %4, i32* %beg, align 4
  %5 = load i32, i32* %rec, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx3 = getelementptr inbounds %struct.rect, %struct.rect* %6, i64 %idxprom2
  %t = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx3, i32 0, i32 7
  %7 = load i32, i32* %t, align 4
  store i32 %7, i32* %end, align 4
  %8 = load i32, i32* %rec, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx5 = getelementptr inbounds %struct.rect, %struct.rect* %9, i64 %idxprom4
  %r6 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx5, i32 0, i32 5
  %10 = load i32, i32* %r6, align 4
  store i32 %10, i32* %rite, align 4
  %11 = load i32, i32* %rec, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx8 = getelementptr inbounds %struct.rect, %struct.rect* %12, i64 %idxprom7
  %l9 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx8, i32 0, i32 4
  %13 = load i32, i32* %l9, align 4
  store i32 %13, i32* %left, align 4
  store i32 1000000, i32* %finishLine, align 4
  %14 = load %struct.tnode*, %struct.tnode** @BEroot, align 8
  %15 = load i32, i32* %beg, align 4
  %call = call i32 @tprop(%struct.tnode* %14, i32 %15)
  %idxprom10 = sext i32 %call to i64
  %16 = load %struct.dlink2**, %struct.dlink2*** @BEptrs, align 8
  %arrayidx11 = getelementptr inbounds %struct.dlink2*, %struct.dlink2** %16, i64 %idxprom10
  %17 = load %struct.dlink2*, %struct.dlink2** %arrayidx11, align 8
  store %struct.dlink2* %17, %struct.dlink2** %beptr, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %18 = load %struct.dlink2*, %struct.dlink2** %beptr, align 8
  %cmp13 = icmp ne %struct.dlink2* %18, null
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %19 = load %struct.dlink2*, %struct.dlink2** %beptr, align 8
  %index15 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %19, i32 0, i32 0
  %20 = load i32, i32* %index15, align 4
  store i32 %20, i32* %index, align 4
  %21 = load i32, i32* %index, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx17 = getelementptr inbounds %struct.rect, %struct.rect* %22, i64 %idxprom16
  %b18 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx17, i32 0, i32 6
  %23 = load i32, i32* %b18, align 4
  store i32 %23, i32* %b, align 4
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %finishLine, align 4
  %cmp19 = icmp sgt i32 %24, %25
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.14
  br label %for.end

if.end:                                           ; preds = %for.body.14
  %26 = load i32, i32* %index, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx21 = getelementptr inbounds %struct.rect, %struct.rect* %27, i64 %idxprom20
  %l22 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx21, i32 0, i32 4
  %28 = load i32, i32* %l22, align 4
  store i32 %28, i32* %l, align 4
  %29 = load i32, i32* %index, align 4
  %idxprom23 = sext i32 %29 to i64
  %30 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx24 = getelementptr inbounds %struct.rect, %struct.rect* %30, i64 %idxprom23
  %r25 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx24, i32 0, i32 5
  %31 = load i32, i32* %r25, align 4
  store i32 %31, i32* %r, align 4
  %32 = load i32, i32* %b, align 4
  %33 = load i32, i32* %end, align 4
  %cmp26 = icmp sle i32 %32, %33
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %34 = load i32, i32* %l, align 4
  %35 = load i32, i32* %rite, align 4
  %cmp27 = icmp sgt i32 %34, %35
  br i1 %cmp27, label %if.then.30, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %36 = load i32, i32* %r, align 4
  %37 = load i32, i32* %left, align 4
  %cmp29 = icmp slt i32 %36, %37
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false, %if.end
  br label %for.inc

if.end.31:                                        ; preds = %lor.lhs.false.28
  %38 = load i32, i32* %rec, align 4
  %39 = load i32, i32* %index, align 4
  %call32 = call i32 @constructVedge(i32 %38, i32 %39)
  %tobool = icmp ne i32 %call32, 0
  br i1 %tobool, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  br label %for.end

if.end.34:                                        ; preds = %if.end.31
  %40 = load i32, i32* %index, align 4
  %idxprom35 = sext i32 %40 to i64
  %41 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx36 = getelementptr inbounds %struct.rect, %struct.rect* %41, i64 %idxprom35
  %t37 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx36, i32 0, i32 7
  %42 = load i32, i32* %t37, align 4
  store i32 %42, i32* %finishLine, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.34, %if.then.30
  %43 = load %struct.dlink2*, %struct.dlink2** %beptr, align 8
  %next = getelementptr inbounds %struct.dlink2, %struct.dlink2* %43, i32 0, i32 2
  %44 = load %struct.dlink2*, %struct.dlink2** %next, align 8
  store %struct.dlink2* %44, %struct.dlink2** %beptr, align 8
  br label %for.cond.12

for.end:                                          ; preds = %if.then.33, %if.then, %for.cond.12
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %45 = load i32, i32* %rec, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %rec, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @exploreRite() #0 {
entry:
  %leptr = alloca %struct.dlink2*, align 8
  %beg = alloca i32, align 4
  %end = alloca i32, align 4
  %top = alloca i32, align 4
  %bot = alloca i32, align 4
  %finishLine = alloca i32, align 4
  %l = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %rec = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 1, i32* %rec, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %0 = load i32, i32* %rec, align 4
  %1 = load i32, i32* @numRects, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %rec, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx = getelementptr inbounds %struct.rect, %struct.rect* %3, i64 %idxprom
  %l1 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx, i32 0, i32 4
  %4 = load i32, i32* %l1, align 4
  store i32 %4, i32* %beg, align 4
  %5 = load i32, i32* %rec, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx3 = getelementptr inbounds %struct.rect, %struct.rect* %6, i64 %idxprom2
  %r = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx3, i32 0, i32 5
  %7 = load i32, i32* %r, align 4
  store i32 %7, i32* %end, align 4
  %8 = load i32, i32* %rec, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx5 = getelementptr inbounds %struct.rect, %struct.rect* %9, i64 %idxprom4
  %t6 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx5, i32 0, i32 7
  %10 = load i32, i32* %t6, align 4
  store i32 %10, i32* %top, align 4
  %11 = load i32, i32* %rec, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx8 = getelementptr inbounds %struct.rect, %struct.rect* %12, i64 %idxprom7
  %b9 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx8, i32 0, i32 6
  %13 = load i32, i32* %b9, align 4
  store i32 %13, i32* %bot, align 4
  store i32 1000000, i32* %finishLine, align 4
  %14 = load %struct.tnode*, %struct.tnode** @LEroot, align 8
  %15 = load i32, i32* %beg, align 4
  %call = call i32 @tprop(%struct.tnode* %14, i32 %15)
  %idxprom10 = sext i32 %call to i64
  %16 = load %struct.dlink2**, %struct.dlink2*** @LEptrs, align 8
  %arrayidx11 = getelementptr inbounds %struct.dlink2*, %struct.dlink2** %16, i64 %idxprom10
  %17 = load %struct.dlink2*, %struct.dlink2** %arrayidx11, align 8
  store %struct.dlink2* %17, %struct.dlink2** %leptr, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %18 = load %struct.dlink2*, %struct.dlink2** %leptr, align 8
  %cmp13 = icmp ne %struct.dlink2* %18, null
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %19 = load %struct.dlink2*, %struct.dlink2** %leptr, align 8
  %index15 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %19, i32 0, i32 0
  %20 = load i32, i32* %index15, align 4
  store i32 %20, i32* %index, align 4
  %21 = load i32, i32* %index, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx17 = getelementptr inbounds %struct.rect, %struct.rect* %22, i64 %idxprom16
  %l18 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx17, i32 0, i32 4
  %23 = load i32, i32* %l18, align 4
  store i32 %23, i32* %l, align 4
  %24 = load i32, i32* %l, align 4
  %25 = load i32, i32* %finishLine, align 4
  %cmp19 = icmp sgt i32 %24, %25
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.14
  br label %for.end

if.end:                                           ; preds = %for.body.14
  %26 = load i32, i32* %index, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx21 = getelementptr inbounds %struct.rect, %struct.rect* %27, i64 %idxprom20
  %b22 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx21, i32 0, i32 6
  %28 = load i32, i32* %b22, align 4
  store i32 %28, i32* %b, align 4
  %29 = load i32, i32* %index, align 4
  %idxprom23 = sext i32 %29 to i64
  %30 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx24 = getelementptr inbounds %struct.rect, %struct.rect* %30, i64 %idxprom23
  %t25 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx24, i32 0, i32 7
  %31 = load i32, i32* %t25, align 4
  store i32 %31, i32* %t, align 4
  %32 = load i32, i32* %l, align 4
  %33 = load i32, i32* %end, align 4
  %cmp26 = icmp sle i32 %32, %33
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %34 = load i32, i32* %b, align 4
  %35 = load i32, i32* %top, align 4
  %cmp27 = icmp sgt i32 %34, %35
  br i1 %cmp27, label %if.then.30, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %36 = load i32, i32* %t, align 4
  %37 = load i32, i32* %bot, align 4
  %cmp29 = icmp slt i32 %36, %37
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false, %if.end
  br label %for.inc

if.end.31:                                        ; preds = %lor.lhs.false.28
  %38 = load i32, i32* %rec, align 4
  %39 = load i32, i32* %index, align 4
  %call32 = call i32 @constructHedge(i32 %38, i32 %39)
  %tobool = icmp ne i32 %call32, 0
  br i1 %tobool, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  br label %for.end

if.end.34:                                        ; preds = %if.end.31
  %40 = load i32, i32* %index, align 4
  %idxprom35 = sext i32 %40 to i64
  %41 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx36 = getelementptr inbounds %struct.rect, %struct.rect* %41, i64 %idxprom35
  %r37 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx36, i32 0, i32 5
  %42 = load i32, i32* %r37, align 4
  store i32 %42, i32* %finishLine, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.34, %if.then.30
  %43 = load %struct.dlink2*, %struct.dlink2** %leptr, align 8
  %next = getelementptr inbounds %struct.dlink2, %struct.dlink2* %43, i32 0, i32 2
  %44 = load %struct.dlink2*, %struct.dlink2** %next, align 8
  store %struct.dlink2* %44, %struct.dlink2** %leptr, align 8
  br label %for.cond.12

for.end:                                          ; preds = %if.then.33, %if.then, %for.cond.12
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %45 = load i32, i32* %rec, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %rec, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  ret void
}

declare void @tinsert(%struct.tnode**, i32, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @tprop(%struct.tnode*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @constructVedge(i32 %index1, i32 %index2) #0 {
entry:
  %retval = alloca i32, align 4
  %index1.addr = alloca i32, align 4
  %index2.addr = alloca i32, align 4
  %v1ptr = alloca %struct.dlink1*, align 8
  %v2ptr = alloca %struct.dlink1*, align 8
  %vptr = alloca %struct.dlink1*, align 8
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %edge1 = alloca i32, align 4
  %edge2 = alloca i32, align 4
  %el = alloca i32, align 4
  %er = alloca i32, align 4
  %eb = alloca i32, align 4
  %et = alloca i32, align 4
  %eb1 = alloca i32, align 4
  %et1 = alloca i32, align 4
  %eb2 = alloca i32, align 4
  %et2 = alloca i32, align 4
  %edge = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %index1, i32* %index1.addr, align 4
  store i32 %index2, i32* %index2.addr, align 4
  %0 = load i32, i32* %index1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx = getelementptr inbounds %struct.rect, %struct.rect* %1, i64 %idxprom
  %l3 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx, i32 0, i32 4
  %2 = load i32, i32* %l3, align 4
  store i32 %2, i32* %l1, align 4
  %3 = load i32, i32* %index1.addr, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx5 = getelementptr inbounds %struct.rect, %struct.rect* %4, i64 %idxprom4
  %r6 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx5, i32 0, i32 5
  %5 = load i32, i32* %r6, align 4
  store i32 %5, i32* %r1, align 4
  %6 = load i32, i32* %index2.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %7 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx8 = getelementptr inbounds %struct.rect, %struct.rect* %7, i64 %idxprom7
  %l9 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx8, i32 0, i32 4
  %8 = load i32, i32* %l9, align 4
  store i32 %8, i32* %l2, align 4
  %9 = load i32, i32* %index2.addr, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx11 = getelementptr inbounds %struct.rect, %struct.rect* %10, i64 %idxprom10
  %r12 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx11, i32 0, i32 5
  %11 = load i32, i32* %r12, align 4
  store i32 %11, i32* %r2, align 4
  %12 = load i32, i32* %l1, align 4
  %13 = load i32, i32* %l2, align 4
  %cmp = icmp sge i32 %12, %13
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load i32, i32* %l1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %l2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %l, align 4
  %16 = load i32, i32* %r1, align 4
  %17 = load i32, i32* %r2, align 4
  %cmp13 = icmp sle i32 %16, %17
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end
  %18 = load i32, i32* %r1, align 4
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  %19 = load i32, i32* %r2, align 4
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i32 [ %18, %cond.true.14 ], [ %19, %cond.false.15 ]
  store i32 %cond17, i32* %r, align 4
  %20 = load i32, i32* %index1.addr, align 4
  %idxprom18 = sext i32 %20 to i64
  %21 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx19 = getelementptr inbounds %struct.rect, %struct.rect* %21, i64 %idxprom18
  %t20 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx19, i32 0, i32 7
  %22 = load i32, i32* %t20, align 4
  store i32 %22, i32* %b, align 4
  %23 = load i32, i32* %index2.addr, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx22 = getelementptr inbounds %struct.rect, %struct.rect* %24, i64 %idxprom21
  %b23 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx22, i32 0, i32 6
  %25 = load i32, i32* %b23, align 4
  store i32 %25, i32* %t, align 4
  store i32 -1000000, i32* %el, align 4
  %26 = load %struct.tnode*, %struct.tnode** @VDroot, align 8
  %27 = load i32, i32* %l, align 4
  %call = call i32 @tprop(%struct.tnode* %26, i32 %27)
  %idxprom24 = sext i32 %call to i64
  %28 = load %struct.dlink1**, %struct.dlink1*** @VDptrs, align 8
  %arrayidx25 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %28, i64 %idxprom24
  %29 = load %struct.dlink1*, %struct.dlink1** %arrayidx25, align 8
  store %struct.dlink1* %29, %struct.dlink1** %v1ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.16
  %30 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %cmp26 = icmp ne %struct.dlink1* %30, null
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %edge27 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %31, i32 0, i32 0
  %32 = load i32, i32* %edge27, align 4
  store i32 %32, i32* %edge1, align 4
  %33 = load i32, i32* %edge1, align 4
  %idxprom28 = sext i32 %33 to i64
  %34 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx29 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %34, i64 %idxprom28
  %loc = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx29, i32 0, i32 3
  %35 = load i32, i32* %loc, align 4
  %36 = load i32, i32* %r, align 4
  %cmp30 = icmp sgt i32 %35, %36
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %37 = load i32, i32* %edge1, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx32 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %38, i64 %idxprom31
  %UorR = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx32, i32 0, i32 5
  %39 = load i32, i32* %UorR, align 4
  %cmp33 = icmp sgt i32 %39, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end
  br label %for.inc

if.end.35:                                        ; preds = %if.end
  %40 = load i32, i32* %edge1, align 4
  %idxprom36 = sext i32 %40 to i64
  %41 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx37 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %41, i64 %idxprom36
  %start = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx37, i32 0, i32 1
  %42 = load i32, i32* %start, align 4
  %43 = load i32, i32* %b, align 4
  %cmp38 = icmp sgt i32 %42, %43
  br i1 %cmp38, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.35
  %44 = load i32, i32* %edge1, align 4
  %idxprom39 = sext i32 %44 to i64
  %45 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx40 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %45, i64 %idxprom39
  %end = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx40, i32 0, i32 2
  %46 = load i32, i32* %end, align 4
  %47 = load i32, i32* %t, align 4
  %cmp41 = icmp slt i32 %46, %47
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false, %if.end.35
  br label %for.inc

if.end.43:                                        ; preds = %lor.lhs.false
  %48 = load i32, i32* %edge1, align 4
  %idxprom44 = sext i32 %48 to i64
  %49 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx45 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %49, i64 %idxprom44
  %loc46 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx45, i32 0, i32 3
  %50 = load i32, i32* %loc46, align 4
  store i32 %50, i32* %el, align 4
  %51 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  store %struct.dlink1* %51, %struct.dlink1** %vptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.43, %if.then.42, %if.then.34
  %52 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %next = getelementptr inbounds %struct.dlink1, %struct.dlink1* %52, i32 0, i32 2
  %53 = load %struct.dlink1*, %struct.dlink1** %next, align 8
  store %struct.dlink1* %53, %struct.dlink1** %v1ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %54 = load i32, i32* %el, align 4
  %cmp47 = icmp eq i32 %54, -1000000
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %for.end
  %55 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %56 = load i32, i32* %el, align 4
  %call50 = call i32 @tprop(%struct.tnode* %55, i32 %56)
  %idxprom51 = sext i32 %call50 to i64
  %57 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx52 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %57, i64 %idxprom51
  %58 = load %struct.dlink1*, %struct.dlink1** %arrayidx52, align 8
  store %struct.dlink1* %58, %struct.dlink1** %v2ptr, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.77, %if.end.49
  %59 = load %struct.dlink1*, %struct.dlink1** %v2ptr, align 8
  %cmp54 = icmp ne %struct.dlink1* %59, null
  br i1 %cmp54, label %for.body.55, label %for.end.79

for.body.55:                                      ; preds = %for.cond.53
  %60 = load %struct.dlink1*, %struct.dlink1** %v2ptr, align 8
  %edge56 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %60, i32 0, i32 0
  %61 = load i32, i32* %edge56, align 4
  store i32 %61, i32* %edge2, align 4
  %62 = load i32, i32* %edge2, align 4
  %idxprom57 = sext i32 %62 to i64
  %63 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx58 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %63, i64 %idxprom57
  %UorR59 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx58, i32 0, i32 5
  %64 = load i32, i32* %UorR59, align 4
  %cmp60 = icmp slt i32 %64, 0
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.body.55
  br label %for.inc.77

if.end.62:                                        ; preds = %for.body.55
  %65 = load i32, i32* %edge2, align 4
  %idxprom63 = sext i32 %65 to i64
  %66 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx64 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %66, i64 %idxprom63
  %start65 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx64, i32 0, i32 1
  %67 = load i32, i32* %start65, align 4
  %68 = load i32, i32* %b, align 4
  %cmp66 = icmp sgt i32 %67, %68
  br i1 %cmp66, label %if.then.72, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %if.end.62
  %69 = load i32, i32* %edge2, align 4
  %idxprom68 = sext i32 %69 to i64
  %70 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx69 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %70, i64 %idxprom68
  %end70 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx69, i32 0, i32 2
  %71 = load i32, i32* %end70, align 4
  %72 = load i32, i32* %t, align 4
  %cmp71 = icmp slt i32 %71, %72
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false.67, %if.end.62
  br label %for.inc.77

if.end.73:                                        ; preds = %lor.lhs.false.67
  %73 = load i32, i32* %edge2, align 4
  %idxprom74 = sext i32 %73 to i64
  %74 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx75 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %74, i64 %idxprom74
  %loc76 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx75, i32 0, i32 3
  %75 = load i32, i32* %loc76, align 4
  store i32 %75, i32* %er, align 4
  br label %for.end.79

for.inc.77:                                       ; preds = %if.then.72, %if.then.61
  %76 = load %struct.dlink1*, %struct.dlink1** %v2ptr, align 8
  %next78 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %76, i32 0, i32 2
  %77 = load %struct.dlink1*, %struct.dlink1** %next78, align 8
  store %struct.dlink1* %77, %struct.dlink1** %v2ptr, align 8
  br label %for.cond.53

for.end.79:                                       ; preds = %if.end.73, %for.cond.53
  %78 = load i32, i32* %er, align 4
  %79 = load i32, i32* %r, align 4
  %cmp80 = icmp sgt i32 %78, %79
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %for.end.79
  store i32 0, i32* %retval
  br label %return

if.end.82:                                        ; preds = %for.end.79
  %80 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  store %struct.dlink1* %80, %struct.dlink1** %v1ptr, align 8
  %81 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %edge83 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %81, i32 0, i32 0
  %82 = load i32, i32* %edge83, align 4
  store i32 %82, i32* %edge1, align 4
  %83 = load i32, i32* %edge1, align 4
  %idxprom84 = sext i32 %83 to i64
  %84 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx85 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %84, i64 %idxprom84
  %end86 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx85, i32 0, i32 2
  %85 = load i32, i32* %end86, align 4
  store i32 %85, i32* %et1, align 4
  %86 = load i32, i32* %edge1, align 4
  %idxprom87 = sext i32 %86 to i64
  %87 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx88 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %87, i64 %idxprom87
  %start89 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx88, i32 0, i32 1
  %88 = load i32, i32* %start89, align 4
  store i32 %88, i32* %eb1, align 4
  %89 = load i32, i32* %edge2, align 4
  %idxprom90 = sext i32 %89 to i64
  %90 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx91 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %90, i64 %idxprom90
  %end92 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx91, i32 0, i32 2
  %91 = load i32, i32* %end92, align 4
  store i32 %91, i32* %et2, align 4
  %92 = load i32, i32* %edge2, align 4
  %idxprom93 = sext i32 %92 to i64
  %93 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx94 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %93, i64 %idxprom93
  %start95 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx94, i32 0, i32 1
  %94 = load i32, i32* %start95, align 4
  store i32 %94, i32* %eb2, align 4
  %95 = load i32, i32* %edge1, align 4
  %idxprom96 = sext i32 %95 to i64
  %96 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx97 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %96, i64 %idxprom96
  %fixed = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx97, i32 0, i32 6
  %97 = load i32, i32* %fixed, align 4
  %cmp98 = icmp eq i32 %97, 1
  br i1 %cmp98, label %land.lhs.true, label %if.else.138

land.lhs.true:                                    ; preds = %if.end.82
  %98 = load i32, i32* %edge2, align 4
  %idxprom99 = sext i32 %98 to i64
  %99 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx100 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %99, i64 %idxprom99
  %fixed101 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx100, i32 0, i32 6
  %100 = load i32, i32* %fixed101, align 4
  %cmp102 = icmp eq i32 %100, 1
  br i1 %cmp102, label %if.then.103, label %if.else.138

if.then.103:                                      ; preds = %land.lhs.true
  %101 = load i32, i32* %edge1, align 4
  %idxprom104 = sext i32 %101 to i64
  %102 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx105 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %102, i64 %idxprom104
  %cell = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx105, i32 0, i32 0
  %103 = load i32, i32* %cell, align 4
  %cmp106 = icmp sgt i32 %103, 0
  br i1 %cmp106, label %land.lhs.true.107, label %if.else

land.lhs.true.107:                                ; preds = %if.then.103
  %104 = load i32, i32* %edge2, align 4
  %idxprom108 = sext i32 %104 to i64
  %105 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx109 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %105, i64 %idxprom108
  %cell110 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx109, i32 0, i32 0
  %106 = load i32, i32* %cell110, align 4
  %cmp111 = icmp sgt i32 %106, 0
  br i1 %cmp111, label %if.then.112, label %if.else

if.then.112:                                      ; preds = %land.lhs.true.107
  %107 = load i32, i32* %et1, align 4
  %108 = load i32, i32* %et2, align 4
  %cmp113 = icmp sge i32 %107, %108
  br i1 %cmp113, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %if.then.112
  %109 = load i32, i32* %et1, align 4
  br label %cond.end.116

cond.false.115:                                   ; preds = %if.then.112
  %110 = load i32, i32* %et2, align 4
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.114
  %cond117 = phi i32 [ %109, %cond.true.114 ], [ %110, %cond.false.115 ]
  store i32 %cond117, i32* %et, align 4
  %111 = load i32, i32* %eb1, align 4
  %112 = load i32, i32* %eb2, align 4
  %cmp118 = icmp sle i32 %111, %112
  br i1 %cmp118, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %cond.end.116
  %113 = load i32, i32* %eb1, align 4
  br label %cond.end.121

cond.false.120:                                   ; preds = %cond.end.116
  %114 = load i32, i32* %eb2, align 4
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.120, %cond.true.119
  %cond122 = phi i32 [ %113, %cond.true.119 ], [ %114, %cond.false.120 ]
  store i32 %cond122, i32* %eb, align 4
  br label %if.end.137

if.else:                                          ; preds = %land.lhs.true.107, %if.then.103
  %115 = load i32, i32* %edge1, align 4
  %idxprom123 = sext i32 %115 to i64
  %116 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx124 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %116, i64 %idxprom123
  %cell125 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx124, i32 0, i32 0
  %117 = load i32, i32* %cell125, align 4
  %cmp126 = icmp sgt i32 %117, 0
  br i1 %cmp126, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %if.else
  %118 = load i32, i32* %et1, align 4
  store i32 %118, i32* %et, align 4
  %119 = load i32, i32* %eb1, align 4
  store i32 %119, i32* %eb, align 4
  br label %if.end.136

if.else.128:                                      ; preds = %if.else
  %120 = load i32, i32* %edge2, align 4
  %idxprom129 = sext i32 %120 to i64
  %121 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx130 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %121, i64 %idxprom129
  %cell131 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx130, i32 0, i32 0
  %122 = load i32, i32* %cell131, align 4
  %cmp132 = icmp sgt i32 %122, 0
  br i1 %cmp132, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %if.else.128
  %123 = load i32, i32* %et2, align 4
  store i32 %123, i32* %et, align 4
  %124 = load i32, i32* %eb2, align 4
  store i32 %124, i32* %eb, align 4
  br label %if.end.135

if.else.134:                                      ; preds = %if.else.128
  store i32 1000000, i32* %et, align 4
  store i32 -1000000, i32* %eb, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.134, %if.then.133
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.127
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %cond.end.121
  br label %if.end.167

if.else.138:                                      ; preds = %land.lhs.true, %if.end.82
  %125 = load i32, i32* %edge1, align 4
  %idxprom139 = sext i32 %125 to i64
  %126 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx140 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %126, i64 %idxprom139
  %fixed141 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx140, i32 0, i32 6
  %127 = load i32, i32* %fixed141, align 4
  %cmp142 = icmp eq i32 %127, 1
  br i1 %cmp142, label %if.then.143, label %if.else.151

if.then.143:                                      ; preds = %if.else.138
  %128 = load i32, i32* %edge1, align 4
  %idxprom144 = sext i32 %128 to i64
  %129 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx145 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %129, i64 %idxprom144
  %cell146 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx145, i32 0, i32 0
  %130 = load i32, i32* %cell146, align 4
  %cmp147 = icmp sgt i32 %130, 0
  br i1 %cmp147, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %if.then.143
  %131 = load i32, i32* %et1, align 4
  store i32 %131, i32* %et, align 4
  %132 = load i32, i32* %eb1, align 4
  store i32 %132, i32* %eb, align 4
  br label %if.end.150

if.else.149:                                      ; preds = %if.then.143
  store i32 1000000, i32* %et, align 4
  store i32 -1000000, i32* %eb, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.149, %if.then.148
  br label %if.end.166

if.else.151:                                      ; preds = %if.else.138
  %133 = load i32, i32* %edge2, align 4
  %idxprom152 = sext i32 %133 to i64
  %134 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx153 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %134, i64 %idxprom152
  %fixed154 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx153, i32 0, i32 6
  %135 = load i32, i32* %fixed154, align 4
  %cmp155 = icmp eq i32 %135, 1
  br i1 %cmp155, label %if.then.156, label %if.else.164

if.then.156:                                      ; preds = %if.else.151
  %136 = load i32, i32* %edge2, align 4
  %idxprom157 = sext i32 %136 to i64
  %137 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx158 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %137, i64 %idxprom157
  %cell159 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx158, i32 0, i32 0
  %138 = load i32, i32* %cell159, align 4
  %cmp160 = icmp sgt i32 %138, 0
  br i1 %cmp160, label %if.then.161, label %if.else.162

if.then.161:                                      ; preds = %if.then.156
  %139 = load i32, i32* %et2, align 4
  store i32 %139, i32* %et, align 4
  %140 = load i32, i32* %eb2, align 4
  store i32 %140, i32* %eb, align 4
  br label %if.end.163

if.else.162:                                      ; preds = %if.then.156
  store i32 1000000, i32* %et, align 4
  store i32 -1000000, i32* %eb, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.162, %if.then.161
  br label %if.end.165

if.else.164:                                      ; preds = %if.else.151
  store i32 1000000, i32* %et, align 4
  store i32 -1000000, i32* %eb, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.164, %if.end.163
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.150
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.137
  %141 = load i32, i32* %et, align 4
  %142 = load i32, i32* %index2.addr, align 4
  %idxprom168 = sext i32 %142 to i64
  %143 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx169 = getelementptr inbounds %struct.rect, %struct.rect* %143, i64 %idxprom168
  %t170 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx169, i32 0, i32 7
  %144 = load i32, i32* %t170, align 4
  %cmp171 = icmp sgt i32 %141, %144
  br i1 %cmp171, label %if.end.183, label %if.then.172

if.then.172:                                      ; preds = %if.end.167
  %145 = load i32, i32* %index2.addr, align 4
  %idxprom173 = sext i32 %145 to i64
  %146 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx174 = getelementptr inbounds %struct.rect, %struct.rect* %146, i64 %idxprom173
  %yc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx174, i32 0, i32 1
  %147 = load i32, i32* %yc, align 4
  %148 = load i32, i32* %et, align 4
  %cmp175 = icmp slt i32 %147, %148
  br i1 %cmp175, label %if.then.176, label %if.end.182

if.then.176:                                      ; preds = %if.then.172
  %149 = load i32, i32* %et, align 4
  %150 = load i32, i32* %index2.addr, align 4
  %idxprom177 = sext i32 %150 to i64
  %151 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx178 = getelementptr inbounds %struct.rect, %struct.rect* %151, i64 %idxprom177
  %yc179 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx178, i32 0, i32 1
  store i32 %149, i32* %yc179, align 4
  %152 = load i32, i32* %index2.addr, align 4
  %idxprom180 = sext i32 %152 to i64
  %153 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx181 = getelementptr inbounds %struct.rect, %struct.rect* %153, i64 %idxprom180
  %yreset = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx181, i32 0, i32 3
  store i32 2, i32* %yreset, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.176, %if.then.172
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.end.167
  %154 = load i32, i32* %eb, align 4
  %155 = load i32, i32* %index1.addr, align 4
  %idxprom184 = sext i32 %155 to i64
  %156 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx185 = getelementptr inbounds %struct.rect, %struct.rect* %156, i64 %idxprom184
  %b186 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx185, i32 0, i32 6
  %157 = load i32, i32* %b186, align 4
  %cmp187 = icmp slt i32 %154, %157
  br i1 %cmp187, label %if.end.201, label %if.then.188

if.then.188:                                      ; preds = %if.end.183
  %158 = load i32, i32* %index1.addr, align 4
  %idxprom189 = sext i32 %158 to i64
  %159 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx190 = getelementptr inbounds %struct.rect, %struct.rect* %159, i64 %idxprom189
  %yc191 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx190, i32 0, i32 1
  %160 = load i32, i32* %yc191, align 4
  %161 = load i32, i32* %eb, align 4
  %cmp192 = icmp sgt i32 %160, %161
  br i1 %cmp192, label %if.then.193, label %if.end.200

if.then.193:                                      ; preds = %if.then.188
  %162 = load i32, i32* %eb, align 4
  %163 = load i32, i32* %index1.addr, align 4
  %idxprom194 = sext i32 %163 to i64
  %164 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx195 = getelementptr inbounds %struct.rect, %struct.rect* %164, i64 %idxprom194
  %yc196 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx195, i32 0, i32 1
  store i32 %162, i32* %yc196, align 4
  %165 = load i32, i32* %index1.addr, align 4
  %idxprom197 = sext i32 %165 to i64
  %166 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx198 = getelementptr inbounds %struct.rect, %struct.rect* %166, i64 %idxprom197
  %yreset199 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx198, i32 0, i32 3
  store i32 1, i32* %yreset199, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.193, %if.then.188
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.183
  %167 = load i32, i32* %index1.addr, align 4
  %idxprom202 = sext i32 %167 to i64
  %168 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx203 = getelementptr inbounds %struct.rect, %struct.rect* %168, i64 %idxprom202
  %xc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx203, i32 0, i32 0
  %169 = load i32, i32* %xc, align 4
  %170 = load i32, i32* %el, align 4
  %cmp204 = icmp slt i32 %169, %170
  br i1 %cmp204, label %if.then.210, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %if.end.201
  %171 = load i32, i32* %index1.addr, align 4
  %idxprom206 = sext i32 %171 to i64
  %172 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx207 = getelementptr inbounds %struct.rect, %struct.rect* %172, i64 %idxprom206
  %xc208 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx207, i32 0, i32 0
  %173 = load i32, i32* %xc208, align 4
  %174 = load i32, i32* %er, align 4
  %cmp209 = icmp sgt i32 %173, %174
  br i1 %cmp209, label %if.then.210, label %if.end.214

if.then.210:                                      ; preds = %lor.lhs.false.205, %if.end.201
  %175 = load i32, i32* %el, align 4
  %176 = load i32, i32* %er, align 4
  %add = add nsw i32 %175, %176
  %div = sdiv i32 %add, 2
  %177 = load i32, i32* %index1.addr, align 4
  %idxprom211 = sext i32 %177 to i64
  %178 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx212 = getelementptr inbounds %struct.rect, %struct.rect* %178, i64 %idxprom211
  %xc213 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx212, i32 0, i32 0
  store i32 %div, i32* %xc213, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.210, %lor.lhs.false.205
  %179 = load i32, i32* %index2.addr, align 4
  %idxprom215 = sext i32 %179 to i64
  %180 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx216 = getelementptr inbounds %struct.rect, %struct.rect* %180, i64 %idxprom215
  %xc217 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx216, i32 0, i32 0
  %181 = load i32, i32* %xc217, align 4
  %182 = load i32, i32* %el, align 4
  %cmp218 = icmp slt i32 %181, %182
  br i1 %cmp218, label %if.then.224, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %if.end.214
  %183 = load i32, i32* %index2.addr, align 4
  %idxprom220 = sext i32 %183 to i64
  %184 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx221 = getelementptr inbounds %struct.rect, %struct.rect* %184, i64 %idxprom220
  %xc222 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx221, i32 0, i32 0
  %185 = load i32, i32* %xc222, align 4
  %186 = load i32, i32* %er, align 4
  %cmp223 = icmp sgt i32 %185, %186
  br i1 %cmp223, label %if.then.224, label %if.end.230

if.then.224:                                      ; preds = %lor.lhs.false.219, %if.end.214
  %187 = load i32, i32* %el, align 4
  %188 = load i32, i32* %er, align 4
  %add225 = add nsw i32 %187, %188
  %div226 = sdiv i32 %add225, 2
  %189 = load i32, i32* %index2.addr, align 4
  %idxprom227 = sext i32 %189 to i64
  %190 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx228 = getelementptr inbounds %struct.rect, %struct.rect* %190, i64 %idxprom227
  %xc229 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx228, i32 0, i32 0
  store i32 %div226, i32* %xc229, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.224, %lor.lhs.false.219
  %191 = load i32, i32* %edge1, align 4
  %idxprom231 = sext i32 %191 to i64
  %192 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx232 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %192, i64 %idxprom231
  %fixed233 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx232, i32 0, i32 6
  %193 = load i32, i32* %fixed233, align 4
  %cmp234 = icmp eq i32 %193, 0
  br i1 %cmp234, label %if.then.235, label %if.end.294

if.then.235:                                      ; preds = %if.end.230
  %194 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %195 = load i32, i32* %el, align 4
  %call236 = call i32 @tprop(%struct.tnode* %194, i32 %195)
  %idxprom237 = sext i32 %call236 to i64
  %196 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx238 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %196, i64 %idxprom237
  %197 = load %struct.dlink1*, %struct.dlink1** %arrayidx238, align 8
  store %struct.dlink1* %197, %struct.dlink1** %vptr, align 8
  %198 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %edge239 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %198, i32 0, i32 0
  %199 = load i32, i32* %edge239, align 4
  %idxprom240 = sext i32 %199 to i64
  %200 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx241 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %200, i64 %idxprom240
  %loc242 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx241, i32 0, i32 3
  %201 = load i32, i32* %loc242, align 4
  store i32 %201, i32* %x, align 4
  %202 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %next243 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %202, i32 0, i32 2
  %203 = load %struct.dlink1*, %struct.dlink1** %next243, align 8
  store %struct.dlink1* %203, %struct.dlink1** %vptr, align 8
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.254, %if.then.235
  %204 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %cmp245 = icmp ne %struct.dlink1* %204, null
  br i1 %cmp245, label %for.body.246, label %for.end.256

for.body.246:                                     ; preds = %for.cond.244
  %205 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %edge247 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %205, i32 0, i32 0
  %206 = load i32, i32* %edge247, align 4
  %idxprom248 = sext i32 %206 to i64
  %207 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx249 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %207, i64 %idxprom248
  %loc250 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx249, i32 0, i32 3
  %208 = load i32, i32* %loc250, align 4
  %209 = load i32, i32* %x, align 4
  %cmp251 = icmp sgt i32 %208, %209
  br i1 %cmp251, label %if.then.252, label %if.end.253

if.then.252:                                      ; preds = %for.body.246
  br label %for.end.256

if.end.253:                                       ; preds = %for.body.246
  br label %for.inc.254

for.inc.254:                                      ; preds = %if.end.253
  %210 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %next255 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %210, i32 0, i32 2
  %211 = load %struct.dlink1*, %struct.dlink1** %next255, align 8
  store %struct.dlink1* %211, %struct.dlink1** %vptr, align 8
  br label %for.cond.244

for.end.256:                                      ; preds = %if.then.252, %for.cond.244
  %212 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %prev = getelementptr inbounds %struct.dlink1, %struct.dlink1* %212, i32 0, i32 1
  %213 = load %struct.dlink1*, %struct.dlink1** %prev, align 8
  store %struct.dlink1* %213, %struct.dlink1** %vptr, align 8
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.281, %for.end.256
  %214 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %cmp258 = icmp ne %struct.dlink1* %214, null
  br i1 %cmp258, label %for.body.259, label %for.end.283

for.body.259:                                     ; preds = %for.cond.257
  %215 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %216 = load %struct.dlink1*, %struct.dlink1** %v2ptr, align 8
  %cmp260 = icmp eq %struct.dlink1* %215, %216
  br i1 %cmp260, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %for.body.259
  br label %for.inc.281

if.end.262:                                       ; preds = %for.body.259
  %217 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %edge263 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %217, i32 0, i32 0
  %218 = load i32, i32* %edge263, align 4
  store i32 %218, i32* %edge, align 4
  %219 = load i32, i32* %edge, align 4
  %idxprom264 = sext i32 %219 to i64
  %220 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx265 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %220, i64 %idxprom264
  %UorR266 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx265, i32 0, i32 5
  %221 = load i32, i32* %UorR266, align 4
  %cmp267 = icmp slt i32 %221, 0
  br i1 %cmp267, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %if.end.262
  br label %for.inc.281

if.end.269:                                       ; preds = %if.end.262
  %222 = load i32, i32* %edge, align 4
  %idxprom270 = sext i32 %222 to i64
  %223 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx271 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %223, i64 %idxprom270
  %start272 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx271, i32 0, i32 1
  %224 = load i32, i32* %start272, align 4
  %225 = load i32, i32* %b, align 4
  %cmp273 = icmp sgt i32 %224, %225
  br i1 %cmp273, label %if.then.279, label %lor.lhs.false.274

lor.lhs.false.274:                                ; preds = %if.end.269
  %226 = load i32, i32* %edge, align 4
  %idxprom275 = sext i32 %226 to i64
  %227 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx276 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %227, i64 %idxprom275
  %end277 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx276, i32 0, i32 2
  %228 = load i32, i32* %end277, align 4
  %229 = load i32, i32* %t, align 4
  %cmp278 = icmp slt i32 %228, %229
  br i1 %cmp278, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %lor.lhs.false.274, %if.end.269
  br label %for.inc.281

if.end.280:                                       ; preds = %lor.lhs.false.274
  br label %for.end.283

for.inc.281:                                      ; preds = %if.then.279, %if.then.268, %if.then.261
  %230 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %prev282 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %230, i32 0, i32 1
  %231 = load %struct.dlink1*, %struct.dlink1** %prev282, align 8
  store %struct.dlink1* %231, %struct.dlink1** %vptr, align 8
  br label %for.cond.257

for.end.283:                                      ; preds = %if.end.280, %for.cond.257
  %232 = load i32, i32* %el, align 4
  %233 = load i32, i32* %edge, align 4
  %idxprom284 = sext i32 %233 to i64
  %234 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx285 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %234, i64 %idxprom284
  %loc286 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx285, i32 0, i32 3
  %235 = load i32, i32* %loc286, align 4
  %sub = sub nsw i32 %232, %235
  %236 = load i32, i32* %el, align 4
  %237 = load i32, i32* %edge, align 4
  %idxprom287 = sext i32 %237 to i64
  %238 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx288 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %238, i64 %idxprom287
  %loc289 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx288, i32 0, i32 3
  %239 = load i32, i32* %loc289, align 4
  %sub290 = sub nsw i32 %236, %239
  %div291 = sdiv i32 %sub290, 2
  %sub292 = sub nsw i32 %sub, %div291
  %240 = load i32, i32* %el, align 4
  %sub293 = sub nsw i32 %240, %sub292
  store i32 %sub293, i32* %el, align 4
  br label %if.end.294

if.end.294:                                       ; preds = %for.end.283, %if.end.230
  %241 = load i32, i32* %edge2, align 4
  %idxprom295 = sext i32 %241 to i64
  %242 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx296 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %242, i64 %idxprom295
  %fixed297 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx296, i32 0, i32 6
  %243 = load i32, i32* %fixed297, align 4
  %cmp298 = icmp eq i32 %243, 0
  br i1 %cmp298, label %if.then.299, label %if.end.336

if.then.299:                                      ; preds = %if.end.294
  %244 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %245 = load i32, i32* %er, align 4
  %call300 = call i32 @tprop(%struct.tnode* %244, i32 %245)
  %idxprom301 = sext i32 %call300 to i64
  %246 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx302 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %246, i64 %idxprom301
  %247 = load %struct.dlink1*, %struct.dlink1** %arrayidx302, align 8
  store %struct.dlink1* %247, %struct.dlink1** %vptr, align 8
  br label %for.cond.303

for.cond.303:                                     ; preds = %for.inc.327, %if.then.299
  %248 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %cmp304 = icmp ne %struct.dlink1* %248, null
  br i1 %cmp304, label %for.body.305, label %for.end.329

for.body.305:                                     ; preds = %for.cond.303
  %249 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %250 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %cmp306 = icmp eq %struct.dlink1* %249, %250
  br i1 %cmp306, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %for.body.305
  br label %for.inc.327

if.end.308:                                       ; preds = %for.body.305
  %251 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %edge309 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %251, i32 0, i32 0
  %252 = load i32, i32* %edge309, align 4
  store i32 %252, i32* %edge, align 4
  %253 = load i32, i32* %edge, align 4
  %idxprom310 = sext i32 %253 to i64
  %254 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx311 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %254, i64 %idxprom310
  %UorR312 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx311, i32 0, i32 5
  %255 = load i32, i32* %UorR312, align 4
  %cmp313 = icmp sgt i32 %255, 0
  br i1 %cmp313, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.end.308
  br label %for.inc.327

if.end.315:                                       ; preds = %if.end.308
  %256 = load i32, i32* %edge, align 4
  %idxprom316 = sext i32 %256 to i64
  %257 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx317 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %257, i64 %idxprom316
  %start318 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx317, i32 0, i32 1
  %258 = load i32, i32* %start318, align 4
  %259 = load i32, i32* %b, align 4
  %cmp319 = icmp sgt i32 %258, %259
  br i1 %cmp319, label %if.then.325, label %lor.lhs.false.320

lor.lhs.false.320:                                ; preds = %if.end.315
  %260 = load i32, i32* %edge, align 4
  %idxprom321 = sext i32 %260 to i64
  %261 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx322 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %261, i64 %idxprom321
  %end323 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx322, i32 0, i32 2
  %262 = load i32, i32* %end323, align 4
  %263 = load i32, i32* %t, align 4
  %cmp324 = icmp slt i32 %262, %263
  br i1 %cmp324, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %lor.lhs.false.320, %if.end.315
  br label %for.inc.327

if.end.326:                                       ; preds = %lor.lhs.false.320
  br label %for.end.329

for.inc.327:                                      ; preds = %if.then.325, %if.then.314, %if.then.307
  %264 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %next328 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %264, i32 0, i32 2
  %265 = load %struct.dlink1*, %struct.dlink1** %next328, align 8
  store %struct.dlink1* %265, %struct.dlink1** %vptr, align 8
  br label %for.cond.303

for.end.329:                                      ; preds = %if.end.326, %for.cond.303
  %266 = load i32, i32* %edge, align 4
  %idxprom330 = sext i32 %266 to i64
  %267 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx331 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %267, i64 %idxprom330
  %loc332 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx331, i32 0, i32 3
  %268 = load i32, i32* %loc332, align 4
  %269 = load i32, i32* %er, align 4
  %sub333 = sub nsw i32 %268, %269
  %div334 = sdiv i32 %sub333, 2
  %270 = load i32, i32* %er, align 4
  %add335 = add nsw i32 %270, %div334
  store i32 %add335, i32* %er, align 4
  br label %if.end.336

if.end.336:                                       ; preds = %for.end.329, %if.end.294
  %271 = load i32, i32* @eNum, align 4
  %inc = add nsw i32 %271, 1
  store i32 %inc, i32* @eNum, align 4
  %rem = srem i32 %inc, 100
  %cmp337 = icmp eq i32 %rem, 0
  br i1 %cmp337, label %if.then.338, label %if.end.341

if.then.338:                                      ; preds = %if.end.336
  %272 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %273 = bitcast %struct.ebox* %272 to i8*
  %274 = load i32, i32* @eNum, align 4
  %add339 = add nsw i32 %274, 100
  %conv = sext i32 %add339 to i64
  %mul = mul i64 %conv, 56
  %call340 = call i8* @realloc(i8* %273, i64 %mul) #3
  %275 = bitcast i8* %call340 to %struct.ebox*
  store %struct.ebox* %275, %struct.ebox** @eArray, align 8
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.338, %if.end.336
  %276 = load i32, i32* %index1.addr, align 4
  %277 = load i32, i32* @eNum, align 4
  %idxprom342 = sext i32 %277 to i64
  %278 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx343 = getelementptr inbounds %struct.ebox, %struct.ebox* %278, i64 %idxprom342
  %index1344 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx343, i32 0, i32 0
  store i32 %276, i32* %index1344, align 4
  %279 = load i32, i32* %index2.addr, align 4
  %280 = load i32, i32* @eNum, align 4
  %idxprom345 = sext i32 %280 to i64
  %281 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx346 = getelementptr inbounds %struct.ebox, %struct.ebox* %281, i64 %idxprom345
  %index2347 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx346, i32 0, i32 1
  store i32 %279, i32* %index2347, align 4
  %282 = load i32, i32* %er, align 4
  %283 = load i32, i32* %el, align 4
  %sub348 = sub nsw i32 %282, %283
  %284 = load i32, i32* @eNum, align 4
  %idxprom349 = sext i32 %284 to i64
  %285 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx350 = getelementptr inbounds %struct.ebox, %struct.ebox* %285, i64 %idxprom349
  %width = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx350, i32 0, i32 2
  store i32 %sub348, i32* %width, align 4
  %286 = load i32, i32* %el, align 4
  %287 = load i32, i32* @eNum, align 4
  %idxprom351 = sext i32 %287 to i64
  %288 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx352 = getelementptr inbounds %struct.ebox, %struct.ebox* %288, i64 %idxprom351
  %lbside = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx352, i32 0, i32 3
  store i32 %286, i32* %lbside, align 4
  %289 = load i32, i32* %er, align 4
  %290 = load i32, i32* @eNum, align 4
  %idxprom353 = sext i32 %290 to i64
  %291 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx354 = getelementptr inbounds %struct.ebox, %struct.ebox* %291, i64 %idxprom353
  %rtside = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx354, i32 0, i32 4
  store i32 %289, i32* %rtside, align 4
  %292 = load i32, i32* %edge1, align 4
  %293 = load i32, i32* @eNum, align 4
  %idxprom355 = sext i32 %293 to i64
  %294 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx356 = getelementptr inbounds %struct.ebox, %struct.ebox* %294, i64 %idxprom355
  %edge1357 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx356, i32 0, i32 8
  store i32 %292, i32* %edge1357, align 4
  %295 = load i32, i32* %edge2, align 4
  %296 = load i32, i32* @eNum, align 4
  %idxprom358 = sext i32 %296 to i64
  %297 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx359 = getelementptr inbounds %struct.ebox, %struct.ebox* %297, i64 %idxprom358
  %edge2360 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx359, i32 0, i32 9
  store i32 %295, i32* %edge2360, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.341, %if.then.81, %if.then.48
  %298 = load i32, i32* %retval
  ret i32 %298
}

; Function Attrs: nounwind uwtable
define i32 @constructHedge(i32 %index1, i32 %index2) #0 {
entry:
  %retval = alloca i32, align 4
  %index1.addr = alloca i32, align 4
  %index2.addr = alloca i32, align 4
  %h1ptr = alloca %struct.dlink1*, align 8
  %h2ptr = alloca %struct.dlink1*, align 8
  %hptr = alloca %struct.dlink1*, align 8
  %b1 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %b = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %t = alloca i32, align 4
  %edge1 = alloca i32, align 4
  %edge2 = alloca i32, align 4
  %eb = alloca i32, align 4
  %et = alloca i32, align 4
  %el = alloca i32, align 4
  %er = alloca i32, align 4
  %el1 = alloca i32, align 4
  %er1 = alloca i32, align 4
  %el2 = alloca i32, align 4
  %er2 = alloca i32, align 4
  %edge = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %index1, i32* %index1.addr, align 4
  store i32 %index2, i32* %index2.addr, align 4
  %0 = load i32, i32* %index1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx = getelementptr inbounds %struct.rect, %struct.rect* %1, i64 %idxprom
  %b3 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx, i32 0, i32 6
  %2 = load i32, i32* %b3, align 4
  store i32 %2, i32* %b1, align 4
  %3 = load i32, i32* %index1.addr, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx5 = getelementptr inbounds %struct.rect, %struct.rect* %4, i64 %idxprom4
  %t6 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx5, i32 0, i32 7
  %5 = load i32, i32* %t6, align 4
  store i32 %5, i32* %t1, align 4
  %6 = load i32, i32* %index2.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %7 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx8 = getelementptr inbounds %struct.rect, %struct.rect* %7, i64 %idxprom7
  %b9 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx8, i32 0, i32 6
  %8 = load i32, i32* %b9, align 4
  store i32 %8, i32* %b2, align 4
  %9 = load i32, i32* %index2.addr, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx11 = getelementptr inbounds %struct.rect, %struct.rect* %10, i64 %idxprom10
  %t12 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx11, i32 0, i32 7
  %11 = load i32, i32* %t12, align 4
  store i32 %11, i32* %t2, align 4
  %12 = load i32, i32* %b1, align 4
  %13 = load i32, i32* %b2, align 4
  %cmp = icmp sge i32 %12, %13
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load i32, i32* %b1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %b2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %b, align 4
  %16 = load i32, i32* %t1, align 4
  %17 = load i32, i32* %t2, align 4
  %cmp13 = icmp sle i32 %16, %17
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end
  %18 = load i32, i32* %t1, align 4
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  %19 = load i32, i32* %t2, align 4
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i32 [ %18, %cond.true.14 ], [ %19, %cond.false.15 ]
  store i32 %cond17, i32* %t, align 4
  %20 = load i32, i32* %index1.addr, align 4
  %idxprom18 = sext i32 %20 to i64
  %21 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx19 = getelementptr inbounds %struct.rect, %struct.rect* %21, i64 %idxprom18
  %r20 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx19, i32 0, i32 5
  %22 = load i32, i32* %r20, align 4
  store i32 %22, i32* %l, align 4
  %23 = load i32, i32* %index2.addr, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx22 = getelementptr inbounds %struct.rect, %struct.rect* %24, i64 %idxprom21
  %l23 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx22, i32 0, i32 4
  %25 = load i32, i32* %l23, align 4
  store i32 %25, i32* %r, align 4
  store i32 -1000000, i32* %eb, align 4
  %26 = load %struct.tnode*, %struct.tnode** @HRroot, align 8
  %27 = load i32, i32* %b, align 4
  %call = call i32 @tprop(%struct.tnode* %26, i32 %27)
  %idxprom24 = sext i32 %call to i64
  %28 = load %struct.dlink1**, %struct.dlink1*** @HRptrs, align 8
  %arrayidx25 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %28, i64 %idxprom24
  %29 = load %struct.dlink1*, %struct.dlink1** %arrayidx25, align 8
  store %struct.dlink1* %29, %struct.dlink1** %h1ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.16
  %30 = load %struct.dlink1*, %struct.dlink1** %h1ptr, align 8
  %cmp26 = icmp ne %struct.dlink1* %30, null
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct.dlink1*, %struct.dlink1** %h1ptr, align 8
  %edge27 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %31, i32 0, i32 0
  %32 = load i32, i32* %edge27, align 4
  store i32 %32, i32* %edge1, align 4
  %33 = load i32, i32* %edge1, align 4
  %idxprom28 = sext i32 %33 to i64
  %34 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx29 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %34, i64 %idxprom28
  %loc = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx29, i32 0, i32 3
  %35 = load i32, i32* %loc, align 4
  %36 = load i32, i32* %t, align 4
  %cmp30 = icmp sgt i32 %35, %36
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %37 = load i32, i32* %edge1, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx32 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %38, i64 %idxprom31
  %UorR = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx32, i32 0, i32 5
  %39 = load i32, i32* %UorR, align 4
  %cmp33 = icmp slt i32 %39, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end
  br label %for.inc

if.end.35:                                        ; preds = %if.end
  %40 = load i32, i32* %edge1, align 4
  %idxprom36 = sext i32 %40 to i64
  %41 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx37 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %41, i64 %idxprom36
  %start = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx37, i32 0, i32 1
  %42 = load i32, i32* %start, align 4
  %43 = load i32, i32* %l, align 4
  %cmp38 = icmp sgt i32 %42, %43
  br i1 %cmp38, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.35
  %44 = load i32, i32* %edge1, align 4
  %idxprom39 = sext i32 %44 to i64
  %45 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx40 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %45, i64 %idxprom39
  %end = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx40, i32 0, i32 2
  %46 = load i32, i32* %end, align 4
  %47 = load i32, i32* %r, align 4
  %cmp41 = icmp slt i32 %46, %47
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false, %if.end.35
  br label %for.inc

if.end.43:                                        ; preds = %lor.lhs.false
  %48 = load i32, i32* %edge1, align 4
  %idxprom44 = sext i32 %48 to i64
  %49 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx45 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %49, i64 %idxprom44
  %loc46 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx45, i32 0, i32 3
  %50 = load i32, i32* %loc46, align 4
  store i32 %50, i32* %eb, align 4
  %51 = load %struct.dlink1*, %struct.dlink1** %h1ptr, align 8
  store %struct.dlink1* %51, %struct.dlink1** %hptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.43, %if.then.42, %if.then.34
  %52 = load %struct.dlink1*, %struct.dlink1** %h1ptr, align 8
  %next = getelementptr inbounds %struct.dlink1, %struct.dlink1* %52, i32 0, i32 2
  %53 = load %struct.dlink1*, %struct.dlink1** %next, align 8
  store %struct.dlink1* %53, %struct.dlink1** %h1ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %54 = load i32, i32* %eb, align 4
  %cmp47 = icmp eq i32 %54, -1000000
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %for.end
  %55 = load %struct.tnode*, %struct.tnode** @Hroot, align 8
  %56 = load i32, i32* %eb, align 4
  %call50 = call i32 @tprop(%struct.tnode* %55, i32 %56)
  %idxprom51 = sext i32 %call50 to i64
  %57 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %arrayidx52 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %57, i64 %idxprom51
  %58 = load %struct.dlink1*, %struct.dlink1** %arrayidx52, align 8
  store %struct.dlink1* %58, %struct.dlink1** %h2ptr, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.77, %if.end.49
  %59 = load %struct.dlink1*, %struct.dlink1** %h2ptr, align 8
  %cmp54 = icmp ne %struct.dlink1* %59, null
  br i1 %cmp54, label %for.body.55, label %for.end.79

for.body.55:                                      ; preds = %for.cond.53
  %60 = load %struct.dlink1*, %struct.dlink1** %h2ptr, align 8
  %edge56 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %60, i32 0, i32 0
  %61 = load i32, i32* %edge56, align 4
  store i32 %61, i32* %edge2, align 4
  %62 = load i32, i32* %edge2, align 4
  %idxprom57 = sext i32 %62 to i64
  %63 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx58 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %63, i64 %idxprom57
  %UorR59 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx58, i32 0, i32 5
  %64 = load i32, i32* %UorR59, align 4
  %cmp60 = icmp sgt i32 %64, 0
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.body.55
  br label %for.inc.77

if.end.62:                                        ; preds = %for.body.55
  %65 = load i32, i32* %edge2, align 4
  %idxprom63 = sext i32 %65 to i64
  %66 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx64 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %66, i64 %idxprom63
  %start65 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx64, i32 0, i32 1
  %67 = load i32, i32* %start65, align 4
  %68 = load i32, i32* %l, align 4
  %cmp66 = icmp sgt i32 %67, %68
  br i1 %cmp66, label %if.then.72, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %if.end.62
  %69 = load i32, i32* %edge2, align 4
  %idxprom68 = sext i32 %69 to i64
  %70 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx69 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %70, i64 %idxprom68
  %end70 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx69, i32 0, i32 2
  %71 = load i32, i32* %end70, align 4
  %72 = load i32, i32* %r, align 4
  %cmp71 = icmp slt i32 %71, %72
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false.67, %if.end.62
  br label %for.inc.77

if.end.73:                                        ; preds = %lor.lhs.false.67
  %73 = load i32, i32* %edge2, align 4
  %idxprom74 = sext i32 %73 to i64
  %74 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx75 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %74, i64 %idxprom74
  %loc76 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx75, i32 0, i32 3
  %75 = load i32, i32* %loc76, align 4
  store i32 %75, i32* %et, align 4
  br label %for.end.79

for.inc.77:                                       ; preds = %if.then.72, %if.then.61
  %76 = load %struct.dlink1*, %struct.dlink1** %h2ptr, align 8
  %next78 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %76, i32 0, i32 2
  %77 = load %struct.dlink1*, %struct.dlink1** %next78, align 8
  store %struct.dlink1* %77, %struct.dlink1** %h2ptr, align 8
  br label %for.cond.53

for.end.79:                                       ; preds = %if.end.73, %for.cond.53
  %78 = load i32, i32* %et, align 4
  %79 = load i32, i32* %t, align 4
  %cmp80 = icmp sgt i32 %78, %79
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %for.end.79
  store i32 0, i32* %retval
  br label %return

if.end.82:                                        ; preds = %for.end.79
  %80 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  store %struct.dlink1* %80, %struct.dlink1** %h1ptr, align 8
  %81 = load %struct.dlink1*, %struct.dlink1** %h1ptr, align 8
  %edge83 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %81, i32 0, i32 0
  %82 = load i32, i32* %edge83, align 4
  store i32 %82, i32* %edge1, align 4
  %83 = load i32, i32* %edge1, align 4
  %idxprom84 = sext i32 %83 to i64
  %84 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx85 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %84, i64 %idxprom84
  %end86 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx85, i32 0, i32 2
  %85 = load i32, i32* %end86, align 4
  store i32 %85, i32* %er1, align 4
  %86 = load i32, i32* %edge1, align 4
  %idxprom87 = sext i32 %86 to i64
  %87 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx88 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %87, i64 %idxprom87
  %start89 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx88, i32 0, i32 1
  %88 = load i32, i32* %start89, align 4
  store i32 %88, i32* %el1, align 4
  %89 = load i32, i32* %edge2, align 4
  %idxprom90 = sext i32 %89 to i64
  %90 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx91 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %90, i64 %idxprom90
  %end92 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx91, i32 0, i32 2
  %91 = load i32, i32* %end92, align 4
  store i32 %91, i32* %er2, align 4
  %92 = load i32, i32* %edge2, align 4
  %idxprom93 = sext i32 %92 to i64
  %93 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx94 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %93, i64 %idxprom93
  %start95 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx94, i32 0, i32 1
  %94 = load i32, i32* %start95, align 4
  store i32 %94, i32* %el2, align 4
  %95 = load i32, i32* %edge1, align 4
  %idxprom96 = sext i32 %95 to i64
  %96 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx97 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %96, i64 %idxprom96
  %fixed = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx97, i32 0, i32 6
  %97 = load i32, i32* %fixed, align 4
  %cmp98 = icmp eq i32 %97, 1
  br i1 %cmp98, label %land.lhs.true, label %if.else.138

land.lhs.true:                                    ; preds = %if.end.82
  %98 = load i32, i32* %edge2, align 4
  %idxprom99 = sext i32 %98 to i64
  %99 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx100 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %99, i64 %idxprom99
  %fixed101 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx100, i32 0, i32 6
  %100 = load i32, i32* %fixed101, align 4
  %cmp102 = icmp eq i32 %100, 1
  br i1 %cmp102, label %if.then.103, label %if.else.138

if.then.103:                                      ; preds = %land.lhs.true
  %101 = load i32, i32* %edge1, align 4
  %idxprom104 = sext i32 %101 to i64
  %102 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx105 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %102, i64 %idxprom104
  %cell = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx105, i32 0, i32 0
  %103 = load i32, i32* %cell, align 4
  %cmp106 = icmp sgt i32 %103, 0
  br i1 %cmp106, label %land.lhs.true.107, label %if.else

land.lhs.true.107:                                ; preds = %if.then.103
  %104 = load i32, i32* %edge2, align 4
  %idxprom108 = sext i32 %104 to i64
  %105 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx109 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %105, i64 %idxprom108
  %cell110 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx109, i32 0, i32 0
  %106 = load i32, i32* %cell110, align 4
  %cmp111 = icmp sgt i32 %106, 0
  br i1 %cmp111, label %if.then.112, label %if.else

if.then.112:                                      ; preds = %land.lhs.true.107
  %107 = load i32, i32* %er1, align 4
  %108 = load i32, i32* %er2, align 4
  %cmp113 = icmp sge i32 %107, %108
  br i1 %cmp113, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %if.then.112
  %109 = load i32, i32* %er1, align 4
  br label %cond.end.116

cond.false.115:                                   ; preds = %if.then.112
  %110 = load i32, i32* %er2, align 4
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.114
  %cond117 = phi i32 [ %109, %cond.true.114 ], [ %110, %cond.false.115 ]
  store i32 %cond117, i32* %er, align 4
  %111 = load i32, i32* %el1, align 4
  %112 = load i32, i32* %el2, align 4
  %cmp118 = icmp sle i32 %111, %112
  br i1 %cmp118, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %cond.end.116
  %113 = load i32, i32* %el1, align 4
  br label %cond.end.121

cond.false.120:                                   ; preds = %cond.end.116
  %114 = load i32, i32* %el2, align 4
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.120, %cond.true.119
  %cond122 = phi i32 [ %113, %cond.true.119 ], [ %114, %cond.false.120 ]
  store i32 %cond122, i32* %el, align 4
  br label %if.end.137

if.else:                                          ; preds = %land.lhs.true.107, %if.then.103
  %115 = load i32, i32* %edge1, align 4
  %idxprom123 = sext i32 %115 to i64
  %116 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx124 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %116, i64 %idxprom123
  %cell125 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx124, i32 0, i32 0
  %117 = load i32, i32* %cell125, align 4
  %cmp126 = icmp sgt i32 %117, 0
  br i1 %cmp126, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %if.else
  %118 = load i32, i32* %er1, align 4
  store i32 %118, i32* %er, align 4
  %119 = load i32, i32* %el1, align 4
  store i32 %119, i32* %el, align 4
  br label %if.end.136

if.else.128:                                      ; preds = %if.else
  %120 = load i32, i32* %edge2, align 4
  %idxprom129 = sext i32 %120 to i64
  %121 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx130 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %121, i64 %idxprom129
  %cell131 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx130, i32 0, i32 0
  %122 = load i32, i32* %cell131, align 4
  %cmp132 = icmp sgt i32 %122, 0
  br i1 %cmp132, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %if.else.128
  %123 = load i32, i32* %er2, align 4
  store i32 %123, i32* %er, align 4
  %124 = load i32, i32* %el2, align 4
  store i32 %124, i32* %el, align 4
  br label %if.end.135

if.else.134:                                      ; preds = %if.else.128
  store i32 1000000, i32* %er, align 4
  store i32 -1000000, i32* %el, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.134, %if.then.133
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.127
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %cond.end.121
  br label %if.end.167

if.else.138:                                      ; preds = %land.lhs.true, %if.end.82
  %125 = load i32, i32* %edge1, align 4
  %idxprom139 = sext i32 %125 to i64
  %126 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx140 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %126, i64 %idxprom139
  %fixed141 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx140, i32 0, i32 6
  %127 = load i32, i32* %fixed141, align 4
  %cmp142 = icmp eq i32 %127, 1
  br i1 %cmp142, label %if.then.143, label %if.else.151

if.then.143:                                      ; preds = %if.else.138
  %128 = load i32, i32* %edge1, align 4
  %idxprom144 = sext i32 %128 to i64
  %129 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx145 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %129, i64 %idxprom144
  %cell146 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx145, i32 0, i32 0
  %130 = load i32, i32* %cell146, align 4
  %cmp147 = icmp sgt i32 %130, 0
  br i1 %cmp147, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %if.then.143
  %131 = load i32, i32* %er1, align 4
  store i32 %131, i32* %er, align 4
  %132 = load i32, i32* %el1, align 4
  store i32 %132, i32* %el, align 4
  br label %if.end.150

if.else.149:                                      ; preds = %if.then.143
  store i32 1000000, i32* %er, align 4
  store i32 -1000000, i32* %el, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.149, %if.then.148
  br label %if.end.166

if.else.151:                                      ; preds = %if.else.138
  %133 = load i32, i32* %edge2, align 4
  %idxprom152 = sext i32 %133 to i64
  %134 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx153 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %134, i64 %idxprom152
  %fixed154 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx153, i32 0, i32 6
  %135 = load i32, i32* %fixed154, align 4
  %cmp155 = icmp eq i32 %135, 1
  br i1 %cmp155, label %if.then.156, label %if.else.164

if.then.156:                                      ; preds = %if.else.151
  %136 = load i32, i32* %edge2, align 4
  %idxprom157 = sext i32 %136 to i64
  %137 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx158 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %137, i64 %idxprom157
  %cell159 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx158, i32 0, i32 0
  %138 = load i32, i32* %cell159, align 4
  %cmp160 = icmp sgt i32 %138, 0
  br i1 %cmp160, label %if.then.161, label %if.else.162

if.then.161:                                      ; preds = %if.then.156
  %139 = load i32, i32* %er2, align 4
  store i32 %139, i32* %er, align 4
  %140 = load i32, i32* %el2, align 4
  store i32 %140, i32* %el, align 4
  br label %if.end.163

if.else.162:                                      ; preds = %if.then.156
  store i32 1000000, i32* %er, align 4
  store i32 -1000000, i32* %el, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.162, %if.then.161
  br label %if.end.165

if.else.164:                                      ; preds = %if.else.151
  store i32 1000000, i32* %er, align 4
  store i32 -1000000, i32* %el, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.164, %if.end.163
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.150
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.137
  %141 = load i32, i32* %er, align 4
  %142 = load i32, i32* %index2.addr, align 4
  %idxprom168 = sext i32 %142 to i64
  %143 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx169 = getelementptr inbounds %struct.rect, %struct.rect* %143, i64 %idxprom168
  %r170 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx169, i32 0, i32 5
  %144 = load i32, i32* %r170, align 4
  %cmp171 = icmp sgt i32 %141, %144
  br i1 %cmp171, label %if.end.183, label %if.then.172

if.then.172:                                      ; preds = %if.end.167
  %145 = load i32, i32* %index2.addr, align 4
  %idxprom173 = sext i32 %145 to i64
  %146 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx174 = getelementptr inbounds %struct.rect, %struct.rect* %146, i64 %idxprom173
  %xc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx174, i32 0, i32 0
  %147 = load i32, i32* %xc, align 4
  %148 = load i32, i32* %er, align 4
  %cmp175 = icmp slt i32 %147, %148
  br i1 %cmp175, label %if.then.176, label %if.end.182

if.then.176:                                      ; preds = %if.then.172
  %149 = load i32, i32* %er, align 4
  %150 = load i32, i32* %index2.addr, align 4
  %idxprom177 = sext i32 %150 to i64
  %151 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx178 = getelementptr inbounds %struct.rect, %struct.rect* %151, i64 %idxprom177
  %xc179 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx178, i32 0, i32 0
  store i32 %149, i32* %xc179, align 4
  %152 = load i32, i32* %index2.addr, align 4
  %idxprom180 = sext i32 %152 to i64
  %153 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx181 = getelementptr inbounds %struct.rect, %struct.rect* %153, i64 %idxprom180
  %xreset = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx181, i32 0, i32 2
  store i32 2, i32* %xreset, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.176, %if.then.172
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.end.167
  %154 = load i32, i32* %el, align 4
  %155 = load i32, i32* %index1.addr, align 4
  %idxprom184 = sext i32 %155 to i64
  %156 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx185 = getelementptr inbounds %struct.rect, %struct.rect* %156, i64 %idxprom184
  %l186 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx185, i32 0, i32 4
  %157 = load i32, i32* %l186, align 4
  %cmp187 = icmp slt i32 %154, %157
  br i1 %cmp187, label %if.end.201, label %if.then.188

if.then.188:                                      ; preds = %if.end.183
  %158 = load i32, i32* %index1.addr, align 4
  %idxprom189 = sext i32 %158 to i64
  %159 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx190 = getelementptr inbounds %struct.rect, %struct.rect* %159, i64 %idxprom189
  %xc191 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx190, i32 0, i32 0
  %160 = load i32, i32* %xc191, align 4
  %161 = load i32, i32* %el, align 4
  %cmp192 = icmp sgt i32 %160, %161
  br i1 %cmp192, label %if.then.193, label %if.end.200

if.then.193:                                      ; preds = %if.then.188
  %162 = load i32, i32* %el, align 4
  %163 = load i32, i32* %index1.addr, align 4
  %idxprom194 = sext i32 %163 to i64
  %164 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx195 = getelementptr inbounds %struct.rect, %struct.rect* %164, i64 %idxprom194
  %xc196 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx195, i32 0, i32 0
  store i32 %162, i32* %xc196, align 4
  %165 = load i32, i32* %index1.addr, align 4
  %idxprom197 = sext i32 %165 to i64
  %166 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx198 = getelementptr inbounds %struct.rect, %struct.rect* %166, i64 %idxprom197
  %xreset199 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx198, i32 0, i32 2
  store i32 1, i32* %xreset199, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.193, %if.then.188
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.183
  %167 = load i32, i32* %index1.addr, align 4
  %idxprom202 = sext i32 %167 to i64
  %168 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx203 = getelementptr inbounds %struct.rect, %struct.rect* %168, i64 %idxprom202
  %yc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx203, i32 0, i32 1
  %169 = load i32, i32* %yc, align 4
  %170 = load i32, i32* %eb, align 4
  %cmp204 = icmp slt i32 %169, %170
  br i1 %cmp204, label %if.then.210, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %if.end.201
  %171 = load i32, i32* %index1.addr, align 4
  %idxprom206 = sext i32 %171 to i64
  %172 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx207 = getelementptr inbounds %struct.rect, %struct.rect* %172, i64 %idxprom206
  %yc208 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx207, i32 0, i32 1
  %173 = load i32, i32* %yc208, align 4
  %174 = load i32, i32* %et, align 4
  %cmp209 = icmp sgt i32 %173, %174
  br i1 %cmp209, label %if.then.210, label %if.end.214

if.then.210:                                      ; preds = %lor.lhs.false.205, %if.end.201
  %175 = load i32, i32* %eb, align 4
  %176 = load i32, i32* %et, align 4
  %add = add nsw i32 %175, %176
  %div = sdiv i32 %add, 2
  %177 = load i32, i32* %index1.addr, align 4
  %idxprom211 = sext i32 %177 to i64
  %178 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx212 = getelementptr inbounds %struct.rect, %struct.rect* %178, i64 %idxprom211
  %yc213 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx212, i32 0, i32 1
  store i32 %div, i32* %yc213, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.210, %lor.lhs.false.205
  %179 = load i32, i32* %index2.addr, align 4
  %idxprom215 = sext i32 %179 to i64
  %180 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx216 = getelementptr inbounds %struct.rect, %struct.rect* %180, i64 %idxprom215
  %yc217 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx216, i32 0, i32 1
  %181 = load i32, i32* %yc217, align 4
  %182 = load i32, i32* %eb, align 4
  %cmp218 = icmp slt i32 %181, %182
  br i1 %cmp218, label %if.then.224, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %if.end.214
  %183 = load i32, i32* %index2.addr, align 4
  %idxprom220 = sext i32 %183 to i64
  %184 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx221 = getelementptr inbounds %struct.rect, %struct.rect* %184, i64 %idxprom220
  %yc222 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx221, i32 0, i32 1
  %185 = load i32, i32* %yc222, align 4
  %186 = load i32, i32* %et, align 4
  %cmp223 = icmp sgt i32 %185, %186
  br i1 %cmp223, label %if.then.224, label %if.end.230

if.then.224:                                      ; preds = %lor.lhs.false.219, %if.end.214
  %187 = load i32, i32* %eb, align 4
  %188 = load i32, i32* %et, align 4
  %add225 = add nsw i32 %187, %188
  %div226 = sdiv i32 %add225, 2
  %189 = load i32, i32* %index2.addr, align 4
  %idxprom227 = sext i32 %189 to i64
  %190 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx228 = getelementptr inbounds %struct.rect, %struct.rect* %190, i64 %idxprom227
  %yc229 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx228, i32 0, i32 1
  store i32 %div226, i32* %yc229, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.224, %lor.lhs.false.219
  %191 = load i32, i32* %edge1, align 4
  %idxprom231 = sext i32 %191 to i64
  %192 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx232 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %192, i64 %idxprom231
  %fixed233 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx232, i32 0, i32 6
  %193 = load i32, i32* %fixed233, align 4
  %cmp234 = icmp eq i32 %193, 0
  br i1 %cmp234, label %if.then.235, label %if.end.294

if.then.235:                                      ; preds = %if.end.230
  %194 = load %struct.tnode*, %struct.tnode** @Hroot, align 8
  %195 = load i32, i32* %eb, align 4
  %call236 = call i32 @tprop(%struct.tnode* %194, i32 %195)
  %idxprom237 = sext i32 %call236 to i64
  %196 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %arrayidx238 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %196, i64 %idxprom237
  %197 = load %struct.dlink1*, %struct.dlink1** %arrayidx238, align 8
  store %struct.dlink1* %197, %struct.dlink1** %hptr, align 8
  %198 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %edge239 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %198, i32 0, i32 0
  %199 = load i32, i32* %edge239, align 4
  %idxprom240 = sext i32 %199 to i64
  %200 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx241 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %200, i64 %idxprom240
  %loc242 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx241, i32 0, i32 3
  %201 = load i32, i32* %loc242, align 4
  store i32 %201, i32* %x, align 4
  %202 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %next243 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %202, i32 0, i32 2
  %203 = load %struct.dlink1*, %struct.dlink1** %next243, align 8
  store %struct.dlink1* %203, %struct.dlink1** %hptr, align 8
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.254, %if.then.235
  %204 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %cmp245 = icmp ne %struct.dlink1* %204, null
  br i1 %cmp245, label %for.body.246, label %for.end.256

for.body.246:                                     ; preds = %for.cond.244
  %205 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %edge247 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %205, i32 0, i32 0
  %206 = load i32, i32* %edge247, align 4
  %idxprom248 = sext i32 %206 to i64
  %207 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx249 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %207, i64 %idxprom248
  %loc250 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx249, i32 0, i32 3
  %208 = load i32, i32* %loc250, align 4
  %209 = load i32, i32* %x, align 4
  %cmp251 = icmp sgt i32 %208, %209
  br i1 %cmp251, label %if.then.252, label %if.end.253

if.then.252:                                      ; preds = %for.body.246
  br label %for.end.256

if.end.253:                                       ; preds = %for.body.246
  br label %for.inc.254

for.inc.254:                                      ; preds = %if.end.253
  %210 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %next255 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %210, i32 0, i32 2
  %211 = load %struct.dlink1*, %struct.dlink1** %next255, align 8
  store %struct.dlink1* %211, %struct.dlink1** %hptr, align 8
  br label %for.cond.244

for.end.256:                                      ; preds = %if.then.252, %for.cond.244
  %212 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %prev = getelementptr inbounds %struct.dlink1, %struct.dlink1* %212, i32 0, i32 1
  %213 = load %struct.dlink1*, %struct.dlink1** %prev, align 8
  store %struct.dlink1* %213, %struct.dlink1** %hptr, align 8
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.281, %for.end.256
  %214 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %cmp258 = icmp ne %struct.dlink1* %214, null
  br i1 %cmp258, label %for.body.259, label %for.end.283

for.body.259:                                     ; preds = %for.cond.257
  %215 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %216 = load %struct.dlink1*, %struct.dlink1** %h2ptr, align 8
  %cmp260 = icmp eq %struct.dlink1* %215, %216
  br i1 %cmp260, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %for.body.259
  br label %for.inc.281

if.end.262:                                       ; preds = %for.body.259
  %217 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %edge263 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %217, i32 0, i32 0
  %218 = load i32, i32* %edge263, align 4
  store i32 %218, i32* %edge, align 4
  %219 = load i32, i32* %edge, align 4
  %idxprom264 = sext i32 %219 to i64
  %220 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx265 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %220, i64 %idxprom264
  %UorR266 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx265, i32 0, i32 5
  %221 = load i32, i32* %UorR266, align 4
  %cmp267 = icmp sgt i32 %221, 0
  br i1 %cmp267, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %if.end.262
  br label %for.inc.281

if.end.269:                                       ; preds = %if.end.262
  %222 = load i32, i32* %edge, align 4
  %idxprom270 = sext i32 %222 to i64
  %223 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx271 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %223, i64 %idxprom270
  %start272 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx271, i32 0, i32 1
  %224 = load i32, i32* %start272, align 4
  %225 = load i32, i32* %l, align 4
  %cmp273 = icmp sgt i32 %224, %225
  br i1 %cmp273, label %if.then.279, label %lor.lhs.false.274

lor.lhs.false.274:                                ; preds = %if.end.269
  %226 = load i32, i32* %edge, align 4
  %idxprom275 = sext i32 %226 to i64
  %227 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx276 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %227, i64 %idxprom275
  %end277 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx276, i32 0, i32 2
  %228 = load i32, i32* %end277, align 4
  %229 = load i32, i32* %r, align 4
  %cmp278 = icmp slt i32 %228, %229
  br i1 %cmp278, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %lor.lhs.false.274, %if.end.269
  br label %for.inc.281

if.end.280:                                       ; preds = %lor.lhs.false.274
  br label %for.end.283

for.inc.281:                                      ; preds = %if.then.279, %if.then.268, %if.then.261
  %230 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %prev282 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %230, i32 0, i32 1
  %231 = load %struct.dlink1*, %struct.dlink1** %prev282, align 8
  store %struct.dlink1* %231, %struct.dlink1** %hptr, align 8
  br label %for.cond.257

for.end.283:                                      ; preds = %if.end.280, %for.cond.257
  %232 = load i32, i32* %eb, align 4
  %233 = load i32, i32* %edge, align 4
  %idxprom284 = sext i32 %233 to i64
  %234 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx285 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %234, i64 %idxprom284
  %loc286 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx285, i32 0, i32 3
  %235 = load i32, i32* %loc286, align 4
  %sub = sub nsw i32 %232, %235
  %236 = load i32, i32* %eb, align 4
  %237 = load i32, i32* %edge, align 4
  %idxprom287 = sext i32 %237 to i64
  %238 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx288 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %238, i64 %idxprom287
  %loc289 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx288, i32 0, i32 3
  %239 = load i32, i32* %loc289, align 4
  %sub290 = sub nsw i32 %236, %239
  %div291 = sdiv i32 %sub290, 2
  %sub292 = sub nsw i32 %sub, %div291
  %240 = load i32, i32* %eb, align 4
  %sub293 = sub nsw i32 %240, %sub292
  store i32 %sub293, i32* %eb, align 4
  br label %if.end.294

if.end.294:                                       ; preds = %for.end.283, %if.end.230
  %241 = load i32, i32* %edge2, align 4
  %idxprom295 = sext i32 %241 to i64
  %242 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx296 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %242, i64 %idxprom295
  %fixed297 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx296, i32 0, i32 6
  %243 = load i32, i32* %fixed297, align 4
  %cmp298 = icmp eq i32 %243, 0
  br i1 %cmp298, label %if.then.299, label %if.end.336

if.then.299:                                      ; preds = %if.end.294
  %244 = load %struct.tnode*, %struct.tnode** @Hroot, align 8
  %245 = load i32, i32* %et, align 4
  %call300 = call i32 @tprop(%struct.tnode* %244, i32 %245)
  %idxprom301 = sext i32 %call300 to i64
  %246 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %arrayidx302 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %246, i64 %idxprom301
  %247 = load %struct.dlink1*, %struct.dlink1** %arrayidx302, align 8
  store %struct.dlink1* %247, %struct.dlink1** %hptr, align 8
  br label %for.cond.303

for.cond.303:                                     ; preds = %for.inc.327, %if.then.299
  %248 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %cmp304 = icmp ne %struct.dlink1* %248, null
  br i1 %cmp304, label %for.body.305, label %for.end.329

for.body.305:                                     ; preds = %for.cond.303
  %249 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %250 = load %struct.dlink1*, %struct.dlink1** %h1ptr, align 8
  %cmp306 = icmp eq %struct.dlink1* %249, %250
  br i1 %cmp306, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %for.body.305
  br label %for.inc.327

if.end.308:                                       ; preds = %for.body.305
  %251 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %edge309 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %251, i32 0, i32 0
  %252 = load i32, i32* %edge309, align 4
  store i32 %252, i32* %edge, align 4
  %253 = load i32, i32* %edge, align 4
  %idxprom310 = sext i32 %253 to i64
  %254 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx311 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %254, i64 %idxprom310
  %UorR312 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx311, i32 0, i32 5
  %255 = load i32, i32* %UorR312, align 4
  %cmp313 = icmp slt i32 %255, 0
  br i1 %cmp313, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.end.308
  br label %for.inc.327

if.end.315:                                       ; preds = %if.end.308
  %256 = load i32, i32* %edge, align 4
  %idxprom316 = sext i32 %256 to i64
  %257 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx317 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %257, i64 %idxprom316
  %start318 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx317, i32 0, i32 1
  %258 = load i32, i32* %start318, align 4
  %259 = load i32, i32* %l, align 4
  %cmp319 = icmp sgt i32 %258, %259
  br i1 %cmp319, label %if.then.325, label %lor.lhs.false.320

lor.lhs.false.320:                                ; preds = %if.end.315
  %260 = load i32, i32* %edge, align 4
  %idxprom321 = sext i32 %260 to i64
  %261 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx322 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %261, i64 %idxprom321
  %end323 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx322, i32 0, i32 2
  %262 = load i32, i32* %end323, align 4
  %263 = load i32, i32* %r, align 4
  %cmp324 = icmp slt i32 %262, %263
  br i1 %cmp324, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %lor.lhs.false.320, %if.end.315
  br label %for.inc.327

if.end.326:                                       ; preds = %lor.lhs.false.320
  br label %for.end.329

for.inc.327:                                      ; preds = %if.then.325, %if.then.314, %if.then.307
  %264 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %next328 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %264, i32 0, i32 2
  %265 = load %struct.dlink1*, %struct.dlink1** %next328, align 8
  store %struct.dlink1* %265, %struct.dlink1** %hptr, align 8
  br label %for.cond.303

for.end.329:                                      ; preds = %if.end.326, %for.cond.303
  %266 = load i32, i32* %edge, align 4
  %idxprom330 = sext i32 %266 to i64
  %267 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx331 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %267, i64 %idxprom330
  %loc332 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx331, i32 0, i32 3
  %268 = load i32, i32* %loc332, align 4
  %269 = load i32, i32* %et, align 4
  %sub333 = sub nsw i32 %268, %269
  %div334 = sdiv i32 %sub333, 2
  %270 = load i32, i32* %et, align 4
  %add335 = add nsw i32 %270, %div334
  store i32 %add335, i32* %et, align 4
  br label %if.end.336

if.end.336:                                       ; preds = %for.end.329, %if.end.294
  %271 = load i32, i32* @eNum, align 4
  %inc = add nsw i32 %271, 1
  store i32 %inc, i32* @eNum, align 4
  %rem = srem i32 %inc, 100
  %cmp337 = icmp eq i32 %rem, 0
  br i1 %cmp337, label %if.then.338, label %if.end.341

if.then.338:                                      ; preds = %if.end.336
  %272 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %273 = bitcast %struct.ebox* %272 to i8*
  %274 = load i32, i32* @eNum, align 4
  %add339 = add nsw i32 %274, 100
  %conv = sext i32 %add339 to i64
  %mul = mul i64 %conv, 56
  %call340 = call i8* @realloc(i8* %273, i64 %mul) #3
  %275 = bitcast i8* %call340 to %struct.ebox*
  store %struct.ebox* %275, %struct.ebox** @eArray, align 8
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.338, %if.end.336
  %276 = load i32, i32* %index1.addr, align 4
  %277 = load i32, i32* @eNum, align 4
  %idxprom342 = sext i32 %277 to i64
  %278 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx343 = getelementptr inbounds %struct.ebox, %struct.ebox* %278, i64 %idxprom342
  %index1344 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx343, i32 0, i32 0
  store i32 %276, i32* %index1344, align 4
  %279 = load i32, i32* %index2.addr, align 4
  %280 = load i32, i32* @eNum, align 4
  %idxprom345 = sext i32 %280 to i64
  %281 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx346 = getelementptr inbounds %struct.ebox, %struct.ebox* %281, i64 %idxprom345
  %index2347 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx346, i32 0, i32 1
  store i32 %279, i32* %index2347, align 4
  %282 = load i32, i32* %et, align 4
  %283 = load i32, i32* %eb, align 4
  %sub348 = sub nsw i32 %282, %283
  %284 = load i32, i32* @eNum, align 4
  %idxprom349 = sext i32 %284 to i64
  %285 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx350 = getelementptr inbounds %struct.ebox, %struct.ebox* %285, i64 %idxprom349
  %width = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx350, i32 0, i32 2
  store i32 %sub348, i32* %width, align 4
  %286 = load i32, i32* %eb, align 4
  %287 = load i32, i32* @eNum, align 4
  %idxprom351 = sext i32 %287 to i64
  %288 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx352 = getelementptr inbounds %struct.ebox, %struct.ebox* %288, i64 %idxprom351
  %lbside = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx352, i32 0, i32 3
  store i32 %286, i32* %lbside, align 4
  %289 = load i32, i32* %et, align 4
  %290 = load i32, i32* @eNum, align 4
  %idxprom353 = sext i32 %290 to i64
  %291 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx354 = getelementptr inbounds %struct.ebox, %struct.ebox* %291, i64 %idxprom353
  %rtside = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx354, i32 0, i32 4
  store i32 %289, i32* %rtside, align 4
  %292 = load i32, i32* %edge1, align 4
  %293 = load i32, i32* @eNum, align 4
  %idxprom355 = sext i32 %293 to i64
  %294 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx356 = getelementptr inbounds %struct.ebox, %struct.ebox* %294, i64 %idxprom355
  %edge1357 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx356, i32 0, i32 8
  store i32 %292, i32* %edge1357, align 4
  %295 = load i32, i32* %edge2, align 4
  %296 = load i32, i32* @eNum, align 4
  %idxprom358 = sext i32 %296 to i64
  %297 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx359 = getelementptr inbounds %struct.ebox, %struct.ebox* %297, i64 %idxprom358
  %edge2360 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx359, i32 0, i32 9
  store i32 %295, i32* %edge2360, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.341, %if.then.81, %if.then.48
  %298 = load i32, i32* %retval
  ret i32 %298
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
