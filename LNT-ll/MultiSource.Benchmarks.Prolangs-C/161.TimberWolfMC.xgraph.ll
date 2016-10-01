; ModuleID = './MultiSource.Benchmarks.Prolangs-C/161.TimberWolfMC.xgraph.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodbox = type { %struct.flare*, %struct.flare*, i32 }
%struct.flare = type { i32, i32*, %struct.flare* }
%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.wcbox = type { i32, i32, i32*, i32, %struct.wcbox* }

@numberCells = external global i32, align 4
@xNodules = external global %struct.nodbox*, align 8
@Vlist = external global %struct.dlink1*, align 8
@edgeList = external global %struct.edgebox*, align 8
@vChanBeginRoot = external global %struct.tnode*, align 8
@eArray = external global %struct.ebox*, align 8
@Vend = external global %struct.dlink1*, align 8
@vChanEndRoot = external global %struct.tnode*, align 8
@vFixedList = external global %struct.dlink1*, align 8
@numXnodes = external global i32, align 4
@xNodeArray = external global %struct.wcbox**, align 8

; Function Attrs: nounwind uwtable
define void @xgraph() #0 {
entry:
  %i = alloca i32, align 4
  %vedge = alloca i32, align 4
  %location = alloca i32, align 4
  %eindex = alloca i32, align 4
  %et = alloca i32, align 4
  %eb = alloca i32, align 4
  %t = alloca i32, align 4
  %b = alloca i32, align 4
  %cell = alloca i32, align 4
  %count = alloca i32, align 4
  %beginEdge = alloca i32, align 4
  %iedge = alloca i32, align 4
  %inode = alloca i32, align 4
  %oedge = alloca i32, align 4
  %onode = alloca i32, align 4
  %lastE = alloca i32, align 4
  %saveptr = alloca %struct.wcbox*, align 8
  %vptr = alloca %struct.dlink1*, align 8
  %plptr = alloca %struct.plist*, align 8
  %fptr = alloca %struct.flare*, align 8
  %ifptr = alloca %struct.flare*, align 8
  %ofptr = alloca %struct.flare*, align 8
  %tnode = alloca %struct.tnode*, align 8
  %0 = load i32, i32* @numberCells, align 4
  %add = add nsw i32 2, %0
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 24
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to %struct.nodbox*
  store %struct.nodbox* %1, %struct.nodbox** @xNodules, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @numberCells, align 4
  %add1 = add nsw i32 %3, 1
  %cmp = icmp sle i32 %2, %add1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx = getelementptr inbounds %struct.nodbox, %struct.nodbox* %5, i64 %idxprom
  %inList = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx, i32 0, i32 0
  store %struct.flare* null, %struct.flare** %inList, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx4 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %7, i64 %idxprom3
  %outList = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx4, i32 0, i32 1
  store %struct.flare* null, %struct.flare** %outList, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx6 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %9, i64 %idxprom5
  %done = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx6, i32 0, i32 2
  store i32 0, i32* %done, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.dlink1*, %struct.dlink1** @Vlist, align 8
  store %struct.dlink1* %11, %struct.dlink1** %vptr, align 8
  %12 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %edge = getelementptr inbounds %struct.dlink1, %struct.dlink1* %12, i32 0, i32 0
  %13 = load i32, i32* %edge, align 4
  store i32 %13, i32* %vedge, align 4
  %14 = load i32, i32* %vedge, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx8 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %15, i64 %idxprom7
  %loc = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx8, i32 0, i32 3
  %16 = load i32, i32* %loc, align 4
  store i32 %16, i32* %location, align 4
  %17 = load i32, i32* %vedge, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx10 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %18, i64 %idxprom9
  %end = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx10, i32 0, i32 2
  %19 = load i32, i32* %end, align 4
  store i32 %19, i32* %et, align 4
  %20 = load i32, i32* %vedge, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx12 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %21, i64 %idxprom11
  %start = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx12, i32 0, i32 1
  %22 = load i32, i32* %start, align 4
  store i32 %22, i32* %eb, align 4
  %23 = load %struct.tnode*, %struct.tnode** @vChanBeginRoot, align 8
  %24 = load i32, i32* %location, align 4
  %call13 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* %23, i32 %24)
  store %struct.plist* %call13, %struct.plist** %plptr, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.49, %for.end
  %25 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp15 = icmp ne %struct.plist* %25, null
  br i1 %cmp15, label %for.body.17, label %for.end.50

for.body.17:                                      ; preds = %for.cond.14
  %26 = load %struct.plist*, %struct.plist** %plptr, align 8
  %property = getelementptr inbounds %struct.plist, %struct.plist* %26, i32 0, i32 0
  %27 = load i32, i32* %property, align 4
  store i32 %27, i32* %eindex, align 4
  %28 = load i32, i32* %eindex, align 4
  %idxprom18 = sext i32 %28 to i64
  %29 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx19 = getelementptr inbounds %struct.ebox, %struct.ebox* %29, i64 %idxprom18
  %hiend = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx19, i32 0, i32 6
  %30 = load i32, i32* %hiend, align 4
  store i32 %30, i32* %t, align 4
  %31 = load i32, i32* %eindex, align 4
  %idxprom20 = sext i32 %31 to i64
  %32 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx21 = getelementptr inbounds %struct.ebox, %struct.ebox* %32, i64 %idxprom20
  %loend = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx21, i32 0, i32 7
  %33 = load i32, i32* %loend, align 4
  store i32 %33, i32* %b, align 4
  %34 = load i32, i32* %b, align 4
  %35 = load i32, i32* %eb, align 4
  %cmp22 = icmp sge i32 %34, %35
  br i1 %cmp22, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %for.body.17
  %36 = load i32, i32* %t, align 4
  %37 = load i32, i32* %et, align 4
  %cmp24 = icmp sle i32 %36, %37
  br i1 %cmp24, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %for.body.17
  br label %for.inc.49

if.end:                                           ; preds = %land.lhs.true
  %38 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx26 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %38, i64 0
  %outList27 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx26, i32 0, i32 1
  %39 = load %struct.flare*, %struct.flare** %outList27, align 8
  store %struct.flare* %39, %struct.flare** %fptr, align 8
  %call28 = call noalias i8* @malloc(i64 24) #3
  %40 = bitcast i8* %call28 to %struct.flare*
  %41 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx29 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %41, i64 0
  %outList30 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx29, i32 0, i32 1
  store %struct.flare* %40, %struct.flare** %outList30, align 8
  %42 = load %struct.flare*, %struct.flare** %fptr, align 8
  %43 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx31 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %43, i64 0
  %outList32 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx31, i32 0, i32 1
  %44 = load %struct.flare*, %struct.flare** %outList32, align 8
  %next = getelementptr inbounds %struct.flare, %struct.flare* %44, i32 0, i32 2
  store %struct.flare* %42, %struct.flare** %next, align 8
  %45 = load i32, i32* %vedge, align 4
  %46 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx33 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %46, i64 0
  %outList34 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx33, i32 0, i32 1
  %47 = load %struct.flare*, %struct.flare** %outList34, align 8
  %fixEdge = getelementptr inbounds %struct.flare, %struct.flare* %47, i32 0, i32 0
  store i32 %45, i32* %fixEdge, align 4
  %call35 = call noalias i8* @malloc(i64 8) #3
  %48 = bitcast i8* %call35 to i32*
  %49 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx36 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %49, i64 0
  %outList37 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx36, i32 0, i32 1
  %50 = load %struct.flare*, %struct.flare** %outList37, align 8
  %eindex38 = getelementptr inbounds %struct.flare, %struct.flare* %50, i32 0, i32 1
  store i32* %48, i32** %eindex38, align 8
  %51 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx39 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %51, i64 0
  %outList40 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx39, i32 0, i32 1
  %52 = load %struct.flare*, %struct.flare** %outList40, align 8
  %eindex41 = getelementptr inbounds %struct.flare, %struct.flare* %52, i32 0, i32 1
  %53 = load i32*, i32** %eindex41, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 1, i32* %arrayidx42, align 4
  %54 = load i32, i32* %eindex, align 4
  %55 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx43 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %55, i64 0
  %outList44 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx43, i32 0, i32 1
  %56 = load %struct.flare*, %struct.flare** %outList44, align 8
  %eindex45 = getelementptr inbounds %struct.flare, %struct.flare* %56, i32 0, i32 1
  %57 = load i32*, i32** %eindex45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %54, i32* %arrayidx46, align 4
  %58 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx47 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %58, i64 0
  %done48 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx47, i32 0, i32 2
  store i32 1, i32* %done48, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end, %if.then
  %59 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext = getelementptr inbounds %struct.plist, %struct.plist* %59, i32 0, i32 1
  %60 = load %struct.plist*, %struct.plist** %pnext, align 8
  store %struct.plist* %60, %struct.plist** %plptr, align 8
  br label %for.cond.14

