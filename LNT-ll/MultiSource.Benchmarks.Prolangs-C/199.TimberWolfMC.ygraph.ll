; ModuleID = './MultiSource.Benchmarks.Prolangs-C/199.TimberWolfMC.ygraph.bc'
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
@yNodules = external global %struct.nodbox*, align 8
@Hlist = external global %struct.dlink1*, align 8
@edgeList = external global %struct.edgebox*, align 8
@hChanBeginRoot = external global %struct.tnode*, align 8
@eArray = external global %struct.ebox*, align 8
@Hend = external global %struct.dlink1*, align 8
@hChanEndRoot = external global %struct.tnode*, align 8
@hFixedList = external global %struct.dlink1*, align 8
@numYnodes = external global i32, align 4
@yNodeArray = external global %struct.wcbox**, align 8

; Function Attrs: nounwind uwtable
define void @ygraph() #0 {
entry:
  %i = alloca i32, align 4
  %hedge = alloca i32, align 4
  %location = alloca i32, align 4
  %eindex = alloca i32, align 4
  %er = alloca i32, align 4
  %el = alloca i32, align 4
  %r = alloca i32, align 4
  %l = alloca i32, align 4
  %cell = alloca i32, align 4
  %count = alloca i32, align 4
  %beginEdge = alloca i32, align 4
  %iedge = alloca i32, align 4
  %inode = alloca i32, align 4
  %oedge = alloca i32, align 4
  %onode = alloca i32, align 4
  %lastE = alloca i32, align 4
  %saveptr = alloca %struct.wcbox*, align 8
  %hptr = alloca %struct.dlink1*, align 8
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
  store %struct.nodbox* %1, %struct.nodbox** @yNodules, align 8
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
  %5 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx = getelementptr inbounds %struct.nodbox, %struct.nodbox* %5, i64 %idxprom
  %inList = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx, i32 0, i32 0
  store %struct.flare* null, %struct.flare** %inList, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx4 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %7, i64 %idxprom3
  %outList = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx4, i32 0, i32 1
  store %struct.flare* null, %struct.flare** %outList, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %11 = load %struct.dlink1*, %struct.dlink1** @Hlist, align 8
  store %struct.dlink1* %11, %struct.dlink1** %hptr, align 8
  %12 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %edge = getelementptr inbounds %struct.dlink1, %struct.dlink1* %12, i32 0, i32 0
  %13 = load i32, i32* %edge, align 4
  store i32 %13, i32* %hedge, align 4
  %14 = load i32, i32* %hedge, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx8 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %15, i64 %idxprom7
  %loc = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx8, i32 0, i32 3
  %16 = load i32, i32* %loc, align 4
  store i32 %16, i32* %location, align 4
  %17 = load i32, i32* %hedge, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx10 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %18, i64 %idxprom9
  %end = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx10, i32 0, i32 2
  %19 = load i32, i32* %end, align 4
  store i32 %19, i32* %er, align 4
  %20 = load i32, i32* %hedge, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx12 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %21, i64 %idxprom11
  %start = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx12, i32 0, i32 1
  %22 = load i32, i32* %start, align 4
  store i32 %22, i32* %el, align 4
  %23 = load %struct.tnode*, %struct.tnode** @hChanBeginRoot, align 8
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
  store i32 %30, i32* %r, align 4
  %31 = load i32, i32* %eindex, align 4
  %idxprom20 = sext i32 %31 to i64
  %32 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx21 = getelementptr inbounds %struct.ebox, %struct.ebox* %32, i64 %idxprom20
  %loend = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx21, i32 0, i32 7
  %33 = load i32, i32* %loend, align 4
  store i32 %33, i32* %l, align 4
  %34 = load i32, i32* %l, align 4
  %35 = load i32, i32* %el, align 4
  %cmp22 = icmp sge i32 %34, %35
  br i1 %cmp22, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %for.body.17
  %36 = load i32, i32* %r, align 4
  %37 = load i32, i32* %er, align 4
  %cmp24 = icmp sle i32 %36, %37
  br i1 %cmp24, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %for.body.17
  br label %for.inc.49

if.end:                                           ; preds = %land.lhs.true
  %38 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx26 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %38, i64 0
  %outList27 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx26, i32 0, i32 1
  %39 = load %struct.flare*, %struct.flare** %outList27, align 8
  store %struct.flare* %39, %struct.flare** %fptr, align 8
  %call28 = call noalias i8* @malloc(i64 24) #3
  %40 = bitcast i8* %call28 to %struct.flare*
  %41 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx29 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %41, i64 0
  %outList30 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx29, i32 0, i32 1
  store %struct.flare* %40, %struct.flare** %outList30, align 8
  %42 = load %struct.flare*, %struct.flare** %fptr, align 8
  %43 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx31 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %43, i64 0
  %outList32 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx31, i32 0, i32 1
  %44 = load %struct.flare*, %struct.flare** %outList32, align 8
  %next = getelementptr inbounds %struct.flare, %struct.flare* %44, i32 0, i32 2
  store %struct.flare* %42, %struct.flare** %next, align 8
  %45 = load i32, i32* %hedge, align 4
  %46 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx33 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %46, i64 0
  %outList34 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx33, i32 0, i32 1
  %47 = load %struct.flare*, %struct.flare** %outList34, align 8
  %fixEdge = getelementptr inbounds %struct.flare, %struct.flare* %47, i32 0, i32 0
  store i32 %45, i32* %fixEdge, align 4
  %call35 = call noalias i8* @malloc(i64 8) #3
  %48 = bitcast i8* %call35 to i32*
  %49 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx36 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %49, i64 0
  %outList37 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx36, i32 0, i32 1
  %50 = load %struct.flare*, %struct.flare** %outList37, align 8
  %eindex38 = getelementptr inbounds %struct.flare, %struct.flare* %50, i32 0, i32 1
  store i32* %48, i32** %eindex38, align 8
  %51 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx39 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %51, i64 0
  %outList40 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx39, i32 0, i32 1
  %52 = load %struct.flare*, %struct.flare** %outList40, align 8
  %eindex41 = getelementptr inbounds %struct.flare, %struct.flare* %52, i32 0, i32 1
  %53 = load i32*, i32** %eindex41, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 1, i32* %arrayidx42, align 4
  %54 = load i32, i32* %eindex, align 4
  %55 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx43 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %55, i64 0
  %outList44 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx43, i32 0, i32 1
  %56 = load %struct.flare*, %struct.flare** %outList44, align 8
  %eindex45 = getelementptr inbounds %struct.flare, %struct.flare* %56, i32 0, i32 1
  %57 = load i32*, i32** %eindex45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %54, i32* %arrayidx46, align 4
  %58 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %61 = load %struct.dlink1*, %struct.dlink1** @Hend, align 8
  store %struct.dlink1* %61, %struct.dlink1** %hptr, align 8
  %62 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %edge51 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %62, i32 0, i32 0
  %63 = load i32, i32* %edge51, align 4
  store i32 %63, i32* %hedge, align 4
  %64 = load i32, i32* %hedge, align 4
  %idxprom52 = sext i32 %64 to i64
  %65 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx53 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %65, i64 %idxprom52
  %loc54 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx53, i32 0, i32 3
  %66 = load i32, i32* %loc54, align 4
  store i32 %66, i32* %location, align 4
  %67 = load i32, i32* %hedge, align 4
  %idxprom55 = sext i32 %67 to i64
  %68 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx56 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %68, i64 %idxprom55
  %end57 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx56, i32 0, i32 2
  %69 = load i32, i32* %end57, align 4
  store i32 %69, i32* %er, align 4
  %70 = load i32, i32* %hedge, align 4
  %idxprom58 = sext i32 %70 to i64
  %71 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx59 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %71, i64 %idxprom58
  %start60 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx59, i32 0, i32 1
  %72 = load i32, i32* %start60, align 4
  store i32 %72, i32* %el, align 4
  %73 = load %struct.tnode*, %struct.tnode** @hChanEndRoot, align 8
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
  store i32 %80, i32* %r, align 4
  %81 = load i32, i32* %eindex, align 4
  %idxprom70 = sext i32 %81 to i64
  %82 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx71 = getelementptr inbounds %struct.ebox, %struct.ebox* %82, i64 %idxprom70
  %loend72 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx71, i32 0, i32 7
  %83 = load i32, i32* %loend72, align 4
  store i32 %83, i32* %l, align 4
  %84 = load i32, i32* %l, align 4
  %85 = load i32, i32* %el, align 4
  %cmp73 = icmp sge i32 %84, %85
  br i1 %cmp73, label %land.lhs.true.75, label %if.then.78