for.end.50:                                       ; preds = %for.cond.14
  %61 = load %struct.dlink1*, %struct.dlink1** @Vend, align 8
  store %struct.dlink1* %61, %struct.dlink1** %vptr, align 8
  %62 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %edge51 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %62, i32 0, i32 0
  %63 = load i32, i32* %edge51, align 4
  store i32 %63, i32* %vedge, align 4
  %64 = load i32, i32* %vedge, align 4
  %idxprom52 = sext i32 %64 to i64
  %65 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx53 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %65, i64 %idxprom52
  %loc54 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx53, i32 0, i32 3
  %66 = load i32, i32* %loc54, align 4
  store i32 %66, i32* %location, align 4
  %67 = load i32, i32* %vedge, align 4
  %idxprom55 = sext i32 %67 to i64
  %68 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx56 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %68, i64 %idxprom55
  %end57 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx56, i32 0, i32 2
  %69 = load i32, i32* %end57, align 4
  store i32 %69, i32* %et, align 4
  %70 = load i32, i32* %vedge, align 4
  %idxprom58 = sext i32 %70 to i64
  %71 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx59 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %71, i64 %idxprom58
  %start60 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx59, i32 0, i32 1
  %72 = load i32, i32* %start60, align 4
  store i32 %72, i32* %eb, align 4
  %73 = load %struct.tnode*, %struct.tnode** @vChanEndRoot, align 8
  %74 = load i32, i32* %location, align 4
  %call61 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* %73, i32 %74)
  store %struct.plist* %call61, %struct.plist** %plptr, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.121, %for.end.50
  %75 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp63 = icmp ne %struct.plist* %75, null
  br i1 %cmp63, label %for.body.65, label %for.end.123

for.body.65:                                      ; preds = %for.cond.62
  %76 = load %struct.plist*, %struct.plist** %plptr, align 8
  %property66 = getelementptr inbounds %struct.plist, %struct.plist* %76, i32 0, i32 0
  %77 = load i32, i32* %property66, align 4
  store i32 %77, i32* %eindex, align 4
  %78 = load i32, i32* %eindex, align 4
  %idxprom67 = sext i32 %78 to i64
  %79 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx68 = getelementptr inbounds %struct.ebox, %struct.ebox* %79, i64 %idxprom67
  %hiend69 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx68, i32 0, i32 6
  %80 = load i32, i32* %hiend69, align 4
  store i32 %80, i32* %t, align 4
  %81 = load i32, i32* %eindex, align 4
  %idxprom70 = sext i32 %81 to i64
  %82 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx71 = getelementptr inbounds %struct.ebox, %struct.ebox* %82, i64 %idxprom70
  %loend72 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx71, i32 0, i32 7
  %83 = load i32, i32* %loend72, align 4
  store i32 %83, i32* %b, align 4
  %84 = load i32, i32* %b, align 4
  %85 = load i32, i32* %eb, align 4
  %cmp73 = icmp sge i32 %84, %85
  br i1 %cmp73, label %land.lhs.true.75, label %if.then.78

land.lhs.true.75:                                 ; preds = %for.body.65
  %86 = load i32, i32* %t, align 4
  %87 = load i32, i32* %et, align 4
  %cmp76 = icmp sle i32 %86, %87
  br i1 %cmp76, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true.75, %for.body.65
  br label %for.inc.121

if.end.79:                                        ; preds = %land.lhs.true.75
  %88 = load i32, i32* @numberCells, align 4
  %add80 = add nsw i32 %88, 1
  %idxprom81 = sext i32 %add80 to i64
  %89 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx82 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %89, i64 %idxprom81
  %inList83 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx82, i32 0, i32 0
  %90 = load %struct.flare*, %struct.flare** %inList83, align 8
  store %struct.flare* %90, %struct.flare** %fptr, align 8
  %call84 = call noalias i8* @malloc(i64 24) #3
  %91 = bitcast i8* %call84 to %struct.flare*
  %92 = load i32, i32* @numberCells, align 4
  %add85 = add nsw i32 %92, 1
  %idxprom86 = sext i32 %add85 to i64
  %93 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx87 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %93, i64 %idxprom86
  %inList88 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx87, i32 0, i32 0
  store %struct.flare* %91, %struct.flare** %inList88, align 8
  %94 = load %struct.flare*, %struct.flare** %fptr, align 8
  %95 = load i32, i32* @numberCells, align 4
  %add89 = add nsw i32 %95, 1
  %idxprom90 = sext i32 %add89 to i64
  %96 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx91 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %96, i64 %idxprom90
  %inList92 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx91, i32 0, i32 0
  %97 = load %struct.flare*, %struct.flare** %inList92, align 8
  %next93 = getelementptr inbounds %struct.flare, %struct.flare* %97, i32 0, i32 2
  store %struct.flare* %94, %struct.flare** %next93, align 8
  %98 = load i32, i32* %vedge, align 4
  %99 = load i32, i32* @numberCells, align 4
  %add94 = add nsw i32 %99, 1
  %idxprom95 = sext i32 %add94 to i64
  %100 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx96 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %100, i64 %idxprom95
  %inList97 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx96, i32 0, i32 0
  %101 = load %struct.flare*, %struct.flare** %inList97, align 8
  %fixEdge98 = getelementptr inbounds %struct.flare, %struct.flare* %101, i32 0, i32 0
  store i32 %98, i32* %fixEdge98, align 4
  %call99 = call noalias i8* @malloc(i64 8) #3
  %102 = bitcast i8* %call99 to i32*
  %103 = load i32, i32* @numberCells, align 4
  %add100 = add nsw i32 %103, 1
  %idxprom101 = sext i32 %add100 to i64
  %104 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx102 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %104, i64 %idxprom101
  %inList103 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx102, i32 0, i32 0
  %105 = load %struct.flare*, %struct.flare** %inList103, align 8
  %eindex104 = getelementptr inbounds %struct.flare, %struct.flare* %105, i32 0, i32 1
  store i32* %102, i32** %eindex104, align 8
  %106 = load i32, i32* @numberCells, align 4
  %add105 = add nsw i32 %106, 1
  %idxprom106 = sext i32 %add105 to i64
  %107 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx107 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %107, i64 %idxprom106
  %inList108 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx107, i32 0, i32 0
  %108 = load %struct.flare*, %struct.flare** %inList108, align 8
  %eindex109 = getelementptr inbounds %struct.flare, %struct.flare* %108, i32 0, i32 1
  %109 = load i32*, i32** %eindex109, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 1, i32* %arrayidx110, align 4
  %110 = load i32, i32* %eindex, align 4
  %111 = load i32, i32* @numberCells, align 4
  %add111 = add nsw i32 %111, 1
  %idxprom112 = sext i32 %add111 to i64
  %112 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx113 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %112, i64 %idxprom112
  %inList114 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx113, i32 0, i32 0
  %113 = load %struct.flare*, %struct.flare** %inList114, align 8
  %eindex115 = getelementptr inbounds %struct.flare, %struct.flare* %113, i32 0, i32 1
  %114 = load i32*, i32** %eindex115, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 %110, i32* %arrayidx116, align 4
  %115 = load i32, i32* @numberCells, align 4
  %add117 = add nsw i32 %115, 1
  %idxprom118 = sext i32 %add117 to i64
  %116 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx119 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %116, i64 %idxprom118
  %done120 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx119, i32 0, i32 2
  store i32 1, i32* %done120, align 4
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.79, %if.then.78
  %117 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext122 = getelementptr inbounds %struct.plist, %struct.plist* %117, i32 0, i32 1
  %118 = load %struct.plist*, %struct.plist** %pnext122, align 8
  store %struct.plist* %118, %struct.plist** %plptr, align 8
  br label %for.cond.62

for.end.123:                                      ; preds = %for.cond.62
  %119 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %next124 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %119, i32 0, i32 2
  %120 = load %struct.dlink1*, %struct.dlink1** %next124, align 8
  store %struct.dlink1* %120, %struct.dlink1** %vptr, align 8
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.253, %for.end.123
  %121 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %next126 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %121, i32 0, i32 2
  %122 = load %struct.dlink1*, %struct.dlink1** %next126, align 8
  %cmp127 = icmp ne %struct.dlink1* %122, null
  br i1 %cmp127, label %for.body.129, label %for.end.255

for.body.129:                                     ; preds = %for.cond.125
  %123 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %edge130 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %123, i32 0, i32 0
  %124 = load i32, i32* %edge130, align 4
  store i32 %124, i32* %vedge, align 4
  %125 = load i32, i32* %vedge, align 4
  %idxprom131 = sext i32 %125 to i64
  %126 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx132 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %126, i64 %idxprom131
  %cell133 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx132, i32 0, i32 0
  %127 = load i32, i32* %cell133, align 4
  store i32 %127, i32* %cell, align 4
  %128 = load i32, i32* %cell, align 4
  %idxprom134 = sext i32 %128 to i64
  %129 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx135 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %129, i64 %idxprom134
  %done136 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx135, i32 0, i32 2
  %130 = load i32, i32* %done136, align 4
  %cmp137 = icmp eq i32 %130, 1
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %for.body.129
  br label %for.inc.253

if.end.140:                                       ; preds = %for.body.129
  %131 = load i32, i32* %cell, align 4
  %idxprom141 = sext i32 %131 to i64
  %132 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx142 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %132, i64 %idxprom141
  %done143 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx142, i32 0, i32 2
  store i32 1, i32* %done143, align 4
  %133 = load i32, i32* %vedge, align 4
  store i32 %133, i32* %beginEdge, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.140
  %134 = load i32, i32* %vedge, align 4
  %idxprom144 = sext i32 %134 to i64
  %135 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx145 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %135, i64 %idxprom144
  %UorR = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx145, i32 0, i32 5
  %136 = load i32, i32* %UorR, align 4
  %cmp146 = icmp sgt i32 %136, 0
  br i1 %cmp146, label %if.then.148, label %if.else

if.then.148:                                      ; preds = %do.body
  %137 = load i32, i32* %vedge, align 4
  %idxprom149 = sext i32 %137 to i64
  %138 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx150 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %138, i64 %idxprom149
  %loc151 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx150, i32 0, i32 3
  %139 = load i32, i32* %loc151, align 4
  store i32 %139, i32* %location, align 4
  %140 = load %struct.tnode*, %struct.tnode** @vChanEndRoot, align 8
  %141 = load i32, i32* %location, align 4
  %call152 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* %140, i32 %141)
  store %struct.plist* %call152, %struct.plist** %plptr, align 8
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.194, %if.then.148
  %142 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp154 = icmp ne %struct.plist* %142, null
  br i1 %cmp154, label %for.body.156, label %for.end.196

for.body.156:                                     ; preds = %for.cond.153
  %143 = load %struct.plist*, %struct.plist** %plptr, align 8
  %property157 = getelementptr inbounds %struct.plist, %struct.plist* %143, i32 0, i32 0
  %144 = load i32, i32* %property157, align 4
  store i32 %144, i32* %eindex, align 4
  %145 = load i32, i32* %eindex, align 4
  %idxprom158 = sext i32 %145 to i64
  %146 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx159 = getelementptr inbounds %struct.ebox, %struct.ebox* %146, i64 %idxprom158
  %edge2 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx159, i32 0, i32 9
  %147 = load i32, i32* %edge2, align 4
  %148 = load i32, i32* %vedge, align 4
  %cmp160 = icmp ne i32 %147, %148
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %for.body.156
  br label %for.inc.194

if.end.163:                                       ; preds = %for.body.156
  %149 = load i32, i32* %cell, align 4
  %idxprom164 = sext i32 %149 to i64
  %150 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx165 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %150, i64 %idxprom164
  %inList166 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx165, i32 0, i32 0
  %151 = load %struct.flare*, %struct.flare** %inList166, align 8
  store %struct.flare* %151, %struct.flare** %fptr, align 8
  %call167 = call noalias i8* @malloc(i64 24) #3
  %152 = bitcast i8* %call167 to %struct.flare*
  %153 = load i32, i32* %cell, align 4
  %idxprom168 = sext i32 %153 to i64
  %154 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx169 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %154, i64 %idxprom168
  %inList170 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx169, i32 0, i32 0
  store %struct.flare* %152, %struct.flare** %inList170, align 8
  %155 = load %struct.flare*, %struct.flare** %fptr, align 8
  %156 = load i32, i32* %cell, align 4
  %idxprom171 = sext i32 %156 to i64
  %157 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx172 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %157, i64 %idxprom171
  %inList173 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx172, i32 0, i32 0
  %158 = load %struct.flare*, %struct.flare** %inList173, align 8
  %next174 = getelementptr inbounds %struct.flare, %struct.flare* %158, i32 0, i32 2
  store %struct.flare* %155, %struct.flare** %next174, align 8
  %159 = load i32, i32* %vedge, align 4
  %160 = load i32, i32* %cell, align 4
  %idxprom175 = sext i32 %160 to i64
  %161 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx176 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %161, i64 %idxprom175
  %inList177 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx176, i32 0, i32 0
  %162 = load %struct.flare*, %struct.flare** %inList177, align 8
  %fixEdge178 = getelementptr inbounds %struct.flare, %struct.flare* %162, i32 0, i32 0
  store i32 %159, i32* %fixEdge178, align 4
  %call179 = call noalias i8* @malloc(i64 8) #3
  %163 = bitcast i8* %call179 to i32*
  %164 = load i32, i32* %cell, align 4
  %idxprom180 = sext i32 %164 to i64
  %165 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx181 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %165, i64 %idxprom180
  %inList182 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx181, i32 0, i32 0
  %166 = load %struct.flare*, %struct.flare** %inList182, align 8
  %eindex183 = getelementptr inbounds %struct.flare, %struct.flare* %166, i32 0, i32 1
  store i32* %163, i32** %eindex183, align 8
  %167 = load i32, i32* %cell, align 4
  %idxprom184 = sext i32 %167 to i64
  %168 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx185 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %168, i64 %idxprom184
  %inList186 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx185, i32 0, i32 0
  %169 = load %struct.flare*, %struct.flare** %inList186, align 8
  %eindex187 = getelementptr inbounds %struct.flare, %struct.flare* %169, i32 0, i32 1
  %170 = load i32*, i32** %eindex187, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 1, i32* %arrayidx188, align 4
  %171 = load i32, i32* %eindex, align 4
  %172 = load i32, i32* %cell, align 4
  %idxprom189 = sext i32 %172 to i64
  %173 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx190 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %173, i64 %idxprom189
  %inList191 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx190, i32 0, i32 0
  %174 = load %struct.flare*, %struct.flare** %inList191, align 8
  %eindex192 = getelementptr inbounds %struct.flare, %struct.flare* %174, i32 0, i32 1
  %175 = load i32*, i32** %eindex192, align 8
  %arrayidx193 = getelementptr inbounds i32, i32* %175, i64 1
  store i32 %171, i32* %arrayidx193, align 4
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.163, %if.then.162
  %176 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext195 = getelementptr inbounds %struct.plist, %struct.plist* %176, i32 0, i32 1
  %177 = load %struct.plist*, %struct.plist** %pnext195, align 8
  store %struct.plist* %177, %struct.plist** %plptr, align 8
  br label %for.cond.153

for.end.196:                                      ; preds = %for.cond.153
  br label %if.end.245

if.else:                                          ; preds = %do.body
  %178 = load i32, i32* %vedge, align 4
  %idxprom197 = sext i32 %178 to i64
  %179 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx198 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %179, i64 %idxprom197
  %loc199 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx198, i32 0, i32 3
  %180 = load i32, i32* %loc199, align 4
  store i32 %180, i32* %location, align 4
  %181 = load %struct.tnode*, %struct.tnode** @vChanBeginRoot, align 8
  %182 = load i32, i32* %location, align 4
  %call200 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* %181, i32 %182)
  store %struct.plist* %call200, %struct.plist** %plptr, align 8
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.242, %if.else
  %183 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp202 = icmp ne %struct.plist* %183, null
  br i1 %cmp202, label %for.body.204, label %for.end.244

for.body.204:                                     ; preds = %for.cond.201
  %184 = load %struct.plist*, %struct.plist** %plptr, align 8
  %property205 = getelementptr inbounds %struct.plist, %struct.plist* %184, i32 0, i32 0
  %185 = load i32, i32* %property205, align 4
  store i32 %185, i32* %eindex, align 4
  %186 = load i32, i32* %eindex, align 4
  %idxprom206 = sext i32 %186 to i64
  %187 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx207 = getelementptr inbounds %struct.ebox, %struct.ebox* %187, i64 %idxprom206
  %edge1 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx207, i32 0, i32 8
  %188 = load i32, i32* %edge1, align 4
  %189 = load i32, i32* %vedge, align 4
  %cmp208 = icmp ne i32 %188, %189
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %for.body.204
  br label %for.inc.242