land.lhs.true.75:                                 ; preds = %for.body.65
  %86 = load i32, i32* %r, align 4
  %87 = load i32, i32* %er, align 4
  %cmp76 = icmp sle i32 %86, %87
  br i1 %cmp76, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true.75, %for.body.65
  br label %for.inc.121

if.end.79:                                        ; preds = %land.lhs.true.75
  %88 = load i32, i32* @numberCells, align 4
  %add80 = add nsw i32 %88, 1
  %idxprom81 = sext i32 %add80 to i64
  %89 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx82 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %89, i64 %idxprom81
  %inList83 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx82, i32 0, i32 0
  %90 = load %struct.flare*, %struct.flare** %inList83, align 8
  store %struct.flare* %90, %struct.flare** %fptr, align 8
  %call84 = call noalias i8* @malloc(i64 24) #3
  %91 = bitcast i8* %call84 to %struct.flare*
  %92 = load i32, i32* @numberCells, align 4
  %add85 = add nsw i32 %92, 1
  %idxprom86 = sext i32 %add85 to i64
  %93 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx87 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %93, i64 %idxprom86
  %inList88 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx87, i32 0, i32 0
  store %struct.flare* %91, %struct.flare** %inList88, align 8
  %94 = load %struct.flare*, %struct.flare** %fptr, align 8
  %95 = load i32, i32* @numberCells, align 4
  %add89 = add nsw i32 %95, 1
  %idxprom90 = sext i32 %add89 to i64
  %96 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx91 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %96, i64 %idxprom90
  %inList92 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx91, i32 0, i32 0
  %97 = load %struct.flare*, %struct.flare** %inList92, align 8
  %next93 = getelementptr inbounds %struct.flare, %struct.flare* %97, i32 0, i32 2
  store %struct.flare* %94, %struct.flare** %next93, align 8
  %98 = load i32, i32* %hedge, align 4
  %99 = load i32, i32* @numberCells, align 4
  %add94 = add nsw i32 %99, 1
  %idxprom95 = sext i32 %add94 to i64
  %100 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %104 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx102 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %104, i64 %idxprom101
  %inList103 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx102, i32 0, i32 0
  %105 = load %struct.flare*, %struct.flare** %inList103, align 8
  %eindex104 = getelementptr inbounds %struct.flare, %struct.flare* %105, i32 0, i32 1
  store i32* %102, i32** %eindex104, align 8
  %106 = load i32, i32* @numberCells, align 4
  %add105 = add nsw i32 %106, 1
  %idxprom106 = sext i32 %add105 to i64
  %107 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %112 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %116 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %119 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %next124 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %119, i32 0, i32 2
  %120 = load %struct.dlink1*, %struct.dlink1** %next124, align 8
  store %struct.dlink1* %120, %struct.dlink1** %hptr, align 8
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.253, %for.end.123
  %121 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %next126 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %121, i32 0, i32 2
  %122 = load %struct.dlink1*, %struct.dlink1** %next126, align 8
  %cmp127 = icmp ne %struct.dlink1* %122, null
  br i1 %cmp127, label %for.body.129, label %for.end.255

for.body.129:                                     ; preds = %for.cond.125
  %123 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %edge130 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %123, i32 0, i32 0
  %124 = load i32, i32* %edge130, align 4
  store i32 %124, i32* %hedge, align 4
  %125 = load i32, i32* %hedge, align 4
  %idxprom131 = sext i32 %125 to i64
  %126 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx132 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %126, i64 %idxprom131
  %cell133 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx132, i32 0, i32 0
  %127 = load i32, i32* %cell133, align 4
  store i32 %127, i32* %cell, align 4
  %128 = load i32, i32* %cell, align 4
  %idxprom134 = sext i32 %128 to i64
  %129 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %132 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx142 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %132, i64 %idxprom141
  %done143 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx142, i32 0, i32 2
  store i32 1, i32* %done143, align 4
  %133 = load i32, i32* %hedge, align 4
  store i32 %133, i32* %beginEdge, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.140
  %134 = load i32, i32* %hedge, align 4
  %idxprom144 = sext i32 %134 to i64
  %135 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx145 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %135, i64 %idxprom144
  %UorR = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx145, i32 0, i32 5
  %136 = load i32, i32* %UorR, align 4
  %cmp146 = icmp slt i32 %136, 0
  br i1 %cmp146, label %if.then.148, label %if.else

if.then.148:                                      ; preds = %do.body
  %137 = load i32, i32* %hedge, align 4
  %idxprom149 = sext i32 %137 to i64
  %138 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx150 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %138, i64 %idxprom149
  %loc151 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx150, i32 0, i32 3
  %139 = load i32, i32* %loc151, align 4
  store i32 %139, i32* %location, align 4
  %140 = load %struct.tnode*, %struct.tnode** @hChanEndRoot, align 8
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
  %148 = load i32, i32* %hedge, align 4
  %cmp160 = icmp ne i32 %147, %148
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %for.body.156
  br label %for.inc.194