if.end.211:                                       ; preds = %for.body.204
  %190 = load i32, i32* %cell, align 4
  %idxprom212 = sext i32 %190 to i64
  %191 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx213 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %191, i64 %idxprom212
  %outList214 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx213, i32 0, i32 1
  %192 = load %struct.flare*, %struct.flare** %outList214, align 8
  store %struct.flare* %192, %struct.flare** %fptr, align 8
  %call215 = call noalias i8* @malloc(i64 24) #3
  %193 = bitcast i8* %call215 to %struct.flare*
  %194 = load i32, i32* %cell, align 4
  %idxprom216 = sext i32 %194 to i64
  %195 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx217 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %195, i64 %idxprom216
  %outList218 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx217, i32 0, i32 1
  store %struct.flare* %193, %struct.flare** %outList218, align 8
  %196 = load %struct.flare*, %struct.flare** %fptr, align 8
  %197 = load i32, i32* %cell, align 4
  %idxprom219 = sext i32 %197 to i64
  %198 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx220 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %198, i64 %idxprom219
  %outList221 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx220, i32 0, i32 1
  %199 = load %struct.flare*, %struct.flare** %outList221, align 8
  %next222 = getelementptr inbounds %struct.flare, %struct.flare* %199, i32 0, i32 2
  store %struct.flare* %196, %struct.flare** %next222, align 8
  %200 = load i32, i32* %vedge, align 4
  %201 = load i32, i32* %cell, align 4
  %idxprom223 = sext i32 %201 to i64
  %202 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx224 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %202, i64 %idxprom223
  %outList225 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx224, i32 0, i32 1
  %203 = load %struct.flare*, %struct.flare** %outList225, align 8
  %fixEdge226 = getelementptr inbounds %struct.flare, %struct.flare* %203, i32 0, i32 0
  store i32 %200, i32* %fixEdge226, align 4
  %call227 = call noalias i8* @malloc(i64 8) #3
  %204 = bitcast i8* %call227 to i32*
  %205 = load i32, i32* %cell, align 4
  %idxprom228 = sext i32 %205 to i64
  %206 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx229 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %206, i64 %idxprom228
  %outList230 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx229, i32 0, i32 1
  %207 = load %struct.flare*, %struct.flare** %outList230, align 8
  %eindex231 = getelementptr inbounds %struct.flare, %struct.flare* %207, i32 0, i32 1
  store i32* %204, i32** %eindex231, align 8
  %208 = load i32, i32* %cell, align 4
  %idxprom232 = sext i32 %208 to i64
  %209 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx233 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %209, i64 %idxprom232
  %outList234 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx233, i32 0, i32 1
  %210 = load %struct.flare*, %struct.flare** %outList234, align 8
  %eindex235 = getelementptr inbounds %struct.flare, %struct.flare* %210, i32 0, i32 1
  %211 = load i32*, i32** %eindex235, align 8
  %arrayidx236 = getelementptr inbounds i32, i32* %211, i64 0
  store i32 1, i32* %arrayidx236, align 4
  %212 = load i32, i32* %eindex, align 4
  %213 = load i32, i32* %cell, align 4
  %idxprom237 = sext i32 %213 to i64
  %214 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx238 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %214, i64 %idxprom237
  %outList239 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx238, i32 0, i32 1
  %215 = load %struct.flare*, %struct.flare** %outList239, align 8
  %eindex240 = getelementptr inbounds %struct.flare, %struct.flare* %215, i32 0, i32 1
  %216 = load i32*, i32** %eindex240, align 8
  %arrayidx241 = getelementptr inbounds i32, i32* %216, i64 1
  store i32 %212, i32* %arrayidx241, align 4
  br label %for.inc.242

for.inc.242:                                      ; preds = %if.end.211, %if.then.210
  %217 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext243 = getelementptr inbounds %struct.plist, %struct.plist* %217, i32 0, i32 1
  %218 = load %struct.plist*, %struct.plist** %pnext243, align 8
  store %struct.plist* %218, %struct.plist** %plptr, align 8
  br label %for.cond.201

for.end.244:                                      ; preds = %for.cond.201
  br label %if.end.245

if.end.245:                                       ; preds = %for.end.244, %for.end.196
  %219 = load i32, i32* %vedge, align 4
  %idxprom246 = sext i32 %219 to i64
  %220 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx247 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %220, i64 %idxprom246
  %nextEdge = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx247, i32 0, i32 8
  %221 = load i32, i32* %nextEdge, align 4
  store i32 %221, i32* %vedge, align 4
  %222 = load i32, i32* %vedge, align 4
  %idxprom248 = sext i32 %222 to i64
  %223 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx249 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %223, i64 %idxprom248
  %nextEdge250 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx249, i32 0, i32 8
  %224 = load i32, i32* %nextEdge250, align 4
  store i32 %224, i32* %vedge, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.245
  %225 = load i32, i32* %vedge, align 4
  %226 = load i32, i32* %beginEdge, align 4
  %cmp251 = icmp ne i32 %225, %226
  br i1 %cmp251, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc.253

for.inc.253:                                      ; preds = %do.end, %if.then.139
  %227 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %next254 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %227, i32 0, i32 2
  %228 = load %struct.dlink1*, %struct.dlink1** %next254, align 8
  store %struct.dlink1* %228, %struct.dlink1** %vptr, align 8
  br label %for.cond.125

for.end.255:                                      ; preds = %for.cond.125
  store i32 0, i32* %cell, align 4
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.413, %for.end.255
  %229 = load i32, i32* %cell, align 4
  %230 = load i32, i32* @numberCells, align 4
  %add257 = add nsw i32 %230, 1
  %cmp258 = icmp sle i32 %229, %add257
  br i1 %cmp258, label %for.body.260, label %for.end.415

for.body.260:                                     ; preds = %for.cond.256
  %231 = load i32, i32* %cell, align 4
  %idxprom261 = sext i32 %231 to i64
  %232 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx262 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %232, i64 %idxprom261
  %inList263 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx262, i32 0, i32 0
  %233 = load %struct.flare*, %struct.flare** %inList263, align 8
  store %struct.flare* %233, %struct.flare** %fptr, align 8
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.335, %for.body.260
  %234 = load %struct.flare*, %struct.flare** %fptr, align 8
  %cmp265 = icmp ne %struct.flare* %234, null
  br i1 %cmp265, label %for.body.267, label %for.end.337

for.body.267:                                     ; preds = %for.cond.264
  %235 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex268 = getelementptr inbounds %struct.flare, %struct.flare* %235, i32 0, i32 1
  %236 = load i32*, i32** %eindex268, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %236, i64 0
  %237 = load i32, i32* %arrayidx269, align 4
  store i32 %237, i32* %count, align 4
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.332, %for.body.267
  %238 = load i32, i32* %count, align 4
  %239 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex271 = getelementptr inbounds %struct.flare, %struct.flare* %239, i32 0, i32 1
  %240 = load i32*, i32** %eindex271, align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %240, i64 0
  %241 = load i32, i32* %arrayidx272, align 4
  %cmp273 = icmp sle i32 %238, %241
  br i1 %cmp273, label %for.body.275, label %for.end.334

for.body.275:                                     ; preds = %for.cond.270
  %242 = load i32, i32* %count, align 4
  %idxprom276 = sext i32 %242 to i64
  %243 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex277 = getelementptr inbounds %struct.flare, %struct.flare* %243, i32 0, i32 1
  %244 = load i32*, i32** %eindex277, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %244, i64 %idxprom276
  %245 = load i32, i32* %arrayidx278, align 4
  store i32 %245, i32* %eindex, align 4
  %246 = load i32, i32* %eindex, align 4
  %idxprom279 = sext i32 %246 to i64
  %247 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx280 = getelementptr inbounds %struct.ebox, %struct.ebox* %247, i64 %idxprom279
  %lbside = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx280, i32 0, i32 3
  %248 = load i32, i32* %lbside, align 4
  store i32 %248, i32* %location, align 4
  %249 = load i32, i32* %eindex, align 4
  %idxprom281 = sext i32 %249 to i64
  %250 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx282 = getelementptr inbounds %struct.ebox, %struct.ebox* %250, i64 %idxprom281
  %hiend283 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx282, i32 0, i32 6
  %251 = load i32, i32* %hiend283, align 4
  store i32 %251, i32* %et, align 4
  %252 = load i32, i32* %eindex, align 4
  %idxprom284 = sext i32 %252 to i64
  %253 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx285 = getelementptr inbounds %struct.ebox, %struct.ebox* %253, i64 %idxprom284
  %loend286 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx285, i32 0, i32 7
  %254 = load i32, i32* %loend286, align 4
  store i32 %254, i32* %eb, align 4
  %255 = load i32, i32* %eindex, align 4
  %idxprom287 = sext i32 %255 to i64
  %256 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx288 = getelementptr inbounds %struct.ebox, %struct.ebox* %256, i64 %idxprom287
  %edge1289 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx288, i32 0, i32 8
  %257 = load i32, i32* %edge1289, align 4
  store i32 %257, i32* %vedge, align 4
  %258 = load %struct.tnode*, %struct.tnode** @vChanEndRoot, align 8
  %259 = load i32, i32* %location, align 4
  %call290 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* %258, i32 %259)
  store %struct.plist* %call290, %struct.plist** %plptr, align 8
  br label %for.cond.291

for.cond.291:                                     ; preds = %for.inc.329, %for.body.275
  %260 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp292 = icmp ne %struct.plist* %260, null
  br i1 %cmp292, label %for.body.294, label %for.end.331

for.body.294:                                     ; preds = %for.cond.291
  %261 = load %struct.plist*, %struct.plist** %plptr, align 8
  %property295 = getelementptr inbounds %struct.plist, %struct.plist* %261, i32 0, i32 0
  %262 = load i32, i32* %property295, align 4
  store i32 %262, i32* %eindex, align 4
  %263 = load i32, i32* %eindex, align 4
  %idxprom296 = sext i32 %263 to i64
  %264 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx297 = getelementptr inbounds %struct.ebox, %struct.ebox* %264, i64 %idxprom296
  %hiend298 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx297, i32 0, i32 6
  %265 = load i32, i32* %hiend298, align 4
  store i32 %265, i32* %t, align 4
  %266 = load i32, i32* %eindex, align 4
  %idxprom299 = sext i32 %266 to i64
  %267 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx300 = getelementptr inbounds %struct.ebox, %struct.ebox* %267, i64 %idxprom299
  %loend301 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx300, i32 0, i32 7
  %268 = load i32, i32* %loend301, align 4
  store i32 %268, i32* %b, align 4
  %269 = load i32, i32* %b, align 4
  %270 = load i32, i32* %eb, align 4
  %cmp302 = icmp sge i32 %269, %270
  br i1 %cmp302, label %land.lhs.true.304, label %if.then.307

land.lhs.true.304:                                ; preds = %for.body.294
  %271 = load i32, i32* %t, align 4
  %272 = load i32, i32* %et, align 4
  %cmp305 = icmp sle i32 %271, %272
  br i1 %cmp305, label %if.end.308, label %if.then.307

if.then.307:                                      ; preds = %land.lhs.true.304, %for.body.294
  br label %for.inc.329

if.end.308:                                       ; preds = %land.lhs.true.304
  %273 = load i32, i32* %location, align 4
  %274 = load i32, i32* %eindex, align 4
  call void @tdelete(%struct.tnode** @vChanEndRoot, i32 %273, i32 %274)
  %275 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex309 = getelementptr inbounds %struct.flare, %struct.flare* %275, i32 0, i32 1
  %276 = load i32*, i32** %eindex309, align 8
  %arrayidx310 = getelementptr inbounds i32, i32* %276, i64 0
  %277 = load i32, i32* %arrayidx310, align 4
  %inc311 = add nsw i32 %277, 1
  store i32 %inc311, i32* %arrayidx310, align 4
  %rem = srem i32 %inc311, 2
  %cmp312 = icmp eq i32 %rem, 0
  br i1 %cmp312, label %if.then.314, label %if.end.323

if.then.314:                                      ; preds = %if.end.308
  %278 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex315 = getelementptr inbounds %struct.flare, %struct.flare* %278, i32 0, i32 1
  %279 = load i32*, i32** %eindex315, align 8
  %280 = bitcast i32* %279 to i8*
  %281 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex316 = getelementptr inbounds %struct.flare, %struct.flare* %281, i32 0, i32 1
  %282 = load i32*, i32** %eindex316, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %282, i64 0
  %283 = load i32, i32* %arrayidx317, align 4
  %add318 = add nsw i32 2, %283
  %conv319 = sext i32 %add318 to i64
  %mul320 = mul i64 %conv319, 4
  %call321 = call i8* @realloc(i8* %280, i64 %mul320) #3
  %284 = bitcast i8* %call321 to i32*
  %285 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex322 = getelementptr inbounds %struct.flare, %struct.flare* %285, i32 0, i32 1
  store i32* %284, i32** %eindex322, align 8
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.314, %if.end.308
  %286 = load i32, i32* %eindex, align 4
  %287 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex324 = getelementptr inbounds %struct.flare, %struct.flare* %287, i32 0, i32 1
  %288 = load i32*, i32** %eindex324, align 8
  %arrayidx325 = getelementptr inbounds i32, i32* %288, i64 0
  %289 = load i32, i32* %arrayidx325, align 4
  %idxprom326 = sext i32 %289 to i64
  %290 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex327 = getelementptr inbounds %struct.flare, %struct.flare* %290, i32 0, i32 1
  %291 = load i32*, i32** %eindex327, align 8
  %arrayidx328 = getelementptr inbounds i32, i32* %291, i64 %idxprom326
  store i32 %286, i32* %arrayidx328, align 4
  br label %for.end.331

for.inc.329:                                      ; preds = %if.then.307
  %292 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext330 = getelementptr inbounds %struct.plist, %struct.plist* %292, i32 0, i32 1
  %293 = load %struct.plist*, %struct.plist** %pnext330, align 8
  store %struct.plist* %293, %struct.plist** %plptr, align 8
  br label %for.cond.291

for.end.331:                                      ; preds = %if.end.323, %for.cond.291
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.end.331
  %294 = load i32, i32* %count, align 4
  %inc333 = add nsw i32 %294, 1
  store i32 %inc333, i32* %count, align 4
  br label %for.cond.270

for.end.334:                                      ; preds = %for.cond.270
  br label %for.inc.335

for.inc.335:                                      ; preds = %for.end.334
  %295 = load %struct.flare*, %struct.flare** %fptr, align 8
  %next336 = getelementptr inbounds %struct.flare, %struct.flare* %295, i32 0, i32 2
  %296 = load %struct.flare*, %struct.flare** %next336, align 8
  store %struct.flare* %296, %struct.flare** %fptr, align 8
  br label %for.cond.264

for.end.337:                                      ; preds = %for.cond.264
  %297 = load i32, i32* %cell, align 4
  %idxprom338 = sext i32 %297 to i64
  %298 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx339 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %298, i64 %idxprom338
  %outList340 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx339, i32 0, i32 1
  %299 = load %struct.flare*, %struct.flare** %outList340, align 8
  store %struct.flare* %299, %struct.flare** %fptr, align 8
  br label %for.cond.341

for.cond.341:                                     ; preds = %for.inc.410, %for.end.337
  %300 = load %struct.flare*, %struct.flare** %fptr, align 8
  %cmp342 = icmp ne %struct.flare* %300, null
  br i1 %cmp342, label %for.body.344, label %for.end.412

for.body.344:                                     ; preds = %for.cond.341
  %301 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex345 = getelementptr inbounds %struct.flare, %struct.flare* %301, i32 0, i32 1
  %302 = load i32*, i32** %eindex345, align 8
  %arrayidx346 = getelementptr inbounds i32, i32* %302, i64 0
  %303 = load i32, i32* %arrayidx346, align 4
  store i32 %303, i32* %count, align 4
  br label %for.cond.347

for.cond.347:                                     ; preds = %for.inc.407, %for.body.344
  %304 = load i32, i32* %count, align 4
  %305 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex348 = getelementptr inbounds %struct.flare, %struct.flare* %305, i32 0, i32 1
  %306 = load i32*, i32** %eindex348, align 8
  %arrayidx349 = getelementptr inbounds i32, i32* %306, i64 0
  %307 = load i32, i32* %arrayidx349, align 4
  %cmp350 = icmp sle i32 %304, %307
  br i1 %cmp350, label %for.body.352, label %for.end.409

for.body.352:                                     ; preds = %for.cond.347
  %308 = load i32, i32* %count, align 4
  %idxprom353 = sext i32 %308 to i64
  %309 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex354 = getelementptr inbounds %struct.flare, %struct.flare* %309, i32 0, i32 1
  %310 = load i32*, i32** %eindex354, align 8
  %arrayidx355 = getelementptr inbounds i32, i32* %310, i64 %idxprom353
  %311 = load i32, i32* %arrayidx355, align 4
  store i32 %311, i32* %eindex, align 4
  %312 = load i32, i32* %eindex, align 4
  %idxprom356 = sext i32 %312 to i64
  %313 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx357 = getelementptr inbounds %struct.ebox, %struct.ebox* %313, i64 %idxprom356
  %rtside = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx357, i32 0, i32 4
  %314 = load i32, i32* %rtside, align 4
  store i32 %314, i32* %location, align 4
  %315 = load i32, i32* %eindex, align 4
  %idxprom358 = sext i32 %315 to i64
  %316 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx359 = getelementptr inbounds %struct.ebox, %struct.ebox* %316, i64 %idxprom358
  %hiend360 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx359, i32 0, i32 6
  %317 = load i32, i32* %hiend360, align 4
  store i32 %317, i32* %et, align 4
  %318 = load i32, i32* %eindex, align 4
  %idxprom361 = sext i32 %318 to i64
  %319 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx362 = getelementptr inbounds %struct.ebox, %struct.ebox* %319, i64 %idxprom361
  %loend363 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx362, i32 0, i32 7
  %320 = load i32, i32* %loend363, align 4
  store i32 %320, i32* %eb, align 4
  %321 = load %struct.tnode*, %struct.tnode** @vChanBeginRoot, align 8
  %322 = load i32, i32* %location, align 4
  %call364 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* %321, i32 %322)
  store %struct.plist* %call364, %struct.plist** %plptr, align 8
  br label %for.cond.365

for.cond.365:                                     ; preds = %for.inc.404, %for.body.352
  %323 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp366 = icmp ne %struct.plist* %323, null
  br i1 %cmp366, label %for.body.368, label %for.end.406