if.end.163:                                       ; preds = %for.body.156
  %149 = load i32, i32* %cell, align 4
  %idxprom164 = sext i32 %149 to i64
  %150 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx165 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %150, i64 %idxprom164
  %inList166 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx165, i32 0, i32 0
  %151 = load %struct.flare*, %struct.flare** %inList166, align 8
  store %struct.flare* %151, %struct.flare** %fptr, align 8
  %call167 = call noalias i8* @malloc(i64 24) #3
  %152 = bitcast i8* %call167 to %struct.flare*
  %153 = load i32, i32* %cell, align 4
  %idxprom168 = sext i32 %153 to i64
  %154 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx169 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %154, i64 %idxprom168
  %inList170 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx169, i32 0, i32 0
  store %struct.flare* %152, %struct.flare** %inList170, align 8
  %155 = load %struct.flare*, %struct.flare** %fptr, align 8
  %156 = load i32, i32* %cell, align 4
  %idxprom171 = sext i32 %156 to i64
  %157 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx172 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %157, i64 %idxprom171
  %inList173 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx172, i32 0, i32 0
  %158 = load %struct.flare*, %struct.flare** %inList173, align 8
  %next174 = getelementptr inbounds %struct.flare, %struct.flare* %158, i32 0, i32 2
  store %struct.flare* %155, %struct.flare** %next174, align 8
  %159 = load i32, i32* %hedge, align 4
  %160 = load i32, i32* %cell, align 4
  %idxprom175 = sext i32 %160 to i64
  %161 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx176 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %161, i64 %idxprom175
  %inList177 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx176, i32 0, i32 0
  %162 = load %struct.flare*, %struct.flare** %inList177, align 8
  %fixEdge178 = getelementptr inbounds %struct.flare, %struct.flare* %162, i32 0, i32 0
  store i32 %159, i32* %fixEdge178, align 4
  %call179 = call noalias i8* @malloc(i64 8) #3
  %163 = bitcast i8* %call179 to i32*
  %164 = load i32, i32* %cell, align 4
  %idxprom180 = sext i32 %164 to i64
  %165 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx181 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %165, i64 %idxprom180
  %inList182 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx181, i32 0, i32 0
  %166 = load %struct.flare*, %struct.flare** %inList182, align 8
  %eindex183 = getelementptr inbounds %struct.flare, %struct.flare* %166, i32 0, i32 1
  store i32* %163, i32** %eindex183, align 8
  %167 = load i32, i32* %cell, align 4
  %idxprom184 = sext i32 %167 to i64
  %168 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %173 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %178 = load i32, i32* %hedge, align 4
  %idxprom197 = sext i32 %178 to i64
  %179 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx198 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %179, i64 %idxprom197
  %loc199 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx198, i32 0, i32 3
  %180 = load i32, i32* %loc199, align 4
  store i32 %180, i32* %location, align 4
  %181 = load %struct.tnode*, %struct.tnode** @hChanBeginRoot, align 8
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
  %189 = load i32, i32* %hedge, align 4
  %cmp208 = icmp ne i32 %188, %189
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %for.body.204
  br label %for.inc.242

if.end.211:                                       ; preds = %for.body.204
  %190 = load i32, i32* %cell, align 4
  %idxprom212 = sext i32 %190 to i64
  %191 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx213 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %191, i64 %idxprom212
  %outList214 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx213, i32 0, i32 1
  %192 = load %struct.flare*, %struct.flare** %outList214, align 8
  store %struct.flare* %192, %struct.flare** %fptr, align 8
  %call215 = call noalias i8* @malloc(i64 24) #3
  %193 = bitcast i8* %call215 to %struct.flare*
  %194 = load i32, i32* %cell, align 4
  %idxprom216 = sext i32 %194 to i64
  %195 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx217 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %195, i64 %idxprom216
  %outList218 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx217, i32 0, i32 1
  store %struct.flare* %193, %struct.flare** %outList218, align 8
  %196 = load %struct.flare*, %struct.flare** %fptr, align 8
  %197 = load i32, i32* %cell, align 4
  %idxprom219 = sext i32 %197 to i64
  %198 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx220 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %198, i64 %idxprom219
  %outList221 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx220, i32 0, i32 1
  %199 = load %struct.flare*, %struct.flare** %outList221, align 8
  %next222 = getelementptr inbounds %struct.flare, %struct.flare* %199, i32 0, i32 2
  store %struct.flare* %196, %struct.flare** %next222, align 8
  %200 = load i32, i32* %hedge, align 4
  %201 = load i32, i32* %cell, align 4
  %idxprom223 = sext i32 %201 to i64
  %202 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx224 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %202, i64 %idxprom223
  %outList225 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx224, i32 0, i32 1
  %203 = load %struct.flare*, %struct.flare** %outList225, align 8
  %fixEdge226 = getelementptr inbounds %struct.flare, %struct.flare* %203, i32 0, i32 0
  store i32 %200, i32* %fixEdge226, align 4
  %call227 = call noalias i8* @malloc(i64 8) #3
  %204 = bitcast i8* %call227 to i32*
  %205 = load i32, i32* %cell, align 4
  %idxprom228 = sext i32 %205 to i64
  %206 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx229 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %206, i64 %idxprom228
  %outList230 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx229, i32 0, i32 1
  %207 = load %struct.flare*, %struct.flare** %outList230, align 8
  %eindex231 = getelementptr inbounds %struct.flare, %struct.flare* %207, i32 0, i32 1
  store i32* %204, i32** %eindex231, align 8
  %208 = load i32, i32* %cell, align 4
  %idxprom232 = sext i32 %208 to i64
  %209 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %214 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %219 = load i32, i32* %hedge, align 4
  %idxprom246 = sext i32 %219 to i64
  %220 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx247 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %220, i64 %idxprom246
  %nextEdge = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx247, i32 0, i32 8
  %221 = load i32, i32* %nextEdge, align 4
  store i32 %221, i32* %hedge, align 4
  %222 = load i32, i32* %hedge, align 4
  %idxprom248 = sext i32 %222 to i64
  %223 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx249 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %223, i64 %idxprom248
  %nextEdge250 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx249, i32 0, i32 8
  %224 = load i32, i32* %nextEdge250, align 4
  store i32 %224, i32* %hedge, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.245
  %225 = load i32, i32* %hedge, align 4
  %226 = load i32, i32* %beginEdge, align 4
  %cmp251 = icmp ne i32 %225, %226
  br i1 %cmp251, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc.253

for.inc.253:                                      ; preds = %do.end, %if.then.139
  %227 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %next254 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %227, i32 0, i32 2
  %228 = load %struct.dlink1*, %struct.dlink1** %next254, align 8
  store %struct.dlink1* %228, %struct.dlink1** %hptr, align 8
  br label %for.cond.125

for.end.255:                                      ; preds = %for.cond.125
  store i32 0, i32* %cell, align 4
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.410, %for.end.255
  %229 = load i32, i32* %cell, align 4
  %230 = load i32, i32* @numberCells, align 4
  %add257 = add nsw i32 %230, 1
  %cmp258 = icmp sle i32 %229, %add257
  br i1 %cmp258, label %for.body.260, label %for.end.412

for.body.260:                                     ; preds = %for.cond.256
  %231 = load i32, i32* %cell, align 4
  %idxprom261 = sext i32 %231 to i64
  %232 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx262 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %232, i64 %idxprom261
  %inList263 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx262, i32 0, i32 0
  %233 = load %struct.flare*, %struct.flare** %inList263, align 8
  store %struct.flare* %233, %struct.flare** %fptr, align 8
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.332, %for.body.260
  %234 = load %struct.flare*, %struct.flare** %fptr, align 8
  %cmp265 = icmp ne %struct.flare* %234, null
  br i1 %cmp265, label %for.body.267, label %for.end.334

for.body.267:                                     ; preds = %for.cond.264
  %235 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex268 = getelementptr inbounds %struct.flare, %struct.flare* %235, i32 0, i32 1
  %236 = load i32*, i32** %eindex268, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %236, i64 0
  %237 = load i32, i32* %arrayidx269, align 4
  store i32 %237, i32* %count, align 4
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.329, %for.body.267
  %238 = load i32, i32* %count, align 4
  %239 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex271 = getelementptr inbounds %struct.flare, %struct.flare* %239, i32 0, i32 1
  %240 = load i32*, i32** %eindex271, align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %240, i64 0
  %241 = load i32, i32* %arrayidx272, align 4
  %cmp273 = icmp sle i32 %238, %241
  br i1 %cmp273, label %for.body.275, label %for.end.331

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
  store i32 %251, i32* %er, align 4
  %252 = load i32, i32* %eindex, align 4
  %idxprom284 = sext i32 %252 to i64
  %253 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx285 = getelementptr inbounds %struct.ebox, %struct.ebox* %253, i64 %idxprom284
  %loend286 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx285, i32 0, i32 7
  %254 = load i32, i32* %loend286, align 4
  store i32 %254, i32* %el, align 4
  %255 = load %struct.tnode*, %struct.tnode** @hChanEndRoot, align 8
  %256 = load i32, i32* %location, align 4
  %call287 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* %255, i32 %256)
  store %struct.plist* %call287, %struct.plist** %plptr, align 8
  br label %for.cond.288

for.cond.288:                                     ; preds = %for.inc.326, %for.body.275
  %257 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp289 = icmp ne %struct.plist* %257, null
  br i1 %cmp289, label %for.body.291, label %for.end.328

for.body.291:                                     ; preds = %for.cond.288
  %258 = load %struct.plist*, %struct.plist** %plptr, align 8
  %property292 = getelementptr inbounds %struct.plist, %struct.plist* %258, i32 0, i32 0
  %259 = load i32, i32* %property292, align 4
  store i32 %259, i32* %eindex, align 4
  %260 = load i32, i32* %eindex, align 4
  %idxprom293 = sext i32 %260 to i64
  %261 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx294 = getelementptr inbounds %struct.ebox, %struct.ebox* %261, i64 %idxprom293
  %hiend295 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx294, i32 0, i32 6
  %262 = load i32, i32* %hiend295, align 4
  store i32 %262, i32* %r, align 4
  %263 = load i32, i32* %eindex, align 4
  %idxprom296 = sext i32 %263 to i64
  %264 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx297 = getelementptr inbounds %struct.ebox, %struct.ebox* %264, i64 %idxprom296
  %loend298 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx297, i32 0, i32 7
  %265 = load i32, i32* %loend298, align 4
  store i32 %265, i32* %l, align 4
  %266 = load i32, i32* %l, align 4
  %267 = load i32, i32* %el, align 4
  %cmp299 = icmp sge i32 %266, %267
  br i1 %cmp299, label %land.lhs.true.301, label %if.then.304

land.lhs.true.301:                                ; preds = %for.body.291
  %268 = load i32, i32* %r, align 4
  %269 = load i32, i32* %er, align 4
  %cmp302 = icmp sle i32 %268, %269
  br i1 %cmp302, label %if.end.305, label %if.then.304

if.then.304:                                      ; preds = %land.lhs.true.301, %for.body.291
  br label %for.inc.326

if.end.305:                                       ; preds = %land.lhs.true.301
  %270 = load i32, i32* %location, align 4
  %271 = load i32, i32* %eindex, align 4
  call void @tdelete(%struct.tnode** @hChanEndRoot, i32 %270, i32 %271)
  %272 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex306 = getelementptr inbounds %struct.flare, %struct.flare* %272, i32 0, i32 1
  %273 = load i32*, i32** %eindex306, align 8
  %arrayidx307 = getelementptr inbounds i32, i32* %273, i64 0
  %274 = load i32, i32* %arrayidx307, align 4
  %inc308 = add nsw i32 %274, 1
  store i32 %inc308, i32* %arrayidx307, align 4
  %rem = srem i32 %inc308, 2
  %cmp309 = icmp eq i32 %rem, 0
  br i1 %cmp309, label %if.then.311, label %if.end.320

if.then.311:                                      ; preds = %if.end.305
  %275 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex312 = getelementptr inbounds %struct.flare, %struct.flare* %275, i32 0, i32 1
  %276 = load i32*, i32** %eindex312, align 8
  %277 = bitcast i32* %276 to i8*
  %278 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex313 = getelementptr inbounds %struct.flare, %struct.flare* %278, i32 0, i32 1
  %279 = load i32*, i32** %eindex313, align 8
  %arrayidx314 = getelementptr inbounds i32, i32* %279, i64 0
  %280 = load i32, i32* %arrayidx314, align 4
  %add315 = add nsw i32 2, %280
  %conv316 = sext i32 %add315 to i64
  %mul317 = mul i64 %conv316, 4
  %call318 = call i8* @realloc(i8* %277, i64 %mul317) #3
  %281 = bitcast i8* %call318 to i32*
  %282 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex319 = getelementptr inbounds %struct.flare, %struct.flare* %282, i32 0, i32 1
  store i32* %281, i32** %eindex319, align 8
  br label %if.end.320

if.end.320:                                       ; preds = %if.then.311, %if.end.305
  %283 = load i32, i32* %eindex, align 4
  %284 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex321 = getelementptr inbounds %struct.flare, %struct.flare* %284, i32 0, i32 1
  %285 = load i32*, i32** %eindex321, align 8
  %arrayidx322 = getelementptr inbounds i32, i32* %285, i64 0
  %286 = load i32, i32* %arrayidx322, align 4
  %idxprom323 = sext i32 %286 to i64
  %287 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex324 = getelementptr inbounds %struct.flare, %struct.flare* %287, i32 0, i32 1
  %288 = load i32*, i32** %eindex324, align 8
  %arrayidx325 = getelementptr inbounds i32, i32* %288, i64 %idxprom323
  store i32 %283, i32* %arrayidx325, align 4
  br label %for.end.328

for.inc.326:                                      ; preds = %if.then.304
  %289 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext327 = getelementptr inbounds %struct.plist, %struct.plist* %289, i32 0, i32 1
  %290 = load %struct.plist*, %struct.plist** %pnext327, align 8
  store %struct.plist* %290, %struct.plist** %plptr, align 8
  br label %for.cond.288

for.end.328:                                      ; preds = %if.end.320, %for.cond.288
  br label %for.inc.329

for.inc.329:                                      ; preds = %for.end.328
  %291 = load i32, i32* %count, align 4
  %inc330 = add nsw i32 %291, 1
  store i32 %inc330, i32* %count, align 4
  br label %for.cond.270

for.end.331:                                      ; preds = %for.cond.270
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.end.331
  %292 = load %struct.flare*, %struct.flare** %fptr, align 8
  %next333 = getelementptr inbounds %struct.flare, %struct.flare* %292, i32 0, i32 2
  %293 = load %struct.flare*, %struct.flare** %next333, align 8
  store %struct.flare* %293, %struct.flare** %fptr, align 8
  br label %for.cond.264

for.end.334:                                      ; preds = %for.cond.264
  %294 = load i32, i32* %cell, align 4
  %idxprom335 = sext i32 %294 to i64
  %295 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx336 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %295, i64 %idxprom335
  %outList337 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx336, i32 0, i32 1
  %296 = load %struct.flare*, %struct.flare** %outList337, align 8
  store %struct.flare* %296, %struct.flare** %fptr, align 8
  br label %for.cond.338

for.cond.338:                                     ; preds = %for.inc.407, %for.end.334
  %297 = load %struct.flare*, %struct.flare** %fptr, align 8
  %cmp339 = icmp ne %struct.flare* %297, null
  br i1 %cmp339, label %for.body.341, label %for.end.409

for.body.341:                                     ; preds = %for.cond.338
  %298 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex342 = getelementptr inbounds %struct.flare, %struct.flare* %298, i32 0, i32 1
  %299 = load i32*, i32** %eindex342, align 8
  %arrayidx343 = getelementptr inbounds i32, i32* %299, i64 0
  %300 = load i32, i32* %arrayidx343, align 4
  store i32 %300, i32* %count, align 4
  br label %for.cond.344