for.body.368:                                     ; preds = %for.cond.365
  %324 = load %struct.plist*, %struct.plist** %plptr, align 8
  %property369 = getelementptr inbounds %struct.plist, %struct.plist* %324, i32 0, i32 0
  %325 = load i32, i32* %property369, align 4
  store i32 %325, i32* %eindex, align 4
  %326 = load i32, i32* %eindex, align 4
  %idxprom370 = sext i32 %326 to i64
  %327 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx371 = getelementptr inbounds %struct.ebox, %struct.ebox* %327, i64 %idxprom370
  %hiend372 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx371, i32 0, i32 6
  %328 = load i32, i32* %hiend372, align 4
  store i32 %328, i32* %t, align 4
  %329 = load i32, i32* %eindex, align 4
  %idxprom373 = sext i32 %329 to i64
  %330 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx374 = getelementptr inbounds %struct.ebox, %struct.ebox* %330, i64 %idxprom373
  %loend375 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx374, i32 0, i32 7
  %331 = load i32, i32* %loend375, align 4
  store i32 %331, i32* %b, align 4
  %332 = load i32, i32* %b, align 4
  %333 = load i32, i32* %eb, align 4
  %cmp376 = icmp sge i32 %332, %333
  br i1 %cmp376, label %land.lhs.true.378, label %if.then.381

land.lhs.true.378:                                ; preds = %for.body.368
  %334 = load i32, i32* %t, align 4
  %335 = load i32, i32* %et, align 4
  %cmp379 = icmp sle i32 %334, %335
  br i1 %cmp379, label %if.end.382, label %if.then.381

if.then.381:                                      ; preds = %land.lhs.true.378, %for.body.368
  br label %for.inc.404

if.end.382:                                       ; preds = %land.lhs.true.378
  %336 = load i32, i32* %location, align 4
  %337 = load i32, i32* %eindex, align 4
  call void @tdelete(%struct.tnode** @vChanBeginRoot, i32 %336, i32 %337)
  %338 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex383 = getelementptr inbounds %struct.flare, %struct.flare* %338, i32 0, i32 1
  %339 = load i32*, i32** %eindex383, align 8
  %arrayidx384 = getelementptr inbounds i32, i32* %339, i64 0
  %340 = load i32, i32* %arrayidx384, align 4
  %inc385 = add nsw i32 %340, 1
  store i32 %inc385, i32* %arrayidx384, align 4
  %rem386 = srem i32 %inc385, 2
  %cmp387 = icmp eq i32 %rem386, 0
  br i1 %cmp387, label %if.then.389, label %if.end.398

if.then.389:                                      ; preds = %if.end.382
  %341 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex390 = getelementptr inbounds %struct.flare, %struct.flare* %341, i32 0, i32 1
  %342 = load i32*, i32** %eindex390, align 8
  %343 = bitcast i32* %342 to i8*
  %344 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex391 = getelementptr inbounds %struct.flare, %struct.flare* %344, i32 0, i32 1
  %345 = load i32*, i32** %eindex391, align 8
  %arrayidx392 = getelementptr inbounds i32, i32* %345, i64 0
  %346 = load i32, i32* %arrayidx392, align 4
  %add393 = add nsw i32 2, %346
  %conv394 = sext i32 %add393 to i64
  %mul395 = mul i64 %conv394, 4
  %call396 = call i8* @realloc(i8* %343, i64 %mul395) #3
  %347 = bitcast i8* %call396 to i32*
  %348 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex397 = getelementptr inbounds %struct.flare, %struct.flare* %348, i32 0, i32 1
  store i32* %347, i32** %eindex397, align 8
  br label %if.end.398

if.end.398:                                       ; preds = %if.then.389, %if.end.382
  %349 = load i32, i32* %eindex, align 4
  %350 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex399 = getelementptr inbounds %struct.flare, %struct.flare* %350, i32 0, i32 1
  %351 = load i32*, i32** %eindex399, align 8
  %arrayidx400 = getelementptr inbounds i32, i32* %351, i64 0
  %352 = load i32, i32* %arrayidx400, align 4
  %idxprom401 = sext i32 %352 to i64
  %353 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex402 = getelementptr inbounds %struct.flare, %struct.flare* %353, i32 0, i32 1
  %354 = load i32*, i32** %eindex402, align 8
  %arrayidx403 = getelementptr inbounds i32, i32* %354, i64 %idxprom401
  store i32 %349, i32* %arrayidx403, align 4
  br label %for.end.406

for.inc.404:                                      ; preds = %if.then.381
  %355 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext405 = getelementptr inbounds %struct.plist, %struct.plist* %355, i32 0, i32 1
  %356 = load %struct.plist*, %struct.plist** %pnext405, align 8
  store %struct.plist* %356, %struct.plist** %plptr, align 8
  br label %for.cond.365

for.end.406:                                      ; preds = %if.end.398, %for.cond.365
  br label %for.inc.407

for.inc.407:                                      ; preds = %for.end.406
  %357 = load i32, i32* %count, align 4
  %inc408 = add nsw i32 %357, 1
  store i32 %inc408, i32* %count, align 4
  br label %for.cond.347

for.end.409:                                      ; preds = %for.cond.347
  br label %for.inc.410

for.inc.410:                                      ; preds = %for.end.409
  %358 = load %struct.flare*, %struct.flare** %fptr, align 8
  %next411 = getelementptr inbounds %struct.flare, %struct.flare* %358, i32 0, i32 2
  %359 = load %struct.flare*, %struct.flare** %next411, align 8
  store %struct.flare* %359, %struct.flare** %fptr, align 8
  br label %for.cond.341

for.end.412:                                      ; preds = %for.cond.341
  br label %for.inc.413

for.inc.413:                                      ; preds = %for.end.412
  %360 = load i32, i32* %cell, align 4
  %inc414 = add nsw i32 %360, 1
  store i32 %inc414, i32* %cell, align 4
  br label %for.cond.256

for.end.415:                                      ; preds = %for.cond.256
  store i32 0, i32* @numXnodes, align 4
  %361 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  store %struct.dlink1* %361, %struct.dlink1** %vptr, align 8
  br label %for.cond.416

for.cond.416:                                     ; preds = %for.inc.424, %for.end.415
  %362 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %cmp417 = icmp ne %struct.dlink1* %362, null
  br i1 %cmp417, label %for.body.419, label %for.end.426

for.body.419:                                     ; preds = %for.cond.416
  %363 = load i32, i32* @numXnodes, align 4
  %inc420 = add nsw i32 %363, 1
  store i32 %inc420, i32* @numXnodes, align 4
  %364 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %edge421 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %364, i32 0, i32 0
  %365 = load i32, i32* %edge421, align 4
  %idxprom422 = sext i32 %365 to i64
  %366 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx423 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %366, i64 %idxprom422
  %node = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx423, i32 0, i32 9
  store i32 %inc420, i32* %node, align 4
  br label %for.inc.424

for.inc.424:                                      ; preds = %for.body.419
  %367 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %next425 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %367, i32 0, i32 2
  %368 = load %struct.dlink1*, %struct.dlink1** %next425, align 8
  store %struct.dlink1* %368, %struct.dlink1** %vptr, align 8
  br label %for.cond.416

for.end.426:                                      ; preds = %for.cond.416
  %369 = load i32, i32* @numXnodes, align 4
  %add427 = add nsw i32 1, %369
  %conv428 = sext i32 %add427 to i64
  %mul429 = mul i64 %conv428, 8
  %call430 = call noalias i8* @malloc(i64 %mul429) #3
  %370 = bitcast i8* %call430 to %struct.wcbox**
  store %struct.wcbox** %370, %struct.wcbox*** @xNodeArray, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.431

for.cond.431:                                     ; preds = %for.inc.437, %for.end.426
  %371 = load i32, i32* %i, align 4
  %372 = load i32, i32* @numXnodes, align 4
  %cmp432 = icmp sle i32 %371, %372
  br i1 %cmp432, label %for.body.434, label %for.end.439

for.body.434:                                     ; preds = %for.cond.431
  %373 = load i32, i32* %i, align 4
  %idxprom435 = sext i32 %373 to i64
  %374 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx436 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %374, i64 %idxprom435
  store %struct.wcbox* null, %struct.wcbox** %arrayidx436, align 8
  br label %for.inc.437

for.inc.437:                                      ; preds = %for.body.434
  %375 = load i32, i32* %i, align 4
  %inc438 = add nsw i32 %375, 1
  store i32 %inc438, i32* %i, align 4
  br label %for.cond.431

for.end.439:                                      ; preds = %for.cond.431
  store i32 1, i32* %cell, align 4
  br label %for.cond.440

for.cond.440:                                     ; preds = %for.inc.495, %for.end.439
  %376 = load i32, i32* %cell, align 4
  %377 = load i32, i32* @numberCells, align 4
  %cmp441 = icmp sle i32 %376, %377
  br i1 %cmp441, label %for.body.443, label %for.end.497