for.cond.344:                                     ; preds = %for.inc.404, %for.body.341
  %301 = load i32, i32* %count, align 4
  %302 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex345 = getelementptr inbounds %struct.flare, %struct.flare* %302, i32 0, i32 1
  %303 = load i32*, i32** %eindex345, align 8
  %arrayidx346 = getelementptr inbounds i32, i32* %303, i64 0
  %304 = load i32, i32* %arrayidx346, align 4
  %cmp347 = icmp sle i32 %301, %304
  br i1 %cmp347, label %for.body.349, label %for.end.406

for.body.349:                                     ; preds = %for.cond.344
  %305 = load i32, i32* %count, align 4
  %idxprom350 = sext i32 %305 to i64
  %306 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex351 = getelementptr inbounds %struct.flare, %struct.flare* %306, i32 0, i32 1
  %307 = load i32*, i32** %eindex351, align 8
  %arrayidx352 = getelementptr inbounds i32, i32* %307, i64 %idxprom350
  %308 = load i32, i32* %arrayidx352, align 4
  store i32 %308, i32* %eindex, align 4
  %309 = load i32, i32* %eindex, align 4
  %idxprom353 = sext i32 %309 to i64
  %310 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx354 = getelementptr inbounds %struct.ebox, %struct.ebox* %310, i64 %idxprom353
  %rtside = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx354, i32 0, i32 4
  %311 = load i32, i32* %rtside, align 4
  store i32 %311, i32* %location, align 4
  %312 = load i32, i32* %eindex, align 4
  %idxprom355 = sext i32 %312 to i64
  %313 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx356 = getelementptr inbounds %struct.ebox, %struct.ebox* %313, i64 %idxprom355
  %hiend357 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx356, i32 0, i32 6
  %314 = load i32, i32* %hiend357, align 4
  store i32 %314, i32* %er, align 4
  %315 = load i32, i32* %eindex, align 4
  %idxprom358 = sext i32 %315 to i64
  %316 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx359 = getelementptr inbounds %struct.ebox, %struct.ebox* %316, i64 %idxprom358
  %loend360 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx359, i32 0, i32 7
  %317 = load i32, i32* %loend360, align 4
  store i32 %317, i32* %el, align 4
  %318 = load %struct.tnode*, %struct.tnode** @hChanBeginRoot, align 8
  %319 = load i32, i32* %location, align 4
  %call361 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* %318, i32 %319)
  store %struct.plist* %call361, %struct.plist** %plptr, align 8
  br label %for.cond.362

for.cond.362:                                     ; preds = %for.inc.401, %for.body.349
  %320 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp363 = icmp ne %struct.plist* %320, null
  br i1 %cmp363, label %for.body.365, label %for.end.403

for.body.365:                                     ; preds = %for.cond.362
  %321 = load %struct.plist*, %struct.plist** %plptr, align 8
  %property366 = getelementptr inbounds %struct.plist, %struct.plist* %321, i32 0, i32 0
  %322 = load i32, i32* %property366, align 4
  store i32 %322, i32* %eindex, align 4
  %323 = load i32, i32* %eindex, align 4
  %idxprom367 = sext i32 %323 to i64
  %324 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx368 = getelementptr inbounds %struct.ebox, %struct.ebox* %324, i64 %idxprom367
  %hiend369 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx368, i32 0, i32 6
  %325 = load i32, i32* %hiend369, align 4
  store i32 %325, i32* %r, align 4
  %326 = load i32, i32* %eindex, align 4
  %idxprom370 = sext i32 %326 to i64
  %327 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx371 = getelementptr inbounds %struct.ebox, %struct.ebox* %327, i64 %idxprom370
  %loend372 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx371, i32 0, i32 7
  %328 = load i32, i32* %loend372, align 4
  store i32 %328, i32* %l, align 4
  %329 = load i32, i32* %l, align 4
  %330 = load i32, i32* %el, align 4
  %cmp373 = icmp sge i32 %329, %330
  br i1 %cmp373, label %land.lhs.true.375, label %if.then.378

land.lhs.true.375:                                ; preds = %for.body.365
  %331 = load i32, i32* %r, align 4
  %332 = load i32, i32* %er, align 4
  %cmp376 = icmp sle i32 %331, %332
  br i1 %cmp376, label %if.end.379, label %if.then.378

if.then.378:                                      ; preds = %land.lhs.true.375, %for.body.365
  br label %for.inc.401

if.end.379:                                       ; preds = %land.lhs.true.375
  %333 = load i32, i32* %location, align 4
  %334 = load i32, i32* %eindex, align 4
  call void @tdelete(%struct.tnode** @hChanBeginRoot, i32 %333, i32 %334)
  %335 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex380 = getelementptr inbounds %struct.flare, %struct.flare* %335, i32 0, i32 1
  %336 = load i32*, i32** %eindex380, align 8
  %arrayidx381 = getelementptr inbounds i32, i32* %336, i64 0
  %337 = load i32, i32* %arrayidx381, align 4
  %inc382 = add nsw i32 %337, 1
  store i32 %inc382, i32* %arrayidx381, align 4
  %rem383 = srem i32 %inc382, 2
  %cmp384 = icmp eq i32 %rem383, 0
  br i1 %cmp384, label %if.then.386, label %if.end.395

if.then.386:                                      ; preds = %if.end.379
  %338 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex387 = getelementptr inbounds %struct.flare, %struct.flare* %338, i32 0, i32 1
  %339 = load i32*, i32** %eindex387, align 8
  %340 = bitcast i32* %339 to i8*
  %341 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex388 = getelementptr inbounds %struct.flare, %struct.flare* %341, i32 0, i32 1
  %342 = load i32*, i32** %eindex388, align 8
  %arrayidx389 = getelementptr inbounds i32, i32* %342, i64 0
  %343 = load i32, i32* %arrayidx389, align 4
  %add390 = add nsw i32 2, %343
  %conv391 = sext i32 %add390 to i64
  %mul392 = mul i64 %conv391, 4
  %call393 = call i8* @realloc(i8* %340, i64 %mul392) #3
  %344 = bitcast i8* %call393 to i32*
  %345 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex394 = getelementptr inbounds %struct.flare, %struct.flare* %345, i32 0, i32 1
  store i32* %344, i32** %eindex394, align 8
  br label %if.end.395

if.end.395:                                       ; preds = %if.then.386, %if.end.379
  %346 = load i32, i32* %eindex, align 4
  %347 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex396 = getelementptr inbounds %struct.flare, %struct.flare* %347, i32 0, i32 1
  %348 = load i32*, i32** %eindex396, align 8
  %arrayidx397 = getelementptr inbounds i32, i32* %348, i64 0
  %349 = load i32, i32* %arrayidx397, align 4
  %idxprom398 = sext i32 %349 to i64
  %350 = load %struct.flare*, %struct.flare** %fptr, align 8
  %eindex399 = getelementptr inbounds %struct.flare, %struct.flare* %350, i32 0, i32 1
  %351 = load i32*, i32** %eindex399, align 8
  %arrayidx400 = getelementptr inbounds i32, i32* %351, i64 %idxprom398
  store i32 %346, i32* %arrayidx400, align 4
  br label %for.end.403

for.inc.401:                                      ; preds = %if.then.378
  %352 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext402 = getelementptr inbounds %struct.plist, %struct.plist* %352, i32 0, i32 1
  %353 = load %struct.plist*, %struct.plist** %pnext402, align 8
  store %struct.plist* %353, %struct.plist** %plptr, align 8
  br label %for.cond.362

for.end.403:                                      ; preds = %if.end.395, %for.cond.362
  br label %for.inc.404

for.inc.404:                                      ; preds = %for.end.403
  %354 = load i32, i32* %count, align 4
  %inc405 = add nsw i32 %354, 1
  store i32 %inc405, i32* %count, align 4
  br label %for.cond.344

for.end.406:                                      ; preds = %for.cond.344
  br label %for.inc.407

for.inc.407:                                      ; preds = %for.end.406
  %355 = load %struct.flare*, %struct.flare** %fptr, align 8
  %next408 = getelementptr inbounds %struct.flare, %struct.flare* %355, i32 0, i32 2
  %356 = load %struct.flare*, %struct.flare** %next408, align 8
  store %struct.flare* %356, %struct.flare** %fptr, align 8
  br label %for.cond.338

for.end.409:                                      ; preds = %for.cond.338
  br label %for.inc.410

for.inc.410:                                      ; preds = %for.end.409
  %357 = load i32, i32* %cell, align 4
  %inc411 = add nsw i32 %357, 1
  store i32 %inc411, i32* %cell, align 4
  br label %for.cond.256

for.end.412:                                      ; preds = %for.cond.256
  store i32 0, i32* @numYnodes, align 4
  %358 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  store %struct.dlink1* %358, %struct.dlink1** %hptr, align 8
  br label %for.cond.413

for.cond.413:                                     ; preds = %for.inc.421, %for.end.412
  %359 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %cmp414 = icmp ne %struct.dlink1* %359, null
  br i1 %cmp414, label %for.body.416, label %for.end.423

for.body.416:                                     ; preds = %for.cond.413
  %360 = load i32, i32* @numYnodes, align 4
  %inc417 = add nsw i32 %360, 1
  store i32 %inc417, i32* @numYnodes, align 4
  %361 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %edge418 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %361, i32 0, i32 0
  %362 = load i32, i32* %edge418, align 4
  %idxprom419 = sext i32 %362 to i64
  %363 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx420 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %363, i64 %idxprom419
  %node = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx420, i32 0, i32 9
  store i32 %inc417, i32* %node, align 4
  br label %for.inc.421

for.inc.421:                                      ; preds = %for.body.416
  %364 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %next422 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %364, i32 0, i32 2
  %365 = load %struct.dlink1*, %struct.dlink1** %next422, align 8
  store %struct.dlink1* %365, %struct.dlink1** %hptr, align 8
  br label %for.cond.413

for.end.423:                                      ; preds = %for.cond.413
  %366 = load i32, i32* @numYnodes, align 4
  %add424 = add nsw i32 1, %366
  %conv425 = sext i32 %add424 to i64
  %mul426 = mul i64 %conv425, 8
  %call427 = call noalias i8* @malloc(i64 %mul426) #3
  %367 = bitcast i8* %call427 to %struct.wcbox**
  store %struct.wcbox** %367, %struct.wcbox*** @yNodeArray, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.428

for.cond.428:                                     ; preds = %for.inc.434, %for.end.423
  %368 = load i32, i32* %i, align 4
  %369 = load i32, i32* @numYnodes, align 4
  %cmp429 = icmp sle i32 %368, %369
  br i1 %cmp429, label %for.body.431, label %for.end.436

for.body.431:                                     ; preds = %for.cond.428
  %370 = load i32, i32* %i, align 4
  %idxprom432 = sext i32 %370 to i64
  %371 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx433 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %371, i64 %idxprom432
  store %struct.wcbox* null, %struct.wcbox** %arrayidx433, align 8
  br label %for.inc.434

for.inc.434:                                      ; preds = %for.body.431
  %372 = load i32, i32* %i, align 4
  %inc435 = add nsw i32 %372, 1
  store i32 %inc435, i32* %i, align 4
  br label %for.cond.428

for.end.436:                                      ; preds = %for.cond.428
  store i32 1, i32* %cell, align 4
  br label %for.cond.437

for.cond.437:                                     ; preds = %for.inc.492, %for.end.436
  %373 = load i32, i32* %cell, align 4
  %374 = load i32, i32* @numberCells, align 4
  %cmp438 = icmp sle i32 %373, %374
  br i1 %cmp438, label %for.body.440, label %for.end.494

for.body.440:                                     ; preds = %for.cond.437
  %375 = load i32, i32* %cell, align 4
  %idxprom441 = sext i32 %375 to i64
  %376 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx442 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %376, i64 %idxprom441
  %inList443 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx442, i32 0, i32 0
  %377 = load %struct.flare*, %struct.flare** %inList443, align 8
  store %struct.flare* %377, %struct.flare** %ifptr, align 8
  br label %for.cond.444

for.cond.444:                                     ; preds = %for.inc.489, %for.body.440
  %378 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %cmp445 = icmp ne %struct.flare* %378, null
  br i1 %cmp445, label %for.body.447, label %for.end.491

for.body.447:                                     ; preds = %for.cond.444
  %379 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %fixEdge448 = getelementptr inbounds %struct.flare, %struct.flare* %379, i32 0, i32 0
  %380 = load i32, i32* %fixEdge448, align 4
  store i32 %380, i32* %iedge, align 4
  %381 = load i32, i32* %iedge, align 4
  %idxprom449 = sext i32 %381 to i64
  %382 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx450 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %382, i64 %idxprom449
  %node451 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx450, i32 0, i32 9
  %383 = load i32, i32* %node451, align 4
  store i32 %383, i32* %inode, align 4
  %384 = load i32, i32* %cell, align 4
  %idxprom452 = sext i32 %384 to i64
  %385 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx453 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %385, i64 %idxprom452
  %outList454 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx453, i32 0, i32 1
  %386 = load %struct.flare*, %struct.flare** %outList454, align 8
  store %struct.flare* %386, %struct.flare** %ofptr, align 8
  br label %for.cond.455

for.cond.455:                                     ; preds = %for.inc.486, %for.body.447
  %387 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %cmp456 = icmp ne %struct.flare* %387, null
  br i1 %cmp456, label %for.body.458, label %for.end.488