for.body.443:                                     ; preds = %for.cond.440
  %378 = load i32, i32* %cell, align 4
  %idxprom444 = sext i32 %378 to i64
  %379 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx445 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %379, i64 %idxprom444
  %inList446 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx445, i32 0, i32 0
  %380 = load %struct.flare*, %struct.flare** %inList446, align 8
  store %struct.flare* %380, %struct.flare** %ifptr, align 8
  br label %for.cond.447

for.cond.447:                                     ; preds = %for.inc.492, %for.body.443
  %381 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %cmp448 = icmp ne %struct.flare* %381, null
  br i1 %cmp448, label %for.body.450, label %for.end.494

for.body.450:                                     ; preds = %for.cond.447
  %382 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %fixEdge451 = getelementptr inbounds %struct.flare, %struct.flare* %382, i32 0, i32 0
  %383 = load i32, i32* %fixEdge451, align 4
  store i32 %383, i32* %iedge, align 4
  %384 = load i32, i32* %iedge, align 4
  %idxprom452 = sext i32 %384 to i64
  %385 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx453 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %385, i64 %idxprom452
  %node454 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx453, i32 0, i32 9
  %386 = load i32, i32* %node454, align 4
  store i32 %386, i32* %inode, align 4
  %387 = load i32, i32* %cell, align 4
  %idxprom455 = sext i32 %387 to i64
  %388 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx456 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %388, i64 %idxprom455
  %outList457 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx456, i32 0, i32 1
  %389 = load %struct.flare*, %struct.flare** %outList457, align 8
  store %struct.flare* %389, %struct.flare** %ofptr, align 8
  br label %for.cond.458

for.cond.458:                                     ; preds = %for.inc.489, %for.body.450
  %390 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %cmp459 = icmp ne %struct.flare* %390, null
  br i1 %cmp459, label %for.body.461, label %for.end.491

for.body.461:                                     ; preds = %for.cond.458
  %391 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %fixEdge462 = getelementptr inbounds %struct.flare, %struct.flare* %391, i32 0, i32 0
  %392 = load i32, i32* %fixEdge462, align 4
  store i32 %392, i32* %oedge, align 4
  %393 = load i32, i32* %oedge, align 4
  %idxprom463 = sext i32 %393 to i64
  %394 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx464 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %394, i64 %idxprom463
  %node465 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx464, i32 0, i32 9
  %395 = load i32, i32* %node465, align 4
  store i32 %395, i32* %onode, align 4
  %396 = load i32, i32* %inode, align 4
  %idxprom466 = sext i32 %396 to i64
  %397 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx467 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %397, i64 %idxprom466
  %398 = load %struct.wcbox*, %struct.wcbox** %arrayidx467, align 8
  store %struct.wcbox* %398, %struct.wcbox** %saveptr, align 8
  %call468 = call noalias i8* @malloc(i64 32) #3
  %399 = bitcast i8* %call468 to %struct.wcbox*
  %400 = load i32, i32* %inode, align 4
  %idxprom469 = sext i32 %400 to i64
  %401 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx470 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %401, i64 %idxprom469
  store %struct.wcbox* %399, %struct.wcbox** %arrayidx470, align 8
  %402 = load %struct.wcbox*, %struct.wcbox** %saveptr, align 8
  %403 = load i32, i32* %inode, align 4
  %idxprom471 = sext i32 %403 to i64
  %404 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx472 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %404, i64 %idxprom471
  %405 = load %struct.wcbox*, %struct.wcbox** %arrayidx472, align 8
  %next473 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %405, i32 0, i32 4
  store %struct.wcbox* %402, %struct.wcbox** %next473, align 8
  %406 = load i32, i32* %inode, align 4
  %idxprom474 = sext i32 %406 to i64
  %407 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx475 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %407, i64 %idxprom474
  %408 = load %struct.wcbox*, %struct.wcbox** %arrayidx475, align 8
  %fixedWidth = getelementptr inbounds %struct.wcbox, %struct.wcbox* %408, i32 0, i32 0
  store i32 1, i32* %fixedWidth, align 4
  %409 = load i32, i32* %onode, align 4
  %410 = load i32, i32* %inode, align 4
  %idxprom476 = sext i32 %410 to i64
  %411 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx477 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %411, i64 %idxprom476
  %412 = load %struct.wcbox*, %struct.wcbox** %arrayidx477, align 8
  %node478 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %412, i32 0, i32 1
  store i32 %409, i32* %node478, align 4
  %413 = load i32, i32* %inode, align 4
  %idxprom479 = sext i32 %413 to i64
  %414 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx480 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %414, i64 %idxprom479
  %415 = load %struct.wcbox*, %struct.wcbox** %arrayidx480, align 8
  %channels = getelementptr inbounds %struct.wcbox, %struct.wcbox* %415, i32 0, i32 2
  store i32* null, i32** %channels, align 8
  %416 = load i32, i32* %oedge, align 4
  %idxprom481 = sext i32 %416 to i64
  %417 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx482 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %417, i64 %idxprom481
  %loc483 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx482, i32 0, i32 3
  %418 = load i32, i32* %loc483, align 4
  %419 = load i32, i32* %iedge, align 4
  %idxprom484 = sext i32 %419 to i64
  %420 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx485 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %420, i64 %idxprom484
  %loc486 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx485, i32 0, i32 3
  %421 = load i32, i32* %loc486, align 4
  %sub = sub nsw i32 %418, %421
  %422 = load i32, i32* %inode, align 4
  %idxprom487 = sext i32 %422 to i64
  %423 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx488 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %423, i64 %idxprom487
  %424 = load %struct.wcbox*, %struct.wcbox** %arrayidx488, align 8
  %length = getelementptr inbounds %struct.wcbox, %struct.wcbox* %424, i32 0, i32 3
  store i32 %sub, i32* %length, align 4
  br label %for.inc.489

for.inc.489:                                      ; preds = %for.body.461
  %425 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %next490 = getelementptr inbounds %struct.flare, %struct.flare* %425, i32 0, i32 2
  %426 = load %struct.flare*, %struct.flare** %next490, align 8
  store %struct.flare* %426, %struct.flare** %ofptr, align 8
  br label %for.cond.458

for.end.491:                                      ; preds = %for.cond.458
  br label %for.inc.492

for.inc.492:                                      ; preds = %for.end.491
  %427 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %next493 = getelementptr inbounds %struct.flare, %struct.flare* %427, i32 0, i32 2
  %428 = load %struct.flare*, %struct.flare** %next493, align 8
  store %struct.flare* %428, %struct.flare** %ifptr, align 8
  br label %for.cond.447

for.end.494:                                      ; preds = %for.cond.447
  br label %for.inc.495

for.inc.495:                                      ; preds = %for.end.494
  %429 = load i32, i32* %cell, align 4
  %inc496 = add nsw i32 %429, 1
  store i32 %inc496, i32* %cell, align 4
  br label %for.cond.440

for.end.497:                                      ; preds = %for.cond.440
  store i32 0, i32* %cell, align 4
  br label %for.cond.498

for.cond.498:                                     ; preds = %for.inc.571, %for.end.497
  %430 = load i32, i32* %cell, align 4
  %431 = load i32, i32* @numberCells, align 4
  %add499 = add nsw i32 %431, 1
  %cmp500 = icmp sle i32 %430, %add499
  br i1 %cmp500, label %for.body.502, label %for.end.573

for.body.502:                                     ; preds = %for.cond.498
  %432 = load i32, i32* %cell, align 4
  %idxprom503 = sext i32 %432 to i64
  %433 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %arrayidx504 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %433, i64 %idxprom503
  %outList505 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx504, i32 0, i32 1
  %434 = load %struct.flare*, %struct.flare** %outList505, align 8
  store %struct.flare* %434, %struct.flare** %ofptr, align 8
  br label %for.cond.506

for.cond.506:                                     ; preds = %for.inc.568, %for.body.502
  %435 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %cmp507 = icmp ne %struct.flare* %435, null
  br i1 %cmp507, label %for.body.509, label %for.end.570