for.body.458:                                     ; preds = %for.cond.455
  %388 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %fixEdge459 = getelementptr inbounds %struct.flare, %struct.flare* %388, i32 0, i32 0
  %389 = load i32, i32* %fixEdge459, align 4
  store i32 %389, i32* %oedge, align 4
  %390 = load i32, i32* %oedge, align 4
  %idxprom460 = sext i32 %390 to i64
  %391 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx461 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %391, i64 %idxprom460
  %node462 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx461, i32 0, i32 9
  %392 = load i32, i32* %node462, align 4
  store i32 %392, i32* %onode, align 4
  %393 = load i32, i32* %inode, align 4
  %idxprom463 = sext i32 %393 to i64
  %394 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx464 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %394, i64 %idxprom463
  %395 = load %struct.wcbox*, %struct.wcbox** %arrayidx464, align 8
  store %struct.wcbox* %395, %struct.wcbox** %saveptr, align 8
  %call465 = call noalias i8* @malloc(i64 32) #3
  %396 = bitcast i8* %call465 to %struct.wcbox*
  %397 = load i32, i32* %inode, align 4
  %idxprom466 = sext i32 %397 to i64
  %398 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx467 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %398, i64 %idxprom466
  store %struct.wcbox* %396, %struct.wcbox** %arrayidx467, align 8
  %399 = load %struct.wcbox*, %struct.wcbox** %saveptr, align 8
  %400 = load i32, i32* %inode, align 4
  %idxprom468 = sext i32 %400 to i64
  %401 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx469 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %401, i64 %idxprom468
  %402 = load %struct.wcbox*, %struct.wcbox** %arrayidx469, align 8
  %next470 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %402, i32 0, i32 4
  store %struct.wcbox* %399, %struct.wcbox** %next470, align 8
  %403 = load i32, i32* %inode, align 4
  %idxprom471 = sext i32 %403 to i64
  %404 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx472 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %404, i64 %idxprom471
  %405 = load %struct.wcbox*, %struct.wcbox** %arrayidx472, align 8
  %fixedWidth = getelementptr inbounds %struct.wcbox, %struct.wcbox* %405, i32 0, i32 0
  store i32 1, i32* %fixedWidth, align 4
  %406 = load i32, i32* %onode, align 4
  %407 = load i32, i32* %inode, align 4
  %idxprom473 = sext i32 %407 to i64
  %408 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx474 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %408, i64 %idxprom473
  %409 = load %struct.wcbox*, %struct.wcbox** %arrayidx474, align 8
  %node475 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %409, i32 0, i32 1
  store i32 %406, i32* %node475, align 4
  %410 = load i32, i32* %inode, align 4
  %idxprom476 = sext i32 %410 to i64
  %411 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx477 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %411, i64 %idxprom476
  %412 = load %struct.wcbox*, %struct.wcbox** %arrayidx477, align 8
  %channels = getelementptr inbounds %struct.wcbox, %struct.wcbox* %412, i32 0, i32 2
  store i32* null, i32** %channels, align 8
  %413 = load i32, i32* %oedge, align 4
  %idxprom478 = sext i32 %413 to i64
  %414 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx479 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %414, i64 %idxprom478
  %loc480 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx479, i32 0, i32 3
  %415 = load i32, i32* %loc480, align 4
  %416 = load i32, i32* %iedge, align 4
  %idxprom481 = sext i32 %416 to i64
  %417 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx482 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %417, i64 %idxprom481
  %loc483 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx482, i32 0, i32 3
  %418 = load i32, i32* %loc483, align 4
  %sub = sub nsw i32 %415, %418
  %419 = load i32, i32* %inode, align 4
  %idxprom484 = sext i32 %419 to i64
  %420 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx485 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %420, i64 %idxprom484
  %421 = load %struct.wcbox*, %struct.wcbox** %arrayidx485, align 8
  %length = getelementptr inbounds %struct.wcbox, %struct.wcbox* %421, i32 0, i32 3
  store i32 %sub, i32* %length, align 4
  br label %for.inc.486

for.inc.486:                                      ; preds = %for.body.458
  %422 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %next487 = getelementptr inbounds %struct.flare, %struct.flare* %422, i32 0, i32 2
  %423 = load %struct.flare*, %struct.flare** %next487, align 8
  store %struct.flare* %423, %struct.flare** %ofptr, align 8
  br label %for.cond.455

for.end.488:                                      ; preds = %for.cond.455
  br label %for.inc.489

for.inc.489:                                      ; preds = %for.end.488
  %424 = load %struct.flare*, %struct.flare** %ifptr, align 8
  %next490 = getelementptr inbounds %struct.flare, %struct.flare* %424, i32 0, i32 2
  %425 = load %struct.flare*, %struct.flare** %next490, align 8
  store %struct.flare* %425, %struct.flare** %ifptr, align 8
  br label %for.cond.444

for.end.491:                                      ; preds = %for.cond.444
  br label %for.inc.492

for.inc.492:                                      ; preds = %for.end.491
  %426 = load i32, i32* %cell, align 4
  %inc493 = add nsw i32 %426, 1
  store i32 %inc493, i32* %cell, align 4
  br label %for.cond.437

for.end.494:                                      ; preds = %for.cond.437
  store i32 0, i32* %cell, align 4
  br label %for.cond.495

for.cond.495:                                     ; preds = %for.inc.568, %for.end.494
  %427 = load i32, i32* %cell, align 4
  %428 = load i32, i32* @numberCells, align 4
  %add496 = add nsw i32 %428, 1
  %cmp497 = icmp sle i32 %427, %add496
  br i1 %cmp497, label %for.body.499, label %for.end.570

for.body.499:                                     ; preds = %for.cond.495
  %429 = load i32, i32* %cell, align 4
  %idxprom500 = sext i32 %429 to i64
  %430 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %arrayidx501 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %430, i64 %idxprom500
  %outList502 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %arrayidx501, i32 0, i32 1
  %431 = load %struct.flare*, %struct.flare** %outList502, align 8
  store %struct.flare* %431, %struct.flare** %ofptr, align 8
  br label %for.cond.503

for.cond.503:                                     ; preds = %for.inc.565, %for.body.499
  %432 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %cmp504 = icmp ne %struct.flare* %432, null
  br i1 %cmp504, label %for.body.506, label %for.end.567

for.body.506:                                     ; preds = %for.cond.503
  %433 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %fixEdge507 = getelementptr inbounds %struct.flare, %struct.flare* %433, i32 0, i32 0
  %434 = load i32, i32* %fixEdge507, align 4
  store i32 %434, i32* %iedge, align 4
  %435 = load i32, i32* %iedge, align 4
  %idxprom508 = sext i32 %435 to i64
  %436 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx509 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %436, i64 %idxprom508
  %node510 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx509, i32 0, i32 9
  %437 = load i32, i32* %node510, align 4
  store i32 %437, i32* %inode, align 4
  %438 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex511 = getelementptr inbounds %struct.flare, %struct.flare* %438, i32 0, i32 1
  %439 = load i32*, i32** %eindex511, align 8
  %arrayidx512 = getelementptr inbounds i32, i32* %439, i64 0
  %440 = load i32, i32* %arrayidx512, align 4
  %idxprom513 = sext i32 %440 to i64
  %441 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex514 = getelementptr inbounds %struct.flare, %struct.flare* %441, i32 0, i32 1
  %442 = load i32*, i32** %eindex514, align 8
  %arrayidx515 = getelementptr inbounds i32, i32* %442, i64 %idxprom513
  %443 = load i32, i32* %arrayidx515, align 4
  store i32 %443, i32* %lastE, align 4
  %444 = load i32, i32* %lastE, align 4
  %idxprom516 = sext i32 %444 to i64
  %445 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx517 = getelementptr inbounds %struct.ebox, %struct.ebox* %445, i64 %idxprom516
  %edge2518 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx517, i32 0, i32 9
  %446 = load i32, i32* %edge2518, align 4
  %idxprom519 = sext i32 %446 to i64
  %447 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx520 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %447, i64 %idxprom519
  %node521 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx520, i32 0, i32 9
  %448 = load i32, i32* %node521, align 4
  store i32 %448, i32* %onode, align 4
  %449 = load i32, i32* %inode, align 4
  %idxprom522 = sext i32 %449 to i64
  %450 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx523 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %450, i64 %idxprom522
  %451 = load %struct.wcbox*, %struct.wcbox** %arrayidx523, align 8
  store %struct.wcbox* %451, %struct.wcbox** %saveptr, align 8
  %call524 = call noalias i8* @malloc(i64 32) #3
  %452 = bitcast i8* %call524 to %struct.wcbox*
  %453 = load i32, i32* %inode, align 4
  %idxprom525 = sext i32 %453 to i64
  %454 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx526 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %454, i64 %idxprom525
  store %struct.wcbox* %452, %struct.wcbox** %arrayidx526, align 8
  %455 = load %struct.wcbox*, %struct.wcbox** %saveptr, align 8
  %456 = load i32, i32* %inode, align 4
  %idxprom527 = sext i32 %456 to i64
  %457 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx528 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %457, i64 %idxprom527
  %458 = load %struct.wcbox*, %struct.wcbox** %arrayidx528, align 8
  %next529 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %458, i32 0, i32 4
  store %struct.wcbox* %455, %struct.wcbox** %next529, align 8
  %459 = load i32, i32* %inode, align 4
  %idxprom530 = sext i32 %459 to i64
  %460 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx531 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %460, i64 %idxprom530
  %461 = load %struct.wcbox*, %struct.wcbox** %arrayidx531, align 8
  %fixedWidth532 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %461, i32 0, i32 0
  store i32 0, i32* %fixedWidth532, align 4
  %462 = load i32, i32* %inode, align 4
  %idxprom533 = sext i32 %462 to i64
  %463 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx534 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %463, i64 %idxprom533
  %464 = load %struct.wcbox*, %struct.wcbox** %arrayidx534, align 8
  %length535 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %464, i32 0, i32 3
  store i32 0, i32* %length535, align 4
  %465 = load i32, i32* %onode, align 4
  %466 = load i32, i32* %inode, align 4
  %idxprom536 = sext i32 %466 to i64
  %467 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx537 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %467, i64 %idxprom536
  %468 = load %struct.wcbox*, %struct.wcbox** %arrayidx537, align 8
  %node538 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %468, i32 0, i32 1
  store i32 %465, i32* %node538, align 4
  %469 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex539 = getelementptr inbounds %struct.flare, %struct.flare* %469, i32 0, i32 1
  %470 = load i32*, i32** %eindex539, align 8
  %arrayidx540 = getelementptr inbounds i32, i32* %470, i64 0
  %471 = load i32, i32* %arrayidx540, align 4
  %add541 = add nsw i32 1, %471
  %conv542 = sext i32 %add541 to i64
  %mul543 = mul i64 %conv542, 4
  %call544 = call noalias i8* @malloc(i64 %mul543) #3
  %472 = bitcast i8* %call544 to i32*
  %473 = load i32, i32* %inode, align 4
  %idxprom545 = sext i32 %473 to i64
  %474 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx546 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %474, i64 %idxprom545
  %475 = load %struct.wcbox*, %struct.wcbox** %arrayidx546, align 8
  %channels547 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %475, i32 0, i32 2
  store i32* %472, i32** %channels547, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond.548

for.cond.548:                                     ; preds = %for.inc.562, %for.body.506
  %476 = load i32, i32* %count, align 4
  %477 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex549 = getelementptr inbounds %struct.flare, %struct.flare* %477, i32 0, i32 1
  %478 = load i32*, i32** %eindex549, align 8
  %arrayidx550 = getelementptr inbounds i32, i32* %478, i64 0
  %479 = load i32, i32* %arrayidx550, align 4
  %cmp551 = icmp sle i32 %476, %479
  br i1 %cmp551, label %for.body.553, label %for.end.564

for.body.553:                                     ; preds = %for.cond.548
  %480 = load i32, i32* %count, align 4
  %idxprom554 = sext i32 %480 to i64
  %481 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %eindex555 = getelementptr inbounds %struct.flare, %struct.flare* %481, i32 0, i32 1
  %482 = load i32*, i32** %eindex555, align 8
  %arrayidx556 = getelementptr inbounds i32, i32* %482, i64 %idxprom554
  %483 = load i32, i32* %arrayidx556, align 4
  %484 = load i32, i32* %count, align 4
  %idxprom557 = sext i32 %484 to i64
  %485 = load i32, i32* %inode, align 4
  %idxprom558 = sext i32 %485 to i64
  %486 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx559 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %486, i64 %idxprom558
  %487 = load %struct.wcbox*, %struct.wcbox** %arrayidx559, align 8
  %channels560 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %487, i32 0, i32 2
  %488 = load i32*, i32** %channels560, align 8
  %arrayidx561 = getelementptr inbounds i32, i32* %488, i64 %idxprom557
  store i32 %483, i32* %arrayidx561, align 4
  br label %for.inc.562

for.inc.562:                                      ; preds = %for.body.553
  %489 = load i32, i32* %count, align 4
  %inc563 = add nsw i32 %489, 1
  store i32 %inc563, i32* %count, align 4
  br label %for.cond.548

for.end.564:                                      ; preds = %for.cond.548
  br label %for.inc.565

for.inc.565:                                      ; preds = %for.end.564
  %490 = load %struct.flare*, %struct.flare** %ofptr, align 8
  %next566 = getelementptr inbounds %struct.flare, %struct.flare* %490, i32 0, i32 2
  %491 = load %struct.flare*, %struct.flare** %next566, align 8
  store %struct.flare* %491, %struct.flare** %ofptr, align 8
  br label %for.cond.503

for.end.567:                                      ; preds = %for.cond.503
  br label %for.inc.568

for.inc.568:                                      ; preds = %for.end.567
  %492 = load i32, i32* %cell, align 4
  %inc569 = add nsw i32 %492, 1
  store i32 %inc569, i32* %cell, align 4
  br label %for.cond.495

for.end.570:                                      ; preds = %for.cond.495
  %493 = load %struct.tnode*, %struct.tnode** @hChanBeginRoot, align 8
  %cmp571 = icmp ne %struct.tnode* %493, null
  br i1 %cmp571, label %if.then.573, label %if.end.580

if.then.573:                                      ; preds = %for.end.570
  br label %for.cond.574

for.cond.574:                                     ; preds = %if.end.578, %if.then.573
  call void @tpop(%struct.tnode** @hChanBeginRoot, %struct.tnode** %tnode, i32* %location, i32* %eindex)
  %494 = load %struct.tnode*, %struct.tnode** %tnode, align 8
  %cmp575 = icmp eq %struct.tnode* %494, null
  br i1 %cmp575, label %if.then.577, label %if.end.578

if.then.577:                                      ; preds = %for.cond.574
  br label %for.end.579

if.end.578:                                       ; preds = %for.cond.574
  br label %for.cond.574

for.end.579:                                      ; preds = %if.then.577
  br label %if.end.580

if.end.580:                                       ; preds = %for.end.579, %for.end.570
  %495 = load %struct.tnode*, %struct.tnode** @hChanEndRoot, align 8
  %cmp581 = icmp ne %struct.tnode* %495, null
  br i1 %cmp581, label %if.then.583, label %if.end.590

if.then.583:                                      ; preds = %if.end.580
  br label %for.cond.584

for.cond.584:                                     ; preds = %if.end.588, %if.then.583
  call void @tpop(%struct.tnode** @hChanEndRoot, %struct.tnode** %tnode, i32* %location, i32* %eindex)
  %496 = load %struct.tnode*, %struct.tnode** %tnode, align 8
  %cmp585 = icmp eq %struct.tnode* %496, null
  br i1 %cmp585, label %if.then.587, label %if.end.588

if.then.587:                                      ; preds = %for.cond.584
  br label %for.end.589

if.end.588:                                       ; preds = %for.cond.584
  br label %for.cond.584

for.end.589:                                      ; preds = %if.then.587
  br label %if.end.590

if.end.590:                                       ; preds = %for.end.589, %if.end.580
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