for.body.509:                                     ; preds = %for.cond.506
  %436 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %fixEdge510 = getelementptr inbounds %struct.flare, %struct.flare* %436, i32 0, i32 0
  %437 = load i32, i32* %fixEdge510, align 4
  store i32 %437, i32* %iedge, align 4
  %438 = load i32, i32* %iedge, align 4
  %idxprom511 = sext i32 %438 to i64
  %439 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx512 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %439, i64 %idxprom511
  %node513 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx512, i32 0, i32 9
  %440 = load i32, i32* %node513, align 4
  store i32 %440, i32* %inode, align 4
  %441 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex514 = getelementptr inbounds %struct.flare, %struct.flare* %441, i32 0, i32 1
  %442 = load i32*, i32** %eindex514, align 8
  %arrayidx515 = getelementptr inbounds i32, i32* %442, i64 0
  %443 = load i32, i32* %arrayidx515, align 4
  %idxprom516 = sext i32 %443 to i64
  %444 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex517 = getelementptr inbounds %struct.flare, %struct.flare* %444, i32 0, i32 1
  %445 = load i32*, i32** %eindex517, align 8
  %arrayidx518 = getelementptr inbounds i32, i32* %445, i64 %idxprom516
  %446 = load i32, i32* %arrayidx518, align 4
  store i32 %446, i32* %lastE, align 4
  %447 = load i32, i32* %lastE, align 4
  %idxprom519 = sext i32 %447 to i64
  %448 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx520 = getelementptr inbounds %struct.ebox, %struct.ebox* %448, i64 %idxprom519
  %edge2521 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx520, i32 0, i32 9
  %449 = load i32, i32* %edge2521, align 4
  %idxprom522 = sext i32 %449 to i64
  %450 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx523 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %450, i64 %idxprom522
  %node524 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx523, i32 0, i32 9
  %451 = load i32, i32* %node524, align 4
  store i32 %451, i32* %onode, align 4
  %452 = load i32, i32* %inode, align 4
  %idxprom525 = sext i32 %452 to i64
  %453 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx526 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %453, i64 %idxprom525
  %454 = load %struct.wcbox*, %struct.wcbox** %arrayidx526, align 8
  store %struct.wcbox* %454, %struct.wcbox** %saveptr, align 8
  %call527 = call noalias i8* @malloc(i64 32) #3
  %455 = bitcast i8* %call527 to %struct.wcbox*
  %456 = load i32, i32* %inode, align 4
  %idxprom528 = sext i32 %456 to i64
  %457 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx529 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %457, i64 %idxprom528
  store %struct.wcbox* %455, %struct.wcbox** %arrayidx529, align 8
  %458 = load %struct.wcbox*, %struct.wcbox** %saveptr, align 8
  %459 = load i32, i32* %inode, align 4
  %idxprom530 = sext i32 %459 to i64
  %460 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx531 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %460, i64 %idxprom530
  %461 = load %struct.wcbox*, %struct.wcbox** %arrayidx531, align 8
  %next532 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %461, i32 0, i32 4
  store %struct.wcbox* %458, %struct.wcbox** %next532, align 8
  %462 = load i32, i32* %inode, align 4
  %idxprom533 = sext i32 %462 to i64
  %463 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx534 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %463, i64 %idxprom533
  %464 = load %struct.wcbox*, %struct.wcbox** %arrayidx534, align 8
  %fixedWidth535 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %464, i32 0, i32 0
  store i32 0, i32* %fixedWidth535, align 4
  %465 = load i32, i32* %inode, align 4
  %idxprom536 = sext i32 %465 to i64
  %466 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx537 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %466, i64 %idxprom536
  %467 = load %struct.wcbox*, %struct.wcbox** %arrayidx537, align 8
  %length538 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %467, i32 0, i32 3
  store i32 0, i32* %length538, align 4
  %468 = load i32, i32* %onode, align 4
  %469 = load i32, i32* %inode, align 4
  %idxprom539 = sext i32 %469 to i64
  %470 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx540 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %470, i64 %idxprom539
  %471 = load %struct.wcbox*, %struct.wcbox** %arrayidx540, align 8
  %node541 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %471, i32 0, i32 1
  store i32 %468, i32* %node541, align 4
  %472 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex542 = getelementptr inbounds %struct.flare, %struct.flare* %472, i32 0, i32 1
  %473 = load i32*, i32** %eindex542, align 8
  %arrayidx543 = getelementptr inbounds i32, i32* %473, i64 0
  %474 = load i32, i32* %arrayidx543, align 4
  %add544 = add nsw i32 1, %474
  %conv545 = sext i32 %add544 to i64
  %mul546 = mul i64 %conv545, 4
  %call547 = call noalias i8* @malloc(i64 %mul546) #3
  %475 = bitcast i8* %call547 to i32*
  %476 = load i32, i32* %inode, align 4
  %idxprom548 = sext i32 %476 to i64
  %477 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx549 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %477, i64 %idxprom548
  %478 = load %struct.wcbox*, %struct.wcbox** %arrayidx549, align 8
  %channels550 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %478, i32 0, i32 2
  store i32* %475, i32** %channels550, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond.551

for.cond.551:                                     ; preds = %for.inc.565, %for.body.509
  %479 = load i32, i32* %count, align 4
  %480 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex552 = getelementptr inbounds %struct.flare, %struct.flare* %480, i32 0, i32 1
  %481 = load i32*, i32** %eindex552, align 8
  %arrayidx553 = getelementptr inbounds i32, i32* %481, i64 0
  %482 = load i32, i32* %arrayidx553, align 4
  %cmp554 = icmp sle i32 %479, %482
  br i1 %cmp554, label %for.body.556, label %for.end.567

for.body.556:                                     ; preds = %for.cond.551
  %483 = load i32, i32* %count, align 4
  %idxprom557 = sext i32 %483 to i64
  %484 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex558 = getelementptr inbounds %struct.flare, %struct.flare* %484, i32 0, i32 1
  %485 = load i32*, i32** %eindex558, align 8
  %arrayidx559 = getelementptr inbounds i32, i32* %485, i64 %idxprom557
  %486 = load i32, i32* %arrayidx559, align 4
  %487 = load i32, i32* %count, align 4
  %idxprom560 = sext i32 %487 to i64
  %488 = load i32, i32* %inode, align 4
  %idxprom561 = sext i32 %488 to i64
  %489 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx562 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %489, i64 %idxprom561
  %490 = load %struct.wcbox*, %struct.wcbox** %arrayidx562, align 8
  %channels563 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %490, i32 0, i32 2
  %491 = load i32*, i32** %channels563, align 8
  %arrayidx564 = getelementptr inbounds i32, i32* %491, i64 %idxprom560
  store i32 %486, i32* %arrayidx564, align 4
  br label %for.inc.565

for.inc.565:                                      ; preds = %for.body.556
  %492 = load i32, i32* %count, align 4
  %inc566 = add nsw i32 %492, 1
  store i32 %inc566, i32* %count, align 4
  br label %for.cond.551

for.end.567:                                      ; preds = %for.cond.551
  br label %for.inc.568

for.inc.568:                                      ; preds = %for.end.567
  %493 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %next569 = getelementptr inbounds %struct.flare, %struct.flare* %493, i32 0, i32 2
  %494 = load %struct.flare*, %struct.flare** %next569, align 8
  store %struct.flare* %494, %struct.flare** %ofptr, align 8
  br label %for.cond.506

for.end.570:                                      ; preds = %for.cond.506
  br label %for.inc.571

for.inc.571:                                      ; preds = %for.end.570
  %495 = load i32, i32* %cell, align 4
  %inc572 = add nsw i32 %495, 1
  store i32 %inc572, i32* %cell, align 4
  br label %for.cond.498

for.end.573:                                      ; preds = %for.cond.498
  %496 = load %struct.tnode*, %struct.tnode** @vChanBeginRoot, align 8
  %cmp574 = icmp ne %struct.tnode* %496, null
  br i1 %cmp574, label %if.then.576, label %if.end.583

if.then.576:                                      ; preds = %for.end.573
  br label %for.cond.577

for.cond.577:                                     ; preds = %if.end.581, %if.then.576
  call void @tpop(%struct.tnode** @vChanBeginRoot, %struct.tnode** %tnode, i32* %location, i32* %eindex)
  %497 = load %struct.tnode*, %struct.tnode** %tnode, align 8
  %cmp578 = icmp eq %struct.tnode* %497, null
  br i1 %cmp578, label %if.then.580, label %if.end.581

if.then.580:                                      ; preds = %for.cond.577
  br label %for.end.582

if.end.581:                                       ; preds = %for.cond.577
  br label %for.cond.577

for.end.582:                                      ; preds = %if.then.580
  br label %if.end.583

if.end.583:                                       ; preds = %for.end.582, %for.end.573
  %498 = load %struct.tnode*, %struct.tnode** @vChanEndRoot, align 8
  %cmp584 = icmp ne %struct.tnode* %498, null
  br i1 %cmp584, label %if.then.586, label %if.end.593

if.then.586:                                      ; preds = %if.end.583
  br label %for.cond.587

for.cond.587:                                     ; preds = %if.end.591, %if.then.586
  call void @tpop(%struct.tnode** @vChanEndRoot, %struct.tnode** %tnode, i32* %location, i32* %eindex)
  %499 = load %struct.tnode*, %struct.tnode** %tnode, align 8
  %cmp588 = icmp eq %struct.tnode* %499, null
  br i1 %cmp588, label %if.then.590, label %if.end.591

if.then.590:                                      ; preds = %for.cond.587
  br label %for.end.592

if.end.591:                                       ; preds = %for.cond.587
  br label %for.cond.587

for.end.592:                                      ; preds = %if.then.590
  br label %if.end.593

if.end.593:                                       ; preds = %for.end.592, %if.end.583
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.plist* @tplist(...) #2

declare void @tdelete(%struct.tnode**, i32, i32) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

declare void @tpop(%struct.tnode**, %struct.tnode**, i32*, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
